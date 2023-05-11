<?php
$con=mysqli_connect("localhost","root","","fitness");

$sql="DELETE FROM registration WHERE u_id='$_GET[id]'";

if(mysqli_query($con,$sql))
	header("refresh:0.1; url=test.php")
?>