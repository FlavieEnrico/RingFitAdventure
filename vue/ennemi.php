<?php 
include_once("./vue/head.php");

require_once('./controller/controller.php');

//calling correct function in the controller
$requete=getEnnemi($page[4]);
$requete=json_decode($requete);

echo "<div style=\"padding:50px; margin:50px; background-color:white; border-radius:50px;\">
<a href=\"javascript:history.back()\" style=\" text-decoration:none; font-size:16pt;\">◄</a>
<h1>$requete[1]</h1><p>$requete[2]</p><p>$requete[3]</p><img src=\"$requete[4]\"></div>";

include_once("./vue/footer.php"); ?>