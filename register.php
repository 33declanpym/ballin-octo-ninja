<?php
/*
 * register.php
 * Declan Pym
 * Php file for the register form
 */
require "Smarty/libs/Smarty.class.php";
require "includes/defs.php";

session_start();
$sessionId = session_id();
//$email = @$_SESSION['email'];


/* Display results. */
$smarty = new Smarty;
//$smarty->assign("email", $email);

$smarty->display("register.tpl");
?>