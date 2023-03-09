<?php


require("model.php");

// ------------------ Artistes -------------------

// ----- Tous les artistes -----
if ( isset($_REQUEST['artistes'] )){
    $artistes = getAllArtistes();
    echo json_encode($artistes);
    exit(); 
}

// ----- Choix des artistes -----
if ( isset($_REQUEST['idartistes'] )&& !empty($_REQUEST['idartistes'])){
    $idartistes = $_REQUEST['idartistes'];
    $artistes = getArtiste($idartistes);
    echo json_encode($artistes);
    exit(); 
}


// ------------------ Albums -------------------

// ----- Tous les albums -----
if ( isset($_REQUEST['albums'] )){
    $albums = getAllAlbums();
    echo json_encode($albums);
    exit(); 
}

// ----- Choix des albums -----
if ( isset($_REQUEST['idalbums'] )&& !empty($_REQUEST['idalbums'])){
    $idalbums = $_REQUEST['idalbums'];
    $albums = getAlbum($idalbums);
    echo json_encode($albums);
    exit(); 
}


// ------------------ Playlist -------------------

// ----- Toutes les playlists -----
if ( isset($_REQUEST['playlists'] )){
    $playlists = getAllPlaylists();
    echo json_encode($playlists);
    exit(); 
}

// ----- Choix des playlists -----
if ( isset($_REQUEST['idplaylists'] )&& !empty($_REQUEST['idplaylists'])){
    $idplaylists = $_REQUEST['idplaylists'];
    $playlists = getPlaylist($idplaylists);
    echo json_encode($playlists);
    exit(); 
}


// ------------------ Morceaux -------------------

// ----- Tous les morceaux -----
if ( isset($_REQUEST['morceaux'] )){
    $morceaux = getAllMorceaux();
    echo json_encode($morceaux);
    exit(); 
}

// ----- Choix des morceaux -----
if ( isset($_REQUEST['idmorceaux'] )&& !empty($_REQUEST['idmorceaux'])){
    $idmorceaux = $_REQUEST['idmorceaux'];
    $morceaux = getMorceaux($idmorceaux);
    echo json_encode($morceaux);
    exit(); 
}

// ---------- MUSIQUE EN FONCTION DE LA CATEGORIE CHOISIE ----------

//----- PLAYLIST -----
if ( isset($_REQUEST['playlist'] )&& !empty($_REQUEST['playlist'])){
    $idplaylists = $_REQUEST['playlist'];
    $playlists = getPlaylistContent($idplaylists);
    echo json_encode($playlists);
    exit();
}

//----- ARTISTE -----
if ( isset($_REQUEST['artiste'] )&& !empty($_REQUEST['artiste'])){
    $idartistes = $_REQUEST['artiste'];
    $artistes = getArtisteContent($idartistes);
    echo json_encode($artistes);
    exit();
}

//----- ALBUM -----
if ( isset($_REQUEST['album'] )&& !empty($_REQUEST['album'])){
    $idalbums = $_REQUEST['album'];
    $albums = getAlbumContent($idalbums);
    echo json_encode($albums);
    exit(); 
}


http_response_code(404);

?>