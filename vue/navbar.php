<?php
    $links = array(
        [
            "href" => "./router.php/mondes",
            "name" => "Mondes"
        ],
        [
            "href" => "./router.php/niveaux",
            "name" => "Niveaux"
        ],
        [
            "href" => "./router.php/personnages",
            "name" => "Personnages"
        ],
        [
            "href" => "./router.php/ennemis",
            "name" => "Ennemis"
        ],
        [
            "href" => "./router.php/smoothies",
            "name" => "Smoothies"
        ],
        [
            "href" => "./router.php/ingredients",
            "name" => "Ingrédients"
        ],
        [
            "href" => "./router.php/exercices",
            "name" => "Exercices"
        ],
        [
            "href" => "./router.php/muscles",
            "name" => "Muscles"
        ],
    );
?>

<nav class="navbar bg-white">
    <div class="container">
        <?php
            foreach ($links as $link) {
                echo '<a class="navbar-brand" href="'.$link["href"].'">'.$link["name"].'</a>';
            }
        ?>
    </div>
</nav>


<!-- CSS Lié à la vue -->
<link rel="stylesheet" href="./assets/css/layouts/navbar.css">
<!-- On appelle ici plutot que dans le css -->