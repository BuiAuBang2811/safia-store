<?php
    $mysqli = new mysqli("localhost","root","","safia");

    // Check connection
    if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}
