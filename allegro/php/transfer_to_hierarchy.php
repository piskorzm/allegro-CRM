<?php

require_once "connect.php";

$connection = new mysqli($host, $db_user, $db_password, $db_name);

$accounts = json_decode($_POST['accounts']);

foreach ($accounts as $account) {
    $user_ID = $account->ID;
    $NIP = $account->NIP;
    $first_name = $account->first_name;
    $surname = $account->surname;
    $company_name = $account->company_name;
    $login = $account->login;
    $email = $account->email;
    $tel1 = $account->tel1;
    $tel2 = $account->tel2;
    $postcode = $account->postcode;
    $city = $account->city;
    $street = $account->street;
    $house_no = $account->house_no;
    $flat_no = $account->flat_no;
    $email_outdated = 0;
    $address_ID = 0;

    $result = $connection->query("SELECT * FROM users WHERE login = '$login'");

    if ($result->num_rows == 0) {
        if ($NIP != NULL && $NIP != '') {
            $result = $connection->query("SELECT * FROM companies WHERE NIP = '$NIP'");
            if ($result->num_rows == 0) {
                $connection->query("INSERT INTO companies VALUES ('$NIP', '$company_name')");
            }
        }

        $address_query = "SELECT * FROM addresses WHERE postcode = '$postcode' AND city = '$city' " .
            "AND street = '$street' AND house_no = $house_no AND flat_no = $flat_no";
        $result = $connection->query($address_query);
        if ($result->num_rows == 0) {
            $connection->query("INSERT INTO addresses VALUES (NULL, '$postcode', '$city', '$street', $house_no, $flat_no)");
            $result = $connection->query($address_query);
        }

        $address_ID = mysqli_fetch_assoc($result)['address_ID'];

        $result = $connection->query("SELECT email FROM users WHERE email = '$email'");
        if ($result->num_rows > 0) {
            $email_outdated = 1;
        }

        $connection->query("INSERT INTO users VALUES ($user_ID, '$first_name', '$surname', '$login', '$email', $email_outdated, $tel1, $tel2, '$NIP', $address_ID)");
    }
}


