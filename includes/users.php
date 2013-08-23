<?php // users.php :: Handles user account functions.
require "includes/db_defs.php";

function register($username,$email,$password,$fName,$lName) {
	
	// Sanitise input data
    $email = mysql_escape_string($email);
	$username = mysql_escape_string($username);
    $password = mysql_escape_string($password);
    $fName = mysql_escape_string($fName);
	$lName = mysql_escape_string($lName);
	
	$passwd = md5($password1);
	
	$connection = mysql_open();
	
    $query = "insert into users (userName, password, fName, lName, email) " .
             "values ('$username','$passwd','$fName','$lName','$email')";
   
	$results = mysql_query($query,$connection) or show_error();
	//$id = mysql_insert_id();
    mysql_close($connection) or show_error();
	//return $id;
	//print("User Successfully Added");
}
















?>