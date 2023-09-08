<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("db_connection.php");
$stmt = $conn->prepare("update  tbl_airport set name=? WHERE id=?");
$stmt->bind_param("ss", $name,$id);
$name = $_POST["airport"];

$id = 1;

if ($stmt->execute()) {
    echo  1;
} else {
    $stmt->error;
}
$stmt->close();
