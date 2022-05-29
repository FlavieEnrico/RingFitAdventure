<?php

require_once('controller.php');

//calling correct function in the controller
$requete=getMusclesAsTable();
$requete=json_decode($requete);
for ($i=0;$i<count($requete);$i++) {
    $id=$i+1;
    echo "<li><a href=\"muscle/$id\">$requete[$i]</a></li>";
}
echo "</ol>";