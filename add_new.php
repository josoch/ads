<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("db_connection.php");
$stmt = $conn->prepare("INSERT INTO tbl_news(news) VALUES (?)");
$stmt->bind_param("s", $news);
$news = $_POST["newstext"];



if ($stmt->execute()) {
    echo  1;
} else {
    $stmt->error;
}
$stmt->close();
