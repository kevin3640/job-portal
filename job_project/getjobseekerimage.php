<?php

$title=$_REQUEST['email'];
include "connection.php";
$q="select * from dpjob where email='$title'";
$r=mysqli_query($cn,$q);
$arr=mysqli_fetch_array($r);

echo $arr['url'];

?>