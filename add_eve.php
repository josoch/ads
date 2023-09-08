<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("db_connection.php");
$stmt = $conn->prepare("INSERT INTO tbl_eve (start,end,event,location) VALUES (?,?,?,?)");
$stmt->bind_param("ssss", $start, $end,$event,$location);
$start = $_POST["start"];
$end = $_POST["end"];
$event = $_POST["event"];
$location = $_POST["location"];


if ($stmt->execute()) {
    echo  1;
} else {
    $stmt->error;
}
$stmt->close();
