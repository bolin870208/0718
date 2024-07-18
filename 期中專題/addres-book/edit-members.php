<?php
require __DIR__ . '/parts/admin-required.php';
require __DIR__ . '/db-connect.php';

$ab_id = isset($_GET['ab_id']) ? intval($_GET['ab_id']) : 0;
if (empty($ab_id)) {
  header('Location: index_.php');
  exit;
}
$sql = "SELECT * FROM address_book WHERE ab_id=$ab_id";


$r = $pdo->query($sql)->fetch();
if (empty($r)) {
  header('Location: index_.php');
  exit;
}

# header('Content-Type: application/json'); # 告訴瀏覽器內容為 JSON
# echo json_encode($r);
?>
<?php include __DIR__ . "/parts/html-head.php"; ?>
<style>
  form .mb-3 .form-text {
    color: red;
  }
</style>
<?php include __DIR__ . "/parts/navbar.php"; ?>
<div class="container mt-3 mb-3 me-3">
  <div class="row">
    <div class="col-6">
      <div class="card">

        <div class="card-body">
          <h5 class="card-title">編輯通訊錄</h5>

          <form name="form1" onsubmit="sendData(event)" novalidate>
            <input type="hidden" name="ab_id" value="<?= $r['ab_id'] ?>">

            <div class="mb-3">
              <label for="name" class="form-label">姓名</label>
              <input type="text" class="form-control" name="name" value="<?= htmlentities($r['name']) ?>" id="name" required>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="email" class="form-label">email帳號</label>
              <input type="email" class="form-control" name="email" value="<?= $r['email'] ?>" id="email">
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="gender" class="form-label">性別</label>
              <select class="form-control" name="gender" id="gender">
                <option value="男">男</option>
                <option value="女">女</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="membership_level" class="form-label">會員等級</label>
              <select class="form-control" name="membership_level" id="membership_level">

                <option value="一般會員">一般會員</option>
                <option value="高級會員">高級會員</option>
                <option value="VIP會員">VIP會員</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="mobile" class="form-label">手機</label>
              <input type="text" class="form-control" name="mobile" value="<?= $r['mobile'] ?>" id="mobile">
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="birthday" class="form-label">生日</label>
              <input type="date" class="form-control" name="birthday" value="<?= $r['birthday'] ?>" id="birthday">
            </div>

            <div class="mb-3">
              <label for="preferred_products" class="form-label">偏好產品</label>
              <select class="form-control" name="preferred_products" id="preferred_products">
                <option value="未知">未知</option>
                <option value="1號豆">1號豆</option>
                <option value="2號豆">2號豆</option>
                <option value="3號豆">3號豆</option>
                <option value="4號豆">4號豆</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="status" class="form-label">狀態</label>
              <select class="form-control" name="status" id="status">
                <option value="未驗證">未驗證</option>
                <option value="已驗證">已驗證</option>
                <option value="停用">停用</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="address" class="form-label">地址</label>
              <textarea class="form-control" name="address" id="address" rows="3"><?= htmlentities($r['address']) ?></textarea>
            </div>
            <button type="submit" class="btn btn-primary">修改</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">新增結果</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-success" role="alert">
          編輯成功
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">關閉</button>
        <a href="index_.php" class="btn btn-primary">到列表頁</a>
      </div>
    </div>
  </div>
</div>

<?php include __DIR__ . "/parts/scripts.php"; ?>
<script>
  const nameField = document.form1.name;
  const emailField = document.form1.email;
  const modal = new bootstrap.Modal('#exampleModal');
  const modalBody = document.querySelector('#exampleModal .modal-body');

  function validateEmail(email) {
    const re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }

  const sendData = e => {
    e.preventDefault(); // 不要使用傳統的表單送出, 使用 AJAX
    // 重置錯誤訊息
    nameField.nextElementSibling.innerHTML = '';
    nameField.style.border = '1px solid #CCC';
    emailField.nextElementSibling.innerHTML = '';
    emailField.style.border = '1px solid #CCC';

    let isPass = true; // 表單有沒有通過檢查

    // TODO: 表單欄位的資料檢查
    if (nameField.value.length < 2) {
      isPass = false;
      nameField.nextElementSibling.innerHTML = '請填寫正確的姓名';
      nameField.style.border = '1px solid red';
    }
    if (!validateEmail(emailField.value)) {
      isPass = false;
      emailField.nextElementSibling.innerHTML = '請填寫正確的 Email';
      emailField.style.border = '1px solid red';
    }

    if (isPass) {
      // FormData 的個體看成沒有外觀的表單
      const fd = new FormData(document.form1);

      fetch('edit-members-api.php', {
          method: 'POST',
          body: fd, // enctype: multipart/form-data
        }).then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            modalBody.innerHTML = `
            <div class="alert alert-success" role="alert">
              編輯成功
            </div>`;
          } else {
            modalBody.innerHTML = `
            <div class="alert alert-danger" role="alert">
              沒有修改
            </div>`;
          }
          modal.show();
        })
        .catch(ex => console.log(ex))
    }
  };
</script>
<?php include __DIR__ . "/parts/html-foot.php"; ?>