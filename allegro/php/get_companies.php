<?php

require_once "connect.php";

$connection = mysqli_connect($host, $db_user, $db_password, $db_name);

$companies = [];
$sql = "SELECT * FROM companies";
$result = mysqli_query($connection, $sql);

while ($row = mysqli_fetch_array($result)) {
    array_push($companies, $row);
}

echo json_encode($companies);

mysqli_close($connection);