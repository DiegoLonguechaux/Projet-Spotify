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