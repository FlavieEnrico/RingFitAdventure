<?php
	require_once('controller.php');
	
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
					echo getMondesAsTable();
					/* $requete=getMondesaAsTables;
					foreach
						echo requete[].nom;
					*/
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
					echo getSmoothiesAsTable();
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
						echo getPersonnagesAsTable();
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
				

