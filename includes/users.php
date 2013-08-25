<?php // users.php :: Handles user account functions.
require "includes/db_defs.php";

function register($username,$email,$password,$fName,$lName) {
	$passwd = md5($password);
	$mysqli = mysql_open() or show_error();
	
	//Sanitisation
	//$email = $mysqli->real_escape_string($email);
	//$username = $mysqli->real_escape_string($username);
	//$password = $mysqli->real_escape_string($password);
	//$fName = $mysqli->real_escape_string($fName);
	//$lName = $mysqli->real_escape_string($lName);
	
	$sql = "INSERT INTO users (userName, password, fName, lName, email) 
		values ('$username','$passwd','$fName','$lName','$email')";
    
	if ($result = $mysqli->query($sql)){
		$id = $mysqli->insert_id;
	}
	$id = $mysqli->insert_id;
	$mysqli->close() or show_error();
    return $id;
	echo("User Successfully Added");
}
?>