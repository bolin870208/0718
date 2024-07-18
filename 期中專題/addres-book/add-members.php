<?php
require __DIR__ . '/parts/admin-required.php';
$title = "新增通訊錄";
$pageName = 'ab_add';
require __DIR__ . '/db-connect.php';
?>

<?php include __DIR__ . "/parts/html-head.php"; ?>
<style>
  html {
    height: 100%;
  }

  .form-text {
    color: red;
  }
</style>
<?php include __DIR__ . "/parts/navbar.php"; ?>


<div class="container mt-3 me-3">
  <div class="row">
    <div class="col-6">
      <div class="card">

        <div class="card-body">
          <h5 class="card-title">新增通訊錄</h5>

          <form name="form1" onsubmit="sendData(event)" novalidate>

            <div class="mb-3">
              <label for="name" class="form-label">姓名</label>
              <input type="text" class="form-control" id="name" name="name" required>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="email" class="form-label">email帳號</label>
              <input type="email" class="form-control" id="email" name="email" required>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="password" class="form-label">密碼</label>
              <input type="password" class="form-control" id="password" name="password" required>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="membership_level" class="form-label">會員等級</label>
              <select class="form-control" name="membership_level" id="membership_level" required>

                <option value="一般會員">一般會員</option>
                <option value="高級會員">高級會員</option>
                <option value="VIP會員">VIP會員</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="gender" class="form-label">性別</label>
              <select class="form-control" name="gender" id="gender" required>
                <option value="">請選擇性別</option>
                <option value="男">男</option>
                <option value="女">女</option>
              </select>
            </div>

            <div class="mb-3">
              <label for="mobile" class="form-label">電話</label>
              <input type="text" class="form-control" id="mobile" name="mobile" required>
              <div class="form-text"></div>
            </div>

            <div class="mb-3">
              <label for="address" class="form-label">地址</label>
              <input class="form-control" id="address" name="address" required>
              <div class="form-text"></div>
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
              <label for="birthday" class="form-label">生日</label>
              <input type="date" name="birthday" id="birthday" class="form-control datepicker" placeholder="yyyy/mm/dd">
            </div>

            <button type="submit" class="btn btn-primary">確認新增</button>
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
        <h5 class="modal-title" id="exampleModalLabel">新增結果</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-success" role="alert">
          新增成功
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
  const passwordField = document.form1.password;
  const genderField = document.form1.gender;
  const mobileField = document.form1.mobile;
  const addressField = document.form1.address;
  const birthdayField = document.form1.birthday;
  const modal = new bootstrap.Modal('#exampleModal');
  const modalBody = document.querySelector('#exampleModal .modal-body');


  function validateEmail(email) {
    const re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }



  const sendData = e => {
    e.preventDefault(); //不要用傳統表單送出，用ajax

    // 重設錯誤訊息
    nameField.nextElementSibling.innerHTML = '';
    nameField.style.border = '1px solid #ccc';
    emailField.nextElementSibling.innerHTML = '';
    emailField.style.border = '1px solid #ccc';
    passwordField.nextElementSibling.innerHTML = '';
    passwordField.style.border = '1px solid #ccc';
    mobileField.nextElementSibling.innerHTML = '';
    mobileField.style.border = '1px solid #ccc';
    addressField.nextElementSibling.innerHTML = '';
    addressField.style.border = '1px solid #ccc';

    let isPass = true; //表單有沒有通過檢查

    //TODO表單欄位檢查
    if (nameField.value.length < 2) {
      isPass = false;
      nameField.nextElementSibling.innerHTML = '請填寫正確姓名';
      nameField.style.border = '1px solid red'
    }

    if (!validateEmail(emailField.value)) {
      isPass = false;
      emailField.nextElementSibling.innerHTML = '請填寫正確mail';
      emailField.style.border = '1px solid red'
    }


    if (passwordField.value.length === 0) {
      isPass = false;
      passwordField.nextElementSibling.innerHTML = '請輸入要使用的密碼';
      passwordField.style.border = '1px solid red';
      // Handle error for password field
    }


    if (mobileField.value.length < 10) {
      isPass = false;
      mobileField.nextElementSibling.innerHTML = '請輸入正確電話號碼';
      mobileField.style.border = '1px solid red';
    }


    if (addressField.value.length < 3) {
      isPass = false;
      addressField.nextElementSibling.innerHTML = '請輸入正確地址';
      addressField.style.border = '1px solid red';
    }




    if (isPass) {
      //看成沒有外觀的表單
      const fd = new FormData(document.form1);
      fetch('add-members-api.php', {
          method: 'POST',
          body: fd, //enctype: multipart/form-data
        }).then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            modalBody,
            innerHTML = `
            <div class="alert alert-success" role="alert">
              新增成功
            </div>`;
          }
          else {
            modalBody,
            innerHTML = `
            <div class="alert alert-danger" role="alert">
              沒有新增
            </div>`;
          }
          modal.show();
        })
        .catch(ex => console.log(ex))
    }
  };
</script>
<?php include __DIR__ . "/parts/html-foot.php"; ?>