<?php
session_start();

if ($_SESSION['user']) {
    header('Location: profile.php');
}

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Авторизация и регистрация</title>
    <link rel="stylesheet" href="assets/css/main.css">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>My shop</title>
  <link href="assets/css/main.css" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../css/shop-homepage.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="../index.html">My shop</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="../index.html">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item active">
          <a class="nav-link" href="profile.php">Profile</a>
          <link rel="php" href="profile.php">
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="index.php">Login</a>
            <link rel="php" href="index.php">
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="register.php">Register</a>
            <link rel="php" href="register.php">
          </li>
        </ul>
      </div>
    </div>
  </nav>

</head>
<body>
    <!-- Форма авторизации -->

    <form>
        <label>Логин</label>
        <input type="text" name="login" placeholder="Введите свой логин">
        <label>Пароль</label>
        <input type="password" name="password" placeholder="Введите пароль">
        <button type="submit" class="login-btn">Войти</button>
        <p>
            У вас нет аккаунта? - <a href="register.php">зарегистрируйтесь</a>!
        </p>
       
    </form>

    <script src="assets/js/jquery-3.4.1.min.js"></script>
    <script src="assets/js/main.js"></script>
    <footer style="margin-top:500px; 
position: absolute;
	left: 0;
	bottom: 0;
	width: 100%;
	height: 80px;}" class="py-4 bg-dark">
  <div class="container">
    <p class="m-0 text-center text-white">My book shop</p>
  </div>
</footer>
</body>
</html>