$(function() {
    $('.listado').off('click');

    cargarBuscador();
    cargarTienda();
});

function cargarBuscador() {
    $("#buscador").keyup(function(event) {
        var buscar = $(this).val();

        $.post(
            urlSitio + 'home',
            {
                ajax: true,
                accion: 'buscarContacto',
                buscar: buscar
            }, function (data) {
                if (!data.success) {

                }

                var contenedor = $('#contenedor-contactos');
                contenedor.empty();
                contenedor.html(data.html);

                $('.listado').on('click');
                cargarTienda();
            }, 'json'
        );
    });
}

function cargarTienda() {
    $('.listado').on('click', function() {
        var idLocal = $(this).data('id');

        $.post(
            urlSitio + 'pagina',
            {
                ajax: true,
                accion: 'mostrarTienda',
                idLocal: idLocal
            }, function (data) {
                if (!data.success) {

                }

                var contenedor = $('#pagina-contactos');
                contenedor.empty();
                contenedor.html(data.html);
            }, 'json'
        );
    });
}