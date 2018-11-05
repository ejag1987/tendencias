<?php
namespace Tendencias\Sitio\Modules\Recepcion\Views;

use ZCode\Lighting\View\BaseView;

class RecepcionView extends BaseView {
    public function contactoConfirmado($confirma)
    {
        $this->addCss('recepcion');

        $tmpl = $this->loadTemplate('confirmacion');

        $tmpl->addSearchReplace('{#URL#}', $this->serverInfo->getBaseUrl());
        $tmpl->addSearchReplace('{#CONFIRMADO#}', $confirma);
        return $tmpl->getHtml();
    }
}