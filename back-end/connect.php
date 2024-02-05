<?php
$servername = "localhost";
$username = "u252469687_admin2";
$password = "Y1cfVa#8hBZ?";
$database = "u252469687_db_iot";
//89.117.9.249
//Mi BD+
/*
$servername = "89.117.9.204";
$username = "u718757174_admin";
$password = "Admin1234$";
$database = "u718757174_world";
*/

try {
    $conn = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    //echo "Connected successfully";
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}