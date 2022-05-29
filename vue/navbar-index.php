<?php
    $links = array(
        [
            "href" => "mondes",
            "name" => "Worlds"
        ],
        [
            "href" => "personnages",
            "name" => "Characters"
        ],
        [
            "href" => "ennemis",
            "name" => "Enemies"
        ],
        [
            "href" => "smoothies",
            "name" => "Smoothies"
        ],
        [
            "href" => "exercices",
            "name" => "Exercises"
        ],
    );
?>

<nav class="navbar bg-white">
    <div class="container">
        <a href="http://localhost/RingFitAdventure"><img src="./assets/images/logo.png" height="60px"></a>
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