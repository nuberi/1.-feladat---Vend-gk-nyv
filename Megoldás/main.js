var ablakHatter = document.getElementById('ablakHatter');

document.getElementById('ujBejegyzes').onclick = function() {
    ablakHatter.style.display = 'block';
}

document.getElementById('megseGomb').onclick = function() {
    ablakHatter.style.display = 'none';
}

document.getElementById('bejegyzesUrlap').onsubmit = function(e) {

    var becenevMezo = document.getElementById('becenev');
    var bejegyzesMezo = document.getElementById('bejegyzes');
    
    var hibaUzenet = '';

    becenevMezo.className = '';
    bejegyzesMezo.className = '';


    if(becenevMezo.value.length < 5 || becenevMezo.value.length > 10) {
        hibaUzenet += 'A becenév hossza nem megfelelő!\r\nMinimum 5 és maximum 10 karakterből állhat.\r\n';
        becenevMezo.classList.add('hibasMezo');
    }

    if(bejegyzesMezo.value.length < 10 || bejegyzesMezo.value.length > 400) {
        hibaUzenet += 'A bejegyzés hossza nem megfelelő!\r\nMinimum 20 és maximum 400 karakterből állhat.\r\n';
        bejegyzesMezo.classList.add('hibasMezo');
    }

    if(hibaUzenet != '') {
        e.preventDefault();
        alert("Hiba!\r\n"+hibaUzenet);
    }

}