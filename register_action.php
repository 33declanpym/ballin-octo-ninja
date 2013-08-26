<?php
/*
 * Adds new item from form data.
 */
require "/usr/local/lib/php/Smarty/Smarty.class.php";
require "includes/defs.php";
require "includes/users.php";
# Get form data
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$fName = $_POST['fName'];
$lName = $_POST['lName'];

# add new user with form data
$id = register($username,$email,$password,$fName,$lName);

header("Location: index.php");
exit;
?>