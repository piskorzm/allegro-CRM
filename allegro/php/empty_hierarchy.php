<?php

require_once "connect.php";

$connection = new mysqli($host, $db_user, $db_password, $db_name);

$connection->query("DELETE FROM users");
$connection->query("DELETE FROM addresses");
$connection->query("DELETE FROM companies");

$connection->close();