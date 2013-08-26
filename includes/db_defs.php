<?php
/* Database access functions. */
// Read HOST, USER, PASSWORD, DATABASE from file
require "includes/mysql.php";
/* Show MySQL error. */
function show_error() {
	die("Error ". mysqli_errno() . " : " . mysqli_error());
}

/* Open connection and select database. */
function mysql_open() {
	$mysqli = new mysqli('localhost', 'phprpg2', 'phprpg178', 'phprpg');
	if ($mysqli->connect_error) {
		die('Connect Error (' . $mysqli->connect_errno . ') ' . $mysqli->connect_error);
	}
	return $mysqli;
}
?>