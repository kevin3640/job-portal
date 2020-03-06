<?php

$title=$_REQUEST['title'];
$email;
include "connection.php";
$q="select * from post where title='$title'";
$r=mysqli_query($cn,$q);
$arr=mysqli_fetch_array($r);

echo $arr['image'];

?>