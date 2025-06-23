<?php
include 'back/db.php';

$sql = "SELECT * FROM dishes";
$stmt = $pdo->query($sql);
$dishes = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des plats - Mijotons</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 font-sans leading-normal">
    <header class="bg-red-500 text-white py-4 text-center">
        <h1 class="text-2xl font-bold">Mijotons - Liste des plats</h1>
    </header>

    <main class="container mx-auto mt-8 p-4 md:p-6 lg:p-8">
        <section class="bg-white p-6 rounded-lg shadow-md">
            <h2 class="text-xl font-bold mb-4 text-red-500">Nos Plats</h2>
            <ul class="space-y-4">
                <?php foreach ($dishes as $dish): ?>
                    <li class="bg-gray-50 p-4 rounded-lg shadow">
                        <div class="flex flex-col md:flex-row">
                            <img src="<?= htmlspecialchars($dish['image_url']) ?>" alt="<?= htmlspecialchars($dish['name']) ?>" class="w-full md:w-32 h-48 md:h-32 object-cover rounded-md mb-4 md:mb-0">
                            <div class="md:ml-4">
                                <h3 class="text-lg font-bold"><?= htmlspecialchars($dish['name']) ?></h3>
                                <p class="text-sm text-gray-600"><?= htmlspecialchars($dish['description']) ?></p>
                            </div>
                        </div>
                    </li>
                <?php endforeach; ?>
            </ul>
        </section>
    </main>
</body>
</html>
