<?php

define("DBHOST", "localhost");
define("DBUSER", "root");
define("DBPASS", "root");
define("DB", "course");

$connection = @mysqli_connect(DBHOST, DBUSER, DBPASS, DB) or die("Немає зєдннання з БД");
mysqli_set_charset($connection, "utf8") or die("Не встановлена кодування зєднання");