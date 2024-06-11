
function adicionarDigito(digito) {
    var hid = document.getElementById(componenteEscondido);
    hid.value += digito;

    var lab = document.getElementById(labelComNumero);
    
    if (lab.innerText == "0") {

        lab.innerText = digito;
    }
    else {
        lab.innerText += digito;
    }
        
}