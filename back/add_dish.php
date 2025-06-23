<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $image_url = $_POST['image_url'];

    if (!empty($name) && !empty($description) && !empty($image_url)) {
        $sql = "INSERT INTO dishes (name, description, image_url) VALUES (?, ?, ?)";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$name, $description, $image_url]);
        header('Location: dishes.php'); // Redirige vers la page des plats
        exit;
    } else {
        echo "Veuillez remplir tous les champs.";
    }
}
?>
