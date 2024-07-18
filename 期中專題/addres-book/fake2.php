<?php
// exit; #部會執行假資料

require __DIR__ . '/db-connect.php';
$dsn = "mysql:host={$db_host};dbname={$db_name};charset=utf8mb4";
$pdo = new PDO($dsn, $db_user, $db_pass);

$lasts = ["何", "傅", "劉", "吳", "呂", "周", "唐", "孫", "宋", "張", "彭", "徐", "於", "曹", "曾", "朱", "李", "林", "梁", "楊", "沈", "王", "程", "羅", "胡", "董", "蕭", "袁", "許", "謝", "趙", "郭", "鄧", "鄭", "陳", "韓", "馬", "馮", "高", "黃"];

$firsts = ["冠廷", "冠宇", "宗翰", "家豪", "彥廷", "承翰", "柏翰", "宇軒", "家瑋", "冠霖", "雅婷", "雅筑", "怡君", "佳穎", "怡萱", "宜庭", "郁婷", "怡婷", "詩涵", "鈺婷"];

$areas = ["臺北市", "新北市", "桃園市", "臺中市", "臺南市", "高雄市", "新竹縣", "苗栗縣", "彰化縣", "南投縣", "雲林縣", "嘉義縣", "屏東縣", "宜蘭縣", "花蓮縣", "臺東縣", "澎湖縣", "金門縣", "連江縣", "基隆市", "新竹市", "嘉義市"];

$membership_levels = ['一般會員', '高級會員', 'VIP會員'];
$genders = ['男', '女'];
$preferred_products = ['1號豆', '2號豆', '3號豆', '4號豆'];
$statuses = ['已驗證', '未驗證', '停用'];

$sql = "INSERT INTO `address_book`(
        `name`,
        `email`, 
        `password_hash`, 
        `membership_level`, 
        `gender`, 
        `mobile`,
        `address`,
        `birthday`,
        `preferred_products`,
        `created_at`,
        `status`,
        `photo`
    ) VALUES (
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        ?,
        NOW(),
        ?,
        ?
    )";

$stmt = $pdo->prepare($sql);

for ($i = 0; $i < 10; $i++) {
    shuffle($lasts);
    shuffle($firsts);
    $name = $lasts[0] . $firsts[0];
    
    $email = 'mail' . rand(10000, 99999) . '@test.com';
    // 隨機生成一個8位的密碼
    $password = substr(str_shuffle('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'), 0, 8);
    
    $password_hash = password_hash($password, PASSWORD_DEFAULT);
    
    $membership_level = $membership_levels[array_rand($membership_levels)];
    $gender = $genders[array_rand($genders)];
    $mobile = '0918' . rand(100000, 999999);

    shuffle($areas);
    $address = $areas[0];
    
    $t = rand(strtotime('1985-01-01'), strtotime('2000-01-01'));
    $birthday = date('Y-m-d', $t);
    
    $preferred_product = $preferred_products[array_rand($preferred_products)];
    $status = $statuses[array_rand($statuses)];
    
    // 假設照片數據為 '101' 的二進制格式
    $photo = pack('H*', '313031');  

    $stmt->execute([
        $name,
        $email,
        $password_hash, 
        $membership_level,
        $gender,
        $mobile,
        $address,
        $birthday,
        $preferred_product,
        $status,
        $photo
    ]);
}

echo json_encode([
    $stmt->rowCount(), // 影響的資料筆數
    $pdo->lastInsertId(), // 最新的新增資料的主鍵
]);

