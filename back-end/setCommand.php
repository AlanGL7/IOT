<?php
include("connect.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

try {
    if (isset($_GET['setcommand'])) {
        $setcommand = $_GET['setcommand'];
        $sql = "call inserta_orden('$setcommand')";
        $conn->exec($sql);
        echo "Valor = $setcommand";
    } else {
        echo "Error ";
    }
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}