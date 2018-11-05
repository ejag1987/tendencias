-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 05-11-2018 a las 14:45:53
-- Versión del servidor: 10.1.36-MariaDB-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `extetsdn_invitaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_cargo`
--

CREATE TABLE `tbl_cargo` (
  `id_cargo` int(255) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombreusuario` varchar(255) NOT NULL,
  `fecharegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_cargo`
--

INSERT INTO `tbl_cargo` (`id_cargo`, `nombre`, `nombreusuario`, `fecharegistro`) VALUES
(1, 'Abogado(a)', '', '2018-09-04 15:17:22'),
(2, 'Alcalde', '', '2018-09-04 15:17:25'),
(3, 'Analista Comercial Senior\r\n', '', '2018-09-04 15:18:34'),
(4, 'Analista de RR.HH.\r\n', '', '2018-09-04 15:18:41'),
(5, 'Arquitecto\r\n', '', '2018-09-04 15:18:47'),
(6, 'Artista\r\n', '', '2018-09-04 15:18:53'),
(7, 'Asesor Legal Extend\r\n', '', '2018-09-04 15:19:02'),
(8, 'Brand Marketing Manager - LATAM\r\n', '', '2018-09-04 15:19:12'),
(9, 'CEO\r\n', '', '2018-09-04 15:19:18'),
(10, 'Comandante en Jefe - General del Aire\r\n', '', '2018-09-04 15:19:24'),
(11, 'Gerente Regional\r\n', '', '2018-09-04 16:15:00'),
(12, 'Gerente Corporativo de Personas\r\n', '', '2018-09-04 16:57:17'),
(13, 'Comunicaciones Corporativas\r\n', '', '2018-09-04 17:17:35'),
(14, 'Presidente(a)', '', '2018-09-05 11:58:51'),
(15, 'Gerente General\r\n', '', '2018-09-05 12:36:23'),
(16, 'Communications \r\n', '', '2018-09-05 15:35:53'),
(17, 'Comodoro  - Secretario General\r\n', '', '2018-09-05 15:35:54'),
(18, 'Comunicaciones Corporativas\r\n', '', '2018-09-05 15:36:02'),
(19, 'Comunicaciones Edelman\r\n', '', '2018-09-05 15:36:03'),
(20, 'Consultor\r\n', '', '2018-09-05 15:36:07'),
(21, 'Consultor y Pdte. Ejecutivo de Prelafit Compliance\r\n', '', '2018-09-05 15:36:19'),
(22, 'Contralor Corporativo Ripley Corp.\r\n', '', '2018-09-05 15:36:27'),
(23, 'Coordinador de Marketing Digital\r\n', '', '2018-09-05 15:36:31'),
(24, 'Coordinadora de RSE\r\n', '', '2018-09-05 15:36:35'),
(25, 'Country Manager Chile\r\n', '', '2018-09-05 15:36:47'),
(26, 'Country Manager Chile-Perú\r\n', '', '2018-09-05 15:36:52'),
(27, 'Customer Market Coordinator en SAB Miller\r\n', '', '2018-09-05 15:36:53'),
(28, 'Decano Facultad de Derecho\r\n', '', '2018-09-05 15:36:59'),
(29, 'Dir. Médica Integramedica\r\n', '', '2018-09-05 15:37:07'),
(30, 'Director\r\n', '', '2018-09-05 15:37:13'),
(31, 'División Manager Engineering\r\n', '', '2018-09-05 15:37:35'),
(32, 'Economista', '', '2018-09-05 15:38:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_ciudad`
--

CREATE TABLE `tbl_ciudad` (
  `id_ciudad` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombreusuario` varchar(255) DEFAULT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_ciudad`
--

INSERT INTO `tbl_ciudad` (`id_ciudad`, `nombre`, `nombreusuario`, `fecharegistro`) VALUES
(1, 'Amsterdam\r\n', NULL, '2018-09-04 15:22:58'),
(2, 'Copiapo\r\n', NULL, '2018-09-04 15:39:56'),
(3, 'EEUU\r\n', NULL, '2018-09-04 15:23:18'),
(4, 'Iquique\r\n', NULL, '2018-09-04 15:23:23'),
(5, 'Las Condes\r\n', NULL, '2018-09-04 15:23:29'),
(6, 'Londres\r\n', NULL, '2018-09-04 15:23:35'),
(7, 'Providencia \r\n', NULL, '2018-09-04 15:23:41'),
(8, 'Punta Arenas\r\n', NULL, '2018-09-04 15:23:47'),
(9, 'Rancagua\r\n', NULL, '2018-09-04 15:23:53'),
(10, 'San Antonio\r\n', NULL, '2018-09-04 15:23:58'),
(11, 'Santiago\r\n', NULL, '2018-09-04 15:24:04'),
(12, 'Temuco\r\n', NULL, '2018-09-04 15:24:26'),
(13, 'Talca\r\n', NULL, '2018-09-04 15:24:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo_cliente` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `comuna` varchar(255) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `id_usuario` tinyint(3) DEFAULT NULL,
  `confirmacion` tinyint(2) UNSIGNED DEFAULT '1',
  `usuarioregistro` varchar(255) NOT NULL,
  `fecharegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `eliminado` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`id_cliente`, `email`, `tipo_cliente`, `nombre`, `apellido`, `cargo`, `direccion`, `ciudad`, `comuna`, `telefono`, `id_usuario`, `confirmacion`, `usuarioregistro`, `fecharegistro`, `eliminado`) VALUES
(4, 'fzuniga@salfacorp.com', 'Salfacorp', 'Fernando', 'Zúñiga', 'Gerente General', 'Avenida Presidente Riesco 5335, piso 11.', 'Santiago', 'Las Condes', '(56 2) 29020360', 16, 1, 'mbaltierra', '2018-09-06 09:15:47', 0),
(5, 'jmeruane@salfacorp.com', 'Salfacorp', 'Jorge ', 'Meruane', 'Gerente corporativo de finanzas', 'Avenida Presidente Riesco 5335, piso 11.', 'Santiago', 'Las Condes', '(56 2) 29020360', 16, 1, 'mbaltierra', '2018-09-06 09:20:16', 0),
(6, 'jtpalacios@salfacorp.com', 'Salfacorp', 'José Tomás', 'Palacios', 'Fiscal Corporativo', 'Avenida Presidente Riesco 5335, piso 11.', 'Santiago', 'Las Condes', '+569 61912269', 16, 1, 'mbaltierra', '2018-10-04 08:04:27', 1),
(7, 'jmirarrazaval@salfacorp.com', 'Salfacorp', 'Juan Manuel', 'Irarrázaval', 'GERENTE GENERAL DE INGENIERÍA Y CONSTRUCCIÓN', 'Avenida Presidente Riesco 5335, piso 11.', 'Santiago', 'Las Condes', '+569 98279905', 16, 1, 'mbaltierra', '2018-09-06 09:25:57', 0),
(8, 'mstamm@novatec.cl', 'Novatec', 'Matías', 'Stamm', 'Gerente general Edificación', 'Avenida Presidente Riesco 5335, piso 11.', 'Santiago', 'Las Condes', '(56 9) 5648 4715', 16, 2, 'cfuenzalida', '2018-10-22 15:11:09', 0),
(9, 'vturpaud@iaconcagua.com', 'Salfacorp', 'Víctor', 'Turpaud', 'GERENTE GENERAL DE INMOBILIARIA ACONCAGUA', 'Avenida Presidente Riesco 5335, piso 19.', 'Santiago', 'Las Condes', '2 2902 0861', 16, 1, 'mbaltierra', '2018-09-06 09:30:25', 0),
(10, 'acoello@iaconcagua.com', 'Salfacorp', 'Augusto', 'Coello', 'GERENTE GENERAL DE RENTAS Y DESARROLLO INMOBILIARIO', 'Avenida Presidente Riesco 5335, piso 19', 'Santiago', 'Las Condes', '+569 79681400', 16, 2, 'mbaltierra', '2018-10-22 10:59:10', 0),
(11, 'sergio.barrientos@pfalimentos.cl', 'PF Alimentos', 'Sergio', 'Barrientos', 'Gerente comercial corporativo', 'Pdte Eduardo Frei Montalva 3900', 'Santiago', 'Renca', '+569 94898817', 16, 1, 'mbaltierra', '2018-09-06 09:35:43', 0),
(12, 'alfredomorenocharme@gmail.com', 'Palmas de Peñaflor', 'Alfredo', 'Moreno Charme', 'Fundador de Palmas de Peñaflor', 'Av Apoquindo 3650 Piso 17', 'Santiago', 'Las Condes', '(56 2) 2753 3100', 4, 1, 'cfuenzalida', '2018-10-04 16:06:59', 0),
(13, 'alfredomorenoe@gmail.com', 'Palmas de Peñaflor', 'Alfredo ', 'Moreno Echeverría', 'Director Escuadra Ecuestre Palmas de Peñaflor', 'Av Apoquindo 3650 Piso 17', 'Santiago', 'Las Condes', '+569 94364232', 16, 1, 'mbaltierra', '2018-09-06 09:46:34', 0),
(14, 'rtoro@onemi.gov.cl', 'ONEMI', 'Ricardo', 'Toro Tassara', 'Director Nacional de ONEMI', 'Beauchef 1671', 'Santiago', 'Santiago', '(56 9) 7220 0100', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(15, 'jgarcia@tmluc.com', 'Tresmontes Lucchetti', 'Justo', 'García', 'Presidente Tresmontes Lucchetti. Vicepresidente Región Estratégica México y Chile.', 'Avenida Las Conquistadores # 2345', 'Santiago', 'Providencia', '(22 5) 8656 10__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(16, 'mario.camacho@gnlchile.com', 'GNL Chile', 'Mario', 'Camacho', 'Gerente General', 'Rosario Norte 532, Of. 1303', 'Santiago', 'Las Condes', '(56 2) 2892 8050', 15, 1, 'cfuenzalida', '2018-10-02 15:49:19', 0),
(17, 'rafael.gonzalez@gnlchile.com', 'GNL Chile', 'Rafael ', 'González', 'Gerente de Operaciones Comerciales', 'Rosario Norte 532, Of. 1303', 'Santiago', 'Las Condes', '+56 2 2892 8050', 15, 1, 'mtovalle', '2018-09-06 09:57:23', 0),
(18, 'fwalker@banmerchant.cl', 'DIB', 'Francisco', 'Walker', 'Director Ejecutivo División Inmobiliaria de Banmerchant', 'Alonso de Córdova 2860 Piso 2', 'Santiago', 'Vitacura', '(56) 22580 6000  ', 16, 1, 'mbaltierra', '2018-09-06 09:57:55', 0),
(19, 'ehuidobro@banmerchant.cl', 'DIB', 'Enrique', 'Huidobro', 'Presidente de Banmerchant', 'Alonso de Córdova 2860 Piso 2', 'Santiago', 'Vitacura', '(56) 22580 6000  ', 16, 1, 'mbaltierra', '2018-09-06 09:59:29', 0),
(20, 'pablo.kuhlenthal@capitaria.com', 'Capitaria', 'Pablo', 'Kuhlenthal', 'Socio', 'Isidora Goyenechea 3000, Piso 29', 'Santiago', 'Las Condes', '(22 2) 2437 7769', 27, 2, 'cfuenzalida', '2018-10-24 17:33:28', 0),
(21, 'alexis.berczely@baumax.cl', 'Baumax', 'Alexis', 'Berczely', 'Gerente Comercial', 'Av Santa María 6350, piso 1', 'Santiago', 'Vitacura', '+56 990791956', 30, 1, 'cluttecke', '2018-09-06 10:14:46', 0),
(22, 'apinochet@resiter.cl', 'Resiter', 'Alvaro', 'Pinochet', 'Gerente de Desarrollo de Nuevos Negocios', 'Los Conquistadores 2752', 'Santiago', 'Providencia', '+56 9 8829 1880', 30, 2, 'cluttecke', '2018-10-30 14:44:19', 0),
(23, 'jmcorrea@Falabella.cl', 'Tottus', 'Matías', 'Correa', 'Gerente General', 'Nataniel Cox 620', 'Santiago', 'Santiago', '(56 9) 6407 4966', 30, 2, 'cfuenzalida', '2018-10-22 10:15:22', 0),
(24, 'alvarez.elena@huawei.com', 'Huawei Chile', 'Elena', 'Alvarez', 'Directora de marketing Chile', 'Cerro El Plomo 5420, Piso 16', 'Santiago', 'Las Condes', '940696489', 25, 2, 'cfuentes', '2018-10-22 10:11:52', 0),
(25, 'jabattocchio@tottus.cl', 'Tottus', 'Alejandro', 'Battocchio', 'Gerente de Marketing', 'Nataniel Cox 620', 'Santiago', 'Santiago', '(56 9) 7659 5739', 30, 2, 'cfuenzalida', '2018-10-22 10:07:53', 0),
(26, 'karina.perez@roberthalf.cl', 'Robert Half Chile', 'Karina', 'Pérez', 'Directora Robert Half en Chile', 'Avenida Isidora Goyenechea, 2800, Piso 15, Torre Titanium ', 'Santiago', 'Las Condes', '9 65961100   ', 25, 2, 'cfuentes', '2018-10-22 11:27:21', 0),
(27, 'Hugo.Vilchez@pmi.com', 'Philip Morris', 'Hugo ', 'Vilchez', 'Gerente General', 'Av. Kennedy 5735 of. 509', 'Santiago', 'Las Condes', '+ 56 9 4425 9695', 30, 1, 'cluttecke', '2018-09-06 10:45:02', 0),
(28, 'Jose.Merino@pmi.com', 'Philip Morris', 'José Ignacio', 'Merino', 'Gerente de Asuntos Corporativos', 'Av. Kennedy 5735 of. 509', 'Santiago', 'Las Condes', '+56 9 9825 3175', 30, 1, 'cluttecke', '2018-09-06 10:46:04', 0),
(29, 'steve.yanggang@huawei.com', 'Huawei Chile', 'Steve', 'Yang', 'Gerente General Huawei Chile', 'Cerro El Plomo 5420, Piso 16', 'Santiago', 'Las Condes', '984680171', 25, 2, 'cfuentes', '2018-10-22 10:11:49', 0),
(30, 'Sakuraba-K@marubeni.com', 'Aguas Nuevas', 'Keisuke ', 'Sakuraba', 'Presidente', 'Isidora Goyenechea 3600 Piso 4', 'Stgo', 'Las Condes', '227334615', 3, 2, 'abascur', '2018-10-25 12:17:56', 0),
(31, 'salvador.villarino@aguasnuevas.cl', 'Aguas Nuevas', 'Salvador', 'Villarino', 'Gerente General', 'Isidora Goyenechea 3600 Piso 4', 'Stgo', 'Las Condes', '227334615', 3, 1, 'abascur', '2018-09-06 10:52:16', 0),
(32, 'julio.reyes@aguasnuevas.cl', 'Aguas Nuevas', 'Julio', 'Reyes', 'Gerente de Asuntos Corporativos', 'Isidora Goyenechea 3600 Piso 4', 'Stgo', 'Las Condes', '227334615', 3, 1, 'abascur', '2018-10-03 12:45:35', 1),
(33, 'juan.aguero@btgpactual.com', 'BTG Pactual Chile', 'Juan Guillermo', 'Aguero Vergara', 'CEO', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '(22 5) 8750 55__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(34, 'fernando.massu@btgpactual.com', 'Banco BTG Pactual Chile', 'Fernando', 'Massu', 'Presidente', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '(22 5) 8750 55__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(35, 'luis.herrera@btgpactual.com', 'BTG Pactual Chile', 'Luis Oscar', 'Herrera B.', 'Economista jefe para la Región Andina', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '22 587 5055', 3, 2, 'abascur', '2018-10-30 16:05:35', 0),
(36, 'manuel.serra@indisa.cl', 'Clínica Indisa', 'Manuel', 'Serra', 'Gerente General', 'Los Conquistadores 1732', 'Santiago', 'Providencia', '(22 3) 6253 02__', 22, 1, 'cfuenzalida', '2018-10-05 07:19:20', 0),
(37, 'matias.repetto@btgpactual.com', 'BTG Pactual Chile Corredores de Bolsa', 'Matías', 'Repetto', 'Gerente General', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '22 587 5055', 3, 1, 'abascur', '2018-09-06 10:57:50', 0),
(38, 'hernan.martin@btgpactual.com', 'BTG Pactual Chile AGF', 'Hernán ', 'Martin', 'Gerente General', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '22 587 5055', 3, 1, 'abascur', '2018-09-06 10:58:43', 0),
(39, 'jaime.maluk@btgpactual.com', 'BTG Pactual Chile Seguros de Vida', 'Jaime', 'Maluk', 'Gerente General', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', '22 587 5055', 3, 2, 'abascur', '2018-10-25 19:43:31', 0),
(40, 'cecilia.palma@indisa.cl', 'Clinica Indisa', 'Cecilia', 'Palma', 'Gerente Servicios Clínicos y Diagnósticos', 'Los Conquistadores 1732', 'Santiago', 'Providencia', '22 3625596', 25, 1, 'cfuentes', '2018-10-03 13:50:50', 1),
(41, 'rodrigo.castillo@indisa.cl', 'Clinica Indisa', 'Rodrigo', 'Castillo', 'Director Médico', 'Los Conquistadores 1732', 'Santiago', 'Las Condes', '223625302', 25, 1, 'cfuentes', '2018-09-06 11:03:41', 0),
(42, 'jorge.falaha@indisa.cl', 'Clinica Indisa', 'Jorge ', 'Falaha ', 'Gerente Planificación y Control de Gestión', 'Los Conquistadores 1732', 'Santiago', 'Providencia', '223625302', 25, 1, 'cfuentes', '2018-10-04 07:38:06', 1),
(43, 'antonia.sanchez@indisa.cl', 'Clinica Indisa', 'Gonzalo ', 'Trucco', 'Gerente Comercial y Marketing', 'Los Conquistadores 1732', 'Santiago', 'Providencia', '223625302', 25, 2, 'cfuentes', '2018-10-22 15:25:30', 0),
(44, 'soledad.rivero@indisa.cl', 'Clinica Indisa', 'Soledad', 'Rivero', 'Gerente RRHH', 'Los Conquistadores 1732', 'Santiago', 'Providencia', '223625201 ', 25, 1, 'cfuentes', '2018-10-03 13:50:58', 1),
(45, 'marcelo.fuster@huawei.com', 'Huawei Chile', 'Marcelo', ' Fuster', 'Director de Productos', 'Cerro El Plomo 5420, Piso 16', 'Santiago', 'Las Condes', '979796220', 25, 1, 'cfuentes', '2018-10-04 15:16:43', 1),
(46, 'juan.leon@huawei.com', 'Huawei Chile', 'Juan Pablo', 'León', 'Gerente de Ventas', 'Cerro El Plomo 5420, Piso 16', 'Santiago', 'Las Condes', '952268965', 25, 1, 'cfuentes', '2018-10-04 15:16:36', 1),
(47, 'gdg@neorentas.cl', 'Neorentas', 'Gastón', 'Donoso', 'Socio gerente', 'Alonso de Cordova 2700 of 24', 'Santiago', 'Vitacura', '24643591', 5, 1, 'alaguna', '2018-09-06 11:42:46', 0),
(48, 'cjb@neorentas.cl', 'Neorentas', 'Camilo', 'Justiniano Briones', 'Socio', 'Alonso de Cordova 2700 of 24', 'Santiago', 'Vitacura', '24643591', 5, 2, 'alaguna', '2018-10-22 12:55:56', 0),
(49, 'plarrain@dlp.cl', 'DLP', 'Pelayo', 'Larrain Aspillaga', 'Presidente directorio', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 2, 'alaguna', '2018-10-22 18:26:10', 0),
(50, 'ssaitua@dlp.cl', 'DLP', 'Santiago', 'Saitua Doren', 'Gerente general', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 1, 'alaguna', '2018-09-06 11:56:46', 0),
(51, 'jdarraidou@dlp.cl', 'DLP', 'Javier ', 'Darraïdou Díaz', 'Socio', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 1, 'alaguna', '2018-09-06 11:59:02', 0),
(52, 'jmpoblete@dlp.cl', 'DLP', 'José Manuel', 'Poblete', 'Socio ', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 1, 'alaguna', '2018-09-06 12:00:59', 0),
(53, 'jcastillo@dlp.cl', 'DLP', 'Julio', 'Castillo', 'Socio gerente operaciones', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 1, 'alaguna', '2018-10-05 11:56:39', 1),
(54, 'ffraser@aport.cl', 'Aport S.A.', 'Felipe ', 'Fraser', 'Gerente General', 'AV. Vitacura, 2736, Piso 21', 'Santiago', 'Las Condes', '+56 2 2362 9840 ', 26, 1, 'enapoli', '2018-09-06 13:24:38', 0),
(55, 'pedro.urzua@enel.com', 'ENEL', 'Pedro ', 'Urzúa', ' gerente de Relaciones Institucionales ', 'Av. Sta. Rosa 76', 'Santiago', 'Las Condes', '+56 22 353 4674', 26, 2, 'enapoli', '2018-10-24 11:20:09', 0),
(56, 'andres.palma@enel.com', 'ENEL', 'Andrés ', 'Palma', 'Jefe de Relaciones Institucionales', 'Av. Sta. Rosa 76', 'santiago', 'santiago', '+56 22 353 4674', 26, 1, 'enapoli', '2018-09-06 13:28:53', 0),
(57, 'mario.camacho@gnlchile.com', 'GNL Chile', 'Mario', 'Camacho', 'Gerente General', 'Rosario norte 532 oficina 1604', 'Santiago', 'Las Condes', '(2) 2499 0900', 26, 1, 'enapoli', '2018-10-02 15:49:34', 1),
(58, 'jtunon@packardbell.cl', 'Acer', 'Jorge ', 'Tuñón', 'Gerente General', 'Las Torres 1278', 'Santiago', 'Huechuraba', '+56 9 77938200', 26, 1, 'enapoli', '2018-09-06 13:33:14', 0),
(59, 'esironvalle@pocuro.cl', 'Pocuro', 'Emiliano', 'Sironvalle', 'Presidente del directorio', 'Nueva de Lyon 145 piso 13', 'Santiago', 'Providencia', '224849798', 27, 1, 'baguirre', '2018-09-06 15:10:14', 0),
(60, 'csironvalle@pocuro.cl', 'Pocuro', 'Cristián', 'Sironvalle', 'Gerente General', 'Nueva de Lyon 145, piso 13', 'Santiago', 'Providencia', '224849798', 27, 1, 'baguirre', '2018-09-06 15:11:30', 0),
(61, 'nmouat@pocuro.cl', 'Pocuro', 'Nelson', 'Mouat', 'gerente general inmobiliario', 'Nueva de Lyon 145, piso 13', 'Santiago', 'Providencia', '224849798', 27, 1, 'baguirre', '2018-09-06 15:12:36', 0),
(62, 'aloyola@thehouse.cl', 'TheHouse', 'Alejandra', 'Loyola', 'socia', 'Av. Las Condes 11.000, oficna 601', 'Santiago', 'Las Condes', '22490800', 27, 1, 'cfuenzalida', '2018-09-07 10:04:56', 0),
(63, 'jsepulveda@thehouse.cl', 'TheHouse', 'José Miguel', 'Sepúlveda', 'socio', 'Av. Las Condes 11.000, oficna 601', 'Santiago', 'Las Condes', '22490800', 27, 1, 'baguirre', '2018-09-06 15:14:51', 0),
(64, 'cforno@capitaria.com', 'Capitaria', 'Cristóbal', 'Forno', 'CEO', 'Isidora Goyenechea 3.000, piso 29', 'Santiago', 'Las Condes', '225926600', 27, 1, 'baguirre', '2018-09-06 15:24:32', 0),
(65, 'caviles@capitaria.com', 'Capitaria', 'Cristóbal', 'Avilés', 'Gerente General Latam', 'Isidora Goyenechea 3.000, piso 29', 'Santiago', 'Las Condes', '225926600', 27, 2, 'baguirre', '2018-10-23 08:28:06', 0),
(66, 'amoraga@moragaycia.cl', 'Capitaria', 'Álvaro ', 'Moraga', 'Presidente del directorio', 'El Golf 40, oficina 701', 'Santiago', 'Las Condes', '222064797', 27, 1, 'baguirre', '2018-09-06 15:19:44', 0),
(67, 'fgoycoolea@vectorcapital.cl', 'Vector Capital', 'Federico', 'Goycoolea', 'Gerente General', 'Isidora Goyenechea 3.000, piso 29', 'Santiago', 'Las Condes', '225926607', 27, 2, 'baguirre', '2018-10-22 09:46:59', 0),
(68, 'hchl@chya.cl', 'Enel', 'Herman', 'Chadwick', 'Presidente del Directorio', 'Santa Rosa 76, piso 17', 'Santiago', 'Santiago Centro', '223534663', 27, 1, 'baguirre', '2018-10-02 16:01:02', 1),
(69, 'raul.lavin@bbraun.com', 'B. Braun', 'Raúl ', 'Lavin', 'Gerente de Recursos Humanos', 'Avenida Puerta Sur 03351', 'Santiago ', 'San Bernardo', '2 24407175 ', 18, 1, 'nvander', '2018-09-06 15:37:25', 0),
(70, 'fernando.caetano@bbraun.com', 'B. Braun', 'Fernando', 'Caetano', 'Director General B. Braun Medical SpA', 'Avenida Puerta Sur 03351', 'Santiago', 'San Bernardo', '2 2440 7106', 18, 1, 'nvander', '2018-09-06 15:41:47', 0),
(71, 'baguirre@enel.com', 'Enel', 'Paolo', 'Pallotti', 'CEO Enel Chile', 'Santa Rosa 76, piso 17', 'Santiago', 'Santiago Centro', '(22 8) 4749 88__', 27, 1, 'cfuenzalida', '2018-10-04 07:30:07', 0),
(72, 'antonio.pujol@uss.cl', 'Universidad San Sebastián', 'Antonio', 'Pujol', 'Vicerrector de Vinculación con el Medio y Comunicaciones', 'Bellavista 7', 'Santiago', 'Recoleta', '(22 6) 6131 05__', 4, 1, 'cfuenzalida', '2018-10-03 07:29:38', 0),
(73, 'alejandra.parra@uss.cl', 'Universidad San Sebastián', 'Carlos', 'Williamson', 'Rector', 'Bellavista 7', 'Santiago', 'Recoleta', '(22 6) 6131 11__', 4, 2, 'cfuenzalida', '2018-10-22 09:40:25', 0),
(74, 'fjbustosk@isinergia.cl', 'Sinergía', 'Fernando', 'Bustos', 'Gerente General', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '222107902', 10, 1, 'jpacheco', '2018-09-06 17:41:24', 0),
(75, 'jechegaray@isinergia.cl', 'Sinergía', 'Juan Pablo', 'Echegaray', 'Gerente de Marketing', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '994929792', 10, 2, 'jpacheco', '2018-10-22 10:08:32', 0),
(76, 'mnunez@isinergia.cl', 'Sinergía', 'Maximiliano', 'Nuñez', 'Gerente de Postventa', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '222107902', 10, 1, 'jpacheco', '2018-10-08 15:17:40', 1),
(77, 'dsimonetti@isinergia.cl', 'Sinergía', 'Diego ', 'Simonetti', 'Gerente Comercial', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '222107902', 10, 1, 'jpacheco', '2018-10-08 15:17:14', 1),
(78, 'felipe.undurraga@isinergia.cl', 'Sinergía', 'Felipe ', 'Undurraga', 'Gerente Inmobiliario', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '994523698', 10, 2, 'jpacheco', '2018-10-24 10:08:53', 0),
(79, 'friesco@isinergia.cl', 'Sinergía', 'Felipe', 'Riesco', 'Gerente Inmobiliario', 'Rosario Norte 615, piso 13', 'Santiago', 'Las Condes', '982931510', 10, 2, 'jpacheco', '2018-10-23 14:25:44', 0),
(80, 'kennelclubchile@gmail.com', 'Kennel Club', 'Isabel', 'Vásquez', 'Vicepresidenta', 'Manuel Barros Borgoño 236, piso 12, Of 1201', 'Santiago', 'Providencia', '999911501', 10, 1, 'jpacheco', '2018-10-03 14:02:35', 1),
(81, 'euaguilo@gmail.com', 'Kennel Club', 'Eugenio', 'Aguiló', 'Presidente', 'Manuel Barros Borgoño 236 Of. 1201', 'Santiago', 'Providencia', '952381873', 10, 1, 'jpacheco', '2018-10-03 14:02:45', 1),
(82, 'julio.sanmartin@ericsson.com', 'Ericsson', 'Julio', 'San Martín', 'VP de Marketing y Estrategia', 'Av Vitacura 2939, P 17', 'Santiago', 'Las Condes', '998228206', 10, 1, 'jpacheco', '2018-09-06 17:55:52', 0),
(83, 'nicolas.brancoli@ericsson.com', 'Ericsson', 'Nicolás', 'Brancoli', 'Presidente Ericsson Sudamérica', 'Av Vitacura 2939, P 17', 'Santiago', 'Las Condes', '223331274', 10, 1, 'jpacheco', '2018-09-06 17:58:40', 0),
(84, 'danilo.torres@sonami.cl', 'Sonami', 'Danilo', 'Torres', 'Director de Comunicaciones ', 'Av. Apoquindo 3000, Piso 5', 'Santiago', 'Las Condes', '977591759', 10, 1, 'jpacheco', '2018-09-06 18:00:25', 0),
(85, 'Diego.hernandez@sonami.cl', 'Sonami', 'Diego', 'Hernández', 'Presidente', 'Av. Apoquindo 3000, Piso 5', 'Santiago', 'Las Condes', '228207000', 10, 1, 'jpacheco', '2018-09-06 18:01:37', 0),
(86, 'maaraya@entel.cl', 'Entel', 'Manuel', 'Araya', 'Gerente de Regulación y Asuntos Corporativos', 'Av. Costanera Sur 2760, piso 23', 'Santiago', 'Las Condes', '24235390', 19, 2, 'pmackenzie', '2018-10-23 10:17:53', 0),
(87, 'jeallard@guerrero.cl', 'Guerrero Olivos', 'Juan Enrique', 'Allard', 'Socio', 'Av. Vitacura 2939, piso 8', 'Santiago', 'Vitacura', '(26 7) 4293 9___', 23, 1, 'cfuenzalida', '2018-10-05 12:47:55', 0),
(88, 'cesar.barros.montero@gmail.com', 'Invitado Especial', 'César', 'Barros', 'Director de empresas', 'Benjamín 2929, dpto 42', 'Santiago', 'Las Condes', '(95 1) 9275 1___', 23, 1, 'cfuenzalida', '2018-10-22 15:18:19', 0),
(89, 'antoniobbuc@entel.cl', 'Entel', 'Antonio', 'Büchi', 'Gerente General', 'Av. Costanera Sur 2760, piso 22', 'Santiago', 'Las Condes', '(23 6) 0296 4___', 23, 1, 'cfuenzalida', '2018-10-22 14:54:04', 0),
(90, 'andrea.brajovic@metlife.cl', 'ProVida AFP', 'Andrea', 'Brajovic', 'Head of Communications Chile', 'Av. Pedro de Valdivia 100, piso 17', 'Santiago', 'Las Condes', '92404016', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(91, 'gruiz@provida.cl', 'ProVida AFP', 'Gregorio', 'Ruiz Esquide', 'Gerente General', 'Av. Pedro de Valdivia 100, piso 17', 'Santiago', 'Las Condes', '23511200', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(92, 'vhassi@provida.cl', 'ProVida AFP', 'Víctor', 'Hassi', 'Presidente', 'Av. Pedro de Valdivia 100, piso 16', 'Santiago', 'Las Condes', '23511200', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(93, 'cmaturana@entel.cl', 'Entel', 'Cristián', 'Maturana', 'Gerente Legal', 'Av. Costanera Sur 2760, piso 23', 'Santiago', 'Las Condes', '23651000 anexo 33003', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(94, 'fvrivas@entel.cl', 'Entel', 'Fernando', 'Rivas', 'Gerente de Comunicaciones', 'Av. Costanera Sur 2760, piso 23', 'Santiago', 'Las Condes', '24235390', 19, 1, 'pmackenzie', '2018-10-03 10:52:34', 1),
(95, 'fstraub@entel.cl', 'Entel', 'Felipe', 'Straub', 'Gerente de Recursos Humanos', 'Av. Costanera Sur 2760, piso 4', 'Santiago', 'Las Condes', '23651000 anexo 32399', 19, 1, 'pmackenzie', '2018-10-03 10:51:15', 1),
(96, 'ctorres@provida.cl', 'ProVida AFP', 'Cristóbal', 'Torres', 'Gerente de Inversiones', 'Av. Pedro de Valdivia 100, piso 9', 'Santiago', 'Las Condes', '23511202', 19, 1, 'pmackenzie', '2018-10-08 14:03:44', 1),
(97, 'fureta@entel.cl', 'Entel', 'Felipe', 'Ureta', 'Gerente de Finanzas y Control de Gestión', 'Av. Costanera Sur 2760, piso 22', 'Santiago', 'Las Condes', '23651000 anexo 33001', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(98, 'mwagner@metlife.cl', 'ProVida AFP', 'María Eugenia', 'Wagner', 'Directora', 'Av. Pedro de Valdivia 100, piso 17', 'Santiago', 'Las Condes', '23511200', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(99, 'rcerda@aurus.cl', 'Aurus', 'Raimundo', 'Cerda', 'Gerente General', 'Av. La Dehesa 1844, oficina 801', 'Santiago', 'Lo Barnechea', '(24 9) 8130 0___', 11, 2, 'cfuenzalida', '2018-10-23 16:08:49', 0),
(100, 'jmmusalem@aurus.cl', 'Aurus', 'José Miguel', 'Musalém', 'Presidente', 'Av. La Dehesa 1844, oficina 801', 'Santiago', 'Lo Barnechea', '(24 9) 8130 0___', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(101, 'aseelenberger@aurus.cl', 'Aurus', 'Alex', 'Seelenberger', 'Managing Director', 'Av. La Dehesa 1844, oficina 801', 'Santiago', 'Lo Barnechea', '(24 9) 8130 0___', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(102, 'acruz@aurus.cl', 'Aurus', 'Antonio', 'Cruz', 'Director', 'Av. La Dehesa 1844, oficina 801', 'Santiago', 'Lo Barnechea', '(24 9) 8130 0___', 11, 2, 'cfuenzalida', '2018-10-23 12:25:52', 0),
(103, 'jcdv.delano@gmail.com', 'Aurus', 'Juan Carlos', 'Delano', 'Director', 'Av. La Dehesa 1844, oficina 801', 'Santiago', 'Lo Barnechea', '(24 9) 8130 0___', 11, 2, 'cfuenzalida', '2018-10-24 16:43:41', 0),
(104, 'gonzalo.leon@nike.com', 'Nike', 'Gonzalo', 'León', 'PR Comms Specialist Chile', 'Av. Isidora Goyenechea 3365', 'Santiago', 'Las Condes', '23659377', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(105, 'martin.rojas@nike.com', 'Nike', 'Martín', 'Rojas', 'Sports Marketing Manager Chile', 'Av. Isidora Goyenechea 3365', 'Santiago', 'Las Condes', '23659377', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(106, 'paul.baghai@nike.com', 'Nike', 'Paul', 'Baghai', 'Marketing Manager Chile', 'Av. Isidora Goyenechea 3365', 'Santiago', 'Las Condes', '23659377', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(107, 'dcohen@transoceanica.cl', 'Transoceanica', 'Deborah', 'Cohen', 'Gerente Corporativo de Personas', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56 2 2957 0100', 18, 1, 'nvander', '2018-09-07 09:40:08', 0),
(108, 'alejandro.perez@uss.cl', 'Universidad San Sebastián', 'Alejandro', 'Pérez', 'Director Junta Directiva', 'Bellavista 7', 'Santiago', 'Recoleta', '(22 6) 6131 11__', 4, 1, 'cfuenzalida', '2018-10-03 07:29:18', 0),
(109, 'luis.cordero@uss.cl', 'Universidad San Sebastián', 'Luis', 'Cordero', 'Presidente Junta Directiva', 'Bellavista 7', 'Santiago', 'Recoleta', '(22 6) 6131 11__', 4, 1, 'cfuenzalida', '2018-10-03 07:30:12', 0),
(110, 'ftoro@transoceanica.cl', 'Transoceanica', 'Fernanda', 'Toro', 'Gerente General de Hotelería y Turismo', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 2, 'nvander', '2018-10-24 08:53:46', 0),
(111, 'jbitar@transoceanica.cl', 'Transoceanica', 'Javier', 'Bitar', 'Gerente General', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 2, 'nvander', '2018-10-23 08:41:58', 0),
(112, 'Rmolina@transoceanica.cl', 'Transoceanica', 'Raúl', 'Molina', 'Gerente Inmobiliario', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 2, 'nvander', '2018-10-24 09:57:38', 0),
(113, 'Csallaberry@transoceanica.cl', 'Transoceanica', 'Cristián ', 'Sallaberry', 'Gerente de Negocios Productivos', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 09:53:42', 0),
(114, 'rgarcia@transoceanica.cl', 'Transoceanica', 'Raimundo', 'Garcia', 'Fiscal', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 09:54:50', 0),
(115, 'mpoblete@transoceanica.cl', 'Transoceanica', 'Matias', 'Poblete', 'Gerente de Administración y Finanzas', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 09:56:44', 0),
(116, 'cschiess@transoceanica.cl', 'Transoceanica', 'Christoph', 'Schiess', 'Presidente Directorio', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '(56 2) 2957 0100', 23, 1, 'cfuenzalida', '2018-10-22 15:19:07', 0),
(117, 'nchiess@transoceanica.cl', 'Transoceanica', 'Nicola  ', 'Schiess', 'Director', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 10:06:46', 0),
(118, 'SSchiess@transoceanica.cl', 'Transoceanica', 'Sonia', ' Schiess ', 'Asesor del Directorio', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 10:08:44', 0),
(119, 'cschiesss@transoceanica.cl', 'Transoceanica', 'Claudio', 'Schiess', 'Asesor del Directorio', 'Av. Santa María 5888', 'Santiago', 'Vitacura', '+56229570100', 18, 1, 'nvander', '2018-09-07 10:11:29', 0),
(120, 'rbuchi@b3b.cl', 'Entel', 'Richard', 'Büchi', 'Director', 'Av. Costanera Sur 2760, piso 22', 'Santiago', 'Las Condes', '(23 6) 0296 4___', 23, 1, 'cfuenzalida', '2018-10-03 07:35:30', 0),
(121, 'jpreller@bancoestado.cl', 'BancoEstado', 'Jonás', 'Preller', 'Gerente de Comunicaciones y Sostenibilidad', 'Av. Libertador Bernardo O’Higgins 1111, piso 4', 'santiago', 'santiago', '(29 7) 0582 2___', 19, 1, 'cfuenzalida', '2018-10-23 08:06:49', 0),
(122, 'ivan.ibaceta@gmail.com', 'Lo Zarate', 'Iván', 'Ibaceta', 'Gerencia Contabilidad', 'Los Conquistadors 1790', 'Santiago', 'Las Condes', '+56942964673', 18, 2, 'nvander', '2018-10-22 10:28:58', 0),
(123, 'jcooper@bancoestado.cl', 'BancoEstado', 'Juan', 'Cooper', 'Gerente General', 'Av. Libertador Bernardo O’Higgins 1111, piso 4', 'santiago', 'santiago', '(29 7) 0503 8___', 23, 1, 'cfuenzalida', '2018-10-03 10:56:10', 0),
(124, 'atagle@bancoestado.cl', 'BancoEstado', 'Arturo', 'Tagle', 'Presidente', 'Av. Libertador Bernardo O’Higgins 1111, piso 9', 'santiago', 'santiago', '(29 7) 0500 5___', 23, 1, 'cfuenzalida', '2018-10-22 14:54:32', 0),
(125, 'pcorrea5@bancoestado.cl', 'BancoEstado', 'Pablo', 'Correa', 'Vicepresidente', 'Av. Libertador Bernardo O’Higgins 1111, piso 9', 'santiago', 'santiago', '(29 7) 0501 4___', 23, 1, 'cfuenzalida', '2018-10-03 10:56:27', 0),
(126, 'rguzman@massiva.cl', 'Massiva', 'Rodrigo', 'Guzmán', 'CEO y socio', 'El Rosal 4547', 'Santiago', 'Huechuraba', ' +56 2 2956 3200         ', 16, 1, 'mbaltierra', '2018-09-07 11:28:11', 0),
(127, 'fizcue@massiva.cl', 'Massiva', 'Francisco', 'Izcúe', 'Gerente general', 'El Rosal 4547', 'Santiago', 'Huechuraba', '+56 2 2956 3200         ', 16, 1, 'mbaltierra', '2018-09-07 11:29:34', 0),
(128, 'felipemella@gam.cl', 'GAM', 'Felipe', 'Mella', 'Director ejecutivo', 'Av Libertador Bernardo O´Higgins 227', 'Santiago', 'Santiago', '(22 5) 6655 03__', 23, 1, 'cfuenzalida', '2018-10-22 16:09:11', 0),
(129, 'elisa.perez@btgpactual.com', 'BTG Pactual Chile', 'Elisa', 'Pérez V.', 'Gerente de Marketing', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', ' 587 5055', 3, 1, 'abascur', '2018-10-03 11:10:05', 1),
(130, 'rodrigo-perez.mackenna@btgpactual.com', 'BTG Pactual Chile', 'Rodrigo ', 'Pérez M.', 'Director', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', ' 587 5055', 3, 2, 'abascur', '2018-10-29 11:47:21', 0),
(131, 'jose.zamorano@btgpactual.com', 'BTG Pactual Chile', 'José Ignacio', 'Zamorano', 'Director de Finanzas Corporativas', 'Av. Costanera Sur 2730 piso 23', 'Stgo', 'Las Condes', ' 587 5055', 3, 2, 'abascur', '2018-10-30 12:14:11', 0),
(132, 'jose.torga@aguasaraucania.cl', 'Aguas Araucanía', 'José Antonio', 'Torga L.', 'Gerente Regional', 'Calle Vicuña Mackenna 0202', 'Temuco', 'Temuco', '45  2 207 239 ', 3, 1, 'abascur', '2018-09-07 12:22:49', 0),
(133, 'christian.adema@aguasmagallanes.cl', 'Aguas magallanes', 'Christian', 'Adema Galetovic', 'Gerente Regional', 'Manuel Señoret 936', 'Punta Arenas', 'Punta Arenas', '612-200810 anexo interno 6810', 3, 1, 'abascur', '2018-09-07 12:24:24', 0),
(134, 'Carlos.Barboza@aguasnuevas.cl', 'Aguas Chañar', 'Carlos ', 'Barboza', 'Gerente Regional', 'Av. Copayapu 297', 'Copiapó', 'Copiapó', '995424242', 3, 1, 'abascur', '2018-09-07 12:30:51', 0),
(135, 'pivelic@ei.cl', 'Echeverría Izquierdo', 'Pablo ', 'Ivelic Z', 'Gerente General', 'Rosario Norte 532', 'Stgo', 'Las Condes', '2631 4580', 3, 1, 'abascur', '2018-09-07 12:28:13', 0),
(136, 'fecheverria@ei.cl', 'Echeverría Izquierdo', 'Fernando', 'Echeverría Vial', 'Presidente del Directorio', 'Rosario Norte 532', 'Stgo', 'Las Condes', '2631 4580', 3, 2, 'abascur', '2018-10-31 11:49:45', 0),
(137, 'rcruzat@ei.cl', 'Echeverría Izquierdo Inmobiliaria', 'Raimundo', 'Cruzat', 'Gerente General', 'Rosario Norte 532', 'Stgo', 'Las Condes', '2631 4580', 3, 1, 'abascur', '2018-10-03 12:51:36', 1),
(138, 'fcruz@ei.cl', 'Echeverría Izquierdo Edificaciones', 'Francisca ', 'Cruz', 'Gerente General', 'Rosario Norte 532', 'Stgo', 'Las Condes', '2631 4580', 3, 1, 'abascur', '2018-10-03 12:51:49', 1),
(139, 'francisca.garreton@aguasnuevas.cl', 'Aguas Nuevas', 'Francisa', 'Garretón R.', 'Gerenta Corporativa de Recursos Humanos', 'Isidora Goyenechea 3600 Piso 4', 'Stgo', 'Las Condes', '227334615', 3, 1, 'abascur', '2018-10-03 12:45:21', 1),
(140, 'rodrigo.tuset@aguasnuevas.cl', 'Aguas Nuevas', 'Rodrigo ', 'Tuset', 'Gerente Corporativo de Finanzas', 'Isidora Goyenechea 3600 Piso 4', 'Stgo', 'Las Condes', '227334615', 3, 1, 'abascur', '2018-10-03 12:45:50', 1),
(141, 'JFaure@etex.cl', 'Pizarreño', 'José Luis', 'Fauré', 'Gerente General', 'Avenida Andrés Bello 2777 Piso 22', 'Stgo', 'Providencia', '23912210', 3, 1, 'abascur', '2018-09-07 12:36:49', 0),
(142, 'ronnie.brandorff@mcicontainers.com', 'Maersk Container Industry San Antonio SpA', 'Ronnie', 'Jensen', 'Managing Director', 'Magdalena 140 Piso 5', 'Stgo', 'Las Condes', '9942353198', 3, 1, 'abascur', '2018-09-07 12:39:31', 0),
(143, 'cignacio.molina@empresasdemo.com', 'Democorp', 'Carlos Ignacio', 'Molina M.', 'Gerente General', 'Volcán Lascar Ote 721', 'Stgo', 'Pudahuel', '22 6019882', 3, 1, 'abascur', '2018-09-07 12:41:28', 0),
(144, 'jecheverria@democorp.com', 'Democorp', 'José Manuel', 'Echeverría Molina', 'Gerente General - Térmica', 'Volcán Lascar Ote 721', 'Stgo', 'Pudahuel', '23912210', 3, 2, 'abascur', '2018-10-26 11:20:16', 0),
(145, 'priscila.oliva@americantower.com', 'American Tower Company', 'Priscila', 'Oliva', 'Country Manager Chile', 'Cerro El Plomo 5420, Piso 4', 'Santiago', 'Las Condes', '+56968781988', 28, 1, 'rrivas', '2018-10-08 10:42:49', 1),
(146, 'cristian.casanova@AmericanTower.com', 'American Tower Company', 'Cristián', 'Casanova', 'Director Asuntos Públicos Latam', 'Cerro El Plomo 5420, Piso 4', 'Santiago', 'Las Condes', '+56991444191', 28, 1, 'rrivas', '2018-09-09 21:04:26', 0),
(147, 'gsepulveda@iaconcagua.com', 'Altos del Parque', 'Gerardo', 'Sepúlveda', 'Director', 'Av. Presidente Riesco 5335', 'Santiago', 'Las Condes', '+56981989489', 28, 1, 'rrivas', '2018-10-08 10:40:57', 1),
(148, 'jabdo@fastermerchant.cl', 'Euroamérica', 'Jorge ', 'Abdo', 'Director', 'Av. Apoquindo 3885', 'Santiago', 'Las Condes', '+56998207690', 28, 1, 'rrivas', '2018-10-08 10:41:02', 1),
(149, 'vsolarm@rway.cl', 'Euroamérica', 'Víctor', 'Solar', 'Director', 'Av. Apoquindo 3885', 'Santiago', 'Las Condes', '+56990898439', 28, 1, 'rrivas', '2018-10-08 10:41:32', 1),
(150, 'marcela.sepulveda@lundinmining.com', 'Minera Candelaria', 'Marcela', 'Sepúlveda', 'Gerenta Diálogo Comunitario', 'Avenida Miguel Lemeur 680', 'Tierra Amarilla', 'Tierra Amarilla', '+56982674945', 28, 1, 'rrivas', '2018-10-08 10:44:52', 1),
(151, 'genci004@codelco.cl', 'Codelco ', 'Gabriela', 'Encina', 'Jefa de Sustentabilidad Vicepresidencia de Proyectos', 'Avda Libertador Bernardo O´Higgins 1449, Edificio Santiago Downtown, Torre 4, Piso 7', 'Santiago', 'Santiago', '+56995329194', 28, 1, 'rrivas', '2018-10-08 10:42:33', 1),
(152, 'RodPobl@codelco.cl', 'Codelco ', 'Rodrigo', 'Poblete', 'Director Proyecto Desarrollo Futuro Andina', 'Avda Libertador Bernardo O´Higgins 1449, Edificio Santiago Downtown, Torre 4, Piso 7', 'Santiago', 'Santiago', '+56223922290', 28, 1, 'rrivas', '2018-10-08 10:41:20', 1),
(153, 'rbickell@enaprefinerias.cl', 'ENAP', 'Rodolfo', 'Bickell', 'Jefe División Comunidades', 'Av. Borgoño 25.777', 'Concon', 'Concon', '+56992235450', 28, 1, 'rrivas', '2018-10-08 10:32:42', 1),
(154, 'solemorales@enaprefinerias.cl', 'ENAP', 'Soledad', 'Morales', 'Periodista', 'Av. Borgoño 25.777', 'Concon', 'Concon', '+56984294697', 28, 1, 'rrivas', '2018-10-08 10:32:47', 1),
(155, 'epiraino@enaprefinerias.cl', 'ENAP', 'Edmundo', 'Piraíno', 'Gerente Enap Refinería Aconcagua', 'Av. Borgoño 25.777', 'Concon', 'Concon', '+56322650379', 28, 1, 'rrivas', '2018-09-09 21:35:33', 0),
(156, 'jorge.montt@hidronor.cl', 'Hidronor', 'Jorge ', 'Montt', 'Gerente General', 'Miraflores 383, Piso 24', 'Santiago', 'Santiago', '+56 2 2570 5700', 28, 1, 'rrivas', '2018-09-09 21:39:54', 0),
(157, 'gonzalo.velasquez@hidronor.cl', 'Hidronor', 'Gonzalo ', 'Velásquez', 'Gerente Medio Ambiente', 'Miraflores 383, Piso 24', 'Santiago', 'Santiago', '+56 2 2570 5700', 28, 1, 'rrivas', '2018-09-09 21:41:32', 0),
(158, 'nlowener@3lsf.cl', 'Inmobiliaria 3L', 'Nicolás ', 'Löwener', 'Gerente Administración y Finanzas', 'Francisco Noguera 200, piso 14', 'Santiago', 'Providencia', '+56 2 2898 6200', 28, 1, 'rrivas', '2018-09-09 21:44:39', 0),
(159, 'alowener@3lsf.cl', 'Inmobiliaria 3L', 'Andres ', 'Lowener', 'Gerente Desarrollo', 'Francisco Noguera 200, piso 14', 'Santiago', 'Providencia', '+56 2 2898 6200', 28, 1, 'rrivas', '2018-09-09 21:46:29', 0),
(160, 'jorge.oyarce@pvsa.cl', 'Puerto Ventanas', 'Jorge', 'Oyarce', 'Gerente General', 'El Trovador 4253', 'Santiago', 'Las Condes', '+56 2 2837 2900', 28, 1, 'rrivas', '2018-09-09 21:50:15', 0),
(161, 'luis.fuentes@pvsa.cl', 'Puerto Ventanas', 'Luis', 'Fuentes', 'Gerente de Sustentabilidad', 'El Trovador 4253', 'Santiago', 'Las Condes', '+56 2 2837 2900', 28, 1, 'rrivas', '2018-10-08 10:35:09', 1),
(162, 'alejandra.miranda@pvsa.cl', 'Puerto Ventanas', 'Alejandra ', 'Miranda', 'Jefa de Comunicaciones', 'El Trovador 4253', 'Santiago', 'Las Condes', '+56 2 2837 2900', 28, 1, 'rrivas', '2018-10-08 10:34:58', 1),
(163, 'mitze.rios@pvsa.cl', 'Puerto Ventanas', 'Mitze', 'Ríos', 'Gerenta Centro Comunitario Puerto Abierto', 'El Trovador 4253', 'Santiago', 'Las Condes', '+56 2 2837 2900', 28, 1, 'rrivas', '2018-10-08 10:35:16', 1),
(164, 'epenafiel@resiter.cl', 'Resiter', 'Enrique', 'Peñafiel', 'Director Comercial Nuevos Negocios', 'Los Conquistadores 2752', 'Santiago', 'Providencia', '+56 2 2656 7575', 28, 1, 'rrivas', '2018-09-09 22:09:09', 0),
(165, 'rmacari@resiter.cl', 'Resiter', 'Ricardo', 'Macari', 'Gerente General', 'Los Conquistadores 2752', 'Santiago', 'Providencia', '+56 2 2656 7575', 28, 1, 'rrivas', '2018-09-09 22:05:59', 0),
(166, 'ralcaino@resiter.cl', 'Resiter', 'Raúl', 'Alcaino', 'Presidente del Directorio', 'Los Conquistadores 2752', 'Santiago', 'Las Condes', '(56 2) 2656 7575', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(167, 'ary.acuna@ironmountain.cl', 'Iron Mountain', 'Ary', 'Acuña', 'Gerente General', 'El Taqueral 266', 'Santiago', 'Lampa', '223957012', 19, 1, 'pmackenzie', '2018-10-23 08:06:49', 0),
(168, 'nsanchez@uber.com', 'Uber', 'Nicolás', 'Sánchez', 'Gerente de Asuntos Gubernamentales de Uber Chile', 'Mariano Sanchez Fontecilla, 310, piso 8', 'Santiago', 'Las Condes', '+56979886646', 7, 1, 'fdelsolar', '2018-09-10 11:09:16', 0),
(169, 'cpasto@ext.uber.com', 'Uber', 'Carolina', 'Pastor', 'Especialista de Asuntos de Gobierno & Políticas Públicas de Uber Chile', 'Mariano Sanchez Fontecilla, 310, piso 8', 'Santiago', 'Las Condes', '+56978791030', 7, 1, 'fdelsolar', '2018-10-04 14:57:34', 1),
(170, 'gschiodtz@uber.com', 'Uber', 'Grace', 'Schiodtz', 'Gerente General de Uber Chile', 'Mariano Sanchez Fontecilla, 310, piso 8', 'Santiago', 'Las Condes', '+56963080093', 7, 1, 'fdelsolar', '2018-09-10 11:19:33', 0),
(171, 'crodop@uber.com', 'Uber', 'Carlos', 'Rodó', 'Gerente de Asuntos Legales de Uber Chile', 'Mariano Sanchez Fontecilla, 310, piso 8', 'Santiago', 'Las Condes', '+56978559331', 7, 1, 'fdelsolar', '2018-10-04 14:57:24', 1),
(172, 'fernando.allendes@apoce.cl', 'APOCE A.G.', 'Fernando', 'Allendes', 'Presidente', 'Avenida Eliodoro Yañez 1890', 'Santiago', 'Providencia', '+56992218749', 7, 1, 'fdelsolar', '2018-09-10 11:56:36', 0),
(173, 'jmartinez@republicparking.cl', 'APOCE A.G.', 'Javier', 'Martínez', 'Director', 'Avenida Eliodoro Yañez 1890', 'Santiago', 'Providencia', '+56223331808', 7, 1, 'fdelsolar', '2018-09-10 11:58:27', 0),
(174, 'chris@centralparking.cl', 'APOCE A.G.', 'Cristopher', 'Deane', 'Director', 'Avenida Eliodoro Yañez 1890', 'Santiago', 'Providencia', '+56997013224', 7, 1, 'fdelsolar', '2018-09-10 12:00:20', 0),
(175, 'reneclavero@gmail.com', 'ANADI', 'Rene ', 'Clavero', 'Presidente de ANADI', 'Coronel Pereira 72, oficina 403', 'Santiago', 'Las Condes', '+56985296316', 7, 1, 'fdelsolar', '2018-09-10 14:53:34', 0),
(176, 'Nelson.Miranda@fmc-ag.com', 'ANADI', 'Nelson', 'Miranda', 'Director ANADI', 'Coronel Pereira 72, oficina 403, Las Condes', 'Santiago', 'Las Condes', '+56982327569', 7, 1, 'fdelsolar', '2018-09-10 14:55:45', 0),
(177, 'cfc@neorentas.cl', 'Neorentas', 'Carlos', 'Fell', 'Socio', 'Alonso de Cordova 2700 of 24', 'Santiago', 'Vitacura', '24643591', 5, 2, 'alaguna', '2018-10-22 17:15:05', 0),
(178, 'gmena@neorentas.cl', 'Neorentas', 'Guillermo', 'Mena', 'Socio', 'Alonso de Cordova 2700 of 24', 'Santiago', 'Vitacura', '24643591', 5, 2, 'alaguna', '2018-10-22 11:44:41', 0),
(179, 'apoblete@dlp.cl', 'DLP', 'Jose Antonio', 'Poblete', 'Gerente Propuestas', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '22630500', 5, 1, 'alaguna', '2018-10-05 11:56:28', 1),
(180, 'beltranlarrain@dlp.cl', 'DLP', 'Beltran', 'Larrain Aspillaga', 'Gerente de Seguridad', 'Apoquindo 4775, piso 9', 'Santiago', 'Las Condes', '(22 6) 3050 0___', 5, 1, 'cfuenzalida', '2018-10-03 09:05:37', 1),
(181, 'viviana.giacaman@novartis.com', 'Novartis', 'Viviana ', 'Giacaman', 'Gerente', 'Rosario Norte 615, piso 9', 'Santiago', 'Las Condes', '223500200', 9, 1, 'cfuenzalida', '2018-09-11 11:35:47', 0),
(182, 'cecilia.haberle@modellagroup.com', 'Grupo Modella ', 'Cecilia', 'Haberle ', 'Country Manager', 'Blvrd Aeropuerto Sur 9624', 'Santiago', 'Pudahuel', '22828 4100', 9, 1, 'cfuenzalida', '2018-09-11 10:51:14', 0),
(183, 'gina@crosscheck.cl', 'CrossCheck', 'Gina', 'Ocqueteau', 'Gerente General', 'xxx', 'xx', 'xx', '998281797', 9, 1, 'cfuenzalida', '2018-09-11 10:52:40', 0),
(184, 'gdelajara@bmaj.cl', 'Estudio Bofill Mir &Alvarez Jana', 'Guillermo', 'De la Jara', 'Abogado', 'Av. Andrés Bello 2711 - Piso 8', 'Santiago', 'Providencia', '22757 7600 ', 9, 1, 'cfuenzalida', '2018-09-11 10:55:50', 0),
(185, 'afermandois@fermandois.cl', 'Estudio Fermandois ', 'Arturo', 'Fermandois ', 'Abogado', 'Av. Nueva Costanera 4040, Of. 52', 'Santiago', 'Vitacura', '2 2203 6311', 9, 1, 'cfuenzalida', '2018-09-11 10:58:13', 0),
(186, 'dpoblete@fermandois.cl', 'Estudio Fermandois ', 'Domingo', 'Poblete', 'Abogado', 'Av. Nueva Costanera 4040, Of. 52', 'Santiago', 'Vitacura', '22203 6311', 9, 1, 'cfuenzalida', '2018-09-11 11:00:04', 0),
(187, 'eduardo.covarrubias@losandescopper.com', 'Los Andes Copper', 'Eduardo', 'Covarrubias', 'xx', 'Augusto Leguía 100, Of. 812', 'Santiago', 'Las Condes', '(22 9) 5404 50__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(188, 'jose.letelier@losandescopper.com', 'Los Andes Copper', 'José Tomás', 'Letelier', 'xx', 'Augusto Leguía 100, Of. 812', 'Santiago', 'Las Condes', '(22 9) 5404 50__', 28, 1, 'cfuenzalida', '2018-10-08 10:25:17', 1),
(189, 'antony.amberg@losandescopper.com', 'Los Andes Copper', 'Antony', 'Amberg', 'xx', 'Augusto Leguía 100, Of. 812', 'Santiago', 'Las Condes', '(22 9) 5404 50__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(190, 'gdelaveau@hdycia.cl', 'Los Andes Copper', 'Gonzalo', 'Delaveau', 'Socio', 'Av. El Golf 82, piso 3', 'Santiago', 'Las Condes', '(22 4) 0532 00__', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(191, 'aambler@cmp.cl', 'CAP CMP', 'Archivaldo', 'Ambler', 'Gerente de Personas y Sustentabilidad', 'Pedro Pablo Muñoz Nº 675', 'La Serena', 'La Serena', ' 512668000', 9, 1, 'cfuenzalida', '2018-09-11 11:19:19', 0),
(192, 'jmeneses@grasty.cl', 'Grasty Quintana Majlis Abogados ', 'Jorge', 'Meneses', 'Abogado', 'Magdalena 140, Piso 20', 'Santiago', 'Las Condes', '224990400', 9, 1, 'cfuenzalida', '2018-09-11 11:22:49', 0),
(193, 'cseebach@generadoras.cl', 'Generadoras de Chile', 'Claudio', 'Seebach', 'Presidente Ejecutivo', 'Avda. Presidente Riesco 5561, of 1803', 'Santiago', 'Las Condes', '226569620', 9, 1, 'cfuenzalida', '2018-09-11 11:27:12', 0),
(194, 'pvera@methanex.com', 'Methanex', 'Pablo ', 'Vera', 'Director de Finanzas', 'Rosario Norte 100, Piso 6', 'Santiago', 'Las Condes', '223744000', 9, 1, 'cfuenzalida', '2018-09-11 11:32:28', 0),
(195, 'agana@dimerc.cl', 'Dimerc', 'Alberto ', 'Gana', 'Gerente General Corporativo', 'Alberto Pepper 1784', 'Santiago', 'Renca', ' 223858000', 9, 2, 'cfuenzalida', '2018-10-22 14:17:28', 0),
(196, 'gonzalo.baeza@norgistics.com', 'Norgistics', 'Gonzalo', 'Baeza', 'Gerente general y socio', 'Av. Kennedy 6.800, Of. 803A', 'Santiago', 'Vitacura', '+56994356100', 35, 1, 'ccomber', '2018-09-11 15:20:05', 0),
(197, 'barbara.forno@norgistics.com', 'Norgistics', 'Bárbara', 'Forno', 'Gerente comercial', 'Av. Kennedy 6.800, Of. 803A', 'Santiago', 'Vitacura', '+56226051865', 35, 1, 'ccomber', '2018-09-11 15:20:57', 0),
(198, 'andrea.voto-bernales@ecodev.vic.gov.au', 'Gobierno de Victoria', 'Andrea', 'Voto Bernales', 'Directora de educación para Latinoamérica', 'Enrique Foster Norte 0115', 'Santiago', 'Las Condes', '+56932406889 ', 35, 1, 'ccomber', '2018-09-11 15:23:57', 0),
(199, 'miguelbas@entelchile.net', 'Curtidos Bas', 'Miguel ', 'Bas', 'Gerente General', 'Cerro Sombrero 610', 'Stgo', 'Maipu', '+562 2856 9200', 3, 1, 'abascur', '2018-09-11 16:16:09', 0),
(200, 'febas@entelchile.net', 'Curtidos Bas', 'Fernando', 'Bas', 'Director', 'Cerro Sombrero 610', 'Stgo', 'Maipu', '+562 2856 9200', 3, 1, 'abascur', '2018-09-11 16:20:17', 0),
(201, 'carla.fuentes@sistemab.org', 'Sistema B', 'Carla', 'Fuentes', 'Directora de Comunidad y Comunicaciones Sistema B Chile', 'Alcántara 443', 'Santiago', 'Las Condes', '+56952054219', 36, 1, 'ibarrientos', '2018-10-03 14:00:25', 1),
(202, 'juanpablo@sistemab.org', 'Sistema B', 'Juan Pablo', 'Larenas', 'Co fundador y director ejecutivo Sistema B Internacional', 'Alcántara 443', 'Santiago', 'Las Condes', '(56 9) 6509 3391', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(203, 'alfredo.zepeda@sistemab.org', 'Sistema B', 'Alfredo', 'Zepeda', 'Director Ejecutivo Sistema B Chile', 'Alcántara 443', 'Santiago', 'Las Condes', '+56995352467', 36, 1, 'ibarrientos', '2018-09-11 17:09:44', 0),
(205, 'gonzalo@sistemab.org', 'Sistema B', 'Gonzalo', 'Muñoz', 'Co fundador Sistema B y CEO de TriCiclos', 'Alcántara 443', 'Santiago', 'Las Condes', '+56978469630', 36, 1, 'ibarrientos', '2018-09-11 17:27:09', 0),
(206, 'diego@goa.cl', 'Capitaria', 'Diego', 'Valenzuela', 'director', 'Las hualtatas 4753', 'Santiago', 'Vitacura', '222420278', 27, 2, 'baguirre', '2018-10-25 07:40:05', 0),
(207, 'aclement@salmonchile.cl', 'Salmonchile', 'Arturo ', 'Clement', 'Presidente', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(208, 'jvaldes@salmonchile.cl', 'Salmonchile', 'José Joaquín ', 'Valdés', 'Gerente de Comunicaciones', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(209, 'jrgutierrez@multiexport.cl', 'Salmonchile', 'José Ramón', 'Gutierrez', 'Director', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(210, 'vhpuchi@aquachile.com', 'Salmonchile', 'Víctor Hugo ', 'Puchi', 'Director', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(211, 'gerardo.balbontin@blumar.com', 'Salmonchile', 'Gerardo', 'Balbontín ', 'Director', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-08 15:33:21', 1),
(212, 'carlos.l.vial@gmail.com', 'Salmonchile', 'Carlos', 'Vial', 'Director', 'Isidora Goyenechea 3356, oficina 20', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-04 12:39:55', 1),
(213, 'jfernandez@camanchaca.cl', 'Salmonchile', 'Jorge', 'Fernández García', 'Director', 'Don Carlos 3171, Dpto. 2B, Block A', 'Santiago', 'Las Condes', '222313040', 11, 1, 'cfuenzalida', '2018-10-25 15:14:00', 0),
(214, 'cad@empresaspenta.cl', 'Penta', 'Carlos Alberto', 'Délano', '.', 'Avenida El Bosque Norte 0440 Piso 9', 'Santiago', 'Las Condes', '223398013', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(215, 'cel@empresaspenta.cl', 'Penta', 'Carlos Eugenio', 'Lavín', '.', 'Avenida El Bosque Norte 0440 Piso 9', 'Santiago', 'Las Condes', '223398013', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(216, 'jlopez@ledr.cl', 'López, Escobar, del Río', 'Julián', 'López', 'Socio', 'Av. Presidente Riesco 5561, oficina 1901', 'Santiago', 'Las Condes', '222460060', 11, 2, 'cfuenzalida', '2018-10-23 12:36:00', 0),
(217, 'jescobar@ledr.cl', 'López, Escobar, del Río', 'José Ignacio', 'Escobar', 'Socio', 'Av. Presidente Riesco 5561, oficina 1901', 'Santiago', 'Las Condes', '222460060', 11, 2, 'cfuenzalida', '2018-10-23 12:35:46', 0),
(218, 'alcainod@alcainoabogados.cl', 'Alcaíno Abogados', 'Alfredo', 'Alcaíno', 'Socio Partner', 'Alfredo Barros Errázuriz 1953, Of 301', 'Santiago', 'Providencia', ' 22269 0103', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(219, 'jacosta@jdacosta.cl', 'Acosta&Cía. ', 'Juan Domingo ', 'Acosta', 'Abogado', 'Av. Apoquindo 3472, oficina 1002, Edificio Patio Foster', 'Santiago', 'Las Condes', '226057630', 11, 2, 'cfuenzalida', '2018-10-23 12:25:11', 0),
(220, 'rperezdearce@perezdearce.com', 'Pérez de Arce Abogados', 'Rodrigo ', 'Pérez', 'Abogado', 'El Regidor 66', 'Santiago', 'Las Condes', ' 224837700', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(221, 'jbofill@bofillescobar.cl', 'Socio Bofill Escobar Abogados ', 'Jorge ', 'Bofill', 'Socio', 'Av. Apoquindo 3472 ∙ Piso 19 ', 'Santiago', 'Las Condes', '224839000', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(222, 'fcox@bcp.cl', 'Balmaceda Cox & Piña ', 'Francisco', 'Cox', 'Socio', 'Nueva York 9, Santiago', 'Santiago', 'Santiago', '56226713323', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(223, 'jipina@bcp.cl', 'Balmaceda Cox & Piña ', 'Juan Ignacio ', 'Piña', 'Socio', 'Nueva York 9, Santiago', 'Santiago', 'Santiago', '56226713323', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(224, 'Cletelier@linkcp.cl', 'Link Capital Partners ', 'Cristián ', 'Letelier', 'Socio', 'El Golf 40, piso 12', 'Santiago', 'Las Condes', '225947597', 11, 2, 'cfuenzalida', '2018-10-23 12:26:52', 0),
(225, 'JSolar@SpencerStuart.com', 'Spencer Stuart Chile ', 'Juan Pablo', 'Solar', 'Socio', 'Isidora Goyenechea 3000, Piso 22', 'Santiago', 'Las Condes', '229402700', 11, 2, 'cfuenzalida', '2018-10-23 10:00:16', 0),
(226, 'jvillarino@consejominero.cl', 'Consejo Minero', 'Joaquín ', 'Villarino', 'Presidente Ejecutivo', 'Av.Apoquindo 3500, Piso 7', 'Santiago', 'Las Condes', '223472200', 23, 1, 'pvelasco', '2018-09-13 11:36:51', 0),
(227, 'mpsilva@ffv.cl', 'Holding Fernández-León', 'Cristián ', 'Arnolds', 'Gerente General', 'Isidora Goyenechea 3642, Piso 7', 'Santiago', 'Las Condes', '224407265', 23, 1, 'pvelasco', '2018-10-22 15:20:58', 0),
(228, 'fbarros@bye.cl', 'Barros & Errázuriz', 'Fernando ', 'Barros', 'Socio', 'Isidora Goyenechea 2939, Piso 5', 'Santiago', 'Las Condes', '223788900', 23, 1, 'pvelasco', '2018-09-13 11:42:52', 0),
(229, 'elsa.gonzalez@pollachilena.cl', 'Polla Chilena ', 'Edmundo', 'Dupré', 'Gerente General', 'Compañía 1085, Piso 8', 'Santiago', 'Santiago Centro', '226793762', 23, 1, 'pvelasco', '2018-10-08 09:48:35', 1),
(230, 'fjoannon@elmostrador.cl', 'El Mostrador.cl', 'Federico', 'Joannon', 'Director Ejecutivo', 'Providencia 223', 'Santiago', 'Providencia', '(22 5) 8054 00__', 23, 1, 'tgonzalez', '2018-10-22 16:09:52', 0),
(231, 'francisco.tepper@ediciones-sm.cl', 'Ediciones SM', 'Francisco ', 'Tepper', 'Director ', 'Recife 1913', 'Santiago', 'Vitacura', '224904906', 23, 2, 'pvelasco', '2018-10-23 08:21:12', 0),
(232, 'jose.miranda@enel.com', 'Enel', 'José ', 'Miranda', 'Gerente Comunicaciones', 'Santa Rosa Nº76', 'Santiago', 'Santiago Centro', '226752746', 23, 2, 'pvelasco', '2018-10-23 07:01:29', 0),
(233, 'ltoro@bye.cl', 'Barros & Errázuriz', 'Luis Eduardo', 'Toro', 'Socio', 'Isidora Goyenechea 2939, Piso 11', 'Santiago', 'Las Condes', '223788925', 23, 1, 'pvelasco', '2018-09-13 12:16:02', 0),
(234, 'ricardosolari@gmail.com', 'Ricardo Solari', 'Ricardo', 'Solari', 'Director', 'Almirante Byrd 1985', 'Santiago', 'Providencia', '224740711', 23, 1, 'pvelasco', '2018-09-13 12:22:58', 0),
(235, 'presidencia.bethia@bethia.cl', 'Bethia S.A', 'Carlos', 'Heller Solari', 'Presidente', 'Isidora Goyenechea 2800, Piso 50', 'Santiago', 'Las Condes', '223695400', 23, 1, 'pvelasco', '2018-10-22 15:15:28', 0),
(236, 'cristian.munoz@clubhipico.cl', 'Club Hipico', 'Cristian', 'Muñoz', 'Gerente General', 'Av Blanco Encalada 2540', 'Santiago', 'Santiago', '226939730', 6, 1, 'czamora', '2018-09-14 08:18:46', 0),
(237, 'alejandra.miqueles@bethia.cl', 'Bethia S.A.', 'Ramiro', 'Sanchez', 'Gerente General', 'Isidora Goyenechea 2800, Piso 50', 'Santiago', 'Las Condes', '223695400', 23, 1, 'pvelasco', '2018-10-23 09:59:45', 0),
(238, 'yvera@sgasa.cl', 'SGA S.A.', 'Jaime', 'Solari', 'Gerente General', 'Rosario Norte  100, Piso 14', 'Santiago', 'Las Condes', '225806500', 23, 1, 'pvelasco', '2018-09-14 08:22:17', 0),
(239, 'ndonoso@colmena.cl', 'Colmena', 'Cristian', 'Donoso', 'Gerente General', 'Los Militares 4777 piso 3', 'Santiago', 'Las Condes', '00000000', 6, 1, 'czamora', '2018-09-14 08:24:59', 0),
(240, 'cschwencke@colmena.cl', 'Colmena RSE', 'Carola', 'Schwencke', 'Gerente de Beneficios', 'Los Militares 4777 piso 3', 'Santiago', 'Las Condes', '00000000', 6, 1, 'czamora', '2018-09-14 08:26:21', 0);
INSERT INTO `tbl_clientes` (`id_cliente`, `email`, `tipo_cliente`, `nombre`, `apellido`, `cargo`, `direccion`, `ciudad`, `comuna`, `telefono`, `id_usuario`, `confirmacion`, `usuarioregistro`, `fecharegistro`, `eliminado`) VALUES
(241, 'jaurrutia@urrutia.cl', 'Urrutia y Compañía Abogados Ltda.', 'José Antonio', 'Urrutia', 'Socio', 'Isidora Goyenechea 3250, Piso 9', 'Santiago', 'Las Condes', '223351841', 23, 1, 'pvelasco', '2018-09-14 08:26:59', 0),
(242, 'dkuzmicic@sepchile.cl', 'SEP Chile', 'Ricardo', 'De Tezanos', 'Presidente', 'Monjitas 392, Piso 12', 'Santiago', 'Santiago Centro', '223476300', 23, 1, 'pvelasco', '2018-09-14 08:30:34', 0),
(243, 'cflores@empresasbanmedica.com', 'Empresas Banmedica', 'Claudia', 'Flores', 'Directora de Comunicaciones Corporativas ', 'Apoquindo 3600 piso 12', 'Santiago', 'Las Condes', '94994333', 6, 1, 'czamora', '2018-09-14 08:34:39', 0),
(244, 'hchp@chya.cl', 'Chadwick y Cía.', 'Herman', 'Chadwick', 'Presidente', 'El Golf 40, Piso 6', 'Santiago', 'Las Condes', '224416333', 23, 1, 'pvelasco', '2018-09-14 08:36:40', 0),
(245, 'pgarreton@grupomathiesen.com', 'Mathiesen', 'Patricio', 'Garreton', 'Gerente General', 'Av Del Parque 4265 piso 3', 'Santiago', 'Huechuraba', '226405702', 6, 1, 'czamora', '2018-09-14 08:42:37', 0),
(246, 'juliette.gueguen@andesfilms.cl', 'Andes Films', 'Juliette', 'Gueguen', 'Gerente de Marketing', 'Av Vitacura 2939 of 1103', 'Santiago', 'Las Condes', '562 25717691', 6, 1, 'czamora', '2018-09-14 08:46:41', 0),
(247, 'mlagoscc@gmail.com', 'Mori', 'Marta', 'Lagos', 'Directora Ejecutiva', 'Europa 2015, Depto. D', 'Santiago', 'Providencia', '223344544', 23, 1, 'pvelasco', '2018-10-03 10:48:00', 1),
(248, 'gianni.gentili@andesfilms.cl', 'Andes Films', 'Gianni', 'Gentili', 'Gerente General', 'Av Vitacura 2939 of 1103', 'Santiago', 'Las Condes', '562 25717691', 6, 1, 'czamora', '2018-09-14 08:48:40', 0),
(249, 'emilova.k@chicit.cl', 'Camara Chilena China de Comercio, Industria y Turismo', 'Kamelia', 'Emilova', 'Gerente General', 'Av Vitacura 2909 of 401', 'Santiago', 'Las Condes', '562 24161889', 6, 1, 'czamora', '2018-09-14 08:50:49', 0),
(250, 'musalem@chicit.cl', 'Cámara Chileno China de Comercio, Industria y Turismo', 'Juan Esteban', 'Musalem', 'Presidente ', 'Av Vitacura 2909 of 417', 'Santiago', 'Las Condes', '562 24161889', 6, 1, 'czamora', '2018-09-14 08:52:48', 0),
(252, 'cmeacham@phrma.org', 'PhRMA', 'Carl', 'Meacham', 'Associate VP International (LATAM)', '950 F Street, NW Suite 300 Washington, DC 20004, ', 'Washington D.C., Estados Unidos', 'District of Columbia', '+13019193367', 7, 1, 'fdelsolar', '2018-09-14 09:04:17', 0),
(253, 'jean.duhart@cifchile.cl', 'PhRMA', 'Jean Jacques', 'Duhart', 'Vicepresidente Ejecutivo Cámara de la Innovación Farmacéutica de Chile A.G.', 'Hernando de Aguirre 1981', 'Santiago', 'Providencia', '+56977081582', 7, 1, 'fdelsolar', '2018-09-14 09:02:25', 0),
(254, 'aallende@hmdl.cl', 'Harasic, Medina, Dal Pozzo & López', 'Davor', 'Harasic', 'Socio', 'Av.Presidente Riesco 5335, Ofic. 303,Piso 3', 'Santiago', 'Las Condes', '232630430', 23, 1, 'pvelasco', '2018-10-08 09:48:52', 1),
(255, 'ramiro.mendoza@uai.cl', 'Universidad Adolfo Ibañez', 'Ramiro', 'Mendoza', 'Decano Facultad de Derecho', 'Av.Diagonal Las Torres 2640, Peñalolén', 'Santiago', 'Peñalolén', '223311361', 4, 1, 'avelasco', '2018-09-14 09:35:13', 0),
(257, 'jmdonoso@jmautos.cl', 'J.M.Donoso', 'José Miguel', 'Donoso', 'Gerente General', 'Vitacura 9667', 'Santiago', 'Vitacura', '222023066', 4, 2, 'avelasco', '2018-10-22 11:14:12', 0),
(258, 'jjcueto@cverde.cl', 'Inversiones Costa Verde', 'Juan José', 'Cueto', 'Vicepresidente Ejecutivo', 'Av.Presidente Kennedy 5711, Piso 11', 'Santiago', 'Las Condes', '223371300', 4, 1, 'avelasco', '2018-09-14 09:45:32', 0),
(259, 'becheverria@elektragen.cl', 'Elektragen S.A.', 'Francisco ', 'Courbis', 'Socio', 'Alcántara 44, Piso 11', 'Santiago', 'Las Condes', '222287775', 4, 1, 'avelasco', '2018-09-14 09:54:34', 0),
(260, 'guillermomunizagan@gmail.com', 'Guillermo Munizaga', 'Guillermo', 'Munizaga', 'Gerente General', 'Américo Vespucio 1642', 'Santiago', 'Quilicura', '998205042', 4, 2, 'avelasco', '2018-10-23 10:01:54', 0),
(261, 'fgomez@dvacapital.com', 'DVA Capital', 'Fernando', 'Gómez', 'Socio', 'El Golf 82, Piso 5', 'Santiago', 'Las Condes', '224997690', 4, 1, 'avelasco', '2018-09-14 10:23:28', 0),
(262, 'antonio.ortuzar@bakermackenzie.com', 'Baker y Mackenzie', 'Antonio', 'Ortúzar', 'Abogado', 'Av.Andrés Bello 2457, Torre Costanera, Piso 19', 'Santiago', 'Las Condes', '223677078', 4, 1, 'avelasco', '2018-09-14 10:29:39', 0),
(263, 'mpino@ledr.cl', 'López Escóbar Del Río Abogados', 'Julián', 'López', 'Socio', 'Av. Presidente Riesco 5561, Oficina 1901', 'Santiago', 'Las Condes', '(22 2) 4600 60__', 4, 1, 'cfuenzalida', '2018-09-25 08:48:42', 1),
(264, 'mraffo@caburga.cl', 'Grupo Said', 'Salvador', 'Said', 'Director Ejecutivo', 'Av.Andrés Bello 2687, Piso 20', 'Santiago', 'Las Condes', '2232833303', 4, 1, 'avelasco', '2018-09-14 12:49:12', 0),
(265, 'ovelasquez@sonapesca.cl', 'Sonapesca', 'Osciel', 'Velásquez', 'Presidente de Sonapesca F.G.', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 2, 'cfuenzalida', '2018-10-23 12:37:33', 0),
(266, 'jpetzold@carey.cl', 'Carey Abogados', 'Diego', 'Peralta', 'Socio', 'Isidora Goyenechea 2800, Piso 42', 'Santiago', 'Las Condes', '229822200', 4, 2, 'avelasco', '2018-10-22 10:40:08', 0),
(267, 'hbacigalupo@sonapesca.cl', 'Sonapesca', 'Héctor', 'Bacigalupo', 'Gerente General', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(268, 'rigoberto.rojo@orizon.cl', 'Sonapesca', 'Rigoberto', 'Rojo', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 2, 'cfuenzalida', '2018-10-24 07:08:32', 0),
(269, 'gcarey@carey.cl', 'Carey Abogados', 'Guillermo', 'Carey', 'Socio', 'Isidora Goyenechea 2800, Piso 42', 'Santiago', 'Las Condes', '229282612', 4, 1, 'avelasco', '2018-09-14 13:04:25', 0),
(270, 'cvial@friosur.cl', 'Sonapesca', 'Carlos', 'Vial', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(271, 'rodrigo.sarquis@blumar.com', 'Sonapesca', 'Rodrigo', 'Sarquis', 'Past President Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 2, 'cfuenzalida', '2018-10-24 07:09:05', 0),
(272, 'jstengel@inversionesgalletue.cl', 'Sonapesca', 'Jan', 'Jan Stengel', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(273, 'svera@pesqueraomega.cl', 'Sonapesca', 'Sebastián', 'Vera', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(274, 'mdepolo@algasmarinas.cl', 'Sonapesca', 'Miguel', 'Depolo', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(275, 'macarenacepeda@asipes.cl', 'Sonapesca', 'Macarena', 'Cepeda', 'Directora Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(276, 'mescobar@corpesca.cl', 'Sonapesca', 'Miguel Ángel', 'Escobar', 'Director Sonapesca', 'Alfredo Barros Errazuriz 1954, Of. 206', 'Santiago', 'Providencia', '(22 5) 9606 90__', 11, 2, 'cfuenzalida', '2018-10-23 12:37:14', 0),
(277, 'ruben.angel@roche.com', 'Roche', 'Rubén', 'Ángel', 'Director Recursos Humanos ', 'Cerro El Plomo 5630, piso 12', 'Santiago', 'Providencia', '2 2441 3200', 15, 2, 'mtovalle', '2018-10-22 10:24:27', 0),
(278, 'kponiachik@vtr.net', 'Metro S.A.', 'Karen', 'Poniachik', 'Miembro Directorio', 'Alameda 1414', 'Santiago', 'Santiago Centro', '229372000', 23, 1, 'pvelasco', '2018-09-14 13:36:16', 0),
(279, 'victor.ossa@prelafit.cl', 'Prelafit Compliance', 'Víctor ', 'Ossa', 'Consultor y Presidente Ejecutivo', 'Almirante Gotuzzo 96, Ofic. 25', 'Santiago', 'Santiago Centro', '226728859', 23, 2, 'pvelasco', '2018-11-04 22:19:58', 0),
(280, 'jvelasco@agrosuper.com', 'Agrosuper', 'Juan Cristóbal', 'Velasco', 'Sugerente de Comunicaciones', 'Camino La Estrella 401, Punta de Cortés', 'Rancagua', 'Rancagua', '(56 9) 5708 4281', 13, 1, '', '2018-10-03 10:47:25', 1),
(281, 'jguzman@agrosuper.com', 'Agrosuper', 'José', 'Guzmán', 'Gerente General', 'Camino La Estrella 401, Punta de Cortés Rancagua', 'Rancagua', 'Rancagua', '(72 2) 2010 01__', 13, 1, '', '2018-09-24 08:27:58', 0),
(282, 'rprieto@agrosuper.com', 'Agrosuper', 'Rafael', 'Prieto', 'Gerente de Asuntos Corporativos', 'Camino La Estrella 401, Punta de Cortés Rancagua', 'Rancagua', 'Rancagua', '(56 9) 9825 3693', 13, 2, '', '2018-10-23 08:03:16', 0),
(283, 'patricio.desolminihac@sqm.com', 'Patricio', 'De Solminihac', 'De Solminihac', 'Gerente General', 'Los Militares 4290, Piso 6', 'Santiago', 'Las Condes', '(56 9) 9817 5859', 13, 1, '', '2018-09-24 08:59:05', 0),
(284, 'carolina.garcia.huidobro@sqm.com', 'SQM', 'Carolina', 'García Huidobro', 'Gerente de Comunicaciones', 'Los Militares 4290, Piso 6', 'Santiago', 'Las Condes', '(56 9) 9817 5859', 13, 2, '', '2018-10-22 09:14:29', 0),
(285, 'ricardo.ramos@sqm.com', 'SQM', 'Ricardo', 'Ramos', 'CFO Finanzas', 'Los Militares 4290, Piso 6', 'Santiago', 'Las Condes', '(56 9) 9129 4916', 13, 1, '', '2018-09-24 09:09:01', 0),
(286, 'eugenio.ponce51@gmail.com', 'SQM', 'Eugenio', 'Ponce', 'Asesor SQM', 'Los Militares 4290, Piso 6', 'Santiago', 'Las Condes', '(56 2) 2437 7769', 13, 1, '', '2018-09-24 09:11:24', 0),
(287, 'lgolborne@teamfex.cl', 'SQM', 'Laurence', 'Golborne', 'Director', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-04 16:20:31', 0),
(288, 'alberto.salas@sqm.com', 'SQM', 'Alberto', 'Salas', 'Presidente del directorio', '.', '.', '.', '(56 2) 2243 7769', 22, 1, 'cfuenzalida', '2018-10-25 16:19:30', 0),
(289, 'rodrigo.silva@coopeuch.cl', 'Coopeuch', 'Rodrigo', 'Silva', 'Gerente General', 'Agustinas 1141', 'Santiago', 'Santiago Centro', '(56 9) 7768 3127', 13, 2, '', '2018-10-22 09:42:01', 0),
(290, 'carolina.sorens@coopeuch.cl', 'Coopeuch', 'Carolina', 'Sorens', 'Gerente de Comunicaciones', 'Agustinas 1141', 'Santiago', 'Santiago Centro', '(56 9) 4425 9215', 13, 1, 'cfuenzalida', '2018-10-04 16:32:31', 1),
(291, 'carmenluz.castro@enjoy.cl', 'Enjoy', 'Carmen Luz', 'Castro', 'Gerente de Comunicaciones', 'Rosario Norte 555, piso 11', 'Santiago', 'Las Condes', '(56 9) 9089 9885', 13, 1, 'cfuenzalida', '2018-10-04 07:46:02', 1),
(292, 'rgonzalez@ingevec.cl', 'Ingevec', 'Rodrigo', 'González', 'Gerente General', '.', '.', '.', '(56 9) 9933 8748', 13, 1, 'cfuenzalida', '2018-09-24 11:02:12', 0),
(293, 'jabustamante@ingevec.cl', 'Ingevec', 'José Antonio', 'Bustamante', 'Gerente General Inmobiliaria', '.', '.', '.', '(56 9) 9906 4750', 13, 2, 'cfuenzalida', '2018-10-22 09:56:10', 0),
(294, 'ebesa@ingevec.cl', 'Ingevec', 'Enrique', 'Besa', 'Presidente del Directorio', '.', '.', '.', '(56 9) 2437 7769', 13, 1, 'cfuenzalida', '2018-09-24 11:27:46', 0),
(295, 'jep@cpi.cl', 'Inmobiliaria Pereira', 'Juan', 'Pumpin', 'Socio', '.', '.', '.', '(56 9) 9824 8230', 13, 1, 'cfuenzalida', '2018-09-24 11:30:12', 0),
(296, 'rbarros@iespacios.cl', 'Inmobiliaria Pereira', 'Rodrigo', 'Barros', 'Socio Principal', '.', '.', '.', '(56 2) 2952 3787', 13, 1, 'cfuenzalida', '2018-09-24 11:31:31', 0),
(297, 'nalemparte@nucleos.cl', 'Inmobiliaria Núcleos', 'Nicolás', 'Alemparte', 'Gerente General', '.', '.', '.', '(56 2) 2263 4970', 13, 1, 'cfuenzalida', '2018-09-24 11:37:51', 0),
(298, 'ccg@cortesyrodriguez.cl', 'Estudio Cortés y Rodríguez', 'Carlos', 'Cortés', 'Socio Principal', '.', '.', '.', '(56 9) 9227 4983', 13, 2, 'cfuenzalida', '2018-11-03 06:32:38', 0),
(299, 'gerardo.cood@enjoy.cl', 'Enjoy', 'Gerardo', 'Cood', 'Gerente General', 'Rosario Norte 555, piso 11', 'Santiago', 'Las Condes', '(56 9) 9489 7684', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(300, 'cristobal.leturias@sercotec.cl', 'Sercotec', 'Cristóbal', 'Leturias', 'Gerente General', '.', '.', '.', '(56 9) 7849 8533', 13, 2, 'cfuenzalida', '2018-10-22 09:34:55', 0),
(301, 'mariasoledad.carrizo@enel.com', 'Enel', 'Valter', 'Moro', 'Gerente General Enel Generación y EGP', 'Santa Rosa 76, piso 17', 'Santiago', 'Santiago', '(56 2) 2675 2746', 27, 2, 'cfuenzalida', '2018-10-22 10:34:10', 0),
(302, 'baguirre@extend.cl', 'Enel', 'Ramón', 'Castañeda', 'Gerente General de Enel Distribución Chile.', 'Santa Rosa 76, piso 17', 'Santiago', 'Santiago', '(56 2) 2675 2746', 27, 1, 'cfuenzalida', '2018-09-26 15:35:44', 0),
(303, 'flira@tmluc.com', 'Tres Montes', 'Felipe', 'Lira', 'Gerente de Asuntos Corporativos', 'Avenida Las Conquistadores 2345', 'Santiago', 'Providencia', '(56 2) 2586 5610', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(304, 'patricio.monsalve@cl.ccb.com', 'China Contruction', 'Patricio', 'Monsalve', 'Gerente de Tesorería', '.', '.', '.', '(56 2) 2437 7769', 6, 1, 'cfuenzalida', '2018-10-03 08:18:01', 0),
(305, 'luzmaria.boilla@cl.ccb.com', 'China Contruction', 'Luz María', 'Bonilla', 'Director Human Resource', '.', '.', '.', '(56 2) 2437 7769', 6, 1, 'cfuenzalida', '2018-10-03 08:19:23', 0),
(306, 'jmbaraona@baraona.cl', 'Baraona Fisher Spiess', 'Juan Manuel', 'Baraona', 'Socio', '.', '.', '.', '(56 2) 2437 769_', 6, 1, 'cfuenzalida', '2018-10-04 16:31:49', 1),
(307, 'jpbaraona@baraona.cl', 'Baraona Fisher Spiess', 'Juan Manuel', 'Baraona', 'Socio', '.', '.', '.', '(56 2) 2243 7769', 6, 1, 'cfuenzalida', '2018-10-04 16:31:52', 1),
(308, 'mspiess@baraona.cl', 'Baraona Fisher Spiess', 'Max', 'Spiess', 'Socio', '.', '.', '.', '(56 2) 2243 7769', 6, 1, 'cfuenzalida', '2018-10-04 16:31:59', 1),
(309, 'jletelier@cariola.cl', 'Cariola', 'Juan Pablo', 'Letelier', 'Socio', '.', '.', '.', '(56 2) 2437 7769', 6, 1, 'cfuenzalida', '2018-10-03 08:34:58', 0),
(310, 'jpmatus@cariola.cl', 'Cariola', 'Juan Pablo', 'Matus', 'Socio y Administrador', '.', '.', '.', '(56 2) 2437 7769', 6, 2, 'cfuenzalida', '2018-10-23 10:44:01', 0),
(311, 'carlos@claussen.cl', 'Sonami', 'Carlos', 'Claussen', 'Secretario General Sonami', 'Av. Apoquindo 3885, piso 6º', 'Santiago', 'Las Condes', '(56 2) 2470 6100', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(312, 'hcomber@euroamerica.cl', 'Euroamérica', 'Henrry', 'Comber', 'Gerente General Corporativo', '.', 'Santiago', 'Santiago', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(313, 'david.moheno@huawei.com', 'Huawei', 'David', 'Moheno', 'CBG LATAM Regional Public Relations Director', '.', '.', '.', '(52 5) 5165 0677', 25, 1, 'cfuenzalida', '2018-10-03 10:22:01', 0),
(314, 'ricardo.garciah@huawei.com', 'Huawei', 'Ricardo', 'García', 'PR Manager Huawei CBG LATAM', '.', '.', '.', '(52 1) 3336 7601', 25, 1, 'cfuenzalida', '2018-10-03 10:23:01', 0),
(315, 'aizquierdo@ei.cl', 'Echeverría Izquierdo', 'Álvaro', 'Echeverría', 'Director', '.', '.', '.', '(56 2) 2437 7769', 3, 1, 'cfuenzalida', '2018-10-03 11:15:18', 0),
(316, 'becheverria@ei.cl', 'Echeverría Izquierdo', 'Bernardo', 'Echeverría', 'Director', '.', '.', '.', '(56 2) 2437 7769', 3, 1, 'cfuenzalida', '2018-10-03 11:16:36', 0),
(317, 'plive@vtr.net', 'Invitada Especial', 'Pilar', 'Vergara', '.', '..', '.', '.', '(56 9) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(318, 'PRestrepo@webershandwick.com', 'Weber Bogotá', 'Paula', 'Restrepo', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(319, 'adriana.yanez@scotiabank.cl', 'Banco Scotiabank', 'José', 'Said', 'Presidente', 'Av.Costanera Sur 2710, Piso 23,', 'Santiago', 'Las Condes', '(56 2) 2679 1016', 4, 1, 'tgonzalez', '2018-10-03 12:09:59', 0),
(320, 'jleslie@webershandwick.com', 'Weber NYC', 'Jack', 'Leslie', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(321, 'lschoen@webershandwick.com', 'Weber NYC', 'Laura', 'Schoen', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(322, 'mbravo@ccu.cl', 'Compañía de Cervecerías Unidas', 'Marisol', 'Bravo', 'Gerente Asuntos Corporativos', 'Vitacura 2670, Piso 26', 'Santiago', 'Vitacura', '(56 2) 2427 3000', 23, 1, 'tgonzalez', '2018-10-03 12:15:39', 0),
(323, 'aritondaro@webershandwick.com', 'Weber SPL', 'Alessandra', 'Ritondaro', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(324, 'ZSchiavoni@webershandwick.com', 'Weber SPL', 'Zé', 'Schiavoni', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(325, 'cbobadillaferrer@gmail.com', 'Red de Alta Dirección Universidad del Desarrollo', 'Claudia', 'Bobadilla', 'Directora Ejecutiva', 'Av.Plaza 680, San Carlos de Apoquindo', 'Santiago', 'Las Condes', '(56 2) 2327 9110', 23, 1, 'tgonzalez', '2018-10-22 15:19:48', 0),
(326, 'ggarcia@mdgcomunicacion.com.ar', 'Weber Argentina', 'Guillermo', 'García', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(327, 'lgaines-ross@webershandwick.com', 'Weber', 'Leslie', 'Ross', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(328, 'hdiamond@interpublic.com', 'Weber', 'Harris', 'Diamond', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(329, 'epowers@cmgrpc.com', 'Weber', 'Ed', 'Powers', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(330, 'mmarfan@outlook.com', 'Chile Transparente', 'Manuel', 'Marfán', 'Presidente', 'Dag Hammarskjöld 3269, Piso 3', 'Santiago', 'Vitacura', '(52 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 12:50:09', 0),
(331, 'christian.cafatti@modellagroup.com', 'Grupo Modella', 'Christian', 'Cafatti', 'Gerente General', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(332, 'aprecht@chiletransparente.cl', 'Chile Transparente', 'Alberto', 'Precht', 'Director Ejecutivo', 'Merced 152, Oficina 102', 'Santiago', 'Santiago Centro', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 14:52:13', 0),
(333, 'profesorbubu@gmail.com', 'Chile Transparente', 'Ramiro', 'Mendoza', 'Director', 'Diagonal Las Torres 2640', 'Santiago', 'Peñalolén', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 14:06:50', 0),
(334, 'vieragallo@hotmail.com', 'Chile Transparente', 'José Antonio', 'Viera Gallo', 'Director', 'Rosario Norte 555', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-22 13:56:13', 0),
(335, 'susana.sierra@bh-compliance.com', 'Chile Transparente', 'Susana', 'Sierra', 'Directora Ejecutiva', 'Av.Presidente Riesco 5561', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 14:14:23', 0),
(336, 'tagnic@kpmg.com', 'Forensic Services Advisory', 'Tamara', 'Agnic', 'socia', 'Isidora Goyenechea  3520, Piso 2', 'Santiago', 'Las Condes', '(56 2) 9971 519_', 23, 1, 'tgonzalez', '2018-10-23 10:02:43', 0),
(337, 'ferrada.raul@gmail.com', 'Chile Transparente', 'Raúl', 'Ferrada', 'Director', 'Rosario Norte 555', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 14:20:06', 0),
(338, 'siria.jeldes@coopeuch.cl', 'Coopeuch', 'Siria', 'Jeldes', 'Presidenta', '.', '.', '.', '(56 2) 2437 7769', 22, 2, 'cfuenzalida', '2018-10-24 07:06:34', 0),
(339, 'fcoloma@uc.cl', 'Chile Transparente', 'Fernando', 'Coloma', 'Director', 'Av.Vicuña Mackenna 4860', 'Santiago', 'Macul', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 14:24:20', 0),
(340, 'gbiggs@fva.cl', 'Chile Transparente', 'Gonzalo', 'Biggs', 'Director', 'Moneda 970, Piso 5', 'Santiago', 'Santiago Centro', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-03 14:26:08', 0),
(341, 'drina.rendic@gmail.com', 'Chile Transparente', 'Drina', 'Rendic', 'Presidenta Consejo Asesor', 'Camino Turístico  11709', 'Santiago', 'Lo Barnechea', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-23 07:08:52', 0),
(342, 'mariapaz.epelman@turner.com', 'Turner Chile', 'María Paz', 'Epelman', 'Ejecutiva', 'Rosario Norte 555', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-23 23:02:14', 0),
(343, 'direccion@anepe.cl', 'ANEPE', 'Leonel', 'Muñoz', 'Director', 'Eliodoro Yañez 2760', 'Santiago', 'Providencia', '(56 2) 2598 1000', 4, 1, 'tgonzalez', '2018-10-03 14:52:02', 0),
(344, 'erodriguez@enap.cl', 'enap', 'María Loreto', 'Silva', 'Presidenta', 'Av.Apoquindo2929, Piso 5', 'Santiago', 'Las Condes', '(56 2) 2280 3000', 23, 1, 'tgonzalez', '2018-10-03 15:00:45', 0),
(345, 'jlmardones@enap.cl', 'Enap', 'José Luis', 'Mardones', 'Directo', 'Av.Apoquindo 2929, Piso 5', 'Santiago', 'Las Condes', '(56 2) 2280 3000', 23, 1, 'tgonzalez', '2018-10-03 15:02:30', 0),
(346, 'razocarh@enap.cl', 'Enap', 'Rodrigo', 'Azócar', 'Director', 'Av.Apoquindo 2929, Piso 5', 'Santiago', 'Las Condes', '(56 2) 2280 3000', 23, 1, 'tgonzalez', '2018-10-03 15:04:36', 0),
(347, 'p.pacheco@vtr.net', '............', 'Patricia', 'Pacheco', 'Independiente', 'Alonso de Sotomayor 4200, D.201', 'Santiago', 'Vitacura', '(56 9) 9534 1729', 23, 1, 'tgonzalez', '2018-10-03 15:12:44', 0),
(348, 'abravo@etapa2.cl', 'Codelco', 'Blas', 'Tomic', 'Director', 'Av.Vitacura 3565, Oficina 701', 'Santiago', 'Vitacura', '(56 2) 2206 4850', 23, 1, 'tgonzalez', '2018-10-22 15:14:02', 0),
(349, 'arojas@capitaria.com', 'Capitaria', 'Andrés', 'Rojas', 'Socio', 'Isidora Goyenechea 3000, Piso 29', 'Santiago', 'Las Condes', '(22 2) 2437 7769', 27, 1, 'cfuenzalida', '2018-10-04 07:31:39', 0),
(350, 'tbercovich@capitaria.com', 'Capitaria', 'Tomás', 'Bercovich', 'Socio', 'Isidora Goyenechea 3000, Piso 29', 'Santiago', 'Las Condes', '(22 2) 2437 7769', 27, 1, 'cfuenzalida', '2018-10-04 07:32:54', 0),
(351, 'jpswett@asela.org', 'ASELA', 'Juan Pablo', 'Swett', 'Presidente de la Asociación de Emprendedores de Latinoamérica', '.', '.', '.', '(56 2) 2437 7769', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(352, 'juliodittborn@gmail.com', 'Invitado especial', 'Julio', 'Dittborn', '.', '..', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(353, 'jquintanilla@qbn.cl', 'Quintanilla & Busel Niedmann', 'Jorge', 'Quintanilla', 'Socio', '.', '.', '.', '(56 2) 2437 7769', 6, 1, 'cfuenzalida', '2018-10-04 15:40:35', 0),
(354, 'alexandre.arima@roberthalf.com.br', 'Robert Half', 'Alexandre', 'Arima', 'Latam Marketing Manager Robert Half', '.', '.', '.', '(56 2) 2437 7769', 25, 1, 'cfuenzalida', '2018-10-04 15:44:01', 0),
(355, 'jrarobot@gmail.com', 'Invitado Especial', 'Jorge', 'Rojas', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 2, 'cfuenzalida', '2018-10-25 09:27:09', 0),
(356, 'maximilianolarraechea@gmail.com', 'Invitado Especial', 'Maximiliano', 'Larraechea', '.', '.', '..', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(357, 'andres@portalterreno.com', 'NatConservation', 'Andrés', 'Sadler', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(358, 'felipe@portalterreno.com', 'NatConservation', 'Felipe', 'Ulloa', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(359, 'gcaballero@tredesoluciones.cl', 'NatConservation', 'Gonzalo', 'Caballero', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(360, 'gonzalo@assetchile.com', 'Asset', 'Gonzalo', 'Fanjul', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 2, 'cfuenzalida', '2018-10-26 12:23:16', 0),
(361, 'georgesdb@assetchile.com', 'Asset', 'Georges', 'De Bourguignon', 'Presidente Ejecutivo', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(362, 'javier.lira@atacamainvest.com', 'Atacama Invest', 'Javier', 'Lira', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(363, 'rodrigovelasco@alessandri.cl', 'Alessandri', 'Rodrigo', 'Velasco', 'Abogado', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(364, 'mvial@serrano.cl', 'Serrano', 'Manuel José', 'Vial', 'Abogado', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(365, 'rrodriguez@cntv.cl', 'CNTV', 'Catalina', 'Parot', 'Presidenta', 'Mar del Plata 2147', 'Santiago', 'Providencia', '(56 2) 2592 2700', 22, 1, 'tgonzalez', '2018-10-23 08:12:23', 0),
(366, 'fjamarne@alessandri.cl', 'Alessandri', 'Fernando', 'Jamarne', 'Socio', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(367, 'fcodecido@wsp.cl', 'WSP', 'Francisco', 'Codecido', 'Gerente de Adm. y Finanzas', '.', '.', '.', '(56 2) 2437 7796', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(368, 'jlarrain@wsp.cl', 'WSP', 'Joaquín', 'Larraín', 'Gte. General', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(369, 'jclatorre@5l.cl', 'Invitado Especial', 'Juan Carlos', 'Latorre', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(370, 'dcalderon@calderonyabogados.cl', 'Calderón y Cía. abogados', 'Dario', 'Calderón', 'Socio', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(371, 'andrea.rotman@gmail.com', 'Invitada Especial', 'Andrea', 'Rotman', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(372, 'maria.vial@manquehue.net', 'Invitada Especial', 'María Isabel', 'Vial', '.', '.', '.', '.', '(56 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(373, 'alcaldia@vitacura.cl', 'Municipalid de Vitacura', 'Raúl', 'Torrealba', 'Alcalde', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(374, 'dgodoymiguel@gmail.com', 'Weber Argentina', 'Miguel', 'De Godoy', '.', '.', '.', '.', '(56 2) 243_ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(375, 'dwells@webershandwick.com', 'Weber NYC', 'Danielli', 'Wells', '.', '.', '.', '.', '(56 2) ____ ____', 9, 1, 'cfuenzalida', '2018-10-05 09:26:16', 0),
(376, 'mavendano@apoyocomunicacion.com', 'Weber Perú', 'Milagros', 'Avendaño', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(377, 'goz@apoyocomunicacion.com', 'Weber Perú', 'Gabriel', 'Ortíz', '.', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(378, 'TGarcia@webershandwick.com', 'Weber México', 'Tungjen', 'García', '.', '.', '.', '.', '(56 2) ____ ____', 9, 1, 'cfuenzalida', '2018-10-05 09:32:05', 0),
(379, 'Amanda.Berenstein@webershandwick.com', 'Weber México', 'AmandaBerenstein', 'Berenstein', '.', '.', '.', '.', '(56 2) ____ ____', 9, 1, 'cfuenzalida', '2018-10-05 09:33:20', 0),
(380, 'JPalacio@webershandwick.com', 'Weber Perú', 'Johanna', 'Palacios', '.', '.', '.', '.', '(56 2) ____ ____', 9, 1, 'cfuenzalida', '2018-10-05 09:35:01', 0),
(381, 'ESchultz@webershandwick.com', 'Weber Brasil', 'Everton', 'Schultz', '.', '.', '.', '.', '(56 2) 2___ ____', 9, 1, 'cfuenzalida', '2018-10-05 09:36:39', 0),
(382, 'jgjofrem@gmail.com', '................', 'Gerardo', 'Jofré', '...........', '...........', 'Santiago', 'Las Condes', '(56 9) 9895 4018', 23, 1, 'tgonzalez', '2018-10-05 09:40:22', 0),
(383, 'cmena@onemi.gov.cl', 'ONEMI', 'Cristóbal', 'Mena', 'Subdirector Nacional de ONEMI', '.', '.', '.', '(56 2) ____ ____', 15, 2, 'cfuenzalida', '2018-10-29 16:24:08', 0),
(384, 'andres@motorfinanciero.cl', 'Motor Financiero', 'Andrés', 'Abumohor', 'CEO', '.', '.', '.', '(56 2) ____ ____', 15, 2, 'cfuenzalida', '2018-10-24 15:52:41', 0),
(385, 'dcaicedo@portalfinance.co', 'Motor Financiero', 'Diego', 'Caicedo', 'CoFounder Portal Finance', '.', '.', '.', '(56 2) ____ ____', 15, 1, 'cfuenzalida', '2018-10-05 09:49:38', 0),
(386, 'mvuskovic@micomunicacion.cl', 'Motor Financiero', 'Mónica', 'Vuskovic', '.', '.', '.', '.', '(56 _) ____ ____', 15, 1, 'cfuenzalida', '2018-10-05 09:50:43', 0),
(387, 'earriagada@uc.cl', 'Universidad Católica', 'Eduardo', 'Arriagada', 'Decano Comunicaciones', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-10-24 07:24:39', 0),
(388, 'sicazap@icafal.cl', 'Icafal', 'Sergio', 'Icaza', 'Director', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(389, 'patricio.contesse@icloud.com', 'SQM', 'Patricio', 'Contesse Fica', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-08 08:22:25', 0),
(390, 'navarrosario@gmail.com', 'Sonda', 'Rosario', 'Navarro', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-10-31 16:54:26', 0),
(391, 'cecilia.valdes@sonda.com', 'SONDA', 'Andrés', 'Navarro', 'Director', 'Teatinos 500', 'santiago', 'Santiago Centro', '(56 2) 2657 5000', 4, 1, 'tgonzalez', '2018-10-08 10:30:49', 1),
(392, 'eoyarzun@moragaycia.cl', 'Moraga y Cía. Abogados', 'Enrique', 'Oyarzún', 'Abogado', 'El Golf 40, Of. 701', 'Santiago', 'Las Condes', '(56 2) 2206 4797', 28, 1, 'cfuenzalida', '2018-10-08 11:04:04', 0),
(393, 'ccharmef@gmail.com', 'Senda', 'Carlos', 'Charme', 'Director', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(394, 'pjc@invquilimari.cl', 'Invitado Especial', 'Oscar Guillermo', 'Garretón', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-11-02 16:24:16', 0),
(395, 'afischer@resiter.cl', 'Resiter', 'Álvaro', 'Fischer', 'Directori', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(396, 'priscila.oliva@americantower.com', 'American Tower', 'Priscila', 'Oliva', '.', '.', '.', '.', '(56 2) 2___ ____', 28, 1, 'cfuenzalida', '2018-10-08 15:04:14', 0),
(397, 'pbernedo@uc.cl', 'Universidad Católica', 'Patricio', 'Bernedo', 'Decano de la Facultad de Historia, Geografía y Ciencia Política', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-10-30 05:51:30', 0),
(398, 'jvelasco@agrosuper.com', 'Agrosuper', 'Juan Cristóbal', 'Velasco', 'Subgerente de Comunicaciones', '.', '.', '.', '(56 2) 2___ ____', 13, 2, 'cfuenzalida', '2018-10-22 09:50:52', 0),
(399, 'jorge.falaha@indisa.cl', 'Clínica Indisa', 'Jorge', 'Falaha', 'Gerente Planificación y Control de Gestión', '.', '.', '.', '(56 2) 2___ ____', 25, 2, 'cfuenzalida', '2018-10-22 10:08:44', 0),
(400, 'soledad.rivero@indisa.cl', 'Clínica Indisa', 'Soledad', 'Rivero', 'Gerente Recursos Humanos', '.', '.', '.', '(56 2) 2___ ____', 25, 1, 'cfuenzalida', '2018-10-09 08:44:19', 0),
(401, 'gestionurbana.jacqueline@gmail.com', '...........', 'Jacqueline', 'Gálvez', 'Directora Ejecutiva', 'Av.Apoquindo 6750', 'Santiago', 'Las Condes', '(56 2) 2376 3300', 23, 2, 'tgonzalez', '2018-10-23 08:12:10', 0),
(402, 'felixlopez@ispa.cl', 'Ispa', 'Felix', 'López', 'director', 'Rosario Norte 555', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-22 21:38:27', 0),
(403, 'gtagle@credicorpcapital.com', 'Credicorp Capital', 'Guillermo', 'Tagle', 'Gerente General', 'Av.Apoquindo 3721, Piso 9', 'Santiago', 'Las Condes', '(56 2) 2450 1600', 23, 2, 'tgonzalez', '2018-10-23 06:48:02', 0),
(404, 'dalbarranr@gmail.com', '.', 'Daniel', 'Albarrán', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-25 15:12:36', 0),
(405, 'vabud@flf.cl', 'Fundación Nave', 'Verónica', 'Abud', 'Directora Ejecutiva', 'rosario norte 555', 'Santiago', 'Las Condes', '(56 2) 4377 701_', 23, 1, 'tgonzalez', '2018-10-09 11:16:40', 0),
(406, 'edmundo@eluchans.cl', 'Eluchans Abogados', 'Edmundo', 'Eluchans', 'Director', 'Av.Andrés Bello 2687,  Piso 17', 'Santiago', 'Las Condes', '(56 2) 2889 8800', 23, 1, 'tgonzalez', '2018-10-22 16:14:59', 0),
(407, 'rpv@linkservice.cl', '.........', 'Rodrigo', 'Peon', 'Director', 'Rosario Norte 555', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-23 10:39:52', 0),
(408, 'brancapetrica@gmail.com', '................', 'María Teresa', 'Petric', '............', '..............', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-09 11:32:09', 0),
(409, 'mjcifuentes@nave.io', 'NAVE', 'María José', 'Cifuentes', 'Directora Ejecutiva', '.................', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-09 11:34:05', 0),
(410, 'magdalenafrei@gmail.com', '...............', 'Magdalena', 'Frei', '.................', '.................', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-09 11:50:16', 1),
(411, 'clira@blizzard.cl', '.', 'Cristóbal', 'Lira', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-25 15:11:27', 0),
(412, 'ceterovic@me.cl', 'Mujeres Empresarias', 'Carolina', 'Eterovic', '.', '.', '.', '.', '(59 2) 2___ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:26:36', 0),
(413, 'lolavar@bci.cl', 'BCI', 'Lionel', 'Olavarría', '.', '.', '.', '.', '(56 2) ____ ____', 4, 2, 'cfuenzalida', '2018-10-22 09:49:14', 0),
(414, 'amustakis@if.cl', 'ASECH', 'Alejandra', 'Mustakis', '.', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:28:42', 0),
(415, 'hferrazuriz@guerrero.cl', 'Guerro', 'Hernán', 'Errázuriz', '.', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:29:50', 0),
(416, 'jburgos@grasty.cl', 'Grasty Quintana Majlis', 'Jorge', 'Burgos', '.', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:30:51', 0),
(417, 'pedropablo.errazuriz@efe.cl', 'EFE', 'Pedro Pablo', 'Errázuriz', '.', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:32:29', 0),
(418, 'avelasco@extend.cl', 'Ministerio de la Mujer y Equidad de Género', 'Isabel', 'Plá', '.', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-09 14:34:18', 0),
(419, 'mlopez@epsa.cl', 'Empresa Portuaria San Antonio', 'Aldo', 'Signorelli', 'Gerente General', 'Puerto San Antonio', 'San Antonio', 'San Antonio', '(35 2) 5860 00__', 23, 1, 'tgonzalez', '2018-10-22 11:07:44', 0),
(420, 'jmashich@cl.ibm.com', 'IBM', 'Joaquín', 'MaShichoy', '.', '.', '.', '.', '(56 2) ____ ____', 22, 2, 'cfuenzalida', '2018-10-24 07:40:52', 0),
(421, 'joaquinlavin@lascondes.cl', 'Municipalidad de Las Condes', 'Joaquín', 'Lavín', 'Alcalde', '.', '.', '.', '(56 2) ____ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(422, 'presidenciacpc@cpc.cl', 'CPC', 'Alfonso', 'Swett', 'Presidente', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(423, 'mauricio.gallardo@lasegunda.cl', 'Diario La Segunda', 'Mauricio', 'Gallardo', 'Director', 'Av. Santa María 5542', 'Santiago', 'Vitacura', '(56 2) 2330 1111', 23, 1, 'tgonzalez', '2018-10-09 15:42:18', 0),
(424, 'piedad@agenciafelicidad.cl', 'Agencia Felicidad', 'Piedad', 'Rivadeneira', 'Directora Ejecutiva', 'Simón Bolívar 2921', 'Santiago', 'Ñuñoa', '(56 2) 2792 4817', 23, 1, 'tgonzalez', '2018-10-09 15:45:15', 0),
(425, 'redaccion@mercurio.cl', 'Diario El Mercurio', 'Carlos', 'Schaerer', 'Director', 'Av.Santa María 5542', 'Santiago', 'Vitacura', '(56 2) 2330 1111', 23, 1, 'tgonzalez', '2018-10-22 15:14:45', 0),
(426, 'marcela.abusleme@tvn.cl', 'TVN', 'Marcela', 'Abusleme', 'Prensa', 'Bellavista 0990', 'Santiago', 'Providencia', '(56 2) 2550 7777', 23, 1, 'tgonzalez', '2018-10-09 15:52:31', 0),
(427, 'vatton@copesa.cl', 'Copesa', 'Andrés', 'Benítez', 'Director', 'Av.Vicuña Mackenna  1962', 'Santiago', 'Ñuñoa', '(56 2) 2550 7000', 23, 1, 'tgonzalez', '2018-10-22 14:52:50', 0),
(428, 'llarrain@lyd.org', 'Libertad y Desarrollo', 'Luis', 'Larraín', 'Director Ejecutivo', 'Alcántara 498', 'Santiago', 'Las Condes', '(56 2) 2377 4800', 23, 1, 'tgonzalez', '2018-10-09 16:05:41', 0),
(429, 'mlima@ing.puc.cl', 'CIS Consultores', 'Marcos', 'Lima', 'Socio', '.', '.', '.', '(56 2) 2209 1912', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(430, 'cponce@corfo.cl', 'Corfo', 'Sebastián', 'Sichel', 'Director', '.', '.', '.', '(56 2) 2631 8897', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(431, 'angela.gonzalez@mineduc.cl', 'Ministerio de Educación', 'Marcela', 'Cubillos', 'Ministra', '.', '.', '.', '(56 2) 2406 6000', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(432, 'icuevas@13.cl', 'Canal 13', 'Maximiliano', 'Luksic', 'Subdirector Ejecutivo', '.', '.', '.', '(56 2) 2251 4000', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(433, 'muriartep@gmail.com', 'Mikel Uriarte', 'Mikel', 'Uriarte', '............', '................', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-24 08:35:49', 0),
(434, 'magdalena.squella@cmpc.cl', 'CMPC', 'Luis Felipe', 'Gacitúa', 'Presidente', 'Agustinas 1343, Piso 10', 'Santiago', 'Santiago Centro', '(56 2) 2441 2503', 23, 1, 'tgonzalez', '2018-10-10 10:33:24', 0),
(435, 'fgazmuri@citroen.cl', 'Citroen', 'Fernán', 'Gazmurí', 'Presidente', 'Bellavista  0790', 'Santiago', 'Providencia', '(56 2) 2583 9113', 23, 1, 'tgonzalez', '2018-10-10 10:42:30', 0),
(436, 'jpellegrini@pycia.cl', 'Pellegrini Abogados y Cía.', 'Julio', 'Pellegrini', 'Socio', 'Isidora Goyenechea 3621, piso 5', 'Santiago', 'Las Condes', '(56 2) 2611 9500', 23, 1, 'tgonzalez', '2018-10-10 13:33:37', 0),
(437, 'gonzalo@sanchezserranoycia.cl', 'Gonzalo Sánchez', 'Gonzalo', 'Sanchez', 'Director Ejecutivo', 'Av.Santa María 5888, piso 2', 'Santiago', 'Las condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-23 10:27:46', 0),
(438, 'fharboe@senado.cl', 'Felipe Harboe', 'Felipe', 'Harboe', 'Senador', 'Senado Valparaíso', 'Valparaíso', 'Valparaíso', '(56 3) 2250 4711', 23, 1, 'tgonzalez', '2018-10-22 16:13:13', 0),
(439, 'evelyn.barraza@msgg.gob.cl', '..............', 'Cecilia', 'Pérez', 'Ministra', 'Palacio de la Moneda', 'Santiago', 'Santiago Centro', '(56 2) 2690 4000', 23, 1, 'tgonzalez', '2018-10-22 15:15:58', 0),
(440, 'pvalenzuela@generacionempresarial.org', 'Generación Empresarial', 'Paula', 'Valenzuela', 'Gerente General', 'Apoquindo 6410, ofic. 213', 'Santiago', 'Las Condes', '(56 2) 2229 7451', 23, 2, 'tgonzalez', '2018-10-23 11:31:32', 0),
(441, 'edonoso@greenvic.cl', 'Greenvic SA', 'Pablo', 'Guillisasti', 'Gerente General', 'Av.Apoquindo 4775, Piso 16', 'Santiago', 'Las Condes', '(56 2) 2707 4200', 23, 1, 'tgonzalez', '2018-10-11 09:44:21', 1),
(442, 'falessandri@munistgo.cl', 'Municipalidad de Santiago', 'Felipe', 'Alessandri', 'Alcalde', '.', '.', '.', '(56 _) ____ ____', 11, 2, 'cfuenzalida', '2018-10-23 12:36:35', 0),
(443, 'eloeser@axisdc.cl', 'Enrique Loeser', 'Enrique', 'Loeser', '...............', '..............', 'Santiago', '.............', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 15:27:26', 0),
(444, 'juanpablo.larrain@latercera.com', 'Copesa', 'Juan Pablo', 'Larraín', 'Director', '.', '.', '.', '(56 2) 2550 7000', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(445, 'pbadenier@agenciacircular.cl', 'Agencia Circular', 'Pablo', 'Badenier', 'Socio Director', 'Monseñor Felix Cabrera 39, P3', 'Santiago', 'Providencia', '(56 2) 2233 1578', 23, 1, 'tgonzalez', '2018-10-11 09:48:24', 0),
(446, 'pilar.carcamo@tvn.cl', 'TVN', 'Máximo', 'Pacheco', 'Director', 'Bellavista 0990', 'Santiago', 'Providencia', '(56 2) 2707 7777', 23, 1, 'tgonzalez', '2018-10-23 10:47:18', 0),
(447, 'magdalenafrei@gmail.com', 'Magdalena Frei', 'Magdalena', 'Frei', '............', '...............', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-23 14:31:21', 0),
(448, 'maylwin@vtr.net', 'Mariana Aylwin', 'Mariana', 'Aylwin', '...............', '..............', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-11 10:06:46', 0),
(449, 'jrodrigu@uahurtado.cl', 'Universidad Alberto Hurtado', 'Jorge', 'Rodríguez', 'Decano Facultad de Economía y Negocios', 'Erasmo Escala 1835', 'Santiago', 'Santiago Centro', '(56 2) 2889 7365', 23, 1, 'tgonzalez', '2018-10-11 10:14:51', 0),
(450, 'claudio.orrego66@gmail.com', 'Claudio Orrego', 'Claudio', 'Orrego', '..............', '..................', '...............', '...............', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 15:20:31', 0),
(451, 'eduardofrei@efrei.cl', 'Eduardo Frei', 'Eduardo', 'Frei', '...............', '...............', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 15:26:56', 0),
(452, 'antoniotuset@gmail.com', 'Antonio Tuset', 'Antonio', 'Tuset', '...............', '.................', 'Santiago', '................', '(56 2) 2437 7701', 23, 2, 'tgonzalez', '2018-10-22 11:27:42', 0),
(453, 'ceciliagarciahuidobro@gmail.com', 'Cecilia García Huidobro', 'Cecilia', 'García-Huidobro', '...................', '....................', '...................', '....................', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 15:17:15', 0),
(454, 'ndelacarrera@capitaria.com', 'Capitaria', 'Nicolás', 'De La Carrera', 'Socio', '.', '.', '.', '(56 _) ____ ____', 27, 2, 'cfuenzalida', '2018-10-22 11:32:13', 0),
(455, 'ngallardo@capitaria.com', 'Capitaria', 'Nicolás', 'Gallardo', 'Socio', '.', '.', '.', '(56 2) 2___ ____', 27, 1, 'cfuenzalida', '2018-10-11 14:41:37', 0),
(456, 'ngatica@sofofa.cl', 'Sofofa', 'Bernardo', 'Larraín Matte', 'Presidente', '.', '.', '.', '(56 2) 2___ ____', 29, 1, 'cfuenzalida', '2018-10-11 14:48:39', 0),
(457, 'pichita@fundacionfuturo.cl', 'Fundación Futuro', 'Magdalena', 'Piñera', 'Directora Ejecutiva', 'Av.Apoquindo  3000, Piso 19', 'Santiago', 'Las Condes', '(56 2) 2242 2732', 23, 1, 'tgonzalez', '2018-10-11 14:53:06', 0),
(458, 'blopez@emiliana.cl', 'Viña Emiliana', 'Rafael', 'Guillisasti', 'Director', 'Av.Nueva Tajamar 481', 'Santiago', 'Las Condes', '(56 2) 2353 9130', 23, 1, 'tgonzalez', '2018-10-11 15:12:38', 0),
(459, 'ppablocabreragaete@gmail.com', 'Enel', 'Pablo', 'Cabrera', 'Director', 'Santa Rosa 76', 'Santiago', 'Santiago Centro', '(56 2) 2353 4663', 23, 2, 'tgonzalez', '2018-10-23 12:38:22', 0),
(460, 'secretariasocecol@gmail.com', 'Sociedad de Ecología de Chile', 'Bárbara', 'Saavedra', 'Directora Ejecutiva', '...............', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-11 15:44:29', 0),
(461, 'roberto.mendez@golf99.cl', 'Invitado Especial', 'Roberto', 'Méndez', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(462, 'martin.subercaseaux@insituchile.cl', 'Invitado Especial', 'Martín', 'Subercaseaux', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(463, 'g.silva@pacificgold.cl', 'Pacific Gold', 'Gonzalo', 'Silva', 'Gte. General', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(464, 'fghr@inarco.cl', 'CCHC', 'Fernando', 'García-Huidobro', 'Director', '...........', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-17 06:29:01', 0),
(465, 'anitagarlingv@gmail.com', 'Anita Garling', 'Anita', 'Garling', '................', '..................', 'Santiago', 'Las Condes', '(56 2) 2437 7701', 23, 1, 'tgonzalez', '2018-10-22 14:53:18', 0),
(466, 'jamaya@agrosuper.com', 'Agrosuper', 'Gonzalo', 'Vial', 'Socio', '................', 'Rancagua', 'Rancagua', '(72 2) 3565 01__', 23, 1, 'tgonzalez', '2018-10-17 06:37:16', 0),
(467, 'vdomingue@domet.cl', 'Asoc. de Imobiliarias', 'Vicente', 'Domínguez', 'Director Ejecutivo', '.', '.', '.', '(56 2) 2335 3468', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(468, 'cghchuala@gmail.com', 'Invitado Especial', 'Carlos', 'García Huidobro', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-10-24 07:56:30', 0),
(469, 'francisco.orrego.bauza@gmail.com', 'TVN', 'Francisco', 'Orrego', 'Presidente', '.', '.', '.', '(56 2) 2___ ____', 11, 1, 'cfuenzalida', '2018-10-22 13:31:06', 0),
(470, 'pcovarrubias@udd.cl', 'País Digital', 'Pelayo', 'Cobarrubias', 'Presidente', '.', '.', '.', '(56 2) 2___ ____', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(471, 'mluders@df.cl', 'Diario Financiero', 'Marily', 'Lüders', 'Directora', '.', '.', '.', '(56 2) 2___ ____', 11, 1, 'cfuenzalida', '2018-10-23 08:06:09', 0),
(472, 'acardemil@carey.cl', 'Carey', 'Alberto', 'Cardemil', 'Socio', 'Isidora Goyenechea 2800 piso 43', 'Santiago', 'Las Condes', '56229282200', 6, 2, 'czamora', '2018-10-23 16:16:15', 0),
(473, 'glavanchy@enjoy.cl', 'Enjoy', 'Javier', 'Martínez', 'Director', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(474, 'erojas@13radios.cl', 'Invitado Especial', 'Cristián', 'Bofill', '.', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-23 08:12:23', 0),
(475, 'sperez@alsaciaexpress.cl', 'Alsacia', 'Sergio', 'Pérez', 'Gerente General', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:09:58', 0),
(476, 'gharcha@alsaciaexpress.cl', 'Alsacia', 'Gibran', 'Harcha', 'Director', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:11:26', 0),
(477, 'dante.arrigoni@arrigoni.cl', 'Arrigoni', 'Dante', 'Arrigoni', 'Director General', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:12:16', 0),
(478, 'vittorio.arrigoni@arrigoni.cl', 'Arrigoni', 'Vittorio', 'Arrigoni', 'Gerente General', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:13:02', 0),
(479, 'mjcastan@gmail.com', 'Arrigoni', 'Jaime', 'Castañeda', 'Director', '.', '.', '562', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:13:52', 0),
(480, 'italo.arrigoni@arrigoni.cl', 'Arrigoni', 'Italo', 'Arrigoni', '.', '.', '56', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:14:42', 0),
(481, 'hvnm@gerdau.com', 'Arrigoni', 'Hermann', 'Von Mühlenbrock', 'Director', '.', '.', '562', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:16:45', 0),
(482, 'rkarmelic@helvetica-chile.com', 'Bionet', 'Roberto', 'Karmelic', 'Presidente', 'Rosario Norte 555', '.', '.', '(22 4) 3777 69__', 39, 1, 'cfuenzalida', '2018-10-23 09:18:06', 0),
(483, 'jlguzman@centralparking.cl', 'Central Parking', 'Juan Luis', 'Guzmán', '.', '.', '.', '562', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:23:46', 0),
(484, 'mcaracci@cityplanning.cl', 'CityMovil', 'Marcelo', 'Caracci', 'Presidente', '.', '.', '56', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:24:59', 0),
(485, 'dsalas@citymovil.cl', 'CityMobil', 'Daniela', 'Salas', 'Gerente General', '.', '.', '56', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:26:44', 0),
(486, 'pbeltran@cityplanning.cl', 'City Planning', 'Pelayo', 'Beltrán', '.', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:27:42', 0),
(487, 'amarzolo@cognitiva.la', 'Cognitiva', 'Aldo', 'Marzolo', 'Socio - Gerente General', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:29:59', 0),
(488, 'dsturiza@cognitiva.la', 'Cognitiva', 'Danilo', 'Sturiza', '.', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:30:48', 0),
(489, 'carlos.alvarez@imelsa.cl', 'Imelsa', 'Carlos', 'Álvarez', 'Director', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:31:48', 0),
(490, 'jaime.serra@indisa.cl', 'Clínica Indisa', 'Jaime', 'Serra', 'Gerente de Proyectos', '.', '.', '56', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:32:29', 0),
(491, 'luzgranier@gmail.com', 'Clínica Indisa', 'Luz', 'Granier', 'Directora', '.', '56', '56', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:33:09', 0),
(492, 'aserracambiaso@gmail.com', 'Clínica Indisa', 'Andrés', 'Serra', 'Director', '.', '.', '56', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:33:55', 0),
(493, 'francisco.sardon@scotiabank.cl', 'Scotiabank', 'Francisco', 'Sardon', 'Gerente General', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:34:41', 0),
(494, 'danilo.gonzalez@scotiabank.cl', 'Scotiabank', 'Danilo', 'González', 'Sistemas y Tecnologías', '.', '.', '56', '(56 _) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:35:26', 0),
(495, 'mario.pavon@sonda.com', 'Scotiabak', 'Mario', 'Pavón', 'Presidente', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:35:59', 0),
(496, 'raul.vejar@sonda.com', 'Sonda', 'Raul', 'Vejar', '.', '.', '.', '.', '(56 2) 2___ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:36:35', 0),
(497, 'aparker@sudamerik.com', 'Sudamerik', 'Andrés', 'Parker', 'Socio y Director', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:37:26', 0),
(498, 'arturo@sudamerik.com', 'Sudamerik', 'Arturo', 'Parker', 'Socio y director', '.', '.', '56', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:38:32', 0),
(499, 'ejaramillo@sudamerik.com', 'Sudamerik', 'Eduardo', 'Jaramillo', 'Gerente General', '.', '.', '562', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:41:17', 0),
(500, 'jose.rodriguez@unab.cl', 'UNAB', 'José', 'Rodríguez', 'Rector', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:44:30', 0),
(501, 'gonzalo.guzman@unab.cl', 'UNAB', 'Gonzalo', 'Guzmán', 'Prorrector', '.', '.', '.', '(56 2) ____ ____', 39, 1, 'cfuenzalida', '2018-10-23 09:45:13', 0),
(502, 'mbalmaceda@bcp.cl', 'Balmaceda, Cox y Piña', 'Matías', 'Balmaceda', 'Socio', '.', '.', '.', '(56 2) 2___ ____', 11, 2, 'cfuenzalida', '2018-10-23 14:01:56', 0),
(503, 'acerda@fundacionmas.cl', 'Fundación MAS', 'Arturo', 'Cerda', 'Representante Comité Estratégico', '.', '.', '.', '(56 2) 2___ ____', 22, 2, 'cfuenzalida', '2018-10-24 07:54:39', 0),
(504, 'mzaror@extend.cl', 'Extend', 'Mauricio', 'Zaror', 'Director', 'Rosario Norte 555', 'Las Condes', 'Las Condes', '(22 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-24 08:33:57', 0),
(505, 'fvelasco@estudiovelasco.cl', 'Extend', 'Felipe', 'Velasco', 'Director', 'Rosario Norte 555', 'Las Condes', 'Las Condes', '(22 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-24 08:34:42', 0),
(506, 'jaguzman@gundemara.cl', 'Extend', 'Juan Antonio', 'Guzmán', 'Presidente', 'Rosario Norte 555', 'Las Condes', 'Las Condes', '(22 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-24 08:35:57', 0),
(507, 'agigoux@estudiovelasco.cl', 'Estudio Velasco', 'Arturo', 'Gigoux', 'Abogado', 'Rosario Norte 555', 'Las Condes', 'Las Condes', '(22 2) 2437 7769', 22, 1, 'cfuenzalida', '2018-10-24 08:39:08', 0),
(508, 'mtcremaschi@bye.cl', 'Invitada Especial', 'María Teresa', 'Cremaschi', 'Abogada', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-25 15:25:43', 0),
(509, 'jcarey@carey.cl', 'Carey y Cía. Ltda.', 'Jorge', 'Carey', 'Socio', '.', '.', '.', '(56 2) 2___ ____', 22, 1, 'cfuenzalida', '2018-10-25 15:31:12', 0);
INSERT INTO `tbl_clientes` (`id_cliente`, `email`, `tipo_cliente`, `nombre`, `apellido`, `cargo`, `direccion`, `ciudad`, `comuna`, `telefono`, `id_usuario`, `confirmacion`, `usuarioregistro`, `fecharegistro`, `eliminado`) VALUES
(510, 'luis.cubillos@egonzehnder.com', 'Egon Zehnder', 'Luis Hernán', 'Cubillos', 'Socio', '.', '.', '.', '(56 2) 2___ ____', 23, 1, 'cfuenzalida', '2018-10-25 15:39:08', 0),
(511, 'cmuga@ortizycia.cl', 'Ortíz y Cía.', 'Cristián', 'Muga', 'Socio', '.', '.', '.', '(56 2) ____ ____', 4, 1, 'cfuenzalida', '2018-10-25 15:45:45', 0),
(512, 'roberto.valdes@uss.cl', 'USS', 'Roberto', 'Valdés', 'Director de Comunicaciones', 'Rosario Norte 555', '.', 'Las Condes', '(22 2) 4377 769_', 11, 1, 'cfuenzalida', '2018-10-26 07:03:16', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_comuna`
--

CREATE TABLE `tbl_comuna` (
  `id_comuna` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuarioregistro` varchar(255) NOT NULL,
  `fecharegistro` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_comuna`
--

INSERT INTO `tbl_comuna` (`id_comuna`, `nombre`, `usuarioregistro`, `fecharegistro`) VALUES
(1, ' Las Condes \r\n', '', '2018-09-04 15:45:31'),
(2, 'Amsterdam\r\n', '', '2018-09-04 15:45:37'),
(3, 'Cabo Negro, Punta Arenas\r\n', '', '2018-09-04 15:45:44'),
(4, 'Cerrillos\r\n', '', '2018-09-04 15:45:50'),
(5, 'Ciudad Empresarial\r\n', '', '2018-09-04 15:45:56'),
(6, 'Colina\r\n', '', '2018-09-04 15:46:01'),
(7, 'Copiapó \r\n', '', '2018-09-04 15:46:07'),
(8, 'El Bosque\r\n', '', '2018-09-04 15:46:17'),
(9, 'España\r\n', '', '2018-09-04 15:46:21'),
(10, 'Huechuraba\r\n', '', '2018-09-04 15:46:27'),
(11, 'Iquique\r\n', '', '2018-09-04 15:46:37'),
(12, 'La Dehesa\r\n', '', '2018-09-04 15:46:42'),
(13, 'Lampa\r\n', '', '2018-09-04 15:48:17'),
(14, 'Las Condes\r\n', '', '2018-09-04 15:48:21'),
(15, 'Lo Barnechea\r\n', '', '2018-09-04 15:48:40'),
(16, 'Macul\r\n', '', '2018-09-04 15:48:44'),
(17, 'Ney York\r\n', '', '2018-09-04 15:48:51'),
(18, 'Ñuñoa\r\n', '', '2018-09-04 15:48:53'),
(19, 'Peñalolén\r\n', '', '2018-09-04 15:48:57'),
(20, 'Providencia\r\n', '', '2018-09-04 15:49:01'),
(21, 'Punta Arenas\r\n', '', '2018-09-04 15:49:10'),
(22, 'Quilicura\r\n', '', '2018-09-04 15:49:17'),
(23, 'Rancagua\r\n', '', '2018-09-04 15:49:22'),
(24, 'Recoleta\r\n', '', '2018-09-04 15:49:27'),
(25, 'Renca\r\n', '', '2018-09-04 15:49:35'),
(26, 'San Antonio\r\n', '', '2018-09-04 15:49:40'),
(27, 'San Bernanrdo\r\n', '', '2018-09-04 15:49:46'),
(28, 'San Carlos de Apoquindo\r\n', '', '2018-09-04 15:49:54'),
(29, 'Santiago\r\n', '', '2018-09-04 15:49:58'),
(30, 'Talca\r\n', '', '2018-09-04 15:50:14'),
(31, 'Temuco\r\n', '', '2018-09-04 15:50:17'),
(32, 'Torre del Parque I, Piso 15\r\n', '', '2018-09-04 15:50:24'),
(33, 'Vitacura\r\n', '', '2018-09-04 15:50:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_confirmacion`
--

CREATE TABLE `tbl_confirmacion` (
  `id_confirma` int(10) UNSIGNED NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_confirmacion`
--

INSERT INTO `tbl_confirmacion` (`id_confirma`, `valor`) VALUES
(1, 'Por confirmar'),
(2, 'Si'),
(3, 'No');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipocliente`
--

CREATE TABLE `tbl_tipocliente` (
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `nombreusuario` varchar(255) NOT NULL,
  `fecharegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipocliente`
--

INSERT INTO `tbl_tipocliente` (`id_tipo`, `nombre`, `nombreusuario`, `fecharegistro`) VALUES
(1, 'Aguas Magallanes S.A.\r\n', '', '2018-09-04 14:54:25'),
(2, 'Aguas Nuevas S.A.\r\n', '', '2018-09-04 14:54:41'),
(3, 'Maersk Container Industry\r\n', '', '2018-09-04 14:54:54'),
(4, 'Banco BTG Pactual\r\n', '', '2018-09-04 14:55:01'),
(5, 'APM Terminals\r\n', '', '2018-09-04 14:55:11'),
(6, 'Maersk Group\r\n', '', '2018-09-04 14:55:19'),
(7, 'Aguas del Altiplano S.A.\r\n', '', '2018-09-04 14:56:05'),
(8, 'SalfaCorp\r\n', '', '2018-09-04 14:56:12'),
(9, 'Maersk Line\r\n', '', '2018-09-04 14:56:27'),
(10, 'Peel Ports\r\n', '', '2018-09-04 14:56:43'),
(11, 'Banco BTG Pactual\r\n', '', '2018-09-04 14:56:52'),
(12, 'Comunidad Mujer\r\n', '', '2018-09-05 11:57:41'),
(13, 'Chilefilms\r\n', '', '2018-09-05 12:35:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id_usuario` int(255) UNSIGNED NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_tipousuario` int(3) NOT NULL,
  `eliminado` tinyint(3) NOT NULL DEFAULT '0',
  `usuarioregistro` varchar(255) NOT NULL,
  `fecharegistro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `director` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `usuario`, `email`, `nombre`, `apellido_paterno`, `password`, `id_tipousuario`, `eliminado`, `usuarioregistro`, `fecharegistro`, `director`) VALUES
(2, 'eanaya', 'eanaya@extend.cl', 'Eliezer', 'Anaya', '$2y$10$JrzQfj9xw29Rkttc5mu7iuZrHX40Uq.W1JvDUPb9KGyhd9v6FIezq', 1, 0, 'eanaya', '2018-09-24 09:06:03', 'Eliezer Anaya'),
(3, 'abascur', 'abascur@extend.cl\r\n', 'Alejandro\r\n', 'Bascur\r\n', '$2y$10$yqbrV1AWr5T3S.B2y.ne0O6T.xqTVzVEyYxf3t29dZLdhrWoswMhm', 2, 0, 'eanaya', '2018-09-24 09:06:34', 'Alejandro Bascur'),
(4, 'avelasco', 'avelasco@extend.cl', 'Ana María\r\n', 'Velasco\r\n', '$2y$10$OtmDHWkm7nPertFe6UtIu.mnxBWel3oqCT2OmI6HgOArDLRtEYfmq', 2, 0, 'eanaya', '2018-09-24 09:07:13', 'Ana María Velasco'),
(5, 'alaguna', 'alaguna@extend.cl\r\n', 'Ana María\r\n', 'Laguna\r\n', '$2y$10$QYpnwA6G9MshQdH/m.PWseB4/fNh005o.h2..JmC93FkPkbmulEDi', 2, 0, 'eanaya', '2018-09-24 09:08:12', 'Ana María Laguna'),
(6, 'czamora', 'czamora@extend.cl', 'Claudia', 'Zamora', '$2y$10$M2OFna7IQIxM9kXoBdEVxevOMV67Wwe.tSKxRPgSbJQspK.Sk3PMO', 2, 0, 'eanaya', '2018-09-24 09:10:03', 'Claudia Zamora'),
(7, 'fdelsolar', 'fdelsolar@extend.cl', 'Felipe', 'del Solar', '$2y$10$JrzQfj9xw29Rkttc5mu7iuZrHX40Uq.W1JvDUPb9KGyhd9v6FIezq', 2, 0, 'eanaya', '2018-09-24 09:10:53', 'Felipe del Solar'),
(8, 'fleiva', 'fleiva@extend.cl', 'Felipe', 'Leiva', '$2y$10$VwycZvybL3cYLP3eqkmSBuYmhSds5EEM9g.DsGzbCF4tTkcf2oCce', 2, 0, 'eanaya', '2018-09-24 09:11:23', 'Felipe Leiva'),
(9, 'ihohlberg', 'ihohlberg@extend.cl', 'Isabel', 'Hohlberg', '$2y$10$dEamQliXQAvNYJR47X8pqOoA2ThNBzRmN0f7AnWASa7LV46HrgOVi', 2, 0, '', '2018-09-24 09:12:16', 'Isabel Hohlberg'),
(10, 'jpacheco', 'jpacheco@extend.cl', 'Jorge', 'Pacheco', '$2y$10$eTTJ7fYx7Jba5XEVxb7XpOus2kcPsmGg5F8OpsE9KGKRRM4VB8P9.', 2, 0, '', '2018-09-24 09:12:49', 'Jorge Pacheco'),
(11, 'jlopez', 'jlopez@extend.cl', 'José Antonio', 'López', '$2y$10$HoLF/IFxPk0.nhKdcR2uNegiTlcf7dZvlc.2nr8SjJFRMfBrrdrqK', 2, 0, '', '2018-09-24 09:13:17', 'José Antonio López'),
(12, 'jalvarez', 'jalvarez@extend.cl', 'Juan Carlos', 'Álvarez', '$2y$10$O9H44R5GHjzSfeyNkDAsqOA6i1cAZXziePQJcFxOB2CRMUoMdJ9Fu', 2, 0, '', '2018-09-24 09:14:51', 'Juan Carlos Álvarez'),
(13, 'milopez', 'milopez@extend.cl', 'María Ignacia', 'López', '$2y$10$Sbla52GNy77S0/dGkYxf2.8r6M1go5E5YaAHJRaWocXr/IQoMDCqm', 2, 0, '', '2018-09-24 09:15:30', 'María Ignacia López'),
(15, 'mtovalle', 'mtovalle@extend.cl', 'María Teresa', 'Ovalle', '$2y$10$gtXybhSbN.ggHnS2YWvrtudMrwlli1Wl7lv2OWnRZ20hQwvpDYonW', 2, 0, '', '2018-09-24 09:16:18', 'María Teresa Ovalle'),
(16, 'mbaltierra', 'mbaltierra@extend.cl', 'Mariana', 'Baltierra', '$2y$10$jEChkz/FuCe2oRmgmzqAdedjYybid7DUUqi69geoKa3Ye.KAE3cfi', 2, 0, '', '2018-09-24 09:17:28', 'Mariana Baltierra'),
(17, 'mblanco', 'mblanco@extend.cl', 'Mónica', 'Blanco', '$2y$10$GcWbcUAugmNQHS/5dXINiuW9Yj8b4Ktsg3a7bf3qtiXfW7QlPGmmS', 2, 0, '', '2018-09-24 09:18:07', 'Monica Blanco'),
(18, 'nvander', 'nvander@extend.cl', 'Nora', 'van der Schraft', '$2y$10$4KNauB1wMpdzV7qu5f8/ze.aufNeidBforPjXAVehSay2O4mUfcXi', 2, 0, '', '2018-09-24 09:18:43', 'Nora van der Schraft'),
(19, 'pmackenzie', 'pmackenzie@extend.cl', 'Paula', 'Mackenzie', '$2y$10$jSgD8jA1w8o/6t6QvsD0cOcBIXQVqA/we2U7uuPQjqkflJgf76P7q', 2, 0, '', '2018-09-24 09:19:51', 'Paula Mackenzie'),
(20, 'randrews', 'randrews@extend.cl', 'Ricardo', 'Andrews', '$2y$10$eRIpLCr6hII3Q.DsuCggIOM0huZVdzDksKP8lvwv4S2u652TJJ61C', 2, 0, '', '2018-09-24 09:20:43', 'Ricardo Andrews'),
(21, 'rsilva', 'rsilva@extend.cl', 'Rosario', 'Silva', '$2y$10$UvIfTGfljL7sKNeazlb4x.u/W61Z.b3TlOyZY79eAn1B4SWz5hrie', 2, 0, '', '2018-09-24 09:22:09', 'Rosario Silva'),
(22, 'mvelasco', 'mvelasco@extend.cl', 'María de la Luz', 'Velasco', '$2y$10$DjmDUd24EZiv9CEhmFPUjudEMHyj/3QKGcey8XuKue6RsnTfod5P.', 2, 0, '', '2018-09-24 09:21:41', 'María de la Luz Velasco'),
(23, 'pvelasco', 'pvelasco@extend.cl', 'María del Pilar', 'Velasco', '$2y$10$67jXvrr2T.UvT5oziqIXRuA/c6YDq.M8M3R5ro1ba7jK9XJhhImWS', 2, 0, '', '2018-09-24 09:22:45', 'María del Pilar Velasco'),
(24, 'cfuenzalida', 'cfuenzalida@extend.cl', 'Carolina', 'Fuenzalida', '$2y$10$wN5AuS0a0c/v1RxjqxsRFOo0to4IkKPH8QfY32ol/sVYvx6s//1au', 1, 0, '', '2018-09-24 09:23:17', 'Carolina Fuenzalida'),
(25, 'cfuentes', 'cfuentes@extend.cl', 'Claudia', 'Fuentes', '$2y$10$PyrE6Kks.3cbxmR5w699xeGL0q9Cko/yTGLaktQ/Wf0i/9jEnU0NS', 2, 0, '', '2018-09-24 09:24:01', 'Claudia Fuentes'),
(26, 'enapoli', 'enapoli@extend.cl', 'Enzo', 'Napoli', '$2y$10$TJHqqXjyuZ8FJDbp46BGrOtuBUG5xZu9BDu7h4YvFl/jOU0gxzVai', 2, 0, '', '2018-09-24 09:24:43', 'Enzo Napoli'),
(27, 'baguirre', 'baguirre@extend.cl', 'Bernardita', 'Aguirre', '$2y$10$xEarefJ7S1EEDtrQXj5EB.PwRS3nTFbS0eQf6nVzpODKILRNf8umi', 2, 0, '', '2018-09-24 09:26:11', 'Bernardita Aguirre'),
(28, 'rrivas', 'rrivas@valorestrategico.cl', 'Rodrigo', 'Rivas', '$2y$10$BOlNJVS2IJVhFLhuV9V6xOKfg8Za4EQ1z4.pTa3v8n4QQwDofTOGK', 2, 0, '', '2018-09-24 09:26:48', 'Rodrigo Rivas'),
(29, 'cacevedo', 'cacevedo@extend.cl', 'Cristóbal', 'Acevedo', '$2y$10$JCjOptWZVNk8zSua9r/LV.HOnDjEzVS41VPHUOxNrUZds7pCpb3uq', 2, 0, '', '2018-09-24 09:27:17', 'Cristóbal Acevedo'),
(30, 'cluttecke', 'cluttecke@extend.cl', 'Christel', 'Lüttecke', '$2y$10$gf37FtwUGBFvziNI9erLZuHszoH1rJ2W/jEgBnzDT1ALCRvplbbEa', 2, 0, '', '2018-09-24 09:28:16', 'Christel Lüttecke'),
(31, 'xixo', 'xixo@extend.cl', 'Xixo', 'Reveco', '$2y$10$c9X8td1nr8oxhfhVTzJqEeHnxcRqnlvlFmxHEOBEzBehZMqT4FGF6', 2, 0, '', '2018-09-24 09:28:55', 'Xixo Reveco'),
(32, 'fsandoval', 'fsandoval@extend.cl', 'María Francisca', 'Sandoval', '$2y$10$IUzXUsDTsjoQa8s7x4tmOe/fdWDvjYNZaO6ei3dUnVjjLJP2bvRya', 2, 0, '', '2018-09-24 09:29:59', 'María Francisca Sandoval'),
(34, 'ciribarren', 'ciribarren@extend.cl', 'César', 'Iribarren', '$2y$10$5v840LLT2oNqG8i44WdLPOdwqeWgzDbV3YyZRN7cLozj1JQ2zrYri', 2, 0, 'eanaya', '2018-09-24 09:30:29', 'César Iribarren'),
(35, 'ccomber', 'ccomber@extend.cl', 'Cecilia', 'Comber', '$2y$10$qdNY6eb9bTygsMzWD5RF5.KzsFT9efUizDAaUibfQLcxUMCcvg926', 2, 0, 'eanaya', '2018-09-24 09:31:12', 'Cecilia Comber'),
(36, 'ibarrientos', 'ibarrientos@extend.cl', 'Irina', 'Barrientos', '$2y$10$DPjJFVZ5GyQA9Ce2LAudzuh4QFqdKViHcnUKhets6apVKuUNLGapG', 2, 0, 'eanaya', '2018-09-24 09:31:46', 'Irina Barrientos'),
(37, 'tgonzalez', 'tgonzalez@extend.cl', 'Tamara', 'González', '$2y$10$nXYkCnMvYd1upSPDquD7W.Kift14O65ruHGywhXfJbefSPM3.682.', 1, 0, 'eanaya', '2018-09-24 09:32:41', 'Tamara González'),
(38, 'cacevedo', 'cacevedo@extend.cl', 'Cristóbal', 'Acevedo', '$2y$10$JCjOptWZVNk8zSua9r/LV.HOnDjEzVS41VPHUOxNrUZds7pCpb3uq', 2, 0, 'eanaya', '2018-10-11 14:39:10', 'Cristóbal Acevedo'),
(39, 'jaguzman', 'jaguzman@extend.cl', 'Juan Antonio', 'Guzmán', '$2y$10$wN5AuS0a0c/v1RxjqxsRFOo0to4IkKPH8QfY32ol/sVYvx6s//1au', 2, 0, '', '2018-10-11 14:43:53', 'Juan Antonio Guzmán');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tbl_comuna`
--
ALTER TABLE `tbl_comuna`
  ADD PRIMARY KEY (`id_comuna`);

--
-- Indices de la tabla `tbl_confirmacion`
--
ALTER TABLE `tbl_confirmacion`
  ADD PRIMARY KEY (`id_confirma`);

--
-- Indices de la tabla `tbl_tipocliente`
--
ALTER TABLE `tbl_tipocliente`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cargo`
--
ALTER TABLE `tbl_cargo`
  MODIFY `id_cargo` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `tbl_ciudad`
--
ALTER TABLE `tbl_ciudad`
  MODIFY `id_ciudad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT de la tabla `tbl_comuna`
--
ALTER TABLE `tbl_comuna`
  MODIFY `id_comuna` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `tbl_confirmacion`
--
ALTER TABLE `tbl_confirmacion`
  MODIFY `id_confirma` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tbl_tipocliente`
--
ALTER TABLE `tbl_tipocliente`
  MODIFY `id_tipo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id_usuario` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
