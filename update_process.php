<?php
$conn=mysqli_connect("localhost","root","","fitness");
//$id = $_GET[id];


// Step 5: When the user submits the form, execute an SQL query to update the data in the MySQL database


    $sql = "UPDATE registration SET first_name='$_POST[column1]', last_name='$_POST[column2]', gender='$_POST[column3]', age='$_POST[column4]',phone_number='$_POST[column5]', mail='$_POST[column6]', password='$_POST[column7]',address='$_POST[column8]' WHERE u_id='$_POST[id]'";

    // Update the query with the values for the other columns as well

    if (mysqli_query($conn, $sql)) {
        echo "Record updated successfully"; 
	header("refresh:1; url=test.php");
    } else {
        echo "Error updating record: " . mysqli_error($conn);
    }


mysqli_close($conn); // Close the database connection
?>