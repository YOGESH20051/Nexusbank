<?php
session_start();
require '../includes/db.php';

$user = $_SESSION['user_id'];
$stmt = $pdo->prepare("SELECT type, amount FROM transactions 
                       WHERE user_id=? ORDER BY id DESC LIMIT 3");
$stmt->execute([$user]);

$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

$msg = "Here are your last transactions. ";
foreach($data as $t){
    $msg .= $t['type']." of rupees ".$t['amount'].". ";
}

echo $msg;
