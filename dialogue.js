/* Page 1 */
/* RENVOI TOUTES LES PLAYLISTS */
let getAllPlaylists = async function(){
  let response = await fetch("/server/script.php?playlists=true");
  let data = await response.json();
  console.log(data);
  V.render(data, "#playlist-template", "#partie2");
}

/* RENVOI TOUS LES ARTISTES */
let getAllArtistes = async function(){
  let response = await fetch("/server/script.php?artistes=true");
  let data = await response.json();
  console.log(data);
  V.render(data, "#artistes-template", "#partie3");
}

/* RENVOI TOUS LES ALBUMS */
let getAllAlbums = async function(){
  let response = await fetch("/server/script.php?albums=true");
  let data = await response.json();
  console.log(data);
  V.render(data, "#albums-template", "#partie4");
}


/* Page 2 */
/* RENVOIE LA PLAYLIST SELECTIONNEE */
let getPlaylist = async function(idplaylists){
  let response = await fetch("/server/script.php?idplaylists="+idplaylists);
  let data = await response.json();
  console.log(data);
  V.render(data, "#template__pochette", "#partie__pochette");

  response = await fetch("/server/script.php?playlist="+idplaylists);
  data = await response.json();
  console.log(data);
  V.render(data, "#song-template", "#partie_song");
}

/* RENVOIE L'ARTISTE SELECTIONNE */
/*
let getArtiste = async function(idartistes){
  let response = await fetch("/server/script.php?idartistes="+idartistes);
  let data = await response.json();
  console.log(data);
  V.render(data, "#template__pochette2", "#partie__pochette2");

  response = await fetch("/server/script.php?artiste="+idartistes);
  data = await response.json();
  console.log(data);
  V.render(data, "#albums-template", "#partie4");
}
*/

/* RENVOIE L'ALBUM SELECTIONNE */
let getAlbum = async function(idalbums){
  let response = await fetch("/server/script.php?idalbums="+idalbums);
  let data = await response.json();
  console.log(data);
  V.render(data, "#template__pochette", "#partie__pochette");

  response = await fetch("/server/script.php?album="+idalbums);
  data = await response.json();
  console.log(data);
  V.render(data, "#song-template", "#partie_song");
}

let getAllMorceaux = async function(){
  let response = await fetch("/server/script.php?morceaux=true");
  let data = await response.json();
  console.log(data);
  V.render(data, "#song-template", "#partie_song");
}

/* Page 3 */
/* RENVOIE LE MORCEAU SELECTIONNE */
let getMorceaux = async function(idmorceaux){
  let response = await fetch("/server/script.php?idmorceaux="+idmorceaux);
  let data = await response.json();
  console.log(data);
  V.render(data, "#video-template", "#content");
}

/* Page 2-1 */
let getArtisteContent = async function(idartiste){
  let response = await fetch("/server/script.php?artiste="+idartiste);
  let data = await response.json();
  console.log(data);
  V.render(data, "#albums-template", "#artist_albums_list");

  response = await fetch("/server/script.php?idartistes="+idartiste);
  data = await response.json();
  console.log(data);
  V.render(data, "#template__pochette", "#partie__pochette2");

}


V = {};

V.formatTemplate = function( data, tplSelector ){
  let template = document.querySelector(tplSelector);
  let html = template.innerHTML;

  for (const prop in data){
    html = html.replaceAll("{{"+prop+"}}", data[prop]);
  }

  return html;
}


V.render = function( alldata, tplSelector, whereSelector){
let where = document.querySelector(whereSelector);
let allhtml = "";
for(let obj of alldata ){
  allhtml += V.formatTemplate(obj, tplSelector);
}

where.innerHTML = allhtml;

}



/*
let openpage = function(selector){
  let element = document.querySelector(selector);
  element.classList.toggle('show-page');
  element.classList.toggle('hide-page');
  document.querySelector('html').scrollTop = 0;
}



const btn = document.querySelector(".button__mode");
const prefersDarkScheme = window.matchMedia("(prefers-color-scheme: dark)");

const currentTheme = localStorage.getItem("theme");
if (currentTheme == "dark") {
  document.body.classList.toggle("dark-theme");
} else if (currentTheme == "light") {
  document.body.classList.toggle("light-theme");
}

btn.addEventListener("click", function () {
  if (prefersDarkScheme.matches) {
    document.body.classList.toggle("light-theme");
    var theme = document.body.classList.contains("light-theme")
      ? "light"
      : "dark";
  } else {
    document.body.classList.toggle("dark-theme");
    var theme = document.body.classList.contains("dark-theme")
      ? "dark"
      : "light";
  }
  localStorage.setItem("theme", theme);
});



let togg = document.getElementById("togg");
let togg1 = document.getElementById("togg1");
let togg2 = document.getElementById("togg2");
let togg3 = document.getElementById("togg3");
let accueil = document.getElementById("main");
let playlists = document.getElementById("playlist");
let artiste = document.getElementById("artiste");
let album = document.getElementById("album");

togg.addEventListener("click", () => {
  if(getComputedStyle(accueil).display != "block"){
    playlist.style.display = "block"
    artiste.style.display = "block";
    album.style.display = "block";
  } else {
    accueil.style.display = "block"
    playlists.style.display = "block";
    artiste.style.display = "block";
    album.style.display = "block";
  }
})

togg1.addEventListener("click", () => {
  if(getComputedStyle(playlists).display != "none"){
    artiste.style.display = "none";
    album.style.display = "none";
  } else {
    playlists.style.display = "block";
    artiste.style.display = "none";
    album.style.display = "none";
  }
})

togg2.addEventListener("click", () => {
  if(getComputedStyle(artiste).display != "none"){
    playlists.style.display = "none";
    album.style.display = "none";
  } else {
    playlists.style.display = "none";
    artiste.style.display = "block";
    album.style.display = "none";
  }
})

togg3.addEventListener("click", () => {
  if(getComputedStyle(album).display != "none"){
    playlists.style.display = "none";
    artiste.style.display = "none";
  } else {
    playlists.style.display = "none";
    artiste.style.display = "none";
    album.style.display = "block";
  }
})
*/


getAllPlaylists();
getAllArtistes();
getAllAlbums();





