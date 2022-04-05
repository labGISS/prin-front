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

function uploadData (){
    $.ajax({
        type: 'GET',
        dataType: "json",
        url: '/JSON/sll.json',
        success: function (data) {
            window.cy.add(data);
        }
    })
}

function uploadCyto(){
    var cy = cytoscape({
        container: document.getElementById('map')
    });
    window.cy = cy;
}

