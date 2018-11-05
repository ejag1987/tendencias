<?php

namespace Tendencias\Sitio\Modules\Header;

use Tendencias\Sitio\Modules\Header\Views\HeaderView;
use ZCode\Lighting\Controller\BaseController;
use ZCode\Lighting\Http\ServerInfo;

class HeaderController extends BaseController
{
    public function run()
    {

        if ($this->session->getBoolean('auth')) {
            $modulo     = $this->serverInfo->getData(ServerInfo::MODULE);
            $html       = '';


            if ($modulo !== 'Login') {
                $html = $this->generarHeader();
        }
        }
        else
        {
            $html       = '';
        }

        $this->response = $html;

    }

    public function runAjax()
    {
        // Implement runAjax() method.
    }

    private function generarHeader()
    {
        $idUsuario   = $this->session->getString('idUsuario');
        $usuario     = $this->session->getString('numbre');

        /** @var HeaderView $view */
        $view = $this->createView('HeaderView');
        $html = $view->cargarHeader($usuario, $idUsuario);
        $this->response = $html;

        return $html;
    }
}