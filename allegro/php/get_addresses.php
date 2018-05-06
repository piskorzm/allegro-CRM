<?php

require_once "connect.php";

$connection = mysqli_connect($host, $db_user, $db_password, $db_name);

$addresses = [];
$sql = "SELECT * FROM addresses";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)) {
    array_push($addresses, $row);
}

echo json_encode($addresses);

mysqli_close($connection);