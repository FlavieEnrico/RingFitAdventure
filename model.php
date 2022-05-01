<?php

    require_once('connexion.php');
	
    function getAll() {
		$cnx = connection();
		$result = $cnx->query('select * from rfa_monde');
		return $result->fetchall();
	}