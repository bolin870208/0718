<?php
$title = "登入";
$pageName = "login";

require __DIR__ . '/db-connect.php';

?>
<?php include __DIR__ . "/parts/html-head.php"; ?>
<style>
  html {
    height: 100%;
  }

  .login-box {
    position: absolute;
    top: 50%;
    left: 50%;
    width: 500px;
    padding: 30px;
    transform: translate(-50%, -50%);
    background: rgba(0, 0, 0, 0.5);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.6);
    border-radius: 10px;
  }

  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    color: #fff;
    text-align: center;
  }

  .login-box .user-box {
    position: relative;
  }

  .login-box .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    outline: none;
    background: transparent;
    border: none;
    border-bottom: 1px solid #ffffff;
  }

  .login-box .user-box label {
    position: absolute;
    top: 0;
    left: 10px;
    padding: 10px 0;
    font-size: 18px;
    color: #fff;
    pointer-events: none;
    transition: 0.5s;
  }

  .login-box .user-box input:focus~label,
  .login-box .user-box input:valid~label {
    top: -20px;
    left: 0;
    color: #f4772f;
    font-size: 16px;
  }

  .login-box form a {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #f4772f;
    font-size: 18px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: 0.5s;
    letter-spacing: 4px;
    margin-top: 30px;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }

  .login-box a:hover {
    background: #f4772f;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #f4772f,
      0 0 25px #f4772f,
      0 0 50px #f4772f,
      0 0 100px #f4772f;
  }

  .login-box a span {
    position: absolute;
    display: block;
  }

  .login-box a span:nth-child(1) {
    top: 0;
    left: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg, transparent, #f4772f);
    animation: btn-anim1 1s linear infinite;
  }

  @keyframes btn-anim1 {
    0% {
      left: -100%;
    }

    50%,
    100% {
      left: 100%;
    }
  }

  .login-box a span:nth-child(2) {
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg, transparent, #f4772f);
    animation: btn-anim2 1s linear infinite;
    animation-delay: 0.25s;
  }

  @keyframes btn-anim2 {
    0% {
      top: -100%;
    }

    50%,
    100% {
      top: 100%;
    }
  }

  .login-box a span:nth-child(3) {
    bottom: 0;
    right: 100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg, transparent, #f4772f);
    animation: btn-anim3 1s linear infinite;
    animation-delay: 0.5s;
  }

  @keyframes btn-anim3 {
    0% {
      right: -100%;
    }

    50%,
    100% {
      right: 100%;
    }
  }

  .login-box a span:nth-child(4) {
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg, transparent, #f4772f);
    animation: btn-anim4 1s linear infinite;
    animation-delay: 0.75s;
  }

  @keyframes btn-anim4 {
    0% {
      bottom: -100%;
    }

    50%,
    100% {
      bottom: 100%;
    }
  }
</style>
<?php include __DIR__ . "/parts/navbar.php"; ?>

<div class="login-box">
  <h2>Login Form</h2>
  <form name="form1" onsubmit="sendData(event)" novalidate>
    <div class="user-box">
      <input type="email" name="email" id="email" required>
      <label for="email"> <i class="fa-solid fa-envelope"></i> Email</label>
      <div class="form-text"></div>
    </div>
    <div class="user-box">
      <input type="password" name="password" id="password" required>
      <label for="password"> <i class="fa-solid fa-lock"></i> 密碼</label>
      <div class="form-text"></div>
    </div>
    <a type="submit" onclick="sendData(event)" style="color: #fff;">
      登入
      <span></span>
      <span></span>
      <span></span>
      <span></span>
    </a>
  </form>
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">登入錯誤</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <div class="alert alert-danger" role="alert">
          帳號或密碼錯誤
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">關閉</button>
      </div>
    </div>
  </div>
</div>
<?php include __DIR__ . "/parts/scripts.php"; ?>
<script>
  const emailField = document.form1.email;
  const modal = new bootstrap.Modal('#exampleModal');

  function validateEmail(email) {
    const re =
      /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
  }

  const sendData = e => {
    e.preventDefault(); // 不要使用傳統的表單送出, 使用 AJAX
    // 重置錯誤訊息
    emailField.nextElementSibling.innerHTML = '';
    emailField.style.border = '1px solid #CCC';

    let isPass = true; // 表單有沒有通過檢查

    // TODO: 表單欄位的資料檢查

    if (!validateEmail(emailField.value)) {
      isPass = false;
      emailField.nextElementSibling.innerHTML = '請填寫正確的 Email';
      emailField.style.border = '1px solid red';
    }

    if (isPass) {
      // FormData 的個體看成沒有外觀的表單
      const fd = new FormData(document.form1);

      fetch('login-api.php', {
          method: 'POST',
          body: fd, // enctype: multipart/form-data
        }).then(r => r.json())
        .then(result => {
          console.log(result);
          if (result.success) {
            location.href = "index_.php";
          } else {
            modal.show();
          }

        })
        .catch(ex => console.log(ex))
    }
  };
</script>
<?php include __DIR__ . "/parts/html-foot.php"; ?>