<?php
session_start();
require_once '../includes/db.php';
require_once '../includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    header("Location: manage-users.php");
    exit;
}

$name     = trim($_POST['name'] ?? '');
$email    = trim($_POST['email'] ?? '');
$phone    = trim($_POST['phone'] ?? '');
$balance  = trim($_POST['balance'] ?? '0');
$password = $_POST['password'] ?? '';

if ($name === '' || $email === '' || $password === '') {
    $_SESSION['error'] = "Please fill all required fields.";
    header("Location: manage-users.php");
    exit;
}

/* 🔒 Duplicate check */
$check = $pdo->prepare("SELECT 1 FROM users WHERE email = ? OR phone = ?");
$check->execute([$email, $phone]);

if ($check->rowCount() > 0) {
    $_SESSION['error'] = "This email address or phone number is already registered.";
    header("Location: manage-users.php");
    exit;
}

/* 🔐 Hash password */
$hashedPassword = password_hash($password, PASSWORD_DEFAULT);

/* 🏦 Create account number */
$account = "SB" . rand(10000000, 99999999);

/* 👤 Insert user */
$stmt = $pdo->prepare("
    INSERT INTO users (full_name, email, phone, password_hash) 
    VALUES (?, ?, ?, ?)
");
$stmt->execute([$name, $email, $phone, $hashedPassword]);

$user_id = $pdo->lastInsertId();

/* 💰 Create bank account */
$stmt = $pdo->prepare("
    INSERT INTO accounts (user_id, account_number, balance) 
    VALUES (?, ?, ?)
");
$stmt->execute([$user_id, $account, $balance]);

/* 🧾 ADMIN AUDIT LOG */
logAdminAction(
    $pdo,
    $_SESSION['user_id'],
    'Add User',
    'Admin created new user: ' . $name . ' (' . $email . ')'
);


// ================= STEP 4 — SEND WELCOME PDF EMAIL =================

// ================= STEP 4 — START OFFICIAL WELCOME PIPELINE =================
header("Location: generate_welcome_slip.php?user_id=" . $user_id);
exit();


