<!DOCTYPE html>
<html>
<head>
    <title>University Search</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Search for Universities</h2>
<form method="post">
    <label for="state">State:</label>
    <input type="text" name="state" id="state">
    <br><br>
    <label for="major">Major:</label>
    <input type="text" name="major" id="major">
    <br><br>
    <label for="tuition">Tuition (less than):</label>
    <input type="text" name="tuition" id="tuition">
    <br><br>
    <input type="submit" value="Search">
</form>

<?php
// Include the PHP file with database connection
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $state = $_POST['state'];
    $major = $_POST['major'];
    $tuition = $_POST['tuition'];

    // Build the SQL query based on user input
    $sql = "SELECT * FROM university WHERE 1=1";
    if (!empty($state)) {
        $sql .= " AND state = '$state'";
    }
    if (!empty($major)) {
        $sql .= " AND uni_id IN (SELECT uni_id FROM Major WHERE major LIKE '%$major%')";
    }
    if (!empty($tuition)) {
        $sql .= " AND tuition < $tuition";
    }

    // Execute the SQL query
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of each row
        echo "<h3>Search Results:</h3>";
        echo "<table>
                <tr>
                    <th>University Name</th>
                    <th>University ID</th>
                    <th>Tuition</th>
                    <th>State</th>
                </tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>" . $row["uni_name"] . "</td>
                    <td>" . $row["uni_id"] . "</td>
                    <td>" . $row["tuition"] . "</td>
                    <td>" . $row["state"] . "</td>
                  </tr>";
        }
        echo "</table>";
    } else {
        echo "0 results found.";
    }
}

$conn->close();
?>

</body>
</html>
