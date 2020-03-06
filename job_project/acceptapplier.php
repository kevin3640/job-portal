<?php


$accept=$_REQUEST['accept'];
$title=$_REQUEST['title'];
$email=$_REQUEST['email'];
$compemail=$_REQUEST['compemail'];
$compimage=$_REQUEST['compimage'];
$compname=$_REQUEST['compname'];

include "connection.php";
$q="update appliers set accept='$accept',compemail='$compemail',compimg='$compimage',compname='$compname' where title='$title' AND email='$email'";

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