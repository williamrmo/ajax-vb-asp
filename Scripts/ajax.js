
const otra = 'Revenue Growth'
$("#cargar").click(function(){
    $.ajax({
        type: 'GET',
        url: 'https://financialmodelingprep.com/api/v3/company/stock/list',
        dataType: "json",
        data: {},
        success: function (res) {
            let items = res.symbolsList;
            let cont = 0
                
            $.each(items, function (i, item) {
                if (cont <= 10) {
                    console.log(item)
                    $('#tbRow').append("<tr><td>" + item.symbol + "</td> <td>" + item.name + "</td> <td>" + item.price + "</td><td>" + item.exchange + "</td></tr>")
                    cont++
                }
            })

            
        },
        error: function (res) {
            alert("error")
        }
    })
})

function getAJAX() {
    $.ajax({
        type: 'GET',
        url: 'https://financialmodelingprep.com/api/v3/company/stock/list',
        dataType: "json",
        data: {},
        success: function (res) {
            let items = res.symbolsList;
            let cont = 0

            $.each(items, function (i, item) {
                if (cont <= 10) {
                    console.log(item)
                    $('#tbRow').append("<tr><td>" + item.symbol + "</td> <td>" + item.name + "</td> <td>" + item.price + "</td><td>" + item.exchange + "</td></tr>")
                    cont++
                }
            })


        },
        error: function (res) {
            alert("error")
        }
    })
}

function buscarRegistroAJAX(nombre) {
    let blEncontrado = false

    $.ajax({
        type: 'GET',
        url: 'https://financialmodelingprep.com/api/v3/company/stock/list',
        dataType: "json",
        data: {},
        success: function (res) {
            let items = res.symbolsList;
            console.log(nombre)
            $.each(items, function (i, item) {
                if (nombre == item.name) {
                    blEncontrado = true
                    console.log(item)
                    $('#tbRow').append("<tr><td>" + item.symbol + "</td> <td>" + item.name + "</td> <td>" + item.price + "</td><td>" + item.exchange + "</td></tr>")
                }
            })

        },
        error: function (res) {
            alert("error")
        }
    }).done(function () {
        if (blEncontrado == false) {
            alert('No se encontraron considencias')
        }
    })
      
}

