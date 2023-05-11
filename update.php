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
		<li><a  class="active" href="manage.php">Manage Registration Details</a></li>
		<li><a href="manage_contactus.php">Manage Contact Us</a></li>
		<li><a href="admin_logout.php">Logout</a></li>
	</ul>
<div class="container">
<center>
<?php
// Step 1: Create a connection to the MySQL database
$conn =mysqli_connect("localhost","root","","fitness");


// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Step 2: Retrieve the ID of the row that needs to be updated
$id = $_GET['id'];

// Step 3: Retrieve the data of the selected row
$sql = "SELECT * FROM registration WHERE u_id = $id";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);



// Step 4: Display a form with the retrieved data
?>
<form method="post" action="update_process.php">

   <h3> <label for="id">User ID:</label>
    <input type="text" name="id" value="<?php echo $row['u_id']; ?>"><br>	</h3>
    <label for="column1">First Name:</label>
    <input type="text" name="column1" value="<?php echo $row['first_name']; ?>"><br>
    <label for="column2">Last Name:</label>
    <input type="text" name="column2" value="<?php echo $row['last_name']; ?>"><br>
    <label for="column3">Gender:</label>
    <input type="text" name="column3" value="<?php echo $row['gender']; ?>"><br>
    <label for="column4">Age:</label>
    <input type="text" name="column4" value="<?php echo $row['age']; ?>"><br>
    <label for="column5">Phone Number:</label>
    <input type="text" name="column5" value="<?php echo $row['phone_number']; ?>"><br>
    <label for="column6">Mail:</label>
    <input type="text" name="column6" value="<?php echo $row['mail']; ?>"><br>
    <label for="column7">Password:</label>
    <input type="text" name="column7" value="<?php echo $row['password']; ?>"><br>
    <label for="column8">Address:</label>
    <input type="text" name="column8" value="<?php echo $row['address']; ?>"><br>
    <!-- Add more inputs for each column in the table -->

    <input type="submit" name="submit" value="Update">
</form>



</center>
</div>					
	</body>
</html>



