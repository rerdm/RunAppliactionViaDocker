<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "db"; // db Container Name in docker-compose
$username = "user";
$password = "password";
$database = "mydatabase";

// Verbindung zur Datenbank herstellen
$conn = new mysqli($servername, $username, $password, $database);

// Prüfen, ob die Verbindung erfolgreich war
if ($conn->connect_error) {
    die("error");
}

// Prüfen, ob ein POST-Request vorliegt
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['user_input'])) {
    $user_input = $_POST['user_input'];

    // SQL-Abfrage zum Einfügen der Daten
    $sql = "INSERT INTO input_data (input_text) VALUES (?)";
    
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $user_input);
    
    if ($stmt->execute()) {
        echo "success"; // Wichtig für AJAX
    } else {
        echo "error"; // Wichtig für AJAX
    }

    $stmt->close();
}

// Verbindung schließen
$conn->close();
?>
