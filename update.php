<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include("db_connection.php");
$stmt = $conn->prepare("update  tbl_arr_dep set from_to=?, airline=?,flight_no=?,shed=?,gate=?,remark=?,logo=? WHERE id=?");
$stmt->bind_param("ssssssss", $fromto, $airline,$flight,$shed,$gate,$remark,$logo,$id);
$fromto = $_POST["a-from"];
$airline = $_POST["a-airline"];
$flight = $_POST["a-flight"];
$shed = $_POST["a-shed"];
$gate = $_POST["a-gate"];
$remark = $_POST["a-remark"];
$id = $_POST["id"];

if (empty($_FILES["fileToUpload"]["name"])){
    $logo= NULL;
}
else{
    $logo= basename($_FILES["fileToUpload"]["name"]);
    $target_dir = "uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image


    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
//    echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
//    echo "File is not an image.";
        $uploadOk = 0;
    }

    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
//        echo "The file " . basename($_FILES["fileToUpload"]["name"]) . " has been uploaded.";
        } else {
//        echo "Sorry, there was an error uploading your file.";
        }
    }


}



if ($stmt->execute()) {
    echo  1;
} else {
    $stmt->error;
}
$stmt->close();
