
$(function(){
    var dbStyle = document.body.style,
        backgnd = [
            "url('/assets/skyrim_rolem.jpg')",
            "url('/assets/bg-texture.png')"
        ];

    function setBG() {
        if (document.URL.match(/productos$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]

        }
        else if (document.URL.match(/productos\/Small$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/volcanoA$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/volcanoIN$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/prodigy$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/optimus$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/force$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/elemento$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/elementoM$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/raven$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/ZBOXEN760$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/productos\/Small\/NanonTA3800$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/compania$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/noticias$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/comprar$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/contacto$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/por_que_pc$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/users\/new$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else if (document.URL.match(/blog$/)) {
            dbStyle.backgroundImage = backgnd[ 1 ]
        }
        else {
            dbStyle.backgroundImage = backgnd[ 0 ]
        }

    }

    setBG();
});