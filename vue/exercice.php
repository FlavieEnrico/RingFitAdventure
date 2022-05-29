<?php 
include_once("./vue/head.php");

require_once('./controller/controller.php');

//calling correct function in the controller
$requete=getExercice($page[4]);
$requete=json_decode($requete);

echo "<div style=\"padding:50px; margin:50px; background-color:white; border-radius:50px;\">
<a href=\"javascript:history.back()\" style=\" text-decoration:none; font-size:16pt;\">◄</a>
<h1>$requete[1]</h1>
<p>$requete[2]</p>
<p>$requete[6]</p>
<ul>
<li>Cooldown : $requete[3]</li>
<li>Attack power : $requete[4]</li>
<li>Range : $requete[5]</li>
</ul>
<img src=\"$requete[7]\">
</div>";

echo "<div style=\"padding:50px; margin:50px; background-color:white; border-radius:50px;\">";
include_once("commentairefront.php");
echo "</div>";

include_once("./vue/footer.php"); ?>