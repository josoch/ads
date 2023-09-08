<?php

include("db_connection.php");
$stmt = $conn->prepare("select * from tbl_news");

$stmt->bind_result($id,$news);

if ($stmt->execute()) {
    while ( $stmt->fetch() ) {
        $output[] = array ($id,$news);
    }
    echo json_encode( $output );
}
$stmt->close();
