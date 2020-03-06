<?php

$oldtitle=$_REQUEST['oldtitle'];
$catname=$_REQUEST['catname'];
$subname=$_REQUEST['subname'];
$title=$_REQUEST['title'];
$salary=$_REQUEST['salary'];
$quantity=$_REQUEST['quantity'];
$expert=$_REQUEST['expert'];
$skill=$_REQUEST['skill'];
$notes=$_REQUEST['notes'];
$postby=$_REQUEST['postby'];
$date=$_REQUEST['date'];

include "connection.php";
$q="update post set catname='$catname',subname='$subname',title='$title',salary='$salary',quantity='$quantity',expert='$expert',skill='$skill',notes='$notes',postby='$postby',date='$date' where title='$oldtitle'";
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