<?php 
include_once("./vue/head.php");
include_once("./vue/navbar.php"); 

require_once('./controller/controller.php');

//calling correct function in the controller
$requete=getPersonnagesAsTable();
//$requete=json_decode($requete);
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
            <div class=\"user text-center\">
                <div class=\"profile\">
                    <img src=\"https://static.wikia.nocookie.net/ringfitadventure/images/a/af/CI_NSwitch_RingFit_Controller_CircleCharacter_01.png\" class=\"rounded-circle\" width=\"80\">
                </div>
            </div>
            <div class=\"text-center\">
                <h4 class=\"mb-0\"><a href=\"personnage/".$current_id."\">".$requete[$current]."</a></h4>
            </div>
            </div>";
            }
        }
        echo "</div>";
    }
    echo "</main>";
echo "</ol>";

include_once("./vue/footer.php"); ?>
