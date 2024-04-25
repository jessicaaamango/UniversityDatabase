<?php
    $q1 = $_POST['q1'];
    $q2 = $_POST['q2'];
    $q3 = $_POST['q3'];
    $q4 = $_POST['q4'];
    $q5 = $_POST['q5'];

    // Database Connection
    $conn = new mysqli('localhost', 'root', '12345678','university');
    if($conn->connection_error) {
        die('Connection Failed: '.$conn->connection_error);
    } else {
        $stmt = $conn->prepare("INSERT INTO Q_Form(q1, q2, q3, q4, q5)
            values(?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $q1, $q2. $q3, $q4, $q5);
        $stmt->execute();
        echo "SUCCESSFULL!!"
        $stmt->close();
        $conn->close();
    }
?>