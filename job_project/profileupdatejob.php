<?php

$name=$_REQUEST['name'];
include "connection.php";
$q="select * from job_registration_tbl where email='$name'";
$r=mysqli_query($cn,$q);

$in=array();

while($i=mysqli_fetch_array($r,MYSQLI_ASSOC))
{
	$in[]=$i;
}
$out=array();

$out['data']=$in;

echo json_encode($out);

?>