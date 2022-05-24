<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Analytics</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.8.0/dist/leaflet.css" integrity="sha512-hoalWLoI8r4UszCkZ5kL8vayOGVae1oxXe/2A4AO6J9+580uKHDO3JdHb7NzwwzK5xr/Fs0W40kiNHxM9vyTtQ==" crossorigin="" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../CSS/style.css"/>
</head>
<body class="my-3 mx-3 lead" onload="initPage()">

<!-- Navbar con il tasto Home e i bottoni relativi alle varie funzionalità -->
<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" onclick="location.reload()" style="width: 200px; cursor: pointer;">
            <img src="../Images/SOUND_logo-01.png" style="width: 100%"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav" style="flex-grow: 0">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-primary mx-3 my-2" onclick="disableMap()" style="width: 90px">
                        Grafo <br>
                        <img src="../Images/Graph.png" style="width: 40px">
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-secondary mx-3 my-2" onclick="enableMap()"
                            style="width: 90px">
                        Mappa <br>
                        <img src="../Images/World.webp" style="width: 40px">
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-success mx-3 my-2" style="width: 90px">
                        Analisi <br>
                        <img src="../Images/Analytics.webp" style="width: 40px">
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-danger mx-3 my-2" style="width: 90px">
                        Trend <br>
                        <img src="../Images/Trend.webp" style="width: 40px">
                    </button>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Parte centrale del sito web -->
<div class="my-2 mx-2 border-top border-secondary">
    <div class="row">

        <!-- Contenitore con la mappa, legenda e tasto reset  -->
        <div class="col-md-8 my-3">

            <div id="map" class="row border border-3 position-relative" style="height: 600px; margin-left: 0.5px">
                <button type="button" class="reset btn btn-success position-absolute top-0 end-0 btn-sm"
                        style="width: auto; margin: 5px 20px; z-index: 600;" onclick="location.reload()">Reset
                </button>
                <div class="legend border border-secondary rounded-3 pb-1 mx-4 my-2 position-absolute bottom-0 start-0 fw-normal"
                     style="width: auto; z-index: 600;">
                    <b>Legenda</b> <br>
                    <img src="../Images/square-green.svg" class="mt-1 me-1 mb-1"><a style="cursor: pointer" class="link-dark" onclick="evidenziaNodi('Emerging')">Emerging</a>
                    <br>
                    <img src="../Images/square-red.svg" class="me-1 mb-1"><a style="cursor: pointer" onclick="evidenziaNodi('Ateco')"class="link-dark">Ateco</a>
                    <br>
                    <img src="../Images/square-lightblue.svg" class="me-1 mb-1"><a style="cursor: pointer" onclick="evidenziaNodi('Sll')"class="link-dark">SLL</a>
                    <br>
                    <img src="../Images/square-yellow.svg" class="me-1 mb-1"><a style="cursor: pointer" onclick="evidenziaNodi('Exporting')" class="link-dark">Exporting</a>
                    <br>
                </div>
            </div>
            <div class="row mt-4">
                <div class="d-flex align-items-center mx-4" style="justify-content: center; width: 5%">
                    <h6> CLUSTER </h6>
                </div>
                <div id="carouselExampleDark" class="carousel carousel-dark slide d-flex align-items-center"
                     data-bs-ride="carousel" data-bs-interval="false" style="width: 55%">
                    <div class="carousel-indicators" id="carouselButton" style="margin-bottom: -20px;"></div>
                    <div class="carousel-inner" id="carouselCluster"></div>
                    <button class="carousel-control-next hidden" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="next" style="position: relative">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="d-flex align-items-center" style="width: 23%; margin: auto;">
                    <div class="dropdown">
                        <button id="buttonCluster" onclick="myFunction()" class="dropbtn btn btn-secondary" disabled>
                            <img src="../Images/search.png" style="width: 25px;"> Cluster
                        </button>
                        <div id="myDropdown" class="dropdown-content fs-6" style="overflow: scroll; height: 200px;">
                            <input type="text" placeholder="Cerca.." id="myInput" onkeyup="filterFunction()">
                        </div>
                    </div>
                </div>

                <!-- Range -->
                <div class="mx-2 mt-5 text-center mb-5" style="position: sticky;">
                    <h5 class="mb-2">Seleziona l'anno di cui vuoi visualizzare i dati</h5>
                    <div id="slider"></div>
                </div>
            </div>
        </div>
        <div class="col-md mx-1 my-3">
            <h5> Regione </h5>
            <select id="select-Regione" class="form-select" aria-label="Default select example" onchange="changeRegione(this.value)">
                ${param.Regione}
                <option value="" selected> Seleziona una Regione</option>
                <option value="Calabria" onclick="addParam(window.location, 'Regione', this.value)">Calabria
                </option>
                <option value="Campania" onclick="addParam(window.location, 'Regione', this.value)">Campania
                </option>
                <option value="Sicilia" onclick="addParam(window.location, 'Regione', this.value)">Sicilia</option>
            </select>
            <br>
            <h5> Area Metropolitana/SLL </h5>
            <select class="form-select" aria-label="Default select example" id="select-SLL" disabled
                    onchange="selectSLL(this.value)">
            </select>
            <hr>
            <div>
                <div class="row" id="info-box"
                     style="font-size: 16px; justify-content: space-evenly; align-items: center">
                </div>
                <div class="row">
                    <div class="d-flex justify-content-end d-flex align-items-center">
                            <button id="dati-download" type="button" class="btn btn-secondary btn-sm my-1 mx-1" onclick="downloadDati()" disabled><img src="../Images/downloadDati.png" style="width: 16px;"> Dati</button>
                            <button id="mappa-download" type="button" class="btn btn-secondary btn-sm my-1 mx-1" onclick="downloadMappa()" disabled><img src="../Images/downloadMappa.png" style="width: 16px;"> Mappa</button>
                        <a href="Info.jsp">
                            <button type="button" class="btn btn-info btn-sm my-1 mx-1">Info</button>
                        </a>
                    </div>
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
<script type="text/javascript" src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<script type="text/javascript" src="https://unpkg.com/cytoscape@3.21.0/dist/cytoscape.min.js"></script>
<script src="https://d3js.org/d3-dispatch.v1.min.js"></script>
<script src="https://d3js.org/d3-quadtree.v1.min.js"></script>
<script src="https://d3js.org/d3-timer.v1.min.js"></script>
<script src="https://d3js.org/d3-force.v2.min.js"></script>
<script src="https://unpkg.com/leaflet@1.8.0/dist/leaflet.js" integrity="sha512-BB3hKbKWOc9Ez/TAwyWxNXeoV9c1v6FIeYiBieIWkpLjauysF18NzgR1MBNBXf8/KABdlkX68nAhlwcDFLGPCQ==" crossorigin=""></script>
<script type="text/javascript" src="../JS/cytoscape-leaflet.js"></script>
<script>
    window['d3-force'] = d3
</script>
<script src="../JS/cytoscape-d3-force.js"></script>
<script src="../JS/main.js"></script>
<script src="../JS/services.js"></script>
</body>
</html>