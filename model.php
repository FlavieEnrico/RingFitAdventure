<?php

    require_once('connexion.php');
	
    function getAll($table) {
		$cnx = connection();
		$result = $cnx->query('select nom from '.$table);
		return $result->fetchall(PDO::FETCH_CLASS);
	}

	function getOne($id) {
		$cnx = connection();
		$result = $cnx->query('select * from rfa_mondes where id=\'$id\'');
		return $result->fetchall(PDO::FETCH_CLASS);
	}