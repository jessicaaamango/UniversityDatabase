<?php
// Retrieve form data
// Establish a connection to the MySQL database
$host = "localhost";
$username = "root"; // Change to your database username
$password = ""; // Change to your database password
$dbname = "project"; // Change to your database name


// Connect to the database
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}


//SEARCH
$stmt = $pdo->prepare("SELECT * FROM `Majors` WHERE `major` LIKE ?");
$stmt->execute(["%".$_POST["search"]."%", "%".$_POST["search"]."%"]);
$results = $stmt->fetchAll();
if (isset($_POST["ajax"])) { echo json_encode($results); }