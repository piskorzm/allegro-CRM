<?php

require_once "connect.php";

$connection = mysqli_connect($host, $db_user, $db_password, $db_name);

$accounts = [];
$sql = "SELECT * FROM flat ORDER BY ID";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)) {
    array_push($accounts, $row);
}

echo json_encode($accounts);

mysqli_close($connection);