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
		<li><a href="test.php">Manage Details</a></li>
		<li><a href="create.php">Create new record</a></li>
		<li><a class="active"  href="upload.php">Upload a file</a></li>
		<li><a href="admin_logout.php">Logout</a></li>
	</ul>
<div class="container">
<center>
		<h1>Upload CSV to MySQL</h1>
	<form action="import_csv.php" method="POST" enctype="multipart/form-data">
		<label for="csvFile">CSV file:</label>
		<input type="file" name="file"><br>
		<input type="submit" name="submit" value="submit">
	</form>
</center>
</div>					
	</body>
</html>




