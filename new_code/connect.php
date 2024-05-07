

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


// Assuming you have established a database connection already
// Handle form submission
$state = $_POST['q1'];
$major = $_POST['q5'];
$interests = $_POST['interests'];

    // Construct SQL query based on user inputs
    $sql = "SELECT * FROM university u
          INNER JOIN Major m ON u.uni_id = m.uni_id
          WHERE u.state = :state OR m.major_id = :major";

    // Prepare and execute the query
$stmt = $conn->prepare($sql);
$stmt->execute(array(':state' => $state, ':major' => $major));
$results = $stmt->fetchAll();

// Display search results
echo '<h2>Search Results</h2>';
echo '<ul>';
foreach ($results as $row) {
    echo '<li>' . $row['uni_name'] . '</li>';
}
echo '</ul>';

// Close database connection
$conn = null;
