<?php
namespace Tendencias\Sitio\Modules\Recepcion\Models;

use ZCode\Lighting\Database\Mysql\MysqlProvider;
use ZCode\Lighting\Model\BaseModel;

class RecepcionModel extends BaseModel
{
 public function cambiarEstado($alias)
 {
     /** @var MysqlProvider $database */
     $database = $this->getDatabase('sitio');
     $datos=['confirmacion' => 2];
     $tipos = 'i';
     $key   = ['field' => 'id_cliente', 'value' => $alias, 'type' => 'i'];

     if (!$database->updateRow('tbl_clientes', $datos, $tipos, $key)) {
         return false;
     }
     return $alias;
 }
}