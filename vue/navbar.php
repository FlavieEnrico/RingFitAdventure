<?php
    $links = array(
        [
            "href" => "mondes",
            "name" => "Mondes"
        ],
        [
            "href" => "personnages",
            "name" => "Personnages"
        ],
        [
            "href" => "ennemis",
            "name" => "Ennemis"
        ],
        [
            "href" => "smoothies",
            "name" => "Smoothies"
        ],
        [
            "href" => "exercices",
            "name" => "Exercices"
        ],
        [
            "href" => "muscles",
            "name" => "Muscles"
        ],
    );
?>

<nav class="navbar bg-white">
    <div class="container">
        <?php
            $page = explode('/',$_SERVER['REQUEST_URI']);
            foreach ($links as $link) {
                if ($page[2]=="router.php") {
                    echo '<a class="navbar-brand" href="./'.$link["href"].'">'.$link["name"].'</a>';
                }
                else {
                    echo '<a class="navbar-brand" href="./router.php/'.$link["href"].'">'.$link["name"].'</a>';
                }
            }
        ?>
    </div>
</nav>


<!-- CSS Lié à la vue -->
<link rel="stylesheet" href="./assets/css/layouts/navbar.css">
<!-- On appelle ici plutot que dans le css -->