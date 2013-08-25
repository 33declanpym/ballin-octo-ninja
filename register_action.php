<?php
/*
 * Adds new item from form data.
 */
require "Smarty/libs/Smarty.class.php";
require "includes/defs.php";
require "includes/users.php";
# Get form data
$email = $_POST['email'];
$username = $_POST['username'];
$password = $_POST['password'];
$fName = $_POST['fName'];
$lName = $_POST['lName'];

//$email = mysql_escape_string($email);
//$username = mysql_escape_string($username);
//$password = mysql_escape_string($password);
//$fName = mysql_escape_string($fName);
//$lName = mysql_escape_string($lName);

# add new user with form data
register($username,$email,$password,$fName,$lName);

header("Location: index.php");
exit;
?>