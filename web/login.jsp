<%--
  Created by IntelliJ IDEA.
  User: cys10
  Date: 2023-03-23
  Time: 오후 6:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<html>
<head>
  <title>푸렌드</title>
  <style>
    body {
      min-height: 100vh;
      background: #6c757d;
    }

    .input-form {
      max-width: 680px;

      margin-top: 80px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
    }
  </style>
</head>
<body>
<div class="container">
  <div class="input-form-backgroud row">
    <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">로그인</h4>
      <form class="validation-form" novalidate>
        <div class="mb-3">
            <label for="id">ID</label>
            <input type="text" class="form-control" id="ID" placeholder="" value="" required>
            <div class="invalid-feedback">
              아이디를 입력해주세요.
            </div>
        </div>

        <div class="mb-3">
            <label for="pw">P/W</label>
            <input type="password" class="form-control" id="PW" placeholder="" value="" required>
            <div class="invalid-feedback">
              비밀번호를 입력해주세요.
            </div>
        </div>

          <label>
              <input type="checkbox">
              <span></span>
              <small>자동 로그인</small>
          </label>

        <div class="mb-4">
            <button class="btn btn-outline-dark mt-auto" type="login">로그인</button>
        </div>
      </form>
    </div>
  </div>
</div>
<script>
  window.addEventListener('load', () => {
    const forms = document.getElementsByClassName('validation-form');

    Array.prototype.filter.call(forms, (form) => {
      form.addEventListener('submit', function (event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }

        form.classList.add('was-validated');
      }, false);
    });
  }, false);
</script>
</body>
</html>
