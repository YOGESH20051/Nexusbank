<?php
session_start();
require '../includes/db.php';

$user = $_SESSION['user_id'];
$stmt = $pdo->prepare("SELECT balance FROM accounts WHERE user_id=?");
$stmt->execute([$user]);
$bal = $stmt->fetchColumn();

echo "Your current balance is Rupees " . number_format($bal);
