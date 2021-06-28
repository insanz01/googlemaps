<?php

$username = "root";
$password = "";
$database = "googlemaps";
$server = "localhost";

$conn = mysqli_connect($server, $username, $password, $database) or die('Cannot connect to database');