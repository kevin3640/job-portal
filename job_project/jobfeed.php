<?php

$email=$_REQUEST['email'];
$feed=$_REQUEST['feed'];
$rate=$_REQUEST['rate'];
include "connection.php";
$q="insert into jobfeedback(email,feed,rate) values('$email','$feed','$rate')";
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