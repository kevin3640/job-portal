<?php

$name=$_REQUEST['name'];
$email=$_REQUEST['email'];
$password=$_REQUEST['password'];
$ans=$_REQUEST['ans'];

include "connection.php";
$q="insert into employee_registration_tbl(name,email,password,ans) values('$name','$email','$password','$ans')";
$c="select email from employee_registration_tbl where email='$email'";
$ca=mysqli_query($cn,$c);
$count=mysqli_fetch_row($ca);
if($count<=0)
{

$r=mysqli_query($cn,$q);
if($r)
{
    echo "1";
}
else
{
    echo "0";
}
}
else
{
	echo "Alreay exist ... Please enter another email";
}

?>