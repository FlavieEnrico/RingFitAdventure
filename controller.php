<?php
    require_once('model.php');

    function getMondesAsTable() {
        $table ="rfa_mondes";
		return json_encode(getAll($table));
	}
    function getSmoothiesAsTable() {
        $table ="rfa_smoothies";
		return json_encode(getAll($table));
	}
    function getPersonnagesAsTable() {
        $table ="rfa_personnages";
		return json_encode(getAll($table));
	}
