<?php
$email=$_REQUEST['email'];
$title=$_REQUEST['title'];
$check;

include "connection.php";
$q="select * from appliers where email='$email' AND title='$title'";
$r=mysqli_query($cn,$q);
$arr=mysqli_fetch_array($r);

echo $arr['accept'];

?>