<?php


$accept=$_REQUEST['accept'];
$title=$_REQUEST['title'];
$email=$_REQUEST['email'];

include "connection.php";
$q="update appliers set accept='$accept' where title='$title' AND email='$email'";

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