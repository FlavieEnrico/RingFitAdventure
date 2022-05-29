<?php
	require_once('./controller/controller.php');
	
	$page = explode('/',$_SERVER['REQUEST_URI']);
	// to handle the query as an array, each element containing a part of the global URL
	$method = $_SERVER['REQUEST_METHOD'];
	$length=count($page)-1;

	//This part is the routing process : depending the different url elements, we dispatch 

	switch($page[$length]) {
		case 'mondes' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller

					// J'ai essayé d'afficher dynamiquement les données
					// $rows = getMondesAsTable();

					// if (!empty($rows)) {
					// 	$contentHTML = "<div class='row'>";
					// 	foreach ($rows as $row) {
					// 		$contentHTML .= '<div class="card col-md-4">';
					// 			$contentHTML .= '<div class="card-body">';
					// 				$contentHTML .= '<h5 class="card-title">'.$row["nom"].'</h5>';
					// 				$contentHTML .= '<p class="card-text">'.$row["description"].'</p>';
					// 			$contentHTML .= '</div>';
					// 		$contentHTML .= '</div>';
					// 	}
					// 	$contentHTML .= "</div>";
					// }

					include("./vue/mondes.php");
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
					// echo getSmoothiesAsTable();
					include("./vue/smoothies.php");
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
					// echo getPersonnagesAsTable();
					include("./vue/personnages.php");
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
				

