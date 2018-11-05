<?php
namespace Tendencias\Sitio\Modules\Recepcion;

use Tendencias\Sitio\Modules\Recepcion\Models\RecepcionModel;
use Tendencias\Sitio\Modules\Recepcion\Views\RecepcionView;
use ZCode\Lighting\Controller\BaseController;

class RecepcionController extends BaseController {
    public function run()
    {
        $alias    = $this->request->getUrlVar(1);

        /** @var RecepcionModel $model */
        $model = $this->createModel('RecepcionModel');
        $confirma = $model->cambiarEstado($alias);

        /** @var RecepcionView $view */
        $view = $this->createView('RecepcionView');
        $html = $view->contactoConfirmado($confirma);

        $this->response = $html;


    }
    public function runAjax()
    {
        // TODO: Implement runAjax() method.
    }
}