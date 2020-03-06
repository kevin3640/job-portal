<?php
$title=$_REQUEST['title'];
$name=$_REQUEST['name'];
$image=$_REQUEST['image'];
$email=$_REQUEST['email'];
$no=$_REQUEST['no'];
include "connection.php";
$q="insert into appliers(title,img,name,email,no) values('$title','$image','$name','$email','$no')";
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