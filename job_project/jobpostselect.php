<?php

$strsubcat=$_REQUEST['strsubcat'];
include "connection.php";
$q="select * from post where subname='$strsubcat' order by pid desc";
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