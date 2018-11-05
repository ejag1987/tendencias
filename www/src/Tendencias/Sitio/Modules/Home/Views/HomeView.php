<?php
namespace Tendencias\Sitio\Modules\Home\Views;

use ZCode\Lighting\View\BaseView;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class HomeView extends BaseView {
    public function mostrarContactos($consultas, $perfil)
    {
        $tmpl = $this->loadTemplate('contactos');

        $this->addGlobalJs('inputmask');
        $this->addGlobalJs('jquery.inputmask');

        $this->addGlobalCss('select2');
        $this->addGlobalJs('select2.full.min');
        $this->addGlobalJs('es');

        $this->addGlobalCss('jquery-confirm');
        $this->addGlobalJs('jquery-confirm');

        $this->addGlobalJs('validacion');

        $this->addCss('home');
        $this->addJs('home');

        $this->addJs('exporta');
        $this->addGlobalJs('jquery.ba-throttle-debounce.min');

        $htmlTabla= '';

        if ($consultas)
        {
            foreach ($consultas as $contacto) {
            $htmlTabla .=$this->htmlTabla($contacto, $perfil);
            }
        }
        $claseExcel = '';

        if ($perfil!= 1){
            $claseExcel = 'hide';
            $tmpl->addSearchReplace('{#EXCEL#}', $claseExcel);
        }
        $tmpl->addSearchReplace('{#TABLA#}', $htmlTabla);
        $tmpl->addSearchReplace('{#EXCEL#}', $claseExcel);
        return $tmpl->getHtml();
    }

    public function htmlTabla ($contacto, $perfil)
    {
        $tmpl = $this->loadTemplate('tabla');
        $claseAccion = '';

        $nombre = $contacto->nombre. ' '.$contacto->apellido;
        $director = $contacto->nombredirector. ' '.$contacto->apellidodirector;

        if ($contacto->confirmacion==1) {
        $confirmacion = 'Por Confirmar';
            $claseEnvio ='';
        }
        else {
            $confirmacion = 'Confirmado';
            $claseEnvio = 'hide';
        }

        if ($perfil!= 1){
            $claseAccion = 'hide';
            $tmpl->addSearchReplace('{#ACCION#}', $claseAccion);
        }

        $tmpl->addSearchReplace('{#ID_CLIENTE#}', $contacto->id_cliente);
        $tmpl->addSearchReplace('{#EMAIL#}', $contacto->email);
        $tmpl->addSearchReplace('{#CLIENTE#}', $contacto->tipo_cliente);
        $tmpl->addSearchReplace('{#NOMBRE#}', $nombre);
        $tmpl->addSearchReplace('{#TELEFONO#}', $contacto->telefono);
        $tmpl->addSearchReplace('{#ORIGEN#}', $director);
        $tmpl->addSearchReplace('{#CONFIRMACION#}', $confirmacion);
        $tmpl->addSearchReplace('{#ACCION#}', $claseAccion);
        $tmpl->addSearchReplace('{#ENVIO#}', $claseEnvio);

        return $tmpl->getHtml();

    }
    public function cargarContacto($contacto, $directores, $perfil)
    {

        $tmpl = $this->loadTemplate('edicion');
        $idCliente         = 0;
        $accion             = 'Nuevo contacto';
        $email             = '';
        $cliente           = '';
        $nombre            = '';
        $apellido          = '';
        $cargo             = '';
        $direccion         = '';
        $ciudad            = '';
        $comuna            = '';
        $telefono          = '';
        $idUsuario      = '';
        $claseDirector = '';

        if ($contacto) {
            $idCliente = $contacto->id_cliente;
            $accion = 'Editar contacto';
            $email = $contacto->email;
            $cliente = $contacto->tipo_cliente;
            $nombre = $contacto->nombre;
            $apellido = $contacto->apellido;
            $cargo = $contacto->cargo;
            $direccion = $contacto->direccion;
            $ciudad = $contacto->ciudad;
            $comuna = $contacto->comuna;
            $telefono = $contacto->telefono;
            $idUsuario = $contacto->id_usuario;
        }

        $optionDirectores = '';
        if ($directores) {
            if ($perfil== 1) {
            $optionDirectores = $this->generateSelectOptions($directores, $idUsuario);
            }
            else {
                $selected = 'selected="selected"';

                $optionDirectores .= '<option value="'.$directores->item_id.'" '.$selected.'>';
                $optionDirectores .= $directores->name;
                $optionDirectores .= '</option>';
            }
        }

        if ($perfil==2) {
            $claseDirector = 'hide';

        }

        $tmpl->addSearchReplace('{#ID_CONTACTO#}', $idCliente);
        $tmpl->addSearchReplace('{#ACCION#}', $accion);
        $tmpl->addSearchReplace('{#EMAIL#}', $email);
        $tmpl->addSearchReplace('{#CLIENTE#}', $cliente);
        $tmpl->addSearchReplace('{#NOMBRE#}', $nombre);
        $tmpl->addSearchReplace('{#APELLIDO#}', $apellido);
        $tmpl->addSearchReplace('{#CARGO#}', $cargo);
        $tmpl->addSearchReplace('{#DIRECCION#}', $direccion);
        $tmpl->addSearchReplace('{#CIUDAD#}', $ciudad);
        $tmpl->addSearchReplace('{#COMUNA#}', $comuna);
        $tmpl->addSearchReplace('{#TELEFONO#}', $telefono);
        $tmpl->addSearchReplace('{#DIRECTORES#}', $optionDirectores);
        $tmpl->addSearchReplace('{#ID_USUARIO#}', $idUsuario);
        $tmpl->addSearchReplace('{#CLASE_DIRECTOR#}', $claseDirector);

        return $tmpl->getHtml();
    }

    public function listadoContacto($contacto)
    {

        $tmpl = $this->loadTemplate('contacto_item');

        $nombre = $contacto->nombre. ' '.$contacto->apellido;

        if ($contacto->confirmacion==1) {
            $confirmacion = 'Por Confirmar';
        }
        else {
            $confirmacion = 'Confirmado';
        }

        $tmpl->addSearchReplace('{#ID_CLIENTE#}', $contacto->id_cliente);
        $tmpl->addSearchReplace('{#EMAIL#}', $contacto->email);
        $tmpl->addSearchReplace('{#CLIENTE#}', $contacto->tipo_cliente);
        $tmpl->addSearchReplace('{#NOMBRE#}', $nombre);
        //$tmpl->addSearchReplace('{#CARGO#}', $contacto->cargo);
        $tmpl->addSearchReplace('{#CIUDAD#}', $contacto->ciudad);
        $tmpl->addSearchReplace('{#COMUNA#}', $contacto->comuna);
        $tmpl->addSearchReplace('{#TELEFONO#}', $contacto->telefono);
        $tmpl->addSearchReplace('{#ORIGEN#}', $contacto->id_usuario);
        $tmpl->addSearchReplace('{#CONFIRMACION#}', $confirmacion);

        return $tmpl->getHtml();

    }

    public function cargarBusquedaContactos($consultas, $perfil)
    {
        $htmlConsultas = '';

        if ($consultas) {
            foreach ($consultas as $consulta) {
                $htmlConsultas .= $this->htmlTabla($consulta, $perfil);
            }
        }

        return $htmlConsultas;

    }

    public function mostrarEnvio($enviar)
    {
        $tmpl = $this->loadTemplate('envio');

        $tmpl->addSearchReplace('{#ID_CLIENTE#}', $enviar->id_cliente);
        $tmpl->addSearchReplace('{#MAIL#}', $enviar->email);
        $tmpl->addSearchReplace('{#NOMBRE#}', $enviar->nombre);
        $tmpl->addSearchReplace('{#APELLIDO#}', $enviar->apellido);
        $tmpl->addSearchReplace('{#URL#}', $this->serverInfo->getBaseUrl());

        return $tmpl->getHtml();
    }

    public function cargarPapelera($consultas)
    {
        $tmpl = $this->loadTemplate('reciclaje');
        $htmlTabla= '';

        if ($consultas)
        {
            foreach ($consultas as $contacto) {
                $htmlTabla .=$this->htmlTablaBorrado($contacto);
            }
        }
        $tmpl->addSearchReplace('{#TABLA#}', $htmlTabla);


        return $tmpl->getHtml();
    }

    public function htmlTablaBorrado($contacto)
    {
        $tmpl = $this->loadTemplate('contactoReciclaje');
        $nombre = $contacto->nombre. ' '.$contacto->apellido;
        $director = $contacto->nombredirector. ' '.$contacto->apellidodirector;


        $tmpl->addSearchReplace('{#ID_CLIENTE#}', $contacto->id_cliente);
        $tmpl->addSearchReplace('{#MAIL#}', $contacto->email);
        $tmpl->addSearchReplace('{#NOMBRE#}', $nombre);
        $tmpl->addSearchReplace('{#CLIENTE#}', $contacto->tipo_cliente);
        $tmpl->addSearchReplace('{#ORIGEN#}', $director);


        return $tmpl->getHtml();
    }
}