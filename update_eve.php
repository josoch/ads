<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("db_connection.php");
$stmt = $conn->prepare("update tbl_eve set start=?,end=?,event=?,location=? WHERE id=? ");
$stmt->bind_param("sssss", $start, $end,$event,$location,$id);
$start = $_POST["start"];
$end = $_POST["end"];
$event = $_POST["event"];
$location = $_POST["location"];
$id=$_POST["id"];


if ($stmt->execute()) {
    echo  1;
} else {
    $stmt->error;
}
$stmt->close();
