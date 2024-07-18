<?php
require __DIR__ . '/parts/admin-required.php';
$title = "通訊錄列表";
$pageName = 'ab_list';
$perPage = 20; // 每頁顯示20筆
$page = isset($_GET["page"]) ? intval($_GET["page"]) : 1;
if ($page < 1) {
  header('Location: ?page=1');
  exit;
}

require __DIR__ . '/db-connect.php';

// 獲取查詢條件
$id = isset($_GET['id']) ? $_GET['id'] : '';
$name = isset($_GET['name']) ? $_GET['name'] : '';
$d_from = isset($_GET['d_from']) ? $_GET['d_from'] : '';
$d_to = isset($_GET['d_to']) ? $_GET['d_to'] : '';

$conditions = [];
$params = [];

// 建構條件
if (!empty($id)) {
  $conditions[] = "ab_id = ?";
  $params[] = $id;
}

if (!empty($name)) {
  $conditions[] = "name LIKE ?";
  $params[] = '%' . $name . '%';
}

// 生日範圍
if (!empty($d_from)) {
  $conditions[] = "birthday >= ?";
  $params[] = $d_from;
}

if (!empty($d_to)) {
  $conditions[] = "birthday <= ?";
  $params[] = $d_to;
}

// 建構sql查詢
$sql = "SELECT * FROM address_book";
if (!empty($conditions)) {
  $sql .= " WHERE " . implode(" AND ", $conditions);
}
$sql .= " ORDER BY ab_id DESC LIMIT " . (($page - 1) * $perPage) . ", " . $perPage;

// 查數據
$stmt = $pdo->prepare($sql);
$stmt->execute($params);
$rows = $stmt->fetchAll();

// 獲取總行數
$t_sql = "SELECT COUNT(1) FROM address_book";
$totalRows = $pdo->query($t_sql)->fetch(PDO::FETCH_NUM)[0];
if ($totalRows) {
  $totalPage = ceil($totalRows / $perPage);
  if ($page > $totalPage) {
    header('Location: ?page=' . $totalPage);
    exit;
  }
}
?>


<?php include __DIR__ . "/parts/html-head.php"; ?>
<?php include __DIR__ . "/parts/navbar.php"; ?>
<div class="container">
  <div class="row mt-5">
    <div class="mt-2">
      <form action="list-admin.php" method="get">
        <label for="id" style="color:#ffffff;">編號:</label>
        <input type="text" name="id" id="id" placeholder="請輸入編號" class="me-2" value="<?= htmlspecialchars($id) ?>">
        <label for="name" style="color:#ffffff;">姓名:</label>
        <input type="text" name="name" id="name" placeholder="請輸入姓名" class="me-2" value="<?= htmlspecialchars($name) ?>">
        <label for="name" style="color:#ffffff;">生日:</label>
        <input type="date" name="d_from"> <span style="color:#ffffff;">~</span>
        <input type="date" name="d_to">
        <button type="submit" class="btn btn-dark ms-2 p-1 px-3">查詢</button>
      </form>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
    <div class="col rounded-3 mt-2 mb-3">
      <table class="table table-dark table-striped table-bordered" style="background:#ffffff;">
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
            <th><i class="fa-solid fa-pen-to-square"></i></th>
            <th><i class="fa-solid fa-trash-can"></i></th>

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
              <td>
                <a style="color: #f4772f;" href="edit-members.php?ab_id=<?= $r['ab_id'] ?>"><i class="fa-solid fa-pen-to-square"></i>
                </a>
              </td>
              <td><a style="color: #f4772f;" href="javascript: deleteOne(<?= $r['ab_id'] ?>)">
                  <i class="fa-solid fa-trash-can"></i>
                </a>
              </td>

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
<script>
  const data = <?= json_encode($rows) ?>;
  const deleteOne = (ab_id) => {
    if (confirm(`是否要刪除編號為${ab_id}的資料??`)) {
      location.href = `del-members.php?ab_id=${ab_id}`;
    }
  };
</script>

<?php include __DIR__ . "/parts/html-foot.php"; ?>