<?php



include("db_connection.php");
$eid=$_POST["id"];
$stmt = $conn->prepare("select * from tbl_eve WHERE id=?");
$stmt->bind_param("s", $eid);
$stmt->bind_result($id,$start,$end,$event,$loc);

if ($stmt->execute()) {
    while ( $stmt->fetch() ) {
        $output = array ($id,$start,$end,$event,$loc);
    }
    echo json_encode( $output );
}
$stmt->close();
