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
<div class="container my-5 text-center">
    <div class="d-flex flex-row bd-highlight mb-3 d-flex justify-content-around d-flex align-items-center">
        <div class="p-2 bd-highlight"><img src=Images/SOUND_logo-01.png style="width: 70%"></div>
        <div class="p-2 bd-highlight"><img src=Images/logo-unisa-png.png style="width: 30%"></div>
    </div>
</div>
<div class="container px-5 text-center">
    <div class="container border border-secondary d-flex justify-content-evenly container-home" style="height: 400px;">
        <video src="Videos/Back_Home.mp4" autoplay loop playsinline muted></video>
        <div class="container px-5 d-flex justify-content-evenly d-flex align-items-center container_button">
            <a href="STATIC/Analytics.jsp">
                <button type="button" class="btn btn-dark my-5 btn-lg">Esplora</button>
            </a>
            <a href="STATIC/Analytics.jsp">
                <button type="button" class="btn btn-dark my-5 btn-lg">Analizza</button>
            </a>
        </div>
    </div>

</div>
<script src="JS/main.js"></script>
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
</body>
</html>
