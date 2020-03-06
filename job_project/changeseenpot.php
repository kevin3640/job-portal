<?php

$id=$_REQUEST['id'];

include "connection.php";

$q="update appliers set seen='true' where appliersid='$id'";
$r=mysqli_query($cn,$q);



?>