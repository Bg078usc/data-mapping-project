<?php
include ("db_connection.php");
error_reporting(0);
//$conn = OpenCon();
//echo "Connected Successfully";
$query = "SELECT * FROM event_defination";

$data = mysqli_query($conn, $query);

$total = mysqli_num_rows($data); 
  echo "number of rows ".$total."<br>";
 //echo $total;

//$result = mysqli_fetch_assoc($data);

if ($total > 0){
        ?>

        <h2>Event Definition</h2>
        <table border = "1" cellspacing = "10">
                <tr>
                <th width = "10%">Event ID(pk)</th>
                <th width = "10%">event list ID(fk)</th>
                <th width = "10%">variable definition ID(fk)</th>
                <th width = "10%">Dataset</th>
                
                <th width = "10%">Patient ID</th>
                <th width = "10%">Event</th>
                <th width = "10%">Closest Date</th>
                <th width = "10%">HB</th>
                <th width = "10%">HCT</th>
                <th width = "10%">RCC</th>
                <th width = "10%">Operations</th>
                <th width = "15%"><a href='create_design.php'>create</a></th>
        </tr>


        
        



<?php
        while($result = mysqli_fetch_assoc($data)){

                echo "<tr>
                <td>".$result['event_id']."</td>
                <td>".$result['event_list_id']."</td>
                <td>".$result['variable_definiation_id']."</td>
                <td>".$result['DATASET']."</td>
                <td>".$result['PATIENT.ID']."</td>
                <td>".$result['EVENT']."</td>
                <td>".$result['CLOSEST.DATE']."</td>
                <td>".$result['HB']."</td>
                <td>".$result['HTC']."</td>
                <td>".$result['RCC']."</td>
                <td><a href='update_design.php'>update</a></td>
                
                <td><a href='delete_design.php'>delete</a></td>
                
                </tr>
                ";
                //echo $result['DATASET']." ".$result['PATIENT.ID']." ".$result['EVENT']." ".$result['CLOSEST.DATE']." ".$result['HB']." ".$result['HCT']." ".$result['RCC']."<br>";
               
                //echo $result['EVENT'];
                //echo $result['CLOSEST.DATE'];
                //echo $result['HB'];
                //echo $result['HCT'];
                //echo $result['RCC'];
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
</table>