<?php
// Replace "example csv file.csv" with the name of your CSV file.
$csv_file = "DS7E.csv";

// Replace "example_csv_file" with the name of your CSV file, with spaces replaced by underscores.
$table_name = str_replace(' ', '_', pathinfo($csv_file, PATHINFO_FILENAME));

// Replace "localhost", "username", "password", and "database" with your MySQL server details.
$mysqli = new mysqli("localhost", "root", "", "database");

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

// Modify column headers to remove special characters and replace them with underscores.
foreach ($headers as $header) {
    $modified_header = preg_replace('/[^A-Za-z0-9_]/', '_', $header);
    $modified_headers[] = $modified_header;
}

// Check for duplicate column headers and append a sequential number to make them unique.
$header_counts = array_count_values($modified_headers);
foreach ($header_counts as $header => $count) {
    if ($count > 1) {
        $duplicate_indexes = array_keys($modified_headers, $header);
        foreach ($duplicate_indexes as $index) {
            $modified_headers[$index] .= "_" . ($index + 1);
        }
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
$insert_data_query = "INSERT INTO `$table_name` (";
$insert_data_query .= implode(", ", $modified_headers) . ") VALUES ";
for ($i = 1; $i < count($csv_data); $i++) {
    $insert_data_query .= "(";
    foreach ($csv_data[$i] as $value) {
        $insert_data_query .= "'" . $mysqli->real_escape_string($value) . "', ";
    }
    $insert_data_query = rtrim($insert_data_query, ", ") . "), ";
}
$insert_data_query = rtrim($insert_data_query, ", ");
if (!$mysqli->query($insert_data_query)) {
    die("Failed to insert data into MySQL table: " . $mysqli->error);
}

echo "Imported CSV file into MySQL table '$table_name'";
?>
