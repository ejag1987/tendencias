<?php

namespace Tendencias\Sitio\Modules\Login\Models;

use ZCode\Lighting\Database\Mysql\MysqlProvider;
use ZCode\Lighting\Model\BaseModel;

class LoginModel extends BaseModel
{
    /**
     * @param $usuario
     * @return mixed|null|object|\stdClass
     */
    public function obtenerUsuario($usuario)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query = "
            select id_usuario, usuario, nombre, apellido_paterno, password, id_tipousuario from tbl_usuario WHERE usuario = '$usuario' AND eliminado = 0;
        ";

        //echo $query;
        $database->setQuery($query);
        $usuario = $database->loadObject();


        return $usuario;
    }
}