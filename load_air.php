<?php



include("db_connection.php");
$stmt = $conn->prepare("select * from tbl_airport WHERE id=1");

$stmt->bind_result($id,$name);

if ($stmt->execute()) {
    while ( $stmt->fetch() ) {
        $output = array ($id,$name);
    }
    echo json_encode( $output );
}
$stmt->close();
