<?php

$oldname=$_REQUEST['oldname'];
$newname=$_REQUEST['newname'];
$newmobile=$_REQUEST['newmobile'];
$newgender=$_REQUEST['newgender'];
$newdob=$_REQUEST['newdob'];
$newexperince=$_REQUEST['newexperince'];
$newcity=$_REQUEST['newcity'];
include "connection.php";

$q="update job_registration_tbl set name='$newname',mobile='$newmobile',gender='$newgender',dob='$newdob',experince='$newexperince',city='$newcity' where email='$oldname'";
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