<?php

$email=$_REQUEST['email'];
$ans=$_REQUEST['ans'];
$newpassword=$_REQUEST['new'];

include "connection.php";

$q="update employee_registration_tbl set password='$newpassword' where email='$email' AND ans='$ans'";
$r=mysqli_query($cn,$q);

if($r)
{
	echo "1";
}
else
{
	echo "0";
}
?>