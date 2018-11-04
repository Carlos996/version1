-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-06-2018 a las 16:53:47
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `librarysystem`
--
CREATE DATABASE IF NOT EXISTS `librarysystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `librarysystem`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

DROP TABLE IF EXISTS `administrador`;
CREATE TABLE IF NOT EXISTS `administrador` (
  `CodigoAdmin` varchar(70) NOT NULL,
  `Estado` varchar(30) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Email` varchar(50) NOT NULL,
  PRIMARY KEY (`CodigoAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`CodigoAdmin`, `Estado`, `Nombre`, `NombreUsuario`, `Clave`, `Email`) VALUES
('I463463Y3333A2N2736', 'Activo', 'Administrador Invitado', 'User', 'WEhjMTlmcnhtb3NXdTdDZUNLajJsdz09', ''),
('I777YA1N5802', 'Activo', 'Super Administrador', 'SuperAdministrador', 'WEhjMTlmcnhtb3NXdTdDZUNLajJsdz09', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE IF NOT EXISTS `bitacora` (
  `Codigo` varchar(100) NOT NULL,
  `CodigoUsuario` varchar(70) NOT NULL,
  `Tipo` varchar(30) NOT NULL,
  `Fecha` varchar(30) NOT NULL,
  `Entrada` varchar(30) NOT NULL,
  `Salida` varchar(30) NOT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `PrimaryKey` (`CodigoUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`Codigo`, `CodigoUsuario`, `Tipo`, `Fecha`, `Entrada`, `Salida`) VALUES
('UK00001N3650-6', '00001', 'Docente', '05-06-2018', '10:22:46', '10:22:59'),
('UK00001N4484-2', '00001', 'Docente', '04-06-2018', '19:42:16', 'Sin registrar'),
('UKI463463Y3333A2N2736N0818-3', 'I463463Y3333A2N2736', 'Administrador', '04-06-2018', '19:42:46', '19:44:42'),
('UKI463463Y3333A2N2736N2444-4', 'I463463Y3333A2N2736', 'Administrador', '05-06-2018', '10:12:56', '10:13:21'),
('UKI463463Y3333A2N2736N6186-5', 'I463463Y3333A2N2736', 'Administrador', '05-06-2018', '10:14:14', '10:22:34'),
('UKI463463Y3333A2N2736N7476-7', 'I463463Y3333A2N2736', 'Administrador', '05-06-2018', '10:23:31', 'Sin registrar'),
('UKI463463Y3333A2N2736N7503-9', 'I463463Y3333A2N2736', 'Administrador', '05-06-2018', '10:48:31', 'Sin registrar'),
('UKI463463Y3333A2N2736N7912-8', 'I463463Y3333A2N2736', 'Administrador', '05-06-2018', '10:46:23', 'Sin registrar'),
('UKI463463Y3333A2N2736N9774-1', 'I463463Y3333A2N2736', 'Administrador', '04-06-2018', '16:42:42', 'Sin registrar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `CodigoCategoria` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`CodigoCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`CodigoCategoria`, `Nombre`) VALUES
('001', 'Libros de Mecanica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

DROP TABLE IF EXISTS `docente`;
CREATE TABLE IF NOT EXISTS `docente` (
  `DUI` varchar(20) NOT NULL,
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Especialidad` varchar(40) NOT NULL,
  `Jornada` varchar(50) NOT NULL,
  PRIMARY KEY (`DUI`),
  KEY `CodigoSeccion` (`CodigoSeccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`DUI`, `CodigoSeccion`, `Nombre`, `NombreUsuario`, `Clave`, `Apellido`, `Telefono`, `Especialidad`, `Jornada`) VALUES
('00001', 'I0001Y2017S1N1902', 'Juan', 'juanpico', 'Z2JsTUVCd2g4OUwzNW9oSU1PRUtDQT09', 'Pico', 0, 'Mecanica Cuantica', 'Mañana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

DROP TABLE IF EXISTS `encargado`;
CREATE TABLE IF NOT EXISTS `encargado` (
  `DUI` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  PRIMARY KEY (`DUI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `NIE` varchar(20) NOT NULL,
  `DUI` varchar(20) NOT NULL,
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Parentesco` varchar(50) NOT NULL,
  PRIMARY KEY (`NIE`),
  KEY `DUI` (`DUI`),
  KEY `CodigoSeccion` (`CodigoSeccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

DROP TABLE IF EXISTS `institucion`;
CREATE TABLE IF NOT EXISTS `institucion` (
  `CodigoInfraestructura` varchar(30) NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `NombreDirector` varchar(100) NOT NULL,
  `NombreBibliotecario` varchar(100) NOT NULL,
  `Distrito` varchar(30) NOT NULL,
  `Telefono` int(8) NOT NULL,
  `Year` int(4) NOT NULL,
  PRIMARY KEY (`CodigoInfraestructura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`CodigoInfraestructura`, `Nombre`, `NombreDirector`, `NombreBibliotecario`, `Distrito`, `Telefono`, `Year`) VALUES
('0001', 'Universidad Tecnica de Manabi', 'Vicente Veliz', 'Jose Ponce', '004', 0, 2017);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

DROP TABLE IF EXISTS `libro`;
CREATE TABLE IF NOT EXISTS `libro` (
  `CodigoLibro` varchar(100) NOT NULL,
  `CodigoCorrelativo` varchar(20) NOT NULL,
  `CodigoCategoria` varchar(20) NOT NULL,
  `CodigoProveedor` varchar(70) NOT NULL,
  `CodigoInfraestructura` varchar(20) NOT NULL,
  `Autor` varchar(70) NOT NULL,
  `Pais` varchar(50) NOT NULL,
  `Year` varchar(7) NOT NULL,
  `Estimado` decimal(30,2) NOT NULL,
  `Titulo` varchar(77) NOT NULL,
  `Edicion` varchar(50) NOT NULL,
  `Ubicacion` varchar(50) NOT NULL,
  `Cargo` varchar(7) NOT NULL,
  `Editorial` varchar(70) NOT NULL,
  `Existencias` int(7) NOT NULL,
  `Prestado` int(20) NOT NULL,
  `Estado` varchar(50) NOT NULL,
  PRIMARY KEY (`CodigoLibro`),
  KEY `CodigoCategoria` (`CodigoCategoria`),
  KEY `CodigoProveedor` (`CodigoProveedor`),
  KEY `CodigoInfraestructura` (`CodigoInfraestructura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`CodigoLibro`, `CodigoCorrelativo`, `CodigoCategoria`, `CodigoProveedor`, `CodigoInfraestructura`, `Autor`, `Pais`, `Year`, `Estimado`, `Titulo`, `Edicion`, `Ubicacion`, `Cargo`, `Editorial`, `Existencias`, `Prestado`, `Estado`) VALUES
('I0001Y2017C001B1N9430', '000', '001', 'I0001Y2017P1N3874', '0001', 'Juan Polo', 'España', '2010', '12.00', 'Mecanica Cuantica 1', '1', 'Bodegas', '1-5', 'Editoriales del Litoral', 12, 0, 'Bueno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

DROP TABLE IF EXISTS `personal`;
CREATE TABLE IF NOT EXISTS `personal` (
  `DUI` varchar(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `NombreUsuario` varchar(50) NOT NULL,
  `Clave` varchar(535) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Telefono` int(20) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`DUI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personal`
--

INSERT INTO `personal` (`DUI`, `Nombre`, `NombreUsuario`, `Clave`, `Apellido`, `Telefono`, `Cargo`) VALUES
('10001', 'Luis', 'bibliotecario', 'NmxSbG9wWldWYTRtMUhraVZBN1N4dz09', 'Lopez', 0, 'Bibliotecario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
CREATE TABLE IF NOT EXISTS `proveedor` (
  `CodigoProveedor` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Direccion` varchar(70) NOT NULL,
  `Telefono` int(15) NOT NULL,
  `ResponAtencion` varchar(50) NOT NULL,
  PRIMARY KEY (`CodigoProveedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`CodigoProveedor`, `Nombre`, `Email`, `Direccion`, `Telefono`, `ResponAtencion`) VALUES
('I0001Y2017P1N3874', 'Jose Perez', 'joseperez@prueba.ec', 'Portoviejo', 0, 'Jose Perez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

DROP TABLE IF EXISTS `seccion`;
CREATE TABLE IF NOT EXISTS `seccion` (
  `CodigoSeccion` varchar(70) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`CodigoSeccion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`CodigoSeccion`, `Nombre`) VALUES
('I0001Y2017S1N1902', '2° año Mecánica A. A');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_ibfk_1` FOREIGN KEY (`CodigoSeccion`) REFERENCES `seccion` (`CodigoSeccion`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`DUI`) REFERENCES `encargado` (`DUI`),
  ADD CONSTRAINT `estudiante_ibfk_2` FOREIGN KEY (`CodigoSeccion`) REFERENCES `seccion` (`CodigoSeccion`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`CodigoCategoria`) REFERENCES `categoria` (`CodigoCategoria`),
  ADD CONSTRAINT `libro_ibfk_4` FOREIGN KEY (`CodigoProveedor`) REFERENCES `proveedor` (`CodigoProveedor`),
  ADD CONSTRAINT `libro_ibfk_5` FOREIGN KEY (`CodigoInfraestructura`) REFERENCES `institucion` (`CodigoInfraestructura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
