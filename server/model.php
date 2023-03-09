<?php

/*  getMenu

    . paramètre $s : le numéro de la semaine demandée
    . paramètre $j : le jour du menu demandé
    > valeur de retour : un objet avec 3 propriétés entree, plat dessert décrivant le menu du jour $j

    La fonction getMenu se connecte à votre BDD et récupère de la table Repas 
    le menu du jour $j de la semaine $s.
*/

// ------------------ Artistes -------------------
function getAllArtistes(){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_ARTISTES"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getArtiste($idartistes){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_ARTISTES where idartistes='$idartistes'"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}


// ------------------ Albums -------------------
function getAllAlbums(){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_ALBUMS"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getAlbum($idalbums){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_ALBUMS where idalbums='$idalbums'"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}


// ------------------ Playlists -------------------
function getAllPlaylists(){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_PLAYLISTS"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getPlaylist($idplaylists){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_PLAYLISTS where idplaylists='$idplaylists'"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}


// ------------------ Morceaux -------------------
function getAllMorceaux(){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("select * from SAE203_MORCEAUX"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getMorceaux($idmorceaux){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("SELECT * FROM SAE203_MORCEAUX WHERE idmorceaux='$idmorceaux'"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

// ---------- MUSIQUE EN FONCTION DE LA CATEGORIE CHOISIE -----------
function getPlaylistContent($idplaylists){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("SELECT * FROM `SAE203_CONTENIR` INNER JOIN SAE203_MORCEAUX USING(idmorceaux) INNER JOIN SAE203_ARTISTES USING(idartistes) WHERE idplaylists=$idplaylists"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getArtisteContent($idartistes){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("SELECT * FROM `SAE203_ALBUMS` WHERE idartistes=$idartistes"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}

function getAlbumContent($idalbums){
    $cnx = new PDO("mysql:host=localhost;dbname=SAE203", "longuechaux1", "longuechaux1");
    $cnx->query('SET CHARACTER SET utf8');
    $answer = $cnx->query("SELECT * FROM `SAE203_MORCEAUX` INNER JOIN SAE203_ARTISTES USING(idartistes) WHERE idalbums=$idalbums"); 
    $res = $answer->fetchAll(PDO::FETCH_OBJ);
    return $res;
}