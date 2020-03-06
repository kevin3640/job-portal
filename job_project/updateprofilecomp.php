<?php

$oldname=$_REQUEST['oldname'];
$newname=$_REQUEST['newname'];
$newemail=$_REQUEST['newemail'];

include "connection.php";

$q="update employee_registration_tbl set name='$newname',email='$newemail' where name='$oldname'";
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