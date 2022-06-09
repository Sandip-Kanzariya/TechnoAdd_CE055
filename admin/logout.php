
<?php
include "config.php";

session_start();

session_unset(); // remove values of variable 

session_destroy(); // destroy session

header("Location: {$hostname}/admin/");

?>
