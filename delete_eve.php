<?php

include("db_connection.php");
$eid=$_POST["id"];
$stmt = $conn->prepare("delete from tbl_eve where id=?");
$stmt->bind_param("s", $eid);


if ($stmt->execute()) {
    echo 1;
} else {
    echo 0;
}
$stmt->close();
