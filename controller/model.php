<?php

    require_once('connexion.php');
	
    function getAll($table) {
		$cnx = connection();
		$result = $cnx->query('select nom from '.$table);
		return $result->fetchall(PDO::FETCH_COLUMN);
	}

	function getOne($id, $table) {
		$cnx = connection();
		$result = $cnx->query('select * from '.$table.' where id=\''.$id.'\'');
		return $result->fetch(PDO::FETCH_NUM);
	}

	function getNivFromMonde($id){
		$cnx = connection();
		$result = $cnx->query('select * from rfa_mondes where id=\''.$id.'\'');
		$monde = $result->fetch(PDO::FETCH_NUM);
		$monde[] =$cnx->query('select * from rfa_niveaux where id_monde=\''.$id.'\'')->fetchall(PDO::FETCH_NUM);
		return $monde;
		/*$result = $cnx->query('select m.nom,m.description,n.nom from rfa_niveaux as n, rfa_mondes as m where id=\''.$id.'\' AND n.id_monde=\''.$id.'\'');
		
		return $result->fetch(PDO::FETCH_NUM);*/
	}
	