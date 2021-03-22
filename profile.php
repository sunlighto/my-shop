<?php
session_start();
if (!$_SESSION['user']) {
    header('Location: /');
}
?>

<!doctype html>
<html lang="en">
<head>


  <title>My shop</title>
  <link href="assets/css/main.css" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
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
          <li class="nav-item">
              <a class="nav-link" href="fff/index.php">Склад</a>
              <link rel="php" href="fff/index.php">
              </li>
          <li class="nav-item active">
          <a class="nav-link" href="profile.php">Profile</a>
          <link rel="php" href="profile.php">
          </li>
          <h2 style="margin:9.5px 0; margin-left:5px; font-size:18px; color:#fff;"><?= $_SESSION['user']['full_name'] ?></h2>
          <a style="margin:7px 0; margin-left:25px; font-size:18px; color:#fff;" href="vendor/logout.php" class="logout">Выход</a>
        </ul>
      </div>
    </div>
  </nav>

    <!-- Профиль -->

    <form>
        <img src="<?= $_SESSION['user']['avatar'] ?>" width="200" alt="">
        <a href="#"><?= $_SESSION['user']['email'] ?></a>
    </form>
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