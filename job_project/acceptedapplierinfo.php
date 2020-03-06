<?php

$name=$_REQUEST['email'];
$accept="true";
include "connection.php";
$q="select * from appliers where compemail='$name' AND accept='$accept'";
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