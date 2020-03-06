<?php

$title=$_REQUEST['title'];
include "connection.php";
$q="select * from post where title='$title'";
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