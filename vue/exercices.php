<?php 
include_once("./vue/head.php"); 
include_once("./vue/navbar.php"); 
require_once('./controller/controller.php');

    $requete=getExercicesAsTable();
    $requete=json_decode($requete);
    echo "<main class=\"container\">";
    for ($i=0;$i<count($requete);$i=$i+3) {
        echo "<div class=\"row\">";
        for ($j=0;$j<3;$j++) {
            $id=$i+1;
            $current=$i+$j;
            $current_id=$current+1;
            if ($current<count($requete)) {
            echo "
                <div class=\"card col-md-4\">
                    <img class=\"card-img-top\" src=\"https://static.wikia.nocookie.net/ringfitadventure/images/9/96/Screenshot_2020-08-18_at_10.48.01_AM.png\" alt=\"".$requete[$current]."\"><div class=\"card-body\"><h5 class=\"card-title\"><a href=\"exercice/$current_id\">".$requete[$current]."</a></h5>
                    </div>
                </div>";
            }
        }
        echo "</div>";
    }
    echo "</main>";

include_once("./vue/footer.php"); ?>
