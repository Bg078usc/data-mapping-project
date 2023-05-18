<?php
error_reporting(0);
// Replace "DS7E.csv" with the name of your CSV file.
$csv_file = "DS7E.csv";

// spaces replaced by underscores.
$table_name = str_replace(' ', '_', pathinfo($csv_file, PATHINFO_FILENAME));

// Replace "localhost", "username", "password", and "database" with your MySQL server details.
$mysqli = new mysqli("localhost", "root", "", "fitness");

// Check for errors connecting to MySQL.
if ($mysqli->connect_error) {
    die("Failed to connect to MySQL: " . $mysqli->connect_error);
}

// Read the CSV file into an array.
$csv_data = array_map('str_getcsv', file($csv_file));

// Extract the column headers from the first row of the CSV file.
$headers = $csv_data[0];

// Create an array to store the modified column headers.
$modified_headers = [];

// Append a sequential number to duplicate column headers to make them unique.
$header_counts = array_count_values($headers);

foreach ($headers as $header) {
    if ($header_counts[$header] > 1) {
        $suffix = 1;
        $modified_header = $header . "." . $suffix;

        while (in_array($modified_header, $modified_headers)) {
            $suffix++;
            $modified_header = $header . "." . $suffix;
        }

        $modified_headers[] = $modified_header;
    } else {
        $modified_headers[] = $header;
    }
}

// Create the MySQL table with the modified column headers and appropriate data types.
$create_table_query = "CREATE TABLE `$table_name` (";
foreach ($modified_headers as $header) {
    $create_table_query .= "`$header` TEXT, ";
}
$create_table_query = rtrim($create_table_query, ", ") . ")";
if (!$mysqli->query($create_table_query)) {
    die("Failed to create MySQL table: " . $mysqli->error);
}

// Insert the data from the CSV file into the MySQL table.

$sql2 = "LOAD DATA INFILE 'C:/wamp64/tmp/DS7E.csv'
    INTO TABLE `$table_name`
    FIELDS TERMINATED BY ',' 
    ENCLOSED BY '\"'
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS";

if ($mysqli->query($sql2) === TRUE) {
    echo "Data loaded successfully.";
} else {
    echo "Error loading data: " . $mysqli->error;
}

echo "Imported CSV file into MySQL table '$table_name'";
?>
