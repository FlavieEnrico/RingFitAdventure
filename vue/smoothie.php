<?php 
include_once("./vue/head.php");


require_once('./controller/controller.php');

//calling correct function in the controller
$requete=getSmoothie($page[4]);
$requete=json_decode($requete);

echo "<div style=\"padding:50px; margin:50px; background-color:white; border-radius:50px;\">
<a href=\"javascript:history.back()\" style=\" text-decoration:none; font-size:16pt;\">◄</a>
<h1>$requete[1]</h1>
<ul>
<li>Recovery : $requete[2]</li>
<li>Effect : $requete[3]</li>
<li>Price : $requete[4]</li>
<li>Selling price : $requete[5]</li>
<li>Recipe : $requete[6]</li>
</ul>
<p>$requete[7]</p>
<img src=\"$requete[8]\">
</div>";

include_once("./vue/footer.php"); ?>