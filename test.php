<html>
	<head>
	<title>Be Healthy - Admin</title>
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<!-- favicons
	================================================== -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	</head>
	<body>
	<br/>
	<center>
	<font color="green" size="10"> Be Healthy</font>
	</center>
	<ul>
		<li><a  class="active" href="test.php">Manage  Details</a></li>
		<li><a href="create.php">Create new record</a></li>
		<li><a href="upload.php">Upload a file</a></li>
		<li><a href="admin_logout.php">Logout</a></li>
	</ul>
<div class="container">
<center>
	<form action="" method="POST">
<?php
// Step 1: Create a connection to the MySQL database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "fitness";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Step 2: Execute a SQL query to fetch all the data from the table
$sql = "SELECT * FROM registration";
$result = mysqli_query($conn, $sql);

// Step 3: Display the data in an HTML table
echo "<table>";
echo "<tr>";
while ($fieldinfo = mysqli_fetch_field($result)) {
    echo "<th>" . $fieldinfo->name . "</th>";
}
	

	echo "<th>Update</th>";
	echo "<th>Delete </th>";
echo "</tr>";

while ($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    for ($i=0; $i<mysqli_num_fields($result); $i++) {
        echo "<td>" . $row[$i] . "</td>";
    }
    // Step 4: Add CRUD options for each row of data
    echo "<td><a href='update.php?id=" . $row['u_id'] . "'>Update</a></td>";
    echo "<td><a href='user_delete.php?id=" . $row['u_id'] . "'>Delete</a></td>";
    echo "</tr>";
}
echo "</table>";

// Step 5: Execute the appropriate SQL query when a CRUD option is clicked

mysqli_close($conn); // Close the database connection
?>


</form> 
</center>
</div>					
	</body>
</html>