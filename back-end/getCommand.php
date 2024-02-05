<?php
include("connect.php");

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");


try {
    $sql = "call consulta_orden()";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
   
    foreach ($result as $row) {
        echo $row['command'];
    }
   
} catch (PDOException $e) {
    echo $sql . "<br>" . $e->getMessage();
}