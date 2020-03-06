<?php

$id=$_REQUEST['pid'];

include "connection.php";

$q="update post set seen='true' where pid='$id'";
$r=mysqli_query($cn,$q);



?>