<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Analytics</title>
    <link rel="stylesheet" href="../CSS/style.css"/>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="my-3 mx-3 lead" onload="uploadCyto()">

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="width: 200px">
            <img src="../Images/SOUND_logo-01.png" style="width: 100%"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav" style="flex-grow: 0">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-primary mx-3 my-2" onclick="uploadData()" style="width: 90px">
                        Grafo <br>
                        <img src="../Images/Graph.png" style="width: 40px">
                    </button>
                </li>
                <li class="nav-item">
                    <button type="button" class="btn btn-outline-secondary mx-3 my-2" style="width: 90px">
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


<div class="my-2 mx-2 border-top border-secondary">
    <div class="row">
        <div class="col-md-8 my-3">
            <div id="map" class="row border border-3 position-relative" style="height: 600px; margin-left: 0.5px">
                <button type="button" class="btn btn-success position-absolute top-0 end-0 btn-sm"
                        style="width: auto; margin: 5px 20px; z-index: 1">Reset
                </button>
                <div class="legend border border-secondary rounded-3 pb-1 mx-4 my-2 position-absolute bottom-0 start-0 fw-normal"
                     style="width: auto; z-index: 1">
                    <b>Legenda</b> <br>
                    <img src="../Images/square-green.svg" class="mt-1 me-1 mb-1"><a href="#Emergente" class="link-dark">Emergente</a>
                    <br>
                    <img src="../Images/square-red.svg" class="me-1 mb-1"><a href="#Ateco" class="link-dark">Ateco</a>
                    <br>
                    <img src="../Images/square-lightblue.svg" class="me-1 mb-1"><a href="#SLL" class="link-dark">SLL</a>
                    <br>
                    <img src="../Images/square-yellow.svg" class="me-1 mb-1"><a href="#Esportazione" class="link-dark">Esportazione</a>
                    <br>
                </div>
            </div>
            <div class="row mt-4">
                <div class="d-flex align-items-center mx-4" style="justify-content: center; width: 5%">
                    <h6> CLUSTER </h6>
                </div>
                <div id="carouselExampleDark" class="carousel carousel-dark slide d-flex align-items-center"
                     data-bs-ride="carousel" style="width: 55%">
                    <div class="carousel-indicators" style="margin-bottom: -20px;">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3"
                                aria-label="Slide 4"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4"
                                aria-label="Slide 5"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="5"
                                aria-label="Slide 6"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active border-end border-secondary border-2"
                             data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                        <div class="carousel-item border-end border-secondary border-2" data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                        <div class="carousel-item border-end border-secondary border-2" data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                        <div class="carousel-item border-end border-secondary border-2" data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                        <div class="carousel-item border-end border-secondary border-2" data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                        <div class="carousel-item border-end border-secondary border-2" data-bs-interval="10000000000">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                            <img src="../Images/World.webp" class="mx-1 my-1" style="width: 30px">
                        </div>
                    </div>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="next" style="position: relative">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="d-flex align-items-center" style="width: 20%">
                    <div class="dropdown">
                        <button onclick="myFunction()" class="dropbtn btn btn-secondary">Ricerca Cluster</button>
                        <div id="myDropdown" class="dropdown-content fs-6" style="overflow: scroll; height: 200px;">
                            <input type="text" placeholder="Cerca.." id="myInput" onkeyup="filterFunction()">
                            <a href="#Aerospace Vehicles and Defence">Aerospace Vehicles and Defence</a>
                            <a href="#Agricultural Inputs and Services">Agricultural Inputs and Services</a>
                            <a href="#Apparel">Apparel</a>
                            <a href="#Appliances">Appliances</a>
                            <a href="#Automotive">Automotive</a>
                            <a href="#Biopharmaceuticals">Biopharmaceuticals</a>
                            <a href="#Business Services">Business Services</a>
                            <a href="#Coal Mining">Coal Mining</a>
                            <a href="#Communication Equipment and Services">Communication Equipment and Services</a>
                            <a href="#Construction Products and Services">Construction Products and Services</a>
                            <a href="#Distribution and Electronic Commerce">Distribution and Electronic Commerce</a>
                            <a href="#Downstream Chemical Products">Downstream Chemical Products</a>
                            <a href="#Downstream Metal Products">Downstream Metal Products</a>
                            <a href="#Education and Knowledge Creation">Education and Knowledge Creation</a>
                            <a href="#Electric Power Generation and Transmission">Electric Power Generation and
                                Transmission</a>
                            <a href="#Environmental Services">Environmental Services</a>
                            <a href="#Financial Services">Financial Services</a>
                            <a href="#Fishing and Fishing Products">Fishing and Fishing Products</a>
                            <a href="#Food Processing and Manufacturing">Food Processing and Manufacturing</a>
                            <a href="#Footwear">Footwear</a>
                            <a href="#Forestry">Forestry</a>
                            <a href="#Furniture">Furniture</a>
                            <a href="#Heavy Machinery and Manufacturing Technology">Heavy Machinery and Manufacturing
                                Technology</a>
                            <a href="#Hospitality and Tourism">Hospitality and Tourism</a>
                            <a href="#Information Technology and Analytical Instruments">Information Technology and
                                Analytical Instruments</a>
                            <a href="#Insurance Services">Insurance Services</a>
                            <a href="#Jewellery and Precious Metals">Jewellery and Precious Metals</a>
                            <a href="#Leather and Related Products">Leather and Related Products</a>
                            <a href="#Lighting and Electrical Equipment ">Lighting and Electrical Equipment </a>
                            <a href="#Livestock Processing">Livestock Processing</a>
                            <a href="#Marketing, Design, and Publishing">Marketing, Design, and Publishing</a>
                            <a href="#Medical Devices">Medical Devices</a>
                            <a href="#Metal Mining">Metal Mining</a>
                            <a href="#Metalworking Technology">Metalworking Technology</a>
                            <a href="#Music and Sound Recording">Music and Sound Recording</a>
                            <a href="#Non-Metal Mining">Non-Metal Mining</a>
                            <a href="#Paper and Packaging">Paper and Packaging</a>
                            <a href="#Performing Arts">Performing Arts</a>
                            <a href="#Plastics">Plastics</a>
                            <a href="#Printing Services">Printing Services</a>
                            <a href="#Production and Transportation of Oil and Gas">Production and Transportation of Oil
                                and Gas</a>
                            <a href="#Recreation and Small Electrical Products">Recreation and Small Electrical
                                Products</a>
                            <a href="#Textile Production">Textile Production</a>
                            <a href="#Tobacco">Tobacco</a>
                            <a href="#Transport and Logistics">Transport and Logistics</a>
                            <a href="#Upstream Chemicals">Upstream Chemicals</a>
                            <a href="#Upstream Metal Production">Upstream Metal Production</a>
                            <a href="#Video Production and Distribution">Video Production and Distribution</a>
                            <a href="#Vulcanized and Fired Materials">Vulcanized and Fired Materials</a>
                            <a href="#Water Transport">Water Transport</a>
                        </div>
                    </div>
                </div>
                <div class="mx-2 mt-5 text-center">
                    <h5 class="mb-2">Seleziona l'anno di cui vuoi visualizzare i dati</h5>
                    <button type="button" class="btn btn-outline-success my-1">2011</button>
                    <button type="button" class="btn btn-outline-success my-1">2012</button>
                    <button type="button" class="btn btn-outline-success my-1">2013</button>
                    <button type="button" class="btn btn-outline-success my-1">2014</button>
                    <button type="button" class="btn btn-outline-success my-1">2015</button>
                    <button type="button" class="btn btn-outline-success my-1">2016</button>
                    <button type="button" class="btn btn-outline-success my-1">2017</button>
                    <button type="button" class="btn btn-outline-success my-1">2018</button>
                    <button type="button" class="btn btn-outline-success my-1">2019</button>
                </div>
            </div>
        </div>
        <div class="col-md mx-1 my-3">
            <h5> Regione </h5>
            <select class="form-select" aria-label="Default select example">
                <option selected>Seleziona una Regione</option>
                <option value="Campania">Campania</option>
                <option value="Calabria">Calabria</option>
                <option value="Sicilia">Sicilia</option>
            </select>
            <br>
            <h5> Area Metropolitana/SLL </h5>
            <select class="form-select" aria-label="Default select example">
                <option selected>Seleziona un'Area Metropolitana/SLL</option>
                <option value="Campania">Campania</option>
                <option value="Calabria">Calabria</option>
                <option value="Sicilia">Sicilia</option>
            </select>
            <hr>
            <div>
                <div class="row" id="info-box" style="font-size: 16px; justify-content: space-evenly; align-items: center">

                </div>
                <div class="row">
                    <div class="d-flex justify-content-end d-flex align-items-center">
                        <a href="Downlaod"><button type="button" class="btn btn-secondary btn-sm my-1 mx-1">Scarica i Dati</button></a>
                        <a href="Downlaod"><button type="button" class="btn btn-secondary btn-sm my-1 mx-1">Scarica la Mappa</button></a>
                        <a href="Info.jsp"><button type="button" class="btn btn-info btn-sm my-1 mx-1" >Info</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../JS/main.js"></script>
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
<script src="../JS/cytoscape-d3-force.js"></script>
</body>
</html>