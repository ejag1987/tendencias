<?php
namespace Tendencias\Sitio\Modules\Home\Models;

use ZCode\Lighting\Database\Mysql\MysqlProvider;
use ZCode\Lighting\Model\BaseModel;

class HomeModel extends BaseModel
{
public function obtenerContactos($idPerfil, $busqueda, $idUsuario)
{
    /** @var MysqlProvider $database */
    $database = $this->getDatabase('sitio');

    if ($idPerfil ==1) {
        $query= "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion 
FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario
 WHERE (c.eliminado = 0) AND (c.email LIKE '%$busqueda%' OR c.tipo_cliente LIKE '%$busqueda%' OR c.nombre LIKE '%$busqueda%' OR c.apellido LIKE '%$busqueda%' OR u.director LIKE '%$busqueda%')  ORDER BY c.nombre ASC;";
    }
    else {
        $query = "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion
FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario
 WHERE (c.id_usuario = $idUsuario AND c.eliminado = 0) AND (c.email LIKE '%$busqueda%' OR c.tipo_cliente LIKE '%$busqueda%' OR c.nombre LIKE '%$busqueda%' OR c.apellido LIKE '%$busqueda%')  ORDER BY c.nombre ASC;";
    }

    $database->setQuery($query);
    $consulta = $database->loadObjectList();

    return $consulta;
}

public function cargarContactos($perfil) {
    /** @var MysqlProvider $database */
    $database = $this->getDatabase('sitio');


    if ($perfil == 1) {

        $query = "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.id_usuario, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion
 FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario WHERE c.eliminado = 0 ORDER BY nombredirector ASC, c.nombre ASC;";
    }
    else {
        $query = "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.id_usuario, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion
 FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario WHERE c.id_usuario = $perfil AND c.eliminado = 0 ORDER BY nombredirector ASC, c.nombre ASC;";
    }



    $database->setQuery($query);
    $contactos = $database->loadObjectList();

    return $contactos;

}

public  function verContacto($idCliente)
{
    /** @var MysqlProvider $database */
    $database = $this->getDatabase('sitio');

        $query = "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.id_usuario, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion
 FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario WHERE c.eliminado = 0 AND c.id_cliente = $idCliente ORDER BY nombredirector ASC, c.nombre ASC;";


    $database->setQuery($query);
    $contacto = $database->loadObjectList();

    return $contacto;
}
public function buscarDirector($perfil)
{
    /**@var MysqlProvider $database */
    $database = $this->getDatabase('sitio');

    if ($perfil==1) {
        $query = "SELECT id_usuario as item_id, concat(nombre,' ',apellido_paterno) as name FROM tbl_usuario WHERE id_tipousuario = 2 ORDER BY nombre ASC;";
        $database->setQuery($query);
        $director= $database->loadObjectList();
    }
    else {
        $query = "SELECT id_usuario as item_id, concat(nombre,' ',apellido_paterno) as name FROM tbl_usuario WHERE id_tipousuario = 2 AND  id_usuario= $perfil ORDER BY nombre ASC;";
        $database->setQuery($query);
        $director= $database->loadObject();
    }

    return $director;
}
    public function buscarContacto($idCliente)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query = "SELECT id_cliente, email, tipo_cliente, nombre, apellido, cargo, direccion, ciudad, comuna, telefono, id_usuario, confirmacion from tbl_clientes where id_cliente= $idCliente;";

        $database->setQuery($query);
        $cliente = $database->loadObject();

        return $cliente;
    }
    public function buscarContactoRegistrado($email)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query ="SELECT CONCAT(u.nombre,' ',u.apellido_paterno) as nombre FROM tbl_usuario as u INNER JOIN tbl_clientes as c ON u.id_usuario = c.id_usuario WHERE c.email = '$email' and c.eliminado=0;";

        $database->setQuery($query);
        $contacto = $database->loadField('nombre');

        return $contacto;
    }
    public  function guardarContacto($idCliente, $email, $cliente, $nombre, $apellido, $cargo, $direccion, $ciudad, $comuna, $telefono, $director, $user)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');
        $datos = [
            'email' => $email,
            'tipo_cliente' => $cliente,
            'nombre' => $nombre,
            'apellido' => $apellido,
            'cargo' => $cargo,
            'direccion' => $direccion,
            'ciudad' => $ciudad,
            'comuna' => $comuna,
            'telefono' => $telefono,
            'id_usuario' => $director,
            'confirmacion' => '1',
            'usuarioregistro' => $user
        ];
        $tipos = 'ssssssssssis';

        if ($idCliente > 0) {
            $key   = [
                'field' => 'id_cliente',
                'value' => $idCliente,
                'type' => 'i'
            ];

            if (!$database->updateRow('tbl_clientes', $datos, $tipos, $key)) {
                return false;
            }

            return $this->buscarContacto($idCliente);
        }
        if (!$database->insertRow('tbl_clientes', $datos, $tipos)) {
            return false;
        }

        return $this->buscarContacto($database->lastId);
    }

    public function buscarContactosExportados()
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query= "SELECT c.email, c.confirmacion, c.tipo_cliente as cliente, c.nombre, c.apellido, c.cargo, c.direccion, c.ciudad, c.comuna, c.telefono, CONCAT(u.nombre,' ',u.apellido_paterno) as director
 FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario WHERE c.eliminado = 0 ORDER BY director ASC, cliente ASC, c.nombre ASC;";

        $database->setQuery($query);
        $contactosExportados = $database->loadObjectList();

        return $contactosExportados;
    }

    public function borrarConctacto($idCliente)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $datos = ['eliminado' => 1];
        $tipos = 'i';
        $key   = ['field' => 'id_cliente','value' => $idCliente,'type' => 'i'];

        if (!$database->updateRow('tbl_clientes', $datos, $tipos, $key)) {
            return false;
        }

        return $idCliente;
    }

    public function restaurarConctacto($idCliente)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $datos = ['eliminado' => 0];
        $tipos = 'i';
        $key   = ['field' => 'id_cliente','value' => $idCliente,'type' => 'i'];

        if (!$database->updateRow('tbl_clientes', $datos, $tipos, $key)) {
            return false;
        }

        return $idCliente;
    }

    public  function ConsultaContacto($idCliente)
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query = "SELECT id_cliente, email, nombre, apellido FROM tbl_clientes WHERE id_cliente = $idCliente;";
        $database->setQuery($query);
        $contacto = $database->loadObject();


        return $contacto;
    }

    public function contactosPapelera()
    {
        /** @var MysqlProvider $database */
        $database = $this->getDatabase('sitio');

        $query = "SELECT c.id_cliente, c.email, c.tipo_cliente, c.ciudad, c.comuna, c.id_usuario, c.nombre, c.apellido, c.telefono, u.id_usuario, u.nombre as nombredirector,u.apellido_paterno as apellidodirector, c.confirmacion
 FROM tbl_clientes as c INNER JOIN tbl_usuario as u ON c.id_usuario = u.id_usuario WHERE c.eliminado = 1 ORDER BY nombredirector ASC, c.nombre ASC;";

        $database->setQuery($query);
        $contactos = $database->loadObjectList();

        return $contactos;
    }
}