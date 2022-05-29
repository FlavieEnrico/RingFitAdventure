<?php 
include_once("./vue/head.php");
include_once("./vue/navbar.php"); 

require_once('./controller/controller.php');

//calling correct function in the controller
$requete=getMondeWithNiveaux($page[4]);
$requete=json_decode($requete);

echo "<div style=\"padding:50px; margin:50px; background-color:white; border-radius:50px;\">
<h1>$requete[1]</h1>
<p>$requete[2]</p>
<img src=\"$requete[3]\">
</div>";

include_once("./vue/footer.php"); ?>