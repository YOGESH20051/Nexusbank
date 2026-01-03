<?php
session_start();
require_once __DIR__ . '/../includes/db.php';
require_once __DIR__ . '/../includes/functions.php'; // for logAdminAction()

/* Admin protection */
if (!isset($_SESSION['user_id']) || $_SESSION['is_admin'] != 1) {
    header("Location: ../login.php");
    exit;
}

if (isset($_POST['submit'])) {

    $user_id    = $_POST['user_id'] ?? null;
    $account_id = $_POST['account_id'] ?? null;
    $type       = $_POST['type'] ?? null;
    $amount     = floatval($_POST['amount'] ?? 0);
    $target     = $_POST['related_account'] ?? null;

    /* ---------- BASIC VALIDATION ---------- */
    if ($amount <= 0) {
        $_SESSION['error'] = "Invalid amount entered.";
        header("Location: admin-transaction.php");
        exit;
    }

    $pdo->beginTransaction();

    /* ---------- FETCH SOURCE ACCOUNT ---------- */
    $stmt = $pdo->prepare("
        SELECT account_number, balance 
        FROM accounts 
        WHERE account_id = ?
    ");
    $stmt->execute([$account_id]);
    $source = $stmt->fetch(PDO::FETCH_ASSOC);

    if (!$source) {
        $pdo->rollBack();
        $_SESSION['error'] = "Source account not found.";
        header("Location: admin-transaction.php");
        exit;
    }

    /* ================= DEPOSIT ================= */
    if ($type === 'deposit') {

        $stmt = $pdo->prepare("
            UPDATE accounts 
            SET balance = balance + ? 
            WHERE account_id = ?
        ");
        $stmt->execute([$amount, $account_id]);

        $stmt = $pdo->prepare("
            INSERT INTO transactions
            (account_id, type, amount, description, created_at, performed_by)
            VALUES (?, 'deposit', ?, 'Deposit by Admin', NOW(), 'admin')
        ");
        $stmt->execute([$account_id, $amount]);
    }

    /* ================= WITHDRAW ================= */
    elseif ($type === 'withdraw') {

        if ($source['balance'] < $amount) {
            $pdo->rollBack();
            $_SESSION['error'] = "Insufficient balance in user account.";
            header("Location: admin-transaction.php");
            exit;
        }

        $stmt = $pdo->prepare("
            UPDATE accounts 
            SET balance = balance - ? 
            WHERE account_id = ?
        ");
        $stmt->execute([$amount, $account_id]);

        $stmt = $pdo->prepare("
            INSERT INTO transactions
            (account_id, type, amount, description, created_at, performed_by)
            VALUES (?, 'withdraw', ?, 'Withdraw by Admin', NOW(), 'admin')
        ");
        $stmt->execute([$account_id, -$amount]);
    }

    /* ================= TRANSFER ================= */
    elseif ($type === 'transfer') {

        if (empty($target)) {
            $pdo->rollBack();
            $_SESSION['error'] = "Target account is required.";
            header("Location: admin-transaction.php");
            exit;
        }

        /* Fetch target account */
        $stmt = $pdo->prepare("
            SELECT account_id, account_number, balance 
            FROM accounts 
            WHERE account_id = ?
        ");
        $stmt->execute([$target]);
        $targetAcc = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$targetAcc) {
            $pdo->rollBack();
            $_SESSION['error'] = "Target account not found.";
            header("Location: admin-transaction.php");
            exit;
        }

        /* Prevent self transfer */
        if ($account_id == $targetAcc['account_id']) {
            $pdo->rollBack();
            $_SESSION['error'] = "Cannot transfer to the same account.";
            header("Location: admin-transaction.php");
            exit;
        }

        /* Insufficient balance */
        if ($source['balance'] < $amount) {
            $pdo->rollBack();
            $_SESSION['error'] = "Insufficient balance for transfer.";
            header("Location: admin-transaction.php");
            exit;
        }

        /* Deduct sender */
        $stmt = $pdo->prepare("
            UPDATE accounts 
            SET balance = balance - ? 
            WHERE account_id = ?
        ");
        $stmt->execute([$amount, $account_id]);

        /* Credit recipient */
        $stmt = $pdo->prepare("
            UPDATE accounts 
            SET balance = balance + ? 
            WHERE account_id = ?
        ");
        $stmt->execute([$amount, $targetAcc['account_id']]);

        /* Sender transaction */
        $stmt = $pdo->prepare("
            INSERT INTO transactions
            (account_id, type, amount, description, related_account_id, created_at, performed_by)
            VALUES (?, 'transfer_out', ?, ?, ?, NOW(), 'admin')
        ");
        $stmt->execute([
            $account_id,
            -$amount,
            'Transfer to account ' . $targetAcc['account_number'],
            $targetAcc['account_id']
        ]);

        /* Receiver transaction */
        $stmt = $pdo->prepare("
            INSERT INTO transactions
            (account_id, type, amount, description, related_account_id, created_at, performed_by)
            VALUES (?, 'transfer_in', ?, ?, ?, NOW(), 'admin')
        ");
        $stmt->execute([
            $targetAcc['account_id'],
            $amount,
            'Received from account ' . $source['account_number'],
            $account_id
        ]);
    }

    /* ---------- COMMIT ---------- */
    $pdo->commit();

    // 🔐 AUDIT LOG ENTRY — ADMIN TRANSACTION
$actionDesc = '';

if ($type === 'deposit') {
    $actionDesc = "Admin deposited ₹" . number_format($amount, 2) . " into account " . $source['account_number'];
}
elseif ($type === 'withdraw') {
    $actionDesc = "Admin withdrew ₹" . number_format($amount, 2) . " from account " . $source['account_number'];
}
elseif ($type === 'transfer') {
    $actionDesc = "Admin transferred ₹" . number_format($amount, 2) . 
                  " from account " . $source['account_number'] . 
                  " to account " . $targetAcc['account_number'];
}

logAdminAction(
    $pdo,
    $_SESSION['user_id'],
    strtoupper($type),
    $actionDesc
);




    $_SESSION['success'] = "Transaction completed successfully.";
    header("Location: admin-transaction.php");
    exit;
}
