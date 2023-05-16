<?php
// MySQL database configuration
$host = "localhost";
$username = "root";
$password = "";
$database = "fitness";

// CSV file path
$csvFilePath = __DIR__ . "/DS7E.csv";

// Create a new table name based on the file name
$fileName = basename($csvFilePath, ".csv");
$tableName = str_replace(" ", "_", $fileName);

// Connect to the MySQL server
$mysqli = new mysqli($host, $username, $password, $database);

// Check connection
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}

// Read the CSV file
$csvData = [];
if (($handle = fopen($csvFilePath, "r")) !== false) {
    while (($data = fgetcsv($handle, 1000, ",")) !== false) {
        $csvData[] = $data;
    }
    fclose($handle);
}

// Create the table
$createTableQuery = "CREATE TABLE IF NOT EXISTS `$tableName` (";
$columnHeaders = [];
foreach ($csvData[0] as $header) {
    $header = str_replace(" ", "_", $header);
    if (in_array($header, $columnHeaders)) {
        $header .= ".1";
    }
    $columnHeaders[] = $header;
    $createTableQuery .= "`$header` VARCHAR(255), ";
}
$createTableQuery = rtrim($createTableQuery, ", ");
$createTableQuery .= ")";
$mysqli->query($createTableQuery);

// Insert data into the table
$insertQuery = "INSERT INTO `$tableName` (";
foreach ($columnHeaders as $header) {
    $insertQuery .= "`$header`, ";
}
$insertQuery = rtrim($insertQuery, ", ");
$insertQuery .= ") VALUES ";
$values = [];
for ($i = 1; $i < count($csvData); $i++) {
    $row = $csvData[$i];
    $rowValues = [];
    foreach ($row as $value) {
        $rowValues[] = "'" . $mysqli->real_escape_string($value) . "'";
    }
    $values[] = "(" . implode(", ", $rowValues) . ")";
}
$insertQuery .= implode(", ", $values);
$mysqli->query($insertQuery);

// Close the database connection
$mysqli->close();

echo "Data from CSV file has been successfully uploaded and stored in the MySQL database.";
?>
