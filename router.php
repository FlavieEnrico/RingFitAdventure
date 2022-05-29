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
					include 'vue/mondes.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'monde' :
			switch($method) {
				case 'GET' : 
					include 'vue/monde.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'personnages' : 
			switch($method) {
				case 'GET' : 
					include 'vue/personnages.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'personnage' :
			switch($method) {
				case 'GET' : 
					include 'vue/personnage.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'ennemis' : 
			switch($method) {
				case 'GET' : 
					include 'vue/ennemis.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'ennemi' :
			switch($method) {
				case 'GET' : 
					include 'vue/ennemi.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'smoothies' : 
			switch($method) {
				case 'GET' : 
					include 'vue/smoothies.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'smoothie' :
			switch($method) {
				case 'GET' : 
					include 'vue/smoothie.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'exercices' : 
			switch($method) {
				case 'GET' : 
					include 'vue/exercices.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'exercice' :
			switch($method) {
				case 'GET' : 
					include 'vue/exercice.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'muscles' : 
			switch($method) {
				case 'GET' : 
					include 'vue/muscles.php';
					break;
				default:
					http_response_code('404');
					echo 'OOPS';
			}
			break;
		case 'muscle' :
			switch($method) {
				case 'GET' : 
					include 'vue/muscle.php';
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
				

