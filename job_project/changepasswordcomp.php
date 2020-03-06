<?php
$email=$_REQUEST['email'];
$password=$_REQUEST['npassword'];
include "connection.php";
$q="update employee_registration_tbl set password='$password' where email='$email'";
$r=mysqli_query($cn,$q);

if($r)
	echo "1";
else
	echo "0";
?>