<?php
    require_once('model.php');

    function getMondesAsTable() {
        $table ="rfa_mondes";
		return getAll($table);
	}
    function getSmoothiesAsTable() {
        $table ="rfa_smoothies";
		return getAll($table);
	}
    function getPersonnagesAsTable() {
        $table ="rfa_personnages";
		return getAll($table);
	}
