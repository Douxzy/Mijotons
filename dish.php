<?php
include 'back/db.php';
$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;

if ($id > 0) {
    $sql = "SELECT * FROM dishes WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':id', $id, PDO::PARAM_INT);
    $stmt->execute();
    $dish = $stmt->fetch(PDO::FETCH_ASSOC);

    // Récupération des ingrédients pour la recette
    $sqlIngredients = "
        SELECT ingredient, quantity, unit
        FROM ingredients
        WHERE dish_id = :id
    ";
    $stmtIngredients = $pdo->prepare($sqlIngredients);
    $stmtIngredients->bindParam(':id', $id, PDO::PARAM_INT);
    $stmtIngredients->execute();
    $ingredients = $stmtIngredients->fetchAll(PDO::FETCH_ASSOC);
}

if (empty($dish)) {
    header('Location: index.php');
    exit;
}
require_once "header.php";
?>
<main class="container mx-auto mt-8 p-4 md:p-6 lg:p-8">
    <section class="bg-white p-6 rounded-lg shadow-md">
        <div class="flex flex-col md:flex-row">
            <img src="<?= htmlspecialchars($dish['image_url']) ?>" alt="<?= htmlspecialchars($dish['name']) ?>"
                class="w-full md:w-48 h-64 md:h-48 object-cover rounded-md mb-4 md:mb-0">
            <div class="md:ml-4">
                <h2 class="text-xl font-bold mb-2">Description</h2>
                <p class="text-sm text-gray-600"><?= htmlspecialchars($dish['description']) ?></p>
                <ul class="text-sm text-gray-600 mt-4">
                    <li><strong>Calories :</strong> <?= htmlspecialchars($dish['calories']) ?> kcal</li>
                    <li><strong>Prix :</strong> <?= htmlspecialchars($dish['price']) ?> €</li>
                </ul>
            </div>
        </div>
        <div class="mt-6 flex flex-col md:flex-row">
            <div class="md:w-1/2 md:pr-4">
                <h2 class="text-xl font-bold mb-2">Ingrédients</h2>
                <ul>
                    <?php foreach ($ingredients as $ingredient): ?>
                    <li><?= htmlspecialchars($ingredient['quantity']) . ' ' . htmlspecialchars($ingredient['unit']) . ' de ' . htmlspecialchars($ingredient['ingredient']) ?>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="md:w-1/2 md:pl-4 mt-4 md:mt-0">
                <h2 class="text-xl font-bold mb-2">Préparation</h2>
                <p><?= htmlspecialchars_decode($dish['recipe']) ?></p>
            </div>
        </div>
    </section>
</main>
</body>

</html>
<?php
require_once "footer.php";
?>