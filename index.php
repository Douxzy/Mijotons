<?php
include 'back/db.php';

// Paramètres de pagination
$limit = 6; // Nombre de plats par page
$page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
$offset = ($page - 1) * $limit;

// Requête pour compter le nombre total de plats
$sqlCount = "SELECT COUNT(*) as count FROM dishes";
$stmtCount = $pdo->query($sqlCount);
$totalCount = $stmtCount->fetch(PDO::FETCH_ASSOC)['count'];

// Requête pour récupérer les plats de la page courante
$sql = "SELECT * FROM dishes LIMIT :limit OFFSET :offset";
$stmt = $pdo->prepare($sql);
$stmt->bindParam(':limit', $limit, PDO::PARAM_INT);
$stmt->bindParam(':offset', $offset, PDO::PARAM_INT);
$stmt->execute();
$dishes = $stmt->fetchAll(PDO::FETCH_ASSOC);

// Calcul du nombre total de pages
$totalPages = ceil($totalCount / $limit);

require_once "header.php";
?>
<main class="container mx-auto mt-8 p-4 md:p-6 lg:p-8">
    <section class="bg-white p-6 rounded-lg shadow-md">
        <h2 class="text-xl font-bold mb-4 text-red-500">Nos Plats</h2>
        <ul class="space-y-4">
            <?php foreach ($dishes as $dish): ?>
            <li class="bg-gray-50 p-4 rounded-lg shadow">
                <a href="dish.php?id=<?= $dish['id'] ?>" class="flex flex-col md:flex-row">
                    <img src="<?= htmlspecialchars($dish['image_url']) ?>" alt="<?= htmlspecialchars($dish['name']) ?>"
                        class="w-full md:w-32 h-48 md:h-32 object-cover rounded-md mb-4 md:mb-0">
                    <div class="md:ml-4">
                        <h3 class="text-lg font-bold"><?= htmlspecialchars($dish['name']) ?></h3>
                        <p class="text-sm text-gray-600"><?= htmlspecialchars($dish['description']) ?></p>
                    </div>
                </a>
            </li>
            <?php endforeach; ?>
        </ul>
        <div class="mt-6 flex justify-center">
            <?php if ($page > 1): ?>
            <a href="?page=<?= $page - 1 ?>" class="px-4 py-2 bg-gray-200 rounded-lg mr-2">Précédent</a>
            <?php endif; ?>
            <?php for ($i = 1; $i <= $totalPages; $i++): ?>
            <a href="?page=<?= $i ?>"
                class="px-4 py-2 <?= $i == $page ? 'bg-red-500 text-white' : 'bg-gray-200' ?> rounded-lg mx-2"><?= $i ?></a>
            <?php endfor; ?>
            <?php if ($page < $totalPages): ?>
            <a href="?page=<?= $page + 1 ?>" class="px-4 py-2 bg-gray-200 rounded-lg ml-2">Suivant</a>
            <?php endif; ?>
        </div>
    </section>
</main>
</body>

</html>

<?php
require_once "footer.php";
?>