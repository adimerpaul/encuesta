-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-07-2019 a las 03:17:24
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `encuesta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `idcursos` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`idcursos`, `nombre`) VALUES
(1, 'Cuenta con cursos de posgrado'),
(2, 'Con que nivel de posgrado cuenta'),
(3, 'Desea alguna capacitación en el área por parte de la carrera ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupacion`
--

CREATE TABLE `ocupacion` (
  `idocupacion` int(11) NOT NULL,
  `pregunta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ocupacion`
--

INSERT INTO `ocupacion` (`idocupacion`, `pregunta`) VALUES
(1, '¿Actualmente trabaja?'),
(2, 'Institución donde trabaja'),
(3, 'Cargo actual en el que se desempeña'),
(4, 'Se desempeña actualmente en el cargo como:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pc`
--

CREATE TABLE `pc` (
  `idprofesional` int(11) NOT NULL,
  `idcursos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `po`
--

CREATE TABLE `po` (
  `idprofesional` int(11) NOT NULL,
  `idocupacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `idprofesional` int(11) NOT NULL,
  `rni` varchar(50) NOT NULL,
  `ci` varchar(50) NOT NULL,
  `expedido` varchar(50) NOT NULL,
  `pagado` varchar(50) NOT NULL,
  `nrec` varchar(50) NOT NULL,
  `fechapago` varchar(50) NOT NULL,
  `fecharegistro` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fechanac` varchar(50) NOT NULL,
  `departamentomnac` varchar(50) NOT NULL,
  `lugarnac` varchar(50) NOT NULL,
  `sexo` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `zona` varchar(50) NOT NULL,
  `teldomicilio` varchar(50) NOT NULL,
  `teloficina` varchar(50) NOT NULL,
  `npag` varchar(50) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `antiguedad` varchar(50) NOT NULL,
  `utoelfeo` varchar(50) NOT NULL,
  `institucion` varchar(50) NOT NULL,
  `nivel` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `libro` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `encuesta` varchar(2) NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`idprofesional`, `rni`, `ci`, `expedido`, `pagado`, `nrec`, `fechapago`, `fecharegistro`, `paterno`, `materno`, `nombre`, `fechanac`, `departamentomnac`, `lugarnac`, `sexo`, `dir`, `zona`, `teldomicilio`, `teloficina`, `npag`, `especialidad`, `antiguedad`, `utoelfeo`, `institucion`, `nivel`, `telefono`, `email`, `libro`, `fecha`, `encuesta`) VALUES
(1, '1010', '7336199', 'OR', 'sin registro', '0', '01/01/1989', '01/01/2019', 'CHAMBI', 'AJATA', 'ADIMER PAUL', '02/04/1989', 'ORURO', 'ORURO', 'M', 'Av. tartawoski Nº 1989 ', 'No se especifica', '5261245', '', '1', 'INGENIERO DE SISTEMA', '1', 'X', 'PATICULAR', 'INGENIERO', '69603027', 'adimer101@gmail.com', '1', '2019-07-17 00:27:27', 'NO');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcursos`);

--
-- Indices de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  ADD PRIMARY KEY (`idocupacion`);

--
-- Indices de la tabla `pc`
--
ALTER TABLE `pc`
  ADD KEY `idprofesional` (`idprofesional`),
  ADD KEY `idcursos` (`idcursos`);

--
-- Indices de la tabla `po`
--
ALTER TABLE `po`
  ADD KEY `idprofesional` (`idprofesional`),
  ADD KEY `idocupacion` (`idocupacion`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`idprofesional`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcursos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `ocupacion`
--
ALTER TABLE `ocupacion`
  MODIFY `idocupacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `profesional`
--
ALTER TABLE `profesional`
  MODIFY `idprofesional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pc`
--
ALTER TABLE `pc`
  ADD CONSTRAINT `pc_ibfk_1` FOREIGN KEY (`idprofesional`) REFERENCES `profesional` (`idprofesional`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pc_ibfk_2` FOREIGN KEY (`idcursos`) REFERENCES `cursos` (`idcursos`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `po`
--
ALTER TABLE `po`
  ADD CONSTRAINT `po_ibfk_1` FOREIGN KEY (`idprofesional`) REFERENCES `profesional` (`idprofesional`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `po_ibfk_2` FOREIGN KEY (`idocupacion`) REFERENCES `ocupacion` (`idocupacion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
