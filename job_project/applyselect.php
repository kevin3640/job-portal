<?php

$title=$_REQUEST['title'];
include "connection.php";
//$id="select MAX(appliersid) from appliers";
$q="select * from appliers where title='$title' order by appliersid desc";
$r=mysqli_query($cn,$q);

$in=array();

while($i=mysqli_fetch_array($r,MYSQLI_ASSOC))
{
	$in[]=$i;
}
// $out=array();

$out['data']=$in;

echo json_encode($out);

?>