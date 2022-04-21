<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
          integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">

    <style>
        body {
            position: relative;
            text-align: justify;
        }

        .container {
            margin-top: 100px;
        }
    </style>

    <title>Info</title>
</head>

<body data-spy="scroll" data-target="#EpicNavbar">
<nav id="EpicNavbar" class="navbar navbar-light bg-light px-3 fixed-top">
    <a class="navbar-brand" href="#">Navbar</a>

    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link" href="#Home">Home</a>
        </li>

        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-expanded="false"
               onclick="dropdown()">Analytics</a>
            <ul class="dropdown-menu" id="drop-menu" style="display: none">
                <li><a class="dropdown-item" href="#grafo">Grafo</a></li>
                <li><a class="dropdown-item" href="#mappa">Mappa</a></li>
                <li><a class="dropdown-item" href="#analisi">Analisi</a></li>
                <li><a class="dropdown-item" href="#trend">Trend</a></li>
            </ul>
        </li>
    </ul>
</nav>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div data-spy="scroll" data-target="#EpicNavbars" data-offset="0">
                <h4 id="Home">Home</h4>

                <p>Parliamo della Home che riguarda la piattaforma, essa &egrave; stata realizzata utilizzando i
                    linguaggi di HTML, JavaScript e CSS. Notiamo che essa presenta due pulsanti chiamati relativamente
                    'esplora' ed 'analizza'. Cliccando su 'esplora' abbiamo la possibilit&agrave; di accedere alla
                    pagina 'Analytics' con il pulsante 'grafico gi&agrave; selezionato.
                    Cliccando su 'analizza' noteremo che l&#96;azione sar&agrave; la stessa del bottone 'esplora' con la
                    differenza che il pulsante gi&agrave; selezionato sar&agrave; quello di 'analisi'.
                </p>
                    <img src="../Images/home%20sound.jpg" style="width: 100%">

                <h4 id="Analytics">Analytics</h4>

                <p>In questa pagina &egrave; possibile visualizzare il grafo, la mappa, l&#96; analisi o il trend dell&#96; area
                    metropolitana selezionata. Inoltre &egrave; possibile selezionare un cluster e l&#96; anno in cui si vogliono
                    visualizzare i dati.
                    Le icone dei cluster servono ad identificare il cluster desiderato all&#96; interno della mappa, esse
                    sono state realizzate utilizzando la classe 'carousel' fornita da Bootstrap.
                </p>

                <h4 id="grafo">Grafo</h4>
                <p>Parliamo del grafo; rappresenta il grafo della piattaforma e serve per visualizzare i collegamenti
                    che ci sono con le varie entit&agrave;, ad esempio se partiamo da un cluster exporting avremmo la
                    possibilit&agrave; di osservare le relazioni che esistono tra gli SLL, tra gli Ateco e tra i cluster
                    emerging.</p>
                <h4 id="mappa">Mappa</h4>
                <p>Per quanto riguarda la mappa, essa svolge le stesse azioni del grafo con la differenza che consente
                    di visualizzare il grafo su una mappa. </p>
                <h4 id="analisi">Analisi</h4>
                <p>Le analisi, invece, sono una serie di indici di analisi che vanno implementate. Un esempio di indice
                    pu&ograve; essere quello della centralit&agrave; che serve a cambiare le dimensioni del grafo in base ai numeri di
                    collegamenti. Sono una serie di indicatori di analisi che si trovano a partire dal grafo.</p>
                <h4 id="trend">Trend</h4>
                <p>I trend sono una serie di grafici che mostrano, con il passare degli anni, come sono evoluti
                    determinati parametri.</p>
                <!--<h4 id="Yoda">Yoda</h4>

                <p>Yoda was a legendary Jedi Master and stronger than most in his connection with the Force. Small in
                    size but wise and powerful, he trained Jedi for over 800 years, playing integral roles in the Clone
                    Wars, the instruction of Luke Skywalker, and unlocking the path to immortality.</p>

                <img class="w-100"
                     src="https://vignette.wikia.nocookie.net/starwars/images/d/d6/Yoda_SWSB.png/revision/latest?cb=20150206140125"/>

                <h4 id="Anakin">Anakin Skywalker</h4>

                <p>Discovered as a slave on Tatooine by Qui-Gon Jinn and Obi-Wan Kenobi, Anakin Skywalker had the
                    potential to become one of the most powerful Jedi ever, and was believed by some to be the
                    prophesied Chosen One who would bring balance to the Force.</p>

                <img class="w-100"
                     src="https://vignette.wikia.nocookie.net/disney/images/5/50/Profile_-_Anakin_Skywalker.png/revision/latest?cb=20190313110540"/>
                     -->
            </div>
        </div>
    </div>
</div>

<!-- Optional JavaScript -->
<!-- Popper.js first, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.2.2/masonry.pkgd.min.js"
        integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous"
        async></script>
<script src="../JS/main.js"></script>

<script>
    window.addEventListener("resize", ResizeWindow);

    function ResizeWindow() {
        var dataSpyList = [].slice.call(document.querySelectorAll('[data-spy="scroll"]'));

        dataSpyList.forEach(function (dataSpyElement) {
            bootstrap.ScrollSpy.getInstance(dataSpyElement).refresh();
        });
    }
</script>
</body>
</html>