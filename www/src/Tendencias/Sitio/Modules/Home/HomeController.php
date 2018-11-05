<?php
namespace Tendencias\Sitio\Modules\Home;

use Tendencias\Sitio\Modules\Home\Models;
use Tendencias\Sitio\Modules\Home\Views;
use ZCode\Lighting\Controller\BaseController;
use ZCode\Lighting\Http\Request;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class HomeController extends BaseController
{
    public function run()
    {
        $idPerfil   = $this->session->getString('idPerfil');
        $idUsuario   = $this->session->getString('idUsuario');
        $alias    = $this->request->getUrlVar(1);
        $html     = '';


        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        if ($alias == 'excel') {
            $this->descargaExcel();
            return;
        }

        if ($alias == 'envio') {
            $this->activarEnvio();
            return;
        }
        $consulta= $model->obtenerContactos($idPerfil,'', $idUsuario);
       // $contactos = $model->cargarContactos($idPerfil);

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->mostrarContactos($consulta, $idPerfil);

        $this->response = $html;

    }
    public function runAjax()
    {
        $accion = $this->request->getPostVar('accion', Request::STRING);


        if (strlen($accion) > 0) {
            switch ($accion) {
                case 'editarContacto':
                    $this->editarContacto();
                    break;
                case 'guardarDatos':
                    $this->guardarDatos();
                    break;
                case 'borrarContacto':
                    $this->borrarContacto();
                    break;
                case 'buscarContacto':
                    $this->buscarContacto();
                    break;
                case 'verPapelera':
                    $this->verPapelera();
                    break;
                case 'restauraContacto':
                    $this->restauraContacto();
                    break;
            }
        }
    }
    private function editarContacto()
    {
        $idCliente = $this->request->getPostVar('idCliente', Request::INTEGER);
        $idPerfil   = $this->session->getString('idPerfil');


        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $directores = $model->buscarDirector($idPerfil);
        $contacto = $model->buscarContacto($idCliente);

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->cargarContacto($contacto, $directores, $idPerfil);

        $datos['html']  = $html;

        $this->generateJsonResponse(true, '', $datos);
    }
    private function guardarDatos()
    {
        $idCliente  = $this->request->getPostVar('idCliente', Request::INTEGER);
        $email     = $this->request->getPostVar('mail', Request::STRING);
        $cliente     = $this->request->getPostVar('cliente', Request::STRING);
        $nombre     = $this->request->getPostVar('nombre', Request::STRING);
        $apellido   = $this->request->getPostVar('apellido', Request::STRING);
        $cargo   = $this->request->getPostVar('cargo', Request::STRING);
        $direccion   = $this->request->getPostVar('direccion', Request::STRING);
        $ciudad   = $this->request->getPostVar('ciudad', Request::STRING);
        $comuna   = $this->request->getPostVar('comuna', Request::STRING);
        $telefono   = $this->request->getPostVar('telefono', Request::STRING);
        $director   = $this->request->getPostVar('perfil', Request::INTEGER);
        $user = $this->session->getString('usuario');


        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');

        // validar contactos
        if (strlen(trim($email)) == 0 && strlen(trim($cliente)) == 0 && strlen(trim($nombre)) == 0 && strlen(trim($apellido)) == 0 && strlen(trim($cargo)) == 0 && strlen(trim($direccion)) == 0 && strlen(trim($ciudad)) == 0 && strlen(trim($comuna)) == 0 && strlen(trim($telefono)) == 0 && $director == 0 ) {
            $this->generateJsonResponse(false, 'Existen campos no validos y/o vacíos.');
            return;
        }

        $contactoBD = $model->buscarContactoRegistrado($email);


        if ($idCliente == 0) {
            if ($contactoBD) {
                $mensaje= 'El contacto ya está registrado por: '.$contactoBD;
                $this->generateJsonResponse(false, $mensaje );
                return;
            }
        }

        $contacto = $model->guardarContacto($idCliente, $email, $cliente, $nombre, $apellido, $cargo, $direccion, $ciudad, $comuna, $telefono, $director, $user);

        if (!$contacto) {
            $this->generateJsonResponse(false, 'No se ha podido guardar el contacto.');
            return;
        }

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->listadoContacto($contacto);

        $datos['html'] = $html;
        $datos['idCliente'] = $contacto->id_cliente;

        $this->generateJsonResponse(true, 'Contacto guardado.', $datos);
    }
    private function descargaExcel()
    {
        $this->raw = true;

        /** @var Models\HomeModel $model */
        $model    = $this->createModel('HomeModel');
        $contactos = $model->buscarContactosExportados();

        $spreadsheet = new Spreadsheet();
        //var_dump($spreadsheet);

        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setCellValue('A1', 'Director');
        $sheet->setCellValue('B1', 'Confirmado');
        $sheet->setCellValue('C1', 'Cliente');
        $sheet->setCellValue('D1', 'Nombre');
        $sheet->setCellValue('E1', 'Apellido');
        $sheet->setCellValue('F1', 'Cargo');
        $sheet->setCellValue('G1', 'Dirección');
        $sheet->setCellValue('H1', 'Comuna');
        $sheet->setCellValue('I1', 'Ciudad');
        $sheet->setCellValue('J1', 'Telefono');
        $sheet->setCellValue('K1', 'Mail');

        foreach ($contactos as $index => $contacto) {
            //var_dump($index);
            //var_dump($usuario);
            if ($contacto->confirmacion==1) {
                $confirmacion = 'Por Confirmar';
            }
            else {
                $confirmacion = 'Confirmado';
            }


            $sheet->setCellValue('A'.($index+2), $contacto->director)->getColumnDimension('A')->setAutoSize(true);
            $sheet->setCellValue('B'.($index+2), $confirmacion)->getColumnDimension('B')->setAutoSize(true);
            $sheet->setCellValue('C'.($index+2), $contacto->cliente)->getColumnDimension('C')->setAutoSize(true);
            $sheet->setCellValue('D'.($index+2), $contacto->nombre)->getColumnDimension('D')->setAutoSize(true);
            $sheet->setCellValue('E'.($index+2), $contacto->apellido)->getColumnDimension('E')->setAutoSize(true);
            $sheet->setCellValue('F'.($index+2), $contacto->cargo)->getColumnDimension('F')->setAutoSize(true);
            $sheet->setCellValue('G'.($index+2), $contacto->direccion)->getColumnDimension('G')->setAutoSize(true);
            $sheet->setCellValue('H'.($index+2), $contacto->comuna)->getColumnDimension('H')->setAutoSize(true);
            $sheet->setCellValue('I'.($index+2), $contacto->ciudad)->getColumnDimension('I')->setAutoSize(true);
            $sheet->setCellValue('J'.($index+2), $contacto->telefono)->getColumnDimension('J')->setAutoSize(true);
            $sheet->setCellValue('K'.($index+2), $contacto->email)->getColumnDimension('K')->setAutoSize(true);


        }

        $sheet->getStyle("A1:J1")->getFont()->setBold(true);

        $archivo = date('Y-m-d H:i:s').'-contactos.xls';

        // redirect output to client browser
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="'.$archivo.'"');
        header('Cache-Control: max-age=0');

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xls');
        $writer->save('php://output');
    }

    private function borrarContacto()
    {
        $idCliente  = $this->request->getPostVar('idCliente', Request::INTEGER);

        if (!($idCliente > 0)) {
            $this->generateJsonResponse(false, 'No se ha podido borrar el usuario.');
            return;
        }

        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $contacto = $model->borrarConctacto($idCliente);

        if (!$contacto) {
            $this->generateJsonResponse(false, 'No se ha podido borrar el contacto.');
            return;
        }

        $datos['idCliente'] = $idCliente;

        $this->generateJsonResponse(true, 'Contacto borrado.', $datos);
    }

    private function buscarContacto()
    {
        $buscar = $this->request->getPostVar('buscar', Request::STRING);
        $idPerfil   = $this->session->getString('idPerfil');
        $idUsuario   = $this->session->getString('idUsuario');

        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $consulta= $model->obtenerContactos($idPerfil, $buscar, $idUsuario);

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->cargarBusquedaContactos($consulta, $idPerfil );

        $datos = ['html' => $html];

        $this->generateJsonResponse(true, '', $datos);
    }
    private function activarEnvio()
    {
        $idCliente    = $this->request->getUrlVar(2);
        $this->raw = true;


        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $enviar=$model->ConsultaContacto($idCliente);

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->mostrarEnvio($enviar);

        $this->response = $html;
    }

    private function verPapelera()
    {
        $idCliente = $this->request->getPostVar('idCliente', Request::INTEGER);

        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $consulta= $model->contactosPapelera();

        /** @var Views\HomeView $view */
        $view = $this->createView('HomeView');
        $html = $view->cargarPapelera($consulta);

        $datos['html']  = $html;

        $this->generateJsonResponse(true, '', $datos);
    }
    private function restauraContacto()
    {
        $idCliente  = $this->request->getPostVar('idCliente', Request::INTEGER);


        if (!($idCliente > 0)) {
            $this->generateJsonResponse(false, 'No se ha podido restaurar el usuario.');
            return;
        }

        /** @var Models\HomeModel $model */
        $model = $this->createModel('HomeModel');
        $contacto = $model->restaurarConctacto($idCliente);

        if (!$contacto) {
            $this->generateJsonResponse(false, 'No se ha podido restaurar el contacto.');
            return;
        }

        $datos['idCliente'] = $idCliente;

        $this->generateJsonResponse(true, 'Contacto restaurado.', $datos);
    }


}