<?php
    require_once('model.php');

    function getMondesAsTable() {
		return json_encode(getAll());
	}
