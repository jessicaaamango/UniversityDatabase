<?php
// Retrieve form data
// Establish a connection to the MySQL database
$host = "localhost";
$username = "root"; 
$password = ""; 
$dbname = "project"; 

// Connect to the database
try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo 'Error: ' . $e->getMessage();
}

$state = $_POST['q1'];
$major= $_POST['q3'];
$tuition = $_POST['tution'];


$sql = "SELECT * FROM university u
INNER JOIN Major m ON u.uni_id = m.uni_id
WHERE u.state = :state AND m.major_id = :major AND u.tuition <= :tution " ;


// Prepare and execute the query
$stmt = $conn->prepare($sql);
$stmt->execute(array(':state' => $state, ':major' => $major, ':tution'=> $tuition ));
$results = $stmt->fetchAll();
// Display search results
echo '<h2>Search Results</h2>';
echo '<ul>';
if (count($results) > 0) {
    echo '<ul>';
    foreach ($results as $row) {
        //display universitiis
        echo '<li>' . $row['uni_name'] .  ' -' . $row['state'] . ' - Tuition: $' . $row['tuition'] .'</li>';
    }
    echo '</ul>';
} else {
    echo 'No results found.';
}

// Close database connection
$conn = null;
