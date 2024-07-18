<?php
#用require也行
include __DIR__ . "/connect-settings.php";

$dsn = "mysql:host={$db_host};dbname={$db_name};charset=utf8mb4";

$pdo_options = [
  PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
  PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

$pdo = new PDO($dsn, $db_user, $db_pass, $pdo_options);

if(!isset($_SESSION)){
  //如果尚未啟動session的功能就啟動
  session_start();
}



// #執行一個sql語句取得PDOStatement類型的物件
// $stmt = $pdo->query("SELECT * FROM address_book LIMIT 3");
// #呼叫fetch()取得資料
// $row = $stmt->fetch();
// #輸出json格式
// echo json_encode($row);
