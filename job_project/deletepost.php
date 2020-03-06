<?php
$title=$_REQUEST['title'];
include "connection.php";

$q="delete from post where title='$title'";
$r=mysqli_query($cn,$q);

if($r)
{
	echo "1";
}
else
{
	echo "0";
}

?>