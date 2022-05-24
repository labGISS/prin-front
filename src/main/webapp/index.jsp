<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="CSS/style.css"/>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Homepage</title>
</head>
<body>
<div class="container my-5">
    <div class=" row d-flex flex-row bd-highlight mb-3 d-flex justify-content-around d-flex align-items-center">
        <div class="p-2 bd-highlight col-6"><img src=Images/SOUND_logo-01.png style="width: 60%"></div>
        <div class="col-2"><a href="https://www.unisa.it/"><img src=Images/logo-unisa-png.png style="width: 100%"></a></div>
        <div class="col-2"><a href="https://www.unirc.it/"><img src=Images/logo-uni-mediterranea.webp style="width: 100%"></a></div>
        <div class="col-2"><a href="https://www.unipa.it/"><img src=Images/logo-uni-palermo.webp style="width: 100%"></a></div>
    </div>
</div>
<div class="container px-5 text-center">
    <div class="row align-items-center">
        <div class="col-4">
            <p style="font-size: 20px"> Questo progetto vede la collaborazione delle Universit&agrave; di Salerno, Reggio Calabria e Palermo.
                Lo scopo &egrave quello di analizzare quali aziende sono maggiormente sviluppate all'interno del territorio
                interessato. </p>
        </div>
        <div class="col-8">
            <div class="container border border-secondary d-flex justify-content-evenly container-home img-hover-zoom"
                 style="height: 400px;" >
                <img src="Images/Sfondo.PNG" class="imgSfondo">
                <div class="container px-5 d-flex justify-content-evenly d-flex align-items-center container_button">
                    <a href="STATIC/Analytics.jsp">
                        <button type="button" class="btn btn-dark my-5 btn-lg">Esplora</button>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
<!-- Jquery AJAX -->
<script type="text/javascript" src="../JS/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="https://unpkg.com/cytoscape@3.21.0/dist/cytoscape.min.js"></script>
<script src="https://d3js.org/d3-dispatch.v1.min.js"></script>
<script src="https://d3js.org/d3-quadtree.v1.min.js"></script>
<script src="https://d3js.org/d3-timer.v1.min.js"></script>
<script src="https://d3js.org/d3-force.v2.min.js"></script>
<script>
    window['d3-force'] = d3
</script>
<script src="JS/cytoscape-d3-force.js"></script>
<script src="JS/main.js"></script>
</body>
</html>
