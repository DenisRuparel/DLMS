<?php
session_start();

if(isset($_POST['logout_btn'])){
    session_destroy();
    unset($_SESSION['username']);
    header('Location: login.php');
}

if(isset($_POST['logoutbtn'])){
    session_destroy();
    unset($_SESSION['uid']);
    header('Location: admin_login.php');
  }
?>