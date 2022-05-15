<?php
    require_once('model.php');

    function getMondesAsTable() {
        $table ="rfa_mondes";
		return json_encode(getAll($table));
	}
    function getNiveauxAsTable() {
        $table ="rfa_niveaux";
		return json_encode(getAll($table));
	}
    function getPersonnagesAsTable() {
        $table ="rfa_personnages";
		return json_encode(getAll($table));
	}
    function getEnnemisAsTable() {
        $table ="rfa_ennemis";
		return json_encode(getAll($table));
	}
    function getSmoothiesAsTable() {
        $table ="rfa_smoothies";
		return json_encode(getAll($table));
	}
    function getIngredientsAsTable() {
        $table ="rfa_ingredients";
		return json_encode(getAll($table));
	}
    function getExercicesAsTable() {
        $table ="rfa_exercices";
		return json_encode(getAll($table));
	}
    function getMusclesAsTable() {
        $table ="rfa_muscles";
		return json_encode(getAll($table));
	}
