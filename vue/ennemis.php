<?php 
require_once('controller.php');

//calling correct function in the controller
$requete=getEnnemisAsTable();
$requete=json_decode($requete);
echo "<ol>";
for ($i=0;$i<count($requete);$i++) {
    $id=$i+1;
    echo "<li><a href=\"ennemi/$id\">$requete[$i]</a></li>";
}
echo "</ol>";