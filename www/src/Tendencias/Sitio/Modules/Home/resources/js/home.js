$(function() {
    activarEditar();
    activarBorrar();
    activarNuevo();
    cargarBuscador();
    activarEnviar();
    activarPapelera();
    activarRestaurado();
});

function activarEditar() {
    var boton = $('.editar');

    boton.on('click', function() {
        desactivarBotones();

        var id = $(this).data('id');

        $.post(
            urlSitio + 'home',
            {
                ajax: true,
                accion: 'editarContacto',
                idCliente: id
            }, function(data) {
                if (!data.success) {

                }

                var bloque = $('#bloque-contacto');
                bloque.empty();
                bloque.html(data.html);

                activarFunciones();

            }, 'json'
        );
    });
}

function activarEnviar() {
    var boton = $('.enviar');

    boton.on('click',function () {
        var id = $(this).data('id');

        window.open(urlSitio + 'home/envio/' + id);


    });

}

function desactivarBotones() {
    $('.editar').off('click');
    $('.enviar').off('click');
    $('#nuevo-contacto').off('click');
    $('.listado').hide();
    $('#buscador').hide();
    $('#descarga-excel').hide();
}

function activarBotones() {
    activarNuevo();
    activarEditar();
    activarRestaurado();
    activarEnviar();
    $('.listado').show();
    $('#buscador').show();
    $('#descarga-excel').show();
}

function activarNuevo() {
    var boton = $('#nuevo-contacto');
    boton.on('click', function() {
        desactivarBotones();

        $.post(
            urlSitio + 'home',
            {
                ajax: true,
                accion: 'editarContacto',
                idCliente: 0
            }, function(data) {
                if (!data.success) {

                }

                var bloque = $('#bloque-contacto');
                bloque.empty();
                bloque.html(data.html);

                activarFunciones();

            }, 'json'
        );
    });
}

function  activarPapelera() {
    var boton = $('#papelera');
    boton.on('click', function() {
        desactivarBotones();
        $.post(
            urlSitio + 'home',
            {
                ajax: true,
                accion: 'verPapelera',
                idCliente: 0
            }, function(data) {
                if (!data.success) {

                }

                var bloque = $('#bloque-contacto');
                bloque.empty();
                bloque.html(data.html);

                activarFunciones();

            }, 'json'
        );
    });
}

function activarFunciones() {
    $('#telefono').inputmask('(99 9) 9999 9999');

    $('.select2').select2({
        allowClear: true,
        language: "es",
        width: '100%',
        minimumResultsForSearch: Infinity
    });

    $('#rut').on('blur', function(){
        formatRut($(this).val(), $(this).attr('id'));
    });

    validarPassword();

    activarGuardar();
    activarCancelar();
    activarBorrar();
    activarRestaurado();

}

function activarGuardar() {
    var boton = $('#guardar');

    boton.on('click', function() {
        boton.off('click');

        var datos, result, error, idCliente;

        error = $('#error-agregar');
        datos = camposValidar('form-contacto');
        result = $.parseJSON(datos);
        idCliente = $('#id-contacto').val();

        error.empty();
        error.removeClass('text-danger');
        error.removeClass('text-success');

        if (result.error) {
            error.html('Existen campos no validos y/o vacíos.');
            error.addClass('text-danger');

            activarGuardar();
            return;
        }


        result.datos.ajax      = true;
        result.datos.accion    = 'guardarDatos';
        result.datos.idCliente = idCliente;

        $.post(
            urlSitio + 'home', result.datos, function (data) {
                error.html(data.message);

                if (!data.success) {
                    error.addClass('text-danger');
                    activarGuardar();

                    return;
                }

                $('#id-contacto').val(data.idCliente);
                error.addClass('text-success');
                activarGuardar();

                if (idCliente > 0) {
                    $('#item-'+idCliente).replaceWith(data.html);
                } else {
                    $('#listado-contactos').append(data.html);
                }

                setTimeout( function () {
                    error.empty();
                }, 3000 );

            }, 'json'
        );
    });
}

function activarCancelar() {
    $('.cerrar-contacto').on('click', function() {
        $('#bloque-contacto').empty();

        activarBotones();
    });
}

function activarBorrar() {
    var boton = $('.borrar');

    boton.on('click', function() {
        var id;
        id = $(this).data('id');


        $.confirm( {
            title: 'Borrar contacto',
            icon: 'fa fa-exclamation-triangle text-danger',
            content: '¿Está seguro que desea borrar este contacto?',
            boxWidth: '30%',
            useBootstrap: false,
            buttons: {
                cancel: {
                    text: 'No borrar',
                    action: function () {
                        activarBorrar();
                    }
                },
                confirm: {
                    text: 'Borrar',
                    action: function () {
                        borrarContacto(id);
                    }
                }
            }
        } );
    });
}

function borrarContacto(idCliente) {
    $.post(
        urlSitio + 'home',
        {
            ajax: true,
            accion: 'borrarContacto',
            idCliente: idCliente
        }, function(data) {
            console.log(idCliente);
            if (!data.success) {
                    activarBorrar();
                return;
            }

            $.alert({
                title: 'Borrar contacto',
                icon: 'fa fa-check-circle text-success',
                content: data.message,
                boxWidth: '30%',
                useBootstrap: false,
                autoClose: 'confirm|4000',
                buttons: {
                    confirm: {
                        text: 'Listo',
                        action: function () {
                            activarBorrar();
                            $('#item-'+idCliente).remove();


                                $('#bloque-contacto').empty();

                                activarBotones();
                        }
                    }
                }
            });

        }, 'json'
    );
}

function validarPassword() {
    var input = $('#contrasena');

    input.keyup(function() {
        var pswd = $(this).val();

        if ( pswd.length < 8 ) {
            $('#length').removeClass('valid').addClass('invalid');
        } else {
            $('#length').removeClass('invalid').addClass('valid');
        }

        //validate letter
        if ( pswd.match(/[A-z]/) ) {
            $('#letter').removeClass('invalid').addClass('valid');
        } else {
            $('#letter').removeClass('valid').addClass('invalid');
        }

        //validate capital letter
        if ( pswd.match(/[A-Z]/) ) {
            $('#capital').removeClass('invalid').addClass('valid');
        } else {
            $('#capital').removeClass('valid').addClass('invalid');
        }

        //validate number
        if ( pswd.match(/\d/) ) {
            $('#number').removeClass('invalid').addClass('valid');
        } else {
            $('#number').removeClass('valid').addClass('invalid');
        }

        if (pswd.match(/[!,%,&,@,#,$,^,*,?,_,~]/)) {
            $('#special').removeClass('invalid').addClass('valid');
        } else {
            $('#special').removeClass('valid').addClass('invalid');
        }

    }).focus(function() {
        $('#pswd_info').show();
    }).blur(function() {
        $('#pswd_info').hide();
    });
}

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

                activarEditar();
                activarBorrar();
                activarEnviar();
            }, 'json'
        );
    });
}

function activarRestaurado() {
    var boton = $('.restaurar');


    boton.on('click', function() {
        var id;
        id = $(this).data('id');

        $.confirm( {
            title: 'Restaurar contacto',
            icon: 'fa fa-undo text-success',
            content: '¿Está seguro que desea restaurar este contacto?',
            boxWidth: '30%',
            useBootstrap: false,
            buttons: {
                cancel: {
                    text: 'Cancelar',
                    action: function () {
                        activarRestaurado();
                    }
                },
                confirm: {
                    text: 'Restaurar',
                    action: function () {
                        restaurarContacto(id);
                    }
                }
            }
        } );
    });
}

function restaurarContacto(idCliente) {
     $.post(
            urlSitio + 'home',
            {
                ajax: true,
                accion: 'restauraContacto',
                idCliente: idCliente
            }, function(data) {
                if (!data.success) {
                    activarRestaurado();
                    return;
                }
             activarRestaurado();
             activarBotones();

            }, 'json'
        );
}



