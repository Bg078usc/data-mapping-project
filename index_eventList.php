<?php
include ("db_connection.php");
error_reporting(0);
//$conn = OpenCon();
//echo "Connected Successfully";
$query = "SELECT * FROM event_list";

$data = mysqli_query($conn, $query);

$total = mysqli_num_rows($data);
 // echo "number of rows ".$total;
 //echo $total;

//$result = mysqli_fetch_assoc($data);

if ($total > 0){
        while($result = mysqli_fetch_assoc($data)){
                echo $result['eventName'];
        }
}


echo "this is the name of the person ".$result[name];

 if ($total != 0 )
{
        echo " table has recordes";
}
else {
        echo "No records found ";
}
?>