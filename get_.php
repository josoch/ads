<?php



include("db_connection.php");
$eid=$_POST["id"];
$stmt = $conn->prepare("select * from tbl_arr_dep WHERE id=?");
$stmt->bind_param("s", $eid);
$stmt->bind_result($id,$from_to,$airline,$flight_no,$shed,$gate,$remark,$type,$logo);

if ($stmt->execute()) {
    while ( $stmt->fetch() ) {
        $output = array ($id,$from_to,$airline,$flight_no,$shed,$gate,$remark,$type,$logo);
    }
    echo json_encode( $output );
}
$stmt->close();
