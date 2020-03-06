<?php

$title=$_REQUEST['email'];
include "connection.php";
$q="select * from employee_registration_tbl where email='$title'";
$r=mysqli_query($cn,$q);
$arr=mysqli_fetch_array($r);

echo $arr['name'];

?>