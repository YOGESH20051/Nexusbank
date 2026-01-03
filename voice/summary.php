<?php
session_start();
require '../includes/db.php';

$user = $_SESSION['user_id'];

$bal = $pdo->query("SELECT balance FROM accounts WHERE user_id=$user")->fetchColumn();
$credit = $pdo->query("SELECT SUM(amount) FROM transactions WHERE user_id=$user AND type='credit'")->fetchColumn();
$debit = $pdo->query("SELECT SUM(amount) FROM transactions WHERE user_id=$user AND type='debit'")->fetchColumn();

echo "Your account balance is $bal rupees. Total credit is $credit rupees. Total debit is $debit rupees.";
