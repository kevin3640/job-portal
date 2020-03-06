<?php

$email=$_REQUEST['email'];
$compname=$_REQUEST['compname'];
$catname=$_REQUEST['catname'];
$subname=$_REQUEST['subname'];
$title=$_REQUEST['title'];
$salary=$_REQUEST['salary'];
$image=$_REQUEST['img'];
$quantity=$_REQUEST['quantity'];
$expert=$_REQUEST['expert'];
$skill=$_REQUEST['skill'];
$notes=$_REQUEST['notes'];
$postby=$_REQUEST['postby'];
$date=$_REQUEST['date'];

include "connection.php";
$q="insert into post(email,compname,catname,subname,title,salary,image,quantity,expert,skill,notes,postby,date) values('$email','$compname','$catname','$subname','$title',$salary,'$image','$quantity','$expert','$skill','$notes','$postby','$date')";
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