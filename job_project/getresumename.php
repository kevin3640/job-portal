<?php

$title=$_REQUEST['email'];
include "connection.php";
$q="select * from resume where user='$title'";
$r=mysqli_query($cn,$q);
$arr=mysqli_fetch_array($r);

echo $arr['url'];

?>