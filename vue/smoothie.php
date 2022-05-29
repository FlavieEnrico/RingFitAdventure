<?php 

require_once('controller.php');

//calling correct function in the controller
$requete=getSmoothie($page[4]);
$requete=json_decode($requete);
for ($i=0;$i<count($requete);$i++) {
    $id=$i+1;
    echo $requete[$i]."<br>";
}