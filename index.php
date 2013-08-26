<?php
/* 
 * Home page of phpRPG (name undecided)
 * Author: Declan Pym
 * Date: 13/11/2012
 */
require "/usr/local/lib/php/Smarty/Smarty.class.php";
//require "includes/defs.php";

session_start();
//$sessionId = session_id();
//$email = @$_SESSION['email'];
//$employ = @$_SESSION['employ'];
//$category = @$_SESSION['category'];

//$latest = get_latest_jobs();

$smarty = new Smarty();
//$smarty->assign("email", $email);

$smarty->display('index.tpl');
?>
