-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 31-03-2013 a las 20:35:31
-- Versión del servidor: 5.1.41
-- Versión de PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dreamhome`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE IF NOT EXISTS `anuncios` (
  `num_anuncio` int(6) NOT NULL,
  `fecha_publicacion` datetime NOT NULL,
  `fecha_termino` datetime NOT NULL,
  `num_periodico` int(6) NOT NULL,
  `num_inmueble` varchar(6) NOT NULL,
  PRIMARY KEY (`num_anuncio`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`num_anuncio`, `fecha_publicacion`, `fecha_termino`, `num_periodico`, `num_inmueble`) VALUES
(1, '2003-04-06 00:00:00', '2003-06-06 00:00:00', 1, 'PG4'),
(2, '2013-01-23 00:00:00', '2013-03-28 00:00:00', 1, 'PG4'),
(3, '2013-01-23 00:00:00', '2013-03-28 00:00:00', 2, 'PG5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
  `num_cliente` int(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `num_tel1` varchar(16) DEFAULT NULL,
  `num_tel2` varchar(16) DEFAULT NULL,
  `tipo_preferido` varchar(50) DEFAULT NULL,
  `fecha_registro` datetime NOT NULL,
  `num_empl` int(11) NOT NULL,
  `num_sucursal` varchar(6) NOT NULL,
  PRIMARY KEY (`num_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`num_cliente`, `nombre`, `ap_paterno`, `ap_materno`, `num_tel1`, `num_tel2`, `tipo_preferido`, `fecha_registro`, `num_empl`, `num_sucursal`) VALUES
(1, 'Mike Ritchie', 'sdf', 'sdf', '044-55-2145-0001', '', 'Descanso', '2013-03-28 05:27:00', 1, 'B003'),
(2, 'Diego', 'qsd', 'fwe', '045-55-5445-0501', '', 'Descanso', '2013-03-28 06:10:00', 1, 'B003'),
(3, 'Kai', 'rwe', 'hgh', '055-55-555-5555', '', 'Oficinas', '2013-03-28 06:15:00', 1, 'B003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE IF NOT EXISTS `contratos` (
  `num_contrato` int(6) NOT NULL,
  `alquiler_mensual` float NOT NULL,
  `modo_pago` varchar(30) NOT NULL,
  `deposito_realizado` char(2) NOT NULL,
  `duracion_contrato` varchar(50) NOT NULL,
  `inicio_contrato` datetime NOT NULL,
  `fin_contrato` datetime NOT NULL,
  `num_cliente` int(6) NOT NULL,
  `num_inmueble` varchar(5) NOT NULL,
  PRIMARY KEY (`num_contrato`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`num_contrato`, `alquiler_mensual`, `modo_pago`, `deposito_realizado`, `duracion_contrato`, `inicio_contrato`, `fin_contrato`, `num_cliente`, `num_inmueble`) VALUES
(1, 60000, 'Un solo pago', 'si', '3 meses', '2013-03-28 00:00:00', '2013-06-28 00:00:00', 1, 'PG4'),
(2, 60000, 'Un solo pago', 'si', '3 meses', '2013-03-28 00:00:00', '2013-06-28 00:00:00', 3, 'PG5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directores`
--

CREATE TABLE IF NOT EXISTS `directores` (
  `num_empl` int(11) NOT NULL,
  `fecha_nombramiento` datetime NOT NULL,
  `num_sucursal` varchar(6) NOT NULL,
  PRIMARY KEY (`num_empl`),
  UNIQUE KEY `num_sucursal` (`num_sucursal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `directores`
--

INSERT INTO `directores` (`num_empl`, `fecha_nombramiento`, `num_sucursal`) VALUES
(5, '2013-01-12 00:00:00', 'B003'),
(6, '2013-01-12 00:00:00', 'B004'),
(8, '2013-01-12 00:00:00', 'B005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `num_empl` int(6) NOT NULL,
  `rol` varchar(12) DEFAULT NULL,
  `cantidad_asistentes` tinyint(2) DEFAULT NULL,
  `cantidad_inmuebles` tinyint(3) NOT NULL,
  `num_empl_super` int(6) DEFAULT NULL,
  `num_sucursal` varchar(6) NOT NULL,
  PRIMARY KEY (`num_empl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`num_empl`, `rol`, `cantidad_asistentes`, `cantidad_inmuebles`, `num_empl_super`, `num_sucursal`) VALUES
(1, '', 0, 5, 0, 'B003'),
(2, 'Supervisor', 2, 0, 0, 'B003'),
(3, 'asistente', 0, 0, 2, 'B003'),
(4, 'asistente', 0, 0, 2, 'B003'),
(7, '', 0, 1, 0, 'B004');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmuebles`
--

CREATE TABLE IF NOT EXISTS `inmuebles` (
  `num_inmueble` varchar(6) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `cp` int(6) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `num_habitac` smallint(6) NOT NULL,
  `alquiler` float NOT NULL,
  `num_propietario` int(6) NOT NULL,
  `num_empl_asignado` int(6) NOT NULL,
  `num_sucursal` varchar(6) NOT NULL,
  PRIMARY KEY (`num_inmueble`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `inmuebles`
--

INSERT INTO `inmuebles` (`num_inmueble`, `calle`, `ciudad`, `cp`, `tipo`, `num_habitac`, `alquiler`, `num_propietario`, `num_empl_asignado`, `num_sucursal`) VALUES
('PG4', 'k123', 'Glasgow', 13500, 'Descanso', 7, 22500, 1, 1, 'B003'),
('PG5', 'k123', 'Moreles', 5045, 'Oficinas', 5, 2500, 2, 1, 'B003');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodicos`
--

CREATE TABLE IF NOT EXISTS `periodicos` (
  `num_periodico` int(6) NOT NULL,
  `nombre_peridico` varchar(30) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `interior` varchar(10) NOT NULL,
  `exterior` varchar(10) NOT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `delegacion` varchar(30) DEFAULT NULL,
  `cp` int(6) NOT NULL,
  `num_tel1` varchar(16) DEFAULT NULL,
  `num_tel2` varchar(16) DEFAULT NULL,
  `nombre_contacto` varchar(30) NOT NULL,
  `ap_paterno_contacto` varchar(30) NOT NULL,
  `ap_materno_contacto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_periodico`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `periodicos`
--

INSERT INTO `periodicos` (`num_periodico`, `nombre_peridico`, `calle`, `interior`, `exterior`, `colonia`, `delegacion`, `cp`, `num_tel1`, `num_tel2`, `nombre_contacto`, `ap_paterno_contacto`, `ap_materno_contacto`) VALUES
(1, 'Periodico Local Glasgow', 'calle', '12', '123', 'colonia', 'delegacion', 12345, '(56)-5001-2000', '', 'Parker', 'gloae', 'sime'),
(2, 'Periodico el Clarin', 'calle12', '1', '56', 'colonia22', 'delegacion21', 45654, '(56)-5001-5645', '(56)-5001-5646', 'Simon', 'kim', 'Kas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `num_empl` int(6) NOT NULL,
  `cat_laboral` varchar(30) NOT NULL,
  `salario` float NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `sexo` char(1) NOT NULL,
  `fecha_nacim` datetime NOT NULL,
  `calle` varchar(30) NOT NULL,
  `interior` varchar(10) NOT NULL,
  `exterior` varchar(10) NOT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `delegacion` varchar(30) DEFAULT NULL,
  `cp` int(6) NOT NULL,
  PRIMARY KEY (`num_empl`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `personal`
--

INSERT INTO `personal` (`num_empl`, `cat_laboral`, `salario`, `nombre`, `ap_paterno`, `ap_materno`, `sexo`, `fecha_nacim`, `calle`, `interior`, `exterior`, `colonia`, `delegacion`, `cp`) VALUES
(1, 'Vendedor', 6000, 'Ann Beech', 'dsdf', 'sdf', 'F', '1992-12-12 00:00:00', 'apple 123rd', 'int 14', 'ext 258', 'asda', 'de', 35153),
(2, 'Ingeniero en informatica', 25000, 'Sergio Ivan', 'Lopez', 'Monzon', 'M', '1992-08-16 00:00:00', 'Jenufa', 'lt 17', 'Mz 104', 'Miguel Hidalgo', 'Tlahuac', 13200),
(3, 'Tecnico en informatica', 5000, 'Pedro Juan', 'Hernandez', 'Rocha', 'M', '1982-09-18 00:00:00', 'Manzana', 'S/N', '548', 'Joban', 'Teran', 54658),
(4, 'Tecnico en informatica', 5000, 'Ana', 'Martinez', 'Lopez', 'F', '1992-05-20 00:00:00', 'Nueva', 'lt 87', 'Mz 65', 'Carretera', 'Cuenca', 54687),
(5, 'Director', 50000, 'Cho', 'Li', 'Chang', 'M', '1975-07-01 00:00:00', 'una', '52', '546', 'esquina', 'otra', 45689),
(6, 'Director', 50000, 'Juan', 'Ortiz', 'Camarino', 'M', '1973-02-05 00:00:00', 'calle 70', '787', '115', 'paseos', 'una mas', 15000),
(7, 'Vendedor', 6000, 'Gerardo', 'Limon', 'Lima', 'M', '1993-02-05 00:00:00', 'callo', '978', '47', 'kija', 'La ultima', 8978),
(8, 'Director', 50000, 'Paulina', 'dsf', 'wef', 'F', '1993-02-05 00:00:00', 'd', '213', '4127', 'dfv', 'wef', 987);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE IF NOT EXISTS `propietarios` (
  `num_propietario` int(6) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `interior` varchar(10) NOT NULL,
  `exterior` varchar(10) NOT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `delegacion` varchar(30) DEFAULT NULL,
  `cp` int(6) NOT NULL,
  `num_tel1` varchar(16) NOT NULL,
  `num_tel2` varchar(16) NOT NULL,
  PRIMARY KEY (`num_propietario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`num_propietario`, `tipo`, `ciudad`, `calle`, `interior`, `exterior`, `colonia`, `delegacion`, `cp`, `num_tel1`, `num_tel2`) VALUES
(1, 'privado', 'Glasgow', '1235 KL', 'Lt 17', 'Mz 104', 'colonia', 'delegacion', 15400, '(55)-2160-4038', ''),
(2, 'empresa', 'Toluca', 'Camino Rural', 'S/N', '101', 'colonia2', 'delegacion1', 4564, '(52)-4566-5645', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios_empresas`
--

CREATE TABLE IF NOT EXISTS `propietarios_empresas` (
  `num_propietario` int(6) NOT NULL,
  `nombre_empresa` varchar(30) NOT NULL,
  `tipo_empresa` varchar(30) NOT NULL,
  `nombre_contacto` varchar(30) NOT NULL,
  `ap_paterno_contacto` varchar(30) NOT NULL,
  `ap_materno_contacto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_propietario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `propietarios_empresas`
--

INSERT INTO `propietarios_empresas` (`num_propietario`, `nombre_empresa`, `tipo_empresa`, `nombre_contacto`, `ap_paterno_contacto`, `ap_materno_contacto`) VALUES
(2, 'Sueños S.A. de C.V.', 'Servicios', 'Antonio', 'Perez', 'Rios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios_privados`
--

CREATE TABLE IF NOT EXISTS `propietarios_privados` (
  `num_propietario` int(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `ap_paterno` varchar(30) NOT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`num_propietario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `propietarios_privados`
--

INSERT INTO `propietarios_privados` (`num_propietario`, `nombre`, `ap_paterno`, `ap_materno`) VALUES
(1, 'Sergio Ivan', 'López', 'Monzón');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
  `num_sucursal` varchar(6) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `cp` int(6) NOT NULL,
  `num_tel1` varchar(16) DEFAULT NULL,
  `num_tel2` varchar(16) DEFAULT NULL,
  `num_tel3` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`num_sucursal`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`num_sucursal`, `ciudad`, `calle`, `cp`, `num_tel1`, `num_tel2`, `num_tel3`) VALUES
('B003', 'Glasgow', '13th avenue', 21103, '044-55-2145-0001', '', ''),
('B004', 'Distrito Federal', 'calle 45', 45877, '(55)-5868-4505', '', ''),
('B005', 'Glasgow', '15th avenue', 2165, '044-55-2145-0002', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
