$(function(){
    var dbStyle = document.body.style,
        backgnd = [
            "url('/assets/bg-index.jpg')",
            "url('/assets/bg-texture.png')"
        ];

    function setBG() {
        if (document.URL.match(/productos$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        } else if (document.URL.match(/compania$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        } else if (document.URL.match(/comprar$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        } else if (document.URL.match(/contacto$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        } else {
            dbStyle.backgroundImage = backgnd[ 0 ]
        }
    }

    setBG();
});