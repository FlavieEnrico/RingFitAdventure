<?php
    require_once('controller/controller.php');

    //calling correct function in the controller
    $requete=getMondeWithNiveaux($page[4]);
    //$requete = getMonde($page[5]);
    $requete=json_decode($requete);
    echo "<h1>".$requete[1]."</h1><br>";
    echo "<img src=\"".$requete[3]."\">";
    //return getNivFromMonde($page[5]);