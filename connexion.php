<?php

function connection() {
    $cnx = new PDO('mysql:host=localhost;dbname=flavie_enrico_db', 'root', '');
    if(!$cnx) {
        die('Connection failed');
    }
    return $cnx;
}