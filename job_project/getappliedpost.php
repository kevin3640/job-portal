<?php
$email=$_REQUEST['email'];
include "connection.php";
$q="select * from appliers where email='$email' order by appliersid desc";
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