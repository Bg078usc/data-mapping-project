<html>
	<head>
	<title>Be strong - Admin</title>
	<link rel="stylesheet" type="text/css" href="mystyle.css">
	<!-- favicons
	================================================== -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
	</head>
	<body>
	<br/>
	<center>
	<font color="green" size="10"> Be Strong</font>
	</center>
	<ul>
		<li><a  class="active" href="manage.php">Manage Registration Details</a></li>
		<li><a href="manage_contactus.php">Manage Contact Us</a></li>
		<li><a href="admin_logout.php">Logout</a></li>
	</ul>
<div class="container">
<center>
	<form action="" method="POST">
<label for="event">Select an event:</label>
  <select name="event" id="event">
  <option value="PATHOLOGY">PATHOLOGY</option>
  <option value="PRBC">PRBC</option>
  <option value="SURGERY.WAITLIST">SURGERY.WAITLIST</option>
  <option value="PAM.ADMISSION">PAM.ADMISSION</option>
  <option value="PAM.INITIAL.CONTACT">PAM.INITIAL.CONTACT</option>
  <option value="PAM.INITIAL.PATHOLOGY">PAM.INITIAL.PATHOLOGY</option>
  <option value="PAM.DIAGNOSIS">PAM.DIAGNOSIS</option>
  <option value="PAM.TREATMENT">PAM.TREATMENT</option>
  <option value="PAM.FOLLOW.UP.PATHOLOGY">PAM.FOLLOW.UP.PATHOLOGY</option>
  <option value="PAM.TREATMENT.CURTAIL">PAM.TREATMENT.CURTAIL</option>
  <option value="HOSP.PRE.ADMISSION">HOSP.PRE.ADMISSION</option>
  <option value="HOSP.PRE.ADMISSION.PATHOLOGY">HOSP.PRE.ADMISSION.PATHOLOGY</option>
  <option value="HOSP.ADMISSION">HOSP.ADMISSION</option>
  <option value="PREOPERATIVE.PATHOLOGY">PREOPERATIVE.PATHOLOGY</option>
  <option value="PREOPERATIVE.PRBC">PREOPERATIVE.PRBC</option>
  <option value="PREOPERATIVE.MORTALITY">PREOPERATIVE.MORTALITY</option>
  <option value="SURGERY.DIAGNOSIS">SURGERY.DIAGNOSIS</option>
  <option value="SURGERY">SURGERY</option>
  <option value="SURGERY.TREATMENT">SURGERY.TREATMENT</option>
  <option value="INTRAOPERATIVE.PATHOLOGY">INTRAOPERATIVE.PATHOLOGY</option>
  <option value="INTRAOPERATIVE.PRBC">INTRAOPERATIVE.PRBC</option>
  <option value="ICU.ADMISSION">ICU.ADMISSION</option>
  <option value="ICU.PATHOLOGY">ICU.PATHOLOGY</option>
  <option value="ICU.PRBC">ICU.PRBC</option>
  <option value="POSTOPERATIVE.PATHOLOGY">POSTOPERATIVE.PATHOLOGY</option>
  <option value="POSTOPERATIVE.PRBC">POSTOPERATIVE.PRBC</option>
  <option value="ICU.DISCHARGE">ICU.DISCHARGE</option>
  <option value="WARD.PATHOLOGY">WARD.PATHOLOGY</option>
  <option value="WARD.PRBC">WARD.PRBC</option>
  <option value="HOSP.DISCHARGE">HOSP.DISCHARGE</option>
  <option value="FINAL.PATHOLOGY">FINAL.PATHOLOGY</option>
  <option value="POSTOPERATIVE.MORTALITY">POSTOPERATIVE.MORTALITY</option>
</select>
<label for="variable">Variable defination:</label>
  <select name="variable" id="variable">
  <option value="VAR.DEFINITION">VAR.DEFINITION</option>
  <option value="NOTES">NOTES</option>
  <option value="DATASET">DATASET</option>
  <option value="CLIN.DSET.DESCR">CLIN.DSET.DESCR</option>
  <option value="CLIN.DSET.NAME">CLIN.DSET.NAME</option>
  <option value="PK">PK</option>
  <option value="PATIENT.ID">PATIENT.ID</option>
  <option value="DOB">DOB</option>
  <option value="SEX">SEX</option>
  <option value="HEIGHT">HEIGHT</option>
  <option value="WEIGHT">WEIGHT</option>
  <option value="COMMENT">COMMENT</option>
  <option value="PK.ORIGIN">PK.ORIGIN</option>
  <option value="BOC.EVENT">BOC.EVENT</option>
  <option value="CLOSEST.DATE">CLOSEST.DATE</option>
  <option value="CLOSEST.DATE.EVENT">CLOSEST.DATE.EVENT</option>
  <option value="HB">HB</option>
  <option value="HCT">HCT</option>
  <option value="RCC">RCC</option>
  <option value="MCV">MCV</option>
  <option value="RETIC">RETIC</option>
  <option value="PRBC">PRBC</option>
  <option value="HAEMOSTAT.INTERVENE">HAEMOSTAT.INTERVENE</option>
  <option value="ON.PUMP">ON.PUMP</option>
  <option value="PRIMARY.OPERATION">PRIMARY.OPERATION</option>
  <option value="CS.URGENCY">CS.URGENCY</option>
  <option value="DIAGNOSIS">DIAGNOSIS</option>
  <option value="TREATMENT">TREATMENT</option>
  <option value="RAW.DATA">RAW.DATA</option>
</select>
<br><br><br>
<label>Drop down list by fetching the data from table</label>
<br>

<label for="event">Select an event:</label>
<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// MySQL connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "database";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch data from the column
$sql = "SELECT event_list FROM event_list_ict342";
// Execute the query and get the result set
$result = $conn->query($sql);

// Create a dropdown list with the fetched data as options
echo '<select name="my_dropdown">';
while($row = $result->fetch_assoc()) {
  echo '<option value="' . $row["event_list"] . '">' . $row["event_list"] . '</option>';
}
echo '</select>';



// Close the database connection
$conn->close();
?>


</form> 
</center>
</div>					
	</body>
</html>