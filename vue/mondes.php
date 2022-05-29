<?php
    require_once('controller.php');

    $requete=getMondesAsTable();
    $requete=json_decode($requete);
    echo "<ol>";
    for ($i=0;$i<count($requete);$i++) {
        $id=$i+1;
        echo "<li><a href=\"monde/$id\">$requete[$i]</a></li>";
    }
    echo "</ol>";
