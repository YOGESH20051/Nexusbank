<?php
session_start();
require '../includes/db.php';

$user = $_SESSION['user_id'];
$stmt = $pdo->prepare("SELECT email, phone FROM users WHERE id=?");
$stmt->execute([$user]);
$u = $stmt->fetch();

echo "Your registered email is ".$u['email']." and phone number is ".$u['phone'];
