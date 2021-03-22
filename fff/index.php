<?php include 'catalog.php'; ?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Каталог</title>
	<link rel="stylesheet" href="style.css">
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
          <li>
            <a class="nav-link" href="../index.html">Home</a>
            <link rel="php" href="../index.html">
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../fff/index.php">Склад</a>
              <link rel="php" href="../fff/index.php">
              </li>
          <li class="nav-item">
          <a class="nav-link" href="../Avtorisation/profile.php">Profile</a>
          <link rel="php" href="../Avtorisation/profile.php">
          </li>
          <li class="nav-item">
            <a class="nav-link" href="../Avtorisation/index.php">Login/Register</a>
            <link rel="php" href="../Avtorisation/index.php">
          </li>
        </ul>
      </div>
    </div>
  </nav>

	<div class="wrapper">
		<div class="sidebar">
			<ul class="category">
				<?php echo $categories_menu ?>
			</ul>
		</div>
		<div class="content">
			<p><?=$breadcrumbs;?></p>
			<br>
			<hr>
			<?php if($products): ?>
				<?php foreach($products as $product): ?>
					<a href="?product=<?=$product['id']?>"><?=$product['title']?></a><br>
				<?php endforeach; ?><br><br>
			<?php else: ?>
				<p>Немає товару!</p>
			<?php endif; ?>
		</div>
	</div>
	<script src="js/jquery-1.9.0.min.js"></script>
	<script src="js/jquery.accordion.js"></script>
	<script src="js/jquery.cookie.js"></script>
	<script>
		$(document).ready(function(){
			$(".category").dcAccordion();
		});
	</script>
	<!-- static resource -->
<link rel="stylesheet" href="styles.css">

<!-- Dynamic styles -->
<style type="text/css">

  *   { color: black;}
  a    { text-decoration: none;}
</style>

</body>
</html>