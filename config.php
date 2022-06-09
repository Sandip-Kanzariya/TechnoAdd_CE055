<?php
$hostname = "http://localhost/TechnoAdd_CE055";


//connecting MYSQL database from PHP Script
$servername = "localhost";
$username = "root";  // default 
$password = ""; // default 
$database = "TechnoAdd_CE055";

// create connection 
$conn = mysqli_connect($servername, $username, $password, $database) or die("Connection failed : " . mysqli_connect_error());

?>
