<?php
	require_once('controller.php');
	
	$page = explode('/',$_SERVER['REQUEST_URI']);
	// to handle the query as an array, each element containing a part of the global URL
	$method = $_SERVER['REQUEST_METHOD'];

	//This part is the routing process : depending the different url elements, we dispatch 

	switch($page[3]) {
		case 'mondes' : 
			switch($method) {
				case 'GET' : 
					//calling correct function in the controller
					echo getMondesAsTable();
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
				

