-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 23 juin 2025 à 09:53
-- Version du serveur : 10.6.22-MariaDB
-- Version de PHP : 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `dero7598_Mijotons`
--

-- --------------------------------------------------------

--
-- Structure de la table `dishes`
--

CREATE TABLE `dishes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `calories` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `recipe` text DEFAULT NULL,
  `servings` int(11) NOT NULL DEFAULT 1,
  `cooking_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Temps de cuisson en minutes',
  `preparation_time` int(11) NOT NULL DEFAULT 0 COMMENT 'Temps de préparation en minutes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `dishes`
--

INSERT INTO `dishes` (`id`, `name`, `description`, `price`, `calories`, `image_url`, `recipe`, `servings`, `cooking_time`, `preparation_time`) VALUES
(11, 'Salade de lentilles', 'Plat simple et économique, parfait pour un repas léger.', 4.50, 300, 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/8B3CB4BB-95C8-4A84-90D5-64FE77601A6C/Derivates/62DAE0D1-9666-417C-AC9A-B45165686830.jpg', '1. Rincez les lentilles.<br>2. Faites cuire les lentilles dans de l\'eau bouillante pendant 20 minutes.<br>3. Égouttez et assaisonnez avec de l\'huile d\'olive, du sel, et du poivre.<br>4. Ajoutez des tomates et des oignons émincés. Servez frais.', 4, 20, 10),
(12, 'Soupe aux légumes', 'Idéal pour un déjeuner rapide et équilibré.', 3.80, 250, 'https://assets.afcdn.com/recipe/20130204/35645_w1024h1024c1cx1250cy1875.jpg', '1. Coupez les légumes en petits morceaux.<br>2. Faites-les revenir dans une grande casserole avec un peu d\'huile d\'olive.<br>3. Ajoutez de l\'eau et laissez mijoter 20 minutes.<br>4. Mixez la soupe et ajoutez un peu de crème avant de servir.', 2, 30, 15),
(13, 'Omelette aux fines herbes', 'Une recette légère, riche en saveurs et en fibres.', 3.00, 200, 'https://www.touschefs.com/wp-content/uploads/2017/01/Omelette-aux-fines-herbes.jpg', '1. Battez les œufs avec les herbes hachées.<br>2. Faites chauffer un peu de beurre dans une poêle.<br>3. Versez les œufs battus et laissez cuire à feu doux jusqu\'à ce que l\'omelette soit dorée.<br>4. Pliez l\'omelette et servez chaud.', 2, 10, 5),
(14, 'Wrap au poulet', 'Un plat savoureux à petit prix, à accompagner d\'une salade.', 4.20, 450, 'https://www.lactalisfoodservice.fr/app/uploads/2022/07/lactalisfoodservice-wrap-chaud-poulet-tandoori.png', '1. Faites griller les filets de poulet.<br>2. Coupez-les en fines tranches.<br>3. Garnissez les wraps de salade, de tranches de poulet, et de sauce.<br>4. Roulez les wraps et servez avec une salade.', 1, 15, 10),
(15, 'Salade de quinoa', 'Recette végétarienne facile à préparer et pleine de vitamines.', 4.90, 400, 'https://cdn.pratico-pratiques.com/app/uploads/sites/3/2021/07/20112018/salade-de-quinoa-a-la-grecque.jpg', '1. Faites cuire le quinoa selon les instructions.<br>2. Mélangez-le avec des dés de concombre, des tomates cerises et de la feta.<br>3. Assaisonnez avec du sel, du poivre, et de l\'huile d\'olive.<br>4. Servez frais.', 3, 10, 10),
(16, 'Potage au potiron', 'Délicieuse soupe à base de légumes de saison, à consommer chaude ou froide.', 3.50, 150, 'https://img.cuisineaz.com/660x660/2021/09/21/i180674-soupe-potimarron-facile.jpeg', '1. Épluchez et coupez le potiron en cubes.<br>2. Faites revenir un oignon dans une casserole avec de l\'huile d\'olive.<br>3. Ajoutez le potiron et recouvrez d\'eau.<br>4. Laissez cuire 20 minutes, puis mixez le tout pour une texture onctueuse.', 4, 20, 15),
(17, 'Riz aux légumes', 'Parfait pour les amateurs de cuisine saine, riche en protéines.', 3.70, 300, 'https://img.cuisineaz.com/660x660/2017/03/13/i121809-riz-saute-aux-legumes-et-soja.jpeg', '1. Faites cuire le riz selon les instructions.<br>2. Faites revenir des légumes dans une poêle avec un peu d\'huile d\'olive.<br>3. Mélangez le riz avec les légumes.<br>4. Assaisonnez et servez chaud.', 2, 25, 10),
(18, 'Taboulé maison', 'Un plat léger qui convient à toutes les occasions, prêt en 10 minutes.', 2.90, 350, 'https://img.cuisineaz.com/1280x720/2016/04/18/i76174-salade-de-taboule-facile.jpg', '1. Mélangez le boulgour avec de l\'eau chaude et laissez gonfler.<br>2. Ajoutez des tomates, du concombre, des herbes fraîches, et du jus de citron.<br>3. Mélangez bien et servez frais.', 4, 0, 10),
(19, 'Galettes de courgettes', 'Plat rapide et facile, avec un apport calorique maîtrisé.', 3.30, 200, 'https://recettehealthy.com/wp-content/uploads/2022/08/galette-courgette-fromage.jpg', '1. Râpez les courgettes et mélangez-les avec de la farine et un œuf.<br>2. Faites cuire des galettes dans une poêle chaude avec un peu d\'huile d\'olive.<br>3. Laissez dorer des deux côtés et servez chaud.', 2, 10, 10),
(20, 'Poêlée de champignons', 'Recette légère et savoureuse, parfaite pour un dîner léger.', 4.00, 180, 'https://img.cuisineaz.com/660x660/2018/09/25/i142807-poelee-de-champignons-de-paris.jpeg', '1. Nettoyez et coupez les champignons en tranches.<br>2. Faites-les revenir dans une poêle avec de l\'huile d\'olive jusqu\'à ce qu\'ils soient dorés.<br>3. Ajoutez une gousse d\'ail hachée.<br>4. Servez avec du persil frais.', 3, 15, 10),
(21, 'Chili sin carne', 'Un plat sans viande, riche en protéines végétales.', 3.80, 300, 'https://cuisine-addict.com/wp-content/uploads/2020/01/recette-chili-sin-carne-500x500.jpg', '1. Faites revenir des oignons et des poivrons dans une poêle.<br>2. Ajoutez des haricots rouges et des tomates concassées.<br>3. Assaisonnez avec du cumin et du paprika.<br>4. Laissez mijoter 20 minutes et servez chaud.', 4, 20, 15),
(22, 'Tomates farcies végétariennes', 'Un plat simple, léger et délicieux pour toute la famille.', 4.10, 320, 'https://www.aux-fourneaux.fr/wp-content/uploads/2016/06/Tomates-farcies-v%C3%A9getariennes.jpg', '1. Coupez les tomates en deux et videz-les.<br>2. Mélangez la chair avec des légumes hachés et des herbes.<br>3. Remplissez les tomates de ce mélange.<br>4. Faites cuire au four à 180°C pendant 25 minutes.', 4, 25, 20),
(23, 'Crêpes légères', 'Douceur légère pour terminer un repas avec une touche sucrée.', 2.50, 150, 'https://img.cuisineaz.com/660x660/2023/03/24/i191760-crepes.jpg', '1. Mélangez la farine, le lait, et les œufs pour faire la pâte à crêpes.<br>2. Faites chauffer une poêle et versez une louche de pâte.<br>3. Faites cuire chaque côté pendant 1 minute.<br>4. Servez avec un peu de sucre ou de confiture.', 4, 5, 10),
(24, 'Salade de carottes râpées', 'Recette rafraîchissante, idéale pour une entrée légère.', 2.80, 120, 'https://img.cuisineaz.com/660x660/2013/12/20/i42349-carottes-rapees.jpeg', '1. Râpez les carottes et ajoutez du jus de citron.<br>2. Mélangez avec de l\'huile d\'olive, du sel et du poivre.<br>3. Ajoutez des raisins secs et des herbes fraîches.<br>4. Servez frais en entrée.', 2, 0, 5),
(25, 'Boulettes de dinde', 'Une touche de protéines pour un repas léger mais rassasiant.', 4.50, 400, 'https://cdn.pratico-pratiques.com/app/uploads/sites/3/2021/09/29123154/boulettes-de-dinde-miel-et-ail.jpg', '1. Mélangez la viande de dinde hachée avec de l\'ail et des épices.<br>2. Formez des boulettes.<br>3. Faites-les revenir dans une poêle jusqu\'à ce qu\'elles soient bien dorées.<br>4. Servez avec une sauce au yaourt.', 4, 15, 10),
(26, 'Soupe froide de concombre', 'Une recette simple et rapide pour les amateurs de fraîcheur.', 3.00, 100, 'https://i0.wp.com/bonpourtoi.ca/app/uploads/2021/08/soupe-froide-concombre-aneth-1178px-tinyjpg.jpg', '1. Épluchez le concombre et coupez-le en morceaux.<br>2. Mixez avec du yaourt et de l\'aneth.<br>3. Assaisonnez avec du sel et du poivre.<br>4. Servez frais avec un filet d\'huile d\'olive.', 2, 0, 10),
(27, 'Curry de pois chiches', 'Plat végétarien riche en épices, idéal pour varier les plaisirs.', 4.20, 320, 'https://www.laurentmariotte.com/wp-content/uploads/2023/01/whatsapp-image-2023-01-13-at-223131.jpeg', '1. Faites revenir les pois chiches avec des épices dans une poêle.<br>2. Ajoutez du lait de coco et laissez mijoter 15 minutes.<br>3. Servez avec du riz.', 4, 15, 10),
(28, 'Galettes de pois chiches', 'Une alternative végétarienne riche en protéines et fibres.', 3.60, 350, 'https://commentjaichangedevie.fr/wp-content/uploads/2017/09/galettes-quinoa-pois-chiches.jpg', '1. Mélangez la farine de pois chiches, les épices, et l\'eau pour obtenir une pâte.<br>2. Formez des galettes et faites-les cuire à la poêle.<br>3. Servez chaud.', 2, 10, 10),
(29, 'Brochettes de poulet', 'Plat léger et grillé, parfait pour l\'été.', 4.90, 450, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIMn69uXK9UZOyhs7Uuuxb3EV3pMgPCojnZg&s', '1. Coupez le poulet en morceaux et enfilez-les sur des brochettes.<br>2. Faites griller au barbecue ou à la poêle.<br>3. Servez avec une sauce au citron.', 2, 10, 10),
(30, 'Frittata de légumes', 'Recette simple et délicieuse, idéale pour un dîner rapide.', 3.40, 300, 'https://www.cuisineactuelle.fr/imgre/fit/~1~cac~2018~09~25~6f1dec50-f2bc-4f25-94e2-47e8b2a0e290.jpeg/750x562/quality/80/crop-from/center/cr/wqkgTWFyaWVsbGUtR2F1bHQvIFByaXNtYXBpeCAvIEN1aXNpbmUgQWN0dWVsbGU%3D/frittata-de-legumes.jpeg', '1. Mélangez des œufs battus avec des légumes de saison.<br>2. Versez dans une poêle chaude et laissez cuire à feu doux.<br>3. Servez chaud ou tiède.', 4, 15, 10),
(31, 'Salade de riz', 'Un plat complet et équilibré, parfait pour un repas rapide.', 4.00, 350, 'https://lh4.googleusercontent.com/proxy/kTh4SXxrCF3q7WiCeg-c3po-GVhZONNuyeqopTXU5X33PRdwAAfWrrMj1vUQkUJ5SF-3D5RfAJJY_rQIAkW36nflqJSBOkdzvIWBYf_FrhaI1YgtWk-KZagl5NMXoLFx0ceXh2Ez4PSKDdRmzcGSNhT4CZw', '1. Faites cuire le riz selon les instructions.<br>2. Mélangez-le avec des légumes cuits à la vapeur.<br>3. Ajoutez du thon émietté.<br>4. Servez frais.', 4, 0, 15),
(32, 'Wok de légumes croquants', 'Une recette saine, pleine de croquant et de couleurs.', 4.30, 400, 'https://www.cuisineactuelle.fr/imgre/fit/~1~cac~2018~09~25~01fe3276-10ba-4c6c-b841-fc536717cc56.jpeg/400x400/quality/80/crop-from/center/wok-de-legumes-croquants-aux-cacahuetes.jpeg', '1. Faites sauter des légumes dans un wok avec un peu d\'huile de sésame.<br>2. Ajoutez des cacahuètes et un peu de sauce soja.<br>3. Servez chaud.', 3, 10, 10),
(33, 'Tartare de thon', 'Une touche de fraîcheur pour une entrée légère et délicate.', 4.80, 180, 'https://cdn.pratico-pratiques.com/app/uploads/sites/3/2021/10/20125453/tartare-de-thon-au-quinoa-souffle-et-canneberges.jpg', '1. Coupez le thon frais en petits dés.<br>2. Mélangez-le avec du jus de citron, de l\'huile d\'olive, et des herbes fraîches.<br>3. Servez sur un lit de salade.', 2, 0, 10),
(34, 'Gratin de pommes de terre', 'Un classique réconfortant, parfait pour les repas en famille.', 4.50, 350, 'https://dxm.dam.savencia.com/api/wedia/dam/transform/fix635d9eidk6tmu7z7fbsioph89b916z43f76e/gratin-de-pommes-de-terre-ia.transform.webp?t=resize&width=2000', '1. Préchauffez le four à 180°C.<br>2. Épluchez les pommes de terre et coupez-les en fines tranches.<br>3. Disposez-les dans un plat à gratin avec de la crème et du fromage râpé.<br>4. Enfournez pendant 40 minutes.', 4, 40, 15),
(35, 'Ratatouille provençale', 'Une recette riche en légumes, idéale pour accompagner viandes et poissons.', 3.20, 200, 'https://assets.afcdn.com/recipe/20180412/78543_w1024h768c1cx2779cy1994cxt0cyt0cxb5558cyb3988.webp', '1. Coupez les légumes en dés (courgettes, aubergines, poivrons).<br>2. Faites-les revenir dans une grande poêle avec de l\'huile d\'olive.<br>3. Ajoutez des tomates concassées et laissez mijoter 30 minutes.<br>4. Servez chaud ou froid.', 4, 30, 20),
(36, 'Quiche lorraine', 'Une tarte salée incontournable, riche en saveurs.', 5.00, 450, 'https://cdn.la-recolte.net/recipes/profile-picture/quiche-lorraine.png', '1. Préchauffez le four à 180°C.<br>2. Étalez la pâte brisée dans un moule à tarte.<br>3. Mélangez la crème, les œufs et les lardons, puis versez sur la pâte.<br>4. Faites cuire pendant 35 minutes.', 6, 35, 15),
(37, 'Lasagnes végétariennes', 'Des lasagnes gourmandes à base de légumes de saison.', 4.90, 400, 'https://assets.afcdn.com/recipe/20210212/117942_w1024h1024c1cx1060cy707cxt0cyt0cxb2121cyb1414.jpg', '1. Préchauffez le four à 180°C.<br>2. Faites revenir des légumes hachés (courgettes, carottes, épinards) dans une poêle.<br>3. Alternez les couches de légumes, sauce tomate et pâtes à lasagnes dans un plat.<br>4. Enfournez pendant 35 minutes.', 4, 35, 20),
(38, 'Boulettes de pois chiches', 'Une alternative végétarienne aux boulettes de viande.', 3.60, 250, 'https://assets.afcdn.com/recipe/20170124/571_w1024h1024c1cx1500cy1000.webp', '1. Mixez les pois chiches avec de l\'ail et des épices.<br>2. Formez des boulettes et faites-les revenir dans une poêle.<br>3. Servez avec une sauce au yaourt et des crudités.', 4, 15, 10),
(39, 'Risotto aux champignons', 'Un plat crémeux et savoureux.', 5.50, 400, 'https://img.cuisineaz.com/660x660/2013/12/20/i3016-risotto-aux-champignons.jpeg', '1. Faites revenir les champignons avec de l\'ail dans une poêle.<br>2. Ajoutez le riz et faites-le nacrer.<br>3. Ajoutez du bouillon chaud au fur et à mesure jusqu\'à cuisson complète.<br>4. Servez avec du parmesan râpé.', 4, 25, 15),
(40, 'Poulet curry coco', 'Un plat exotique aux saveurs épicées.', 4.70, 450, 'https://img-3.journaldesfemmes.fr/iS2rgHVFSb3wkqcogkrsbqk21Fk=/750x500/99fbf8a013f24398a52dd56da57ec99a/ccmcms-jdf/39903966.jpg', '1. Faites revenir les morceaux de poulet avec des épices curry.<br>2. Ajoutez du lait de coco et laissez mijoter 20 minutes.<br>3. Servez avec du riz basmati.', 4, 20, 10),
(41, 'Tarte aux pommes', 'Un dessert classique et gourmand.', 3.50, 300, 'https://img-3.journaldesfemmes.fr/dhcP_qBwsGepNc1g19rzXwEppR4=/800x600/9b36ca2a8b0948c89a3acc8f54bc1862/ccmcms-jdf/39910705.jpg', '1. Préchauffez le four à 180°C.<br>2. Étalez la pâte brisée dans un moule, disposez les tranches de pommes.<br>3. Saupoudrez de sucre et enfournez pendant 30 minutes.', 6, 30, 15),
(42, 'Clafoutis aux cerises', 'Un dessert moelleux et fruité.', 4.00, 250, 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/d4910851-692d-49c2-927f-54bc384102be/Derivates/afded9e1-12a7-4b80-a02d-7825b6a71a9c.jpg', '1. Préchauffez le four à 180°C.<br>2. Mélangez les œufs, la farine, le lait et le sucre.<br>3. Versez la pâte sur les cerises disposées dans un plat beurré.<br>4. Faites cuire pendant 35 minutes.', 6, 35, 10),
(43, 'Velouté de carottes', 'Une soupe douce et réconfortante.', 2.90, 150, 'https://www.cuisinonsencouleurs.fr/wp-content/uploads/2021/03/veloute-de-poireaux-pommes-de-terre-et-thym-15-scaled.jpg', '1. Faites revenir les carottes coupées en rondelles avec un oignon.<br>2. Ajoutez de l\'eau et laissez cuire 20 minutes.<br>3. Mixez pour obtenir une texture onctueuse.', 4, 20, 10);

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `dish_id` int(11) NOT NULL,
  `ingredient` varchar(255) NOT NULL,
  `quantity` decimal(5,2) NOT NULL,
  `unit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `dish_id`, `ingredient`, `quantity`, `unit`) VALUES
(1, 11, 'Lentilles', 200.00, 'g'),
(2, 11, 'Tomates', 2.00, 'pcs'),
(3, 11, 'Oignons', 1.00, 'pcs'),
(4, 11, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(5, 12, 'Carottes', 3.00, 'pcs'),
(6, 12, 'Pommes de terre', 2.00, 'pcs'),
(7, 12, 'Courgette', 1.00, 'pcs'),
(8, 12, 'Crème', 100.00, 'ml'),
(9, 13, 'Œufs', 4.00, 'pcs'),
(10, 13, 'Herbes', 1.00, 'cuillère à soupe'),
(11, 13, 'Beurre', 1.00, 'cuillère à soupe'),
(12, 14, 'Filets de poulet', 200.00, 'g'),
(13, 14, 'Wraps', 2.00, 'pcs'),
(14, 14, 'Salade', 50.00, 'g'),
(15, 14, 'Sauce', 2.00, 'cuillères à soupe'),
(16, 15, 'Quinoa', 200.00, 'g'),
(17, 15, 'Concombre', 1.00, 'pcs'),
(18, 15, 'Tomates cerises', 150.00, 'g'),
(19, 15, 'Feta', 100.00, 'g'),
(20, 15, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(21, 16, 'Potiron', 500.00, 'g'),
(22, 16, 'Oignon', 1.00, 'pcs'),
(23, 16, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(24, 16, 'Eau', 500.00, 'ml'),
(25, 17, 'Riz', 200.00, 'g'),
(26, 17, 'Carottes', 2.00, 'pcs'),
(27, 17, 'Poivrons', 1.00, 'pcs'),
(28, 17, 'Courgette', 1.00, 'pcs'),
(29, 17, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(30, 18, 'Boulgour', 150.00, 'g'),
(31, 18, 'Tomates', 2.00, 'pcs'),
(32, 18, 'Concombre', 1.00, 'pcs'),
(33, 18, 'Herbes fraîches', 1.00, 'cuillère à soupe'),
(34, 18, 'Jus de citron', 2.00, 'cuillères à soupe'),
(35, 19, 'Courgettes', 2.00, 'pcs'),
(36, 19, 'Farine', 100.00, 'g'),
(37, 19, 'Œuf', 1.00, 'pcs'),
(38, 19, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(39, 20, 'Champignons', 300.00, 'g'),
(40, 20, 'Ail', 1.00, 'gousse'),
(41, 20, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(42, 20, 'Persil', 1.00, 'cuillère à soupe'),
(43, 21, 'Haricots rouges', 400.00, 'g'),
(44, 21, 'Tomates concassées', 400.00, 'g'),
(45, 21, 'Poivrons', 1.00, 'pcs'),
(46, 21, 'Oignon', 1.00, 'pcs'),
(47, 21, 'Cumin', 1.00, 'cuillère à café'),
(48, 21, 'Paprika', 1.00, 'cuillère à café'),
(49, 22, 'Tomates', 4.00, 'pcs'),
(50, 22, 'Légumes hachés', 100.00, 'g'),
(51, 22, 'Herbes', 1.00, 'cuillère à soupe'),
(52, 23, 'Farine', 100.00, 'g'),
(53, 23, 'Lait', 250.00, 'ml'),
(54, 23, 'Œufs', 2.00, 'pcs'),
(55, 23, 'Beurre', 1.00, 'cuillère à soupe'),
(56, 24, 'Carottes', 3.00, 'pcs'),
(57, 24, 'Jus de citron', 1.00, 'cuillère à soupe'),
(58, 24, 'Huile d\'olive', 1.00, 'cuillère à soupe'),
(59, 24, 'Raisins secs', 30.00, 'g'),
(60, 25, 'Viande de dinde hachée', 300.00, 'g'),
(61, 25, 'Ail', 1.00, 'gousse'),
(62, 25, 'Épices', 1.00, 'cuillère à café'),
(63, 25, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(64, 26, 'Concombre', 1.00, 'pcs'),
(65, 26, 'Yaourt', 200.00, 'g'),
(66, 26, 'Aneth', 1.00, 'cuillère à soupe'),
(67, 26, 'Huile d\'olive', 1.00, 'cuillère à café'),
(68, 27, 'Pois chiches', 400.00, 'g'),
(69, 27, 'Lait de coco', 200.00, 'ml'),
(70, 27, 'Épices', 1.00, 'cuillère à soupe'),
(71, 28, 'Farine de pois chiches', 100.00, 'g'),
(72, 28, 'Épices', 1.00, 'cuillère à café'),
(73, 28, 'Eau', 100.00, 'ml'),
(74, 29, 'Poulet', 300.00, 'g'),
(75, 29, 'Brochettes', 4.00, 'pcs'),
(76, 29, 'Citron', 1.00, 'pcs'),
(77, 30, 'Œufs', 4.00, 'pcs'),
(78, 30, 'Légumes de saison', 200.00, 'g'),
(79, 30, 'Huile d\'olive', 1.00, 'cuillère à soupe'),
(80, 31, 'Riz', 200.00, 'g'),
(81, 31, 'Légumes vapeur', 150.00, 'g'),
(82, 31, 'Thon', 100.00, 'g'),
(83, 32, 'Légumes variés', 200.00, 'g'),
(84, 32, 'Huile de sésame', 1.00, 'cuillère à soupe'),
(85, 32, 'Cacahuètes', 30.00, 'g'),
(86, 32, 'Sauce soja', 1.00, 'cuillère à soupe'),
(87, 33, 'Thon frais', 200.00, 'g'),
(88, 33, 'Jus de citron', 1.00, 'cuillère à soupe'),
(89, 33, 'Herbes fraîches', 1.00, 'cuillère à soupe'),
(90, 33, 'Huile d\'olive', 2.00, 'cuillères à soupe'),
(91, 34, 'Pommes de terre', 500.00, 'g'),
(92, 34, 'Crème', 200.00, 'ml'),
(93, 34, 'Fromage râpé', 100.00, 'g'),
(94, 35, 'Courgettes', 2.00, 'pcs'),
(95, 35, 'Aubergines', 1.00, 'pcs'),
(96, 35, 'Poivrons', 2.00, 'pcs'),
(97, 35, 'Tomates concassées', 400.00, 'g'),
(98, 36, 'Pâte brisée', 1.00, 'pcs'),
(99, 36, 'Lardons', 150.00, 'g'),
(100, 36, 'Crème', 200.00, 'ml'),
(101, 36, 'Œufs', 3.00, 'pcs'),
(102, 37, 'Pâtes à lasagnes', 250.00, 'g'),
(103, 37, 'Courgettes', 1.00, 'pcs'),
(104, 37, 'Carottes', 2.00, 'pcs'),
(105, 37, 'Épinards', 100.00, 'g'),
(106, 37, 'Sauce tomate', 400.00, 'g'),
(107, 38, 'Pois chiches', 400.00, 'g'),
(108, 38, 'Ail', 1.00, 'gousse'),
(109, 38, 'Épices', 1.00, 'cuillère à soupe'),
(110, 38, 'Yaourt', 200.00, 'g'),
(111, 39, 'Champignons', 300.00, 'g'),
(112, 39, 'Riz Arborio', 200.00, 'g'),
(113, 39, 'Bouillon de légumes', 500.00, 'ml'),
(114, 39, 'Parmesan', 50.00, 'g'),
(115, 40, 'Poulet', 400.00, 'g'),
(116, 40, 'Curry', 1.00, 'cuillère à soupe'),
(117, 40, 'Lait de coco', 200.00, 'ml'),
(118, 40, 'Riz basmati', 200.00, 'g'),
(119, 41, 'Pommes', 4.00, 'pcs'),
(120, 41, 'Pâte brisée', 1.00, 'pcs'),
(121, 41, 'Sucre', 50.00, 'g'),
(122, 42, 'Cerises', 300.00, 'g'),
(123, 42, 'Œufs', 3.00, 'pcs'),
(124, 42, 'Lait', 250.00, 'ml'),
(125, 42, 'Sucre', 100.00, 'g'),
(126, 42, 'Farine', 80.00, 'g'),
(127, 43, 'Carottes', 4.00, 'pcs'),
(128, 43, 'Oignon', 1.00, 'pcs'),
(129, 43, 'Eau', 500.00, 'ml');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dish_id` (`dish_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`dish_id`) REFERENCES `dishes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
