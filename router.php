<?php
	require_once('controller.php');
	
	$page = explode('/',$_SERVER['REQUEST_URI']);
	// to handle the query as an array, each element containing a part of the global URL
	$method = $_SERVER['REQUEST_METHOD'];
	$length=count($page)-1;

	//This part is the routing process : depending the different url elements, we dispatch 

	//Afficher chaque table
	switch($page[3]) {
		case 'mondes' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getMondesAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"monde/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'monde' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getMondeWithNiveaux($page[4]);
					//$requete = getMonde($page[5]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					//return getNivFromMonde($page[5]);
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'niveaux' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getNiveauxAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"niveau/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'niveau' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getNiveau($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'personnages' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getPersonnagesAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"personnage/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'personnage' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getPersonnage($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'ennemis' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getEnnemisAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"ennemi/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'ennemi' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getEnnemi($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'smoothies' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getSmoothiesAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"smoothie/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'smoothie' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getSmoothie($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'exercices' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getExercicesAsTable();
					$requete=json_decode($requete);
					echo "<ol>";
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"exercice/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'exercice' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getExercice($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'muscles' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getMusclesAsTable();
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo "<li><a href=\"muscle/$id\">$requete[$i]</a></li>";
					}
					echo "</ol>";
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'muscle' :
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					$requete=getMuscle($page[4]);
					$requete=json_decode($requete);
					for ($i=0;$i<count($requete);$i++) {
						$id=$i+1;
						echo $requete[$i]."<br>";
					}
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		default : 
			http_response_code('500');
			echo 'unknown endpoint';
			break;
	}
				

