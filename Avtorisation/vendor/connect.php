<?php

    $connect = mysqli_connect('localhost', 'root', 'root', 'Course');

    if (!$connect) {
        die('Error connect to DataBase');
    }