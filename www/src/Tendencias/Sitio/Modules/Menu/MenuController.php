<?php
namespace Tendencias\Sitio\Modules\Menu;

use ZCode\Lighting\Controller\BaseController;

class MenuController extends BaseController
{
    public function run()
    {
        $html = '';
        $auth = $this->session->getBoolean('auth');
        if ($auth != null && $auth) {
            /** @var MenuModel $model */
            $model = $this->createModel('MenuModel');
            $menu = $model->cargarMenu();
            /** @var MenuView $view */
            $view = $this->createView('MenuView');
            $html = $view->cargarMenu($menu);

            $this->response = $html;
        }
    }
    public function runAjax()
    {
        // TODO: Implement runAjax() method.
    }
}