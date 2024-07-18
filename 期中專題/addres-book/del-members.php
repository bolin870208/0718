<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/db-connect.php';

$ab_id = isset($_GET['ab_id']) ? intval($_GET['ab_id']) : 0;
if (!empty($ab_id)) {
  $sql = "DELETE FROM address_book WHERE ab_id=$ab_id";
  $pdo->query($sql);
}
$come_from="index_.php";
#如果有referer的url就用referer url
if(isset($_SERVER["HTTP_REFERER"])) {
  $come_from = $_SERVER['HTTP_REFERER'];
}


header('Location: '. $come_from);