<?php

$title = "通訊錄列表";
$pageName = 'ab_list';
$perPage = 20; #表示一夜20筆
$page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;
if ($page < 1) {
  header('Location: ?page=1'); #跳轉頁面
  exit; #用die()也行結束程式
}

require __DIR__ . '/db-connect.php';
$t_sql = "SELECT COUNT(1) FROM address_book";

#取得總筆數
$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];
if ($totalRows) {
  #取得總頁數
  $totalPage = ceil($totalRows / $perPage);
  if ($page > $totalPage) {
    header('Location: ?page=' . $totalPage);
    exit;
  }

  # 取得該頁資料
  $sql = sprintf(
    "SELECT * FROM address_book ORDER BY ab_id DESC LIMIT %s,%s",
    ($page - 1) * $perPage,
    $perPage
  );

  $rows = $pdo->query($sql)->fetchAll();
}
?>

<?php include __DIR__ . "/parts/html-head.php"; ?>
<?php include __DIR__ . "/parts/navbar.php"; ?>
<div class="container">

  <div class="row">
    <div class="col rounded-3 mt-5 mb-3">
      <table class="table table-dark table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">會員姓名</th>
            <th scope="col">帳號</th>
            <th scope="col">密碼</th>
            <th scope="col">會員等級</th>
            <th scope="col">性別</th>
            <th scope="col">電話</th>
            <th scope="col">地址</th>
            <th scope="col">生日</th>
            <th scope="col">偏好產品</th>
            <th class="col">加入日期</th>
            <th class="col">狀態</th>
            <th class="col">照片</th>

          </tr>
        </thead>
        <tbody>
          <?php foreach ($rows as $r) : ?>
            <tr>

              <td><?= $r['ab_id'] ?></td>
              <td><?= $r['name'] ?></td>
              <td><?= $r['email'] ?></td>
              <td><?= htmlspecialchars(substr($r['password_hash'], 0, 8)) . '...' ?></td>
              <td><?= $r['membership_level'] ?></td>
              <td><?= $r['gender'] ?></td>
              <td><?= $r['mobile'] ?></td>
              <td><?= htmlentities($r['address']) ?></td>
              <td><?= $r['birthday'] ?></td>
              <td><?= $r['preferred_products'] ?></td>
              <td><?= $r['created_at'] ?></td>
              <td><?= $r['status'] ?></td>
              <td><?= $r['photo'] ?></td>


            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
  <div class="row ">
    <div class="col ">
      <nav aria-label="Page navigation example translate-middle" class="">
        <ul class="pagination">
          <?php for ($i = $page - 5; $i <= $page + 5; $i++) :
            if ($i >= 1 && $i <= $totalPage) :
          ?>
              <li class="page-item">
                <a class="page-link <?= $i == $page ? 'text-dark bg-light' : 'text-light bg-dark' ?>" href="?page=<?= $i ?>"><?= $i ?></a>
              </li>
          <?php
            endif;
          endfor; ?>
        </ul>
      </nav>
    </div>
  </div>
</div>

<?php include __DIR__ . "/parts/scripts.php"; ?>
<?php include __DIR__ . "/parts/html-foot.php"; ?>