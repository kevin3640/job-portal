<?php

$email=$_REQUEST['email'];
$password=$_REQUEST['password'];
include "connection.php";
$q="select * from job_registration_tbl where email='$email' AND password='$password'";
$res=mysqli_query($cn,$q);
$count=mysqli_fetch_row($res);
if($count<=0)
{
    echo "0";
}
else
{
    echo "1";
}


?>