<?php

$email=$_REQUEST['email'];
$catname=$_REQUEST['password'];
$subname=$_REQUEST['name'];
$title=$_REQUEST['mobile'];
$gender=$_REQUEST['gender'];
$quantity=$_REQUEST['dob'];
$expert=$_REQUEST['experince'];
$skill=$_REQUEST['catname'];
$notes=$_REQUEST['subname'];
$postby=$_REQUEST['city'];
$ans=$_REQUEST['ans'];


include "connection.php";
$q="insert into job_registration_tbl(email,password,name,mobile,gender,dob,experince,catname,subname,city,ans) values('$email','$catname','$subname','$title','$gender','$quantity','$expert','$skill','$notes','$postby','$ans')";
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