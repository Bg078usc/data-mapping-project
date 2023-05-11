<?php

 $dbhost = "localhost";
 $dbuser = "root";
 $dbpass = "";
 $db = "hospital";
 $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$db);

 if($conn)
 {
   //echo "connection ok ";
 }
 else 
 {
    echo "connection couldnot be established".mysqli_connect_error();
 }
 
   
?>