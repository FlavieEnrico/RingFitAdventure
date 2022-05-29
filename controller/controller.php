<?php
    require_once('model.php');

    ////Mondes
    function getMondesAsTable() {
        $table ="rfa_mondes";
		return getAll($table);
	}

    function getMondeWithNiveaux($id) {
        $table ="rfa_mondes";
		return json_encode(getNivFromMonde($id));
	}


    function getMonde($key){
        $table = "rfa_mondes";
        return json_encode(getOne($key, $table));
    }

    ////Niveaux
    function getNiveauxAsTable() {
        $table ="rfa_niveaux";
		return json_encode(getAll($table));
	}

    function getNiveau($key){
        $table = "rfa_niveaux";
        return json_encode(getOne($key, $table));
    }

    //Personnages
    function getPersonnagesAsTable() {
        $table ="rfa_personnages";
		return getAll($table);
	}

    function getPersonnage($key){
        $table = "rfa_personnages";
        return json_encode(getOne($key, $table));
    }

    //Ennemis
    function getEnnemisAsTable() {
        $table ="rfa_ennemis";
		return json_encode(getAll($table));
	}

    function getEnnemi($key){
        $table = "rfa_ennemis";
        return json_encode(getOne($key, $table));
    }

    //Smoothies
    function getSmoothiesAsTable() {
        $table ="rfa_smoothies";
		return json_encode(getAll($table));
	}

    function getSmoothie($key){
        $table = "rfa_smoothies";
        return json_encode(getOne($key, $table));
    }

    //Ingredients
    function getIngredientsAsTable() {
        $table ="rfa_ingredients";
		return json_encode(getAll($table));
	}

    //Exercices
    function getExercicesAsTable() {
        $table ="rfa_exercices";
		return json_encode(getAll($table));
	}

    function getExercice($key){
        $table = "rfa_exercices";
        return json_encode(getOne($key, $table));
    }

    //Muscles
    function getMusclesAsTable() {
        $table ="rfa_muscles";
		return json_encode(getAll($table));
	}

    function getMuscle($key){
        $table = "rfa_muscles";
        return json_encode(getOne($key, $table));
    }
