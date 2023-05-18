# data-mapping-project
Make sure you have latest version of files in your device. (Check the code from files of Github and your device.)


Upload.php will help to provide a webpage to upload a csv file. Once you submit the file, it will redirect to import_csv.php.  


import_csv.php
Rename the dataset DS7E csv file with "DS7E.csv" name.
Store that csv file in the same folder with php files.
As I(Urvesh) am using wamp servre, I have kept a copy of the file at this location: C:/wamp64/tmp/DS7E.csv. (Get the path using: SHOW VARIABLES LIKE 'secure_file_priv';) It is required to get the path to import the data of the file.
Replace "localhost", "username", "password", and "database" with your MySQL server details. 
In this file: localhost:"localhost", username:"root", password:"" and database:"fitness".
