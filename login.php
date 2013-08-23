<?php
/*
 * login.php
 * Declan Pym
 * Php file for the login form
 */
require "Smarty/libs/Smarty.class.php";
//require "includes/defs.php";

session_start();
$sessionId = session_id();
//$email = @$_SESSION['email'];
//$employ = @$_SESSION['employer'];
//$category = @$_SESSION['category'];

/* Display results. */
$smarty = new Smarty;
//$smarty->assign("email", $email);
//$smarty->assign("category", $category);
//$smarty->assign("employ", $employ);
$smarty->display("login.tpl");
?>