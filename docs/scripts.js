function buttonClickHide() { //Denne fjerner billede
    document.getElementById('demo').style.display='none'
}
function buttonClickShow() { //Denne viser billede
    document.getElementById('demo').style.display='block'
}
function add() {
    var p = document.createElement("p");
    var text = document.createTextNode("Hey buddy!");
    p.appendChild(text);
    var element = document.getElementById('en');
    element.appendChild(p);
}
function remove() {
    var remove = document.getElementById('to');
    remove.remove();
}