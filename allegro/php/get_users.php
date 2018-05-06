<?php

require_once "connect.php";

$connection = mysqli_connect($host, $db_user, $db_password, $db_name);

$users = [];
$sql = "SELECT * FROM users";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)) {
    array_push($users, $row);
}

echo json_encode($users);

mysqli_close($connection);