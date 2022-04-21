const NODE_COLORS = {
    'Sll': '#1f77b4',
    'Ateco': '#b41f53',
    'Exporting': '#fff600',
    'Emerging': '#66bd54'
};

const NODE_LABEL_ATTRIBUTE = {
    'Sll': 'name',
    'Ateco': 'code',
    'Exporting': 'name',
    'Emerging': 'name',
};

const ATTRIBUTES_TEXT = {
    "id": "ID",
    "labels": "Tipo",
    "code": "Codice",
    "name": "Nome",
    "ncom": "#Comuni",
    "population": "Popoloazione",
    "area": "Area",
    "lat": "Latitudine",
    "lng": "Longitudine",
    "year": "Anno",
    "cluster": "Cluster",
    "units": "#Aziende",
    "employee_avg": "Impiegati",
    "description": "Descrizione"
}

const CY_STYLE = [
    {
        selector: 'node',
        style: {
            'width': 20,
            'height': 20,
            'border-color': '#ffffff',
            'border-width': 1,
            'background-color': function (node) {
                return NODE_COLORS[node.data()['labels'][0]];
            },
            'color': '#333333',
            'label': function (node) {
                let data = node.data();
                return data[NODE_LABEL_ATTRIBUTE[data['labels'][0]]]
            },
            'font-size': 10,
            'text-valign': 'bottom',
            'text-margin-y': 6,
            'text-background-color': '#ffffff',
            'text-background-opacity': 0.5,
            'text-background-padding': 4,
        }
    },
    {
        selector: 'node.hover',
        style: {
            'border-color': '#000000',
            'text-background-color': '#eeeeee',
            'text-background-opacity': 1
        }
    },
    {
        selector: 'node:selected',
        style: {
            'border-color': '#ff0000',
            'border-width': 6,
            'border-opacity': 0.5
        }
    },
    {
        selector: 'edge',
        style: {
            'line-color': 'rgb(161,161,161)',
            'width': 1
        }
    },
    {
        selector: 'edge.hover',
        style: {
            'line-color': '#2c2c2c'
        }
    },
    {
        selector: 'node.highlighted',
        style: {
            "border-color": '#e1125b',
            "color": "#e1125b"
        }
    },
    {
        selector: 'edge.highlighted',
        style: {
            "line-color": '#e1125b',
            "width": 1
        }
    },
];

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

function filterFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    div = document.getElementById("myDropdown");
    a = div.getElementsByTagName("a");
    for (i = 0; i < a.length; i++) {
        txtValue = a[i].textContent || a[i].innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            a[i].style.display = "";
        } else {
            a[i].style.display = "none";
        }
    }
}

function uploadData() {
    $.ajax({
        type: 'GET',
        dataType: "json",
        url: '/JSON/sll.json',
        success: function (data) {
            var elements;
            if (Array.isArray(data)) {
                elements = data.map(element => {
                    return {group: element.group, data: element}
                });
            } else {
                const nodes = data.nodes;
                const rels = data.rels;

                const cyNodes = nodes.map((node) => {
                    return {data: node}
                });

                const cyRels = rels.map((rel) => {
                    return {data: rel}
                });

                elements = {
                    nodes: cyNodes,
                    edges: cyRels
                };
            }
            window.cy.add(elements);
            window.cy.layout({
                name: 'd3-force',
                animate: true,
                linkId: function id(d) {
                    return d.id;
                },
                linkDistance: 10,
                manyBodyStrength: -300,
                randomize: false,
                infinite: true
            }).run();
        }
    })
}

function uploadCyto() {
    const cy = cytoscape({
        container: document.getElementById('map'),
        style: CY_STYLE,
        zoom: 1,
        minZoom: 0.5,
        maxZoom: 3.0
    });
    cy.on('mouseover', '*', e => {
        e.target.addClass('hover');
        e.cy.container().style.cursor = 'pointer';
    });
    cy.on('mouseout', '*', e => {
        e.target.removeClass('hover');
        e.cy.container().style.cursor = 'default';
    });

    cy.on('select', 'node', function (evt) {
        evt.target.neighborhood().addClass("highlighted");
        displayElementInfobox(evt.target.data())
    });

    cy.on('select', 'edge', function (evt) {
        evt.target.addClass("highlighted");
        displayElementInfobox(evt.target.data())
    });

    cy.on('unselect', '*', function (evt) {
        evt.target.removeClass("highlighted");
        evt.target.neighborhood().removeClass("highlighted");
        clearElementInfobox()
    });

    window.cy = cy;
}

function displayElementInfobox(data) {
    const infobox = $('#info-box');
    const dl = $('<dl class="row"></dl>');

    const attributes_list = Object.keys(ATTRIBUTES_TEXT);

    infobox.append(dl)
    for (var [key, value] of Object.entries(data)) {
        if (attributes_list.includes(key)) {
            dl.append($("<dt></dt>").addClass("col-sm-5").text(ATTRIBUTES_TEXT[key]));
            if (typeof value === "number") {
                if (!Number.isInteger(value)) {
                    value = Number(value).toFixed(2);
                }
            }
            dl.append($("<dd></dd>").addClass("col-sm-7").text(value));
        }
    }
}

function clearElementInfobox() {
    $("#info-box").empty();
}

function dropdown() {
    var x = document.getElementById("drop-menu");
    var setting = x.style.display;
    if (setting == "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}

function dropdown() {
    var x = document.getElementById("drop-menu");
    var setting = x.style.display;
    if (setting == "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}


