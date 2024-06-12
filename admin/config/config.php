<?php
    $mysqli = new mysqli(process.env.PHP_PUBLIC_API_URL);

    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}
