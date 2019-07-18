-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2019 a las 03:54:47
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
  `idcursos` int(11) NOT NULL,
  `texto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pc`
--

INSERT INTO `pc` (`idprofesional`, `idcursos`, `texto`) VALUES
(13, 1, 'SI'),
(13, 2, 'DIPLOMADO'),
(13, 3, 'SI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `po`
--

CREATE TABLE `po` (
  `idprofesional` int(11) NOT NULL,
  `idocupacion` int(11) NOT NULL,
  `texto` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `po`
--

INSERT INTO `po` (`idprofesional`, `idocupacion`, `texto`) VALUES
(13, 1, 'SI'),
(13, 2, 'INJEM'),
(13, 3, 'DOCENTE'),
(13, 4, 'INGENIERO DE SISTEMAS');

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
  `departamentonac` varchar(50) NOT NULL,
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
  `encuesta` varchar(2) NOT NULL DEFAULT 'NO',
  `anio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`idprofesional`, `rni`, `ci`, `expedido`, `pagado`, `nrec`, `fechapago`, `fecharegistro`, `paterno`, `materno`, `nombre`, `fechanac`, `departamentonac`, `lugarnac`, `sexo`, `dir`, `zona`, `teldomicilio`, `teloficina`, `npag`, `especialidad`, `antiguedad`, `utoelfeo`, `institucion`, `nivel`, `telefono`, `email`, `libro`, `fecha`, `encuesta`, `anio`) VALUES
(13, '6083', '3041997', '', '', '', '', '1994-01-13', 'TAPIA', 'HINOJOSA', 'NELSON', '1963-12-11', '', '', '', '', '', '', '', '', 'ELECTRICA', '', '', '', '', '72490011', '', '', '2019-07-18 01:35:09', 'NO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `codreg` int(11) NOT NULL,
  `rni` int(11) DEFAULT NULL,
  `ci` char(15) DEFAULT NULL,
  `dptoci` char(20) DEFAULT NULL,
  `fechareg` date DEFAULT NULL,
  `apaterno` char(20) DEFAULT NULL,
  `amaterno` char(20) DEFAULT NULL,
  `nombres` char(30) DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `dptonac` char(20) DEFAULT NULL,
  `sexo` char(15) DEFAULT NULL,
  `direccion` char(40) DEFAULT NULL,
  `zona` char(30) DEFAULT NULL,
  `teldom` char(15) DEFAULT NULL,
  `telofi` char(15) DEFAULT NULL,
  `telmovil` char(15) DEFAULT NULL,
  `email` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`codreg`, `rni`, `ci`, `dptoci`, `fechareg`, `apaterno`, `amaterno`, `nombres`, `fechanac`, `dptonac`, `sexo`, `direccion`, `zona`, `teldom`, `telofi`, `telmovil`, `email`) VALUES
(97901, 6083, '3041997', 'OR', '1994-01-13', 'TAPIA', 'HINOJOSA', 'NELSON', '1963-12-11', 'Oruro', 'M', 'Barrio San José # 2', 'No Se Especifica', '5243322', '5265595', '72490011', 'nth_sisinf@yahoo.es'),
(97902, 6446, '3081530', 'OR', '1994-12-13', 'BERMUDEZ', 'VARGAS', 'JULIO CESAR', '1968-01-30', 'Oruro', 'M', 'Bacovick # 13  Santa Barbara Jaen', 'No Se Especifica', '5275484', '', '61833532', 'jucebeva@hotmail.com'),
(97903, 6447, '3099298', 'OR', '1994-12-13', 'SALGADO', 'ARI', 'EDILBERTO LUCIO', '1968-02-24', 'Oruro', 'M', 'AVENIDA AVAROA', 'No Se Especifica', '5265202', '5276366', '73836506', 'luxsalgado@yahoo.com'),
(97904, 6890, '3090182', 'OR', '1996-05-28', 'MEDINA', 'BUSTOS', 'JOSE SAUL', '1966-03-21', 'Oruro', 'M', 'Ayacucho # 319 Pagador Potosi', 'No Se Especifica', '5277511', '', '73800887', 'samebu@yahoo.com'),
(97905, 7667, '3107361', 'OR', '1998-02-02', 'BALDERRAMA', 'VASQUEZ', 'CARLOS', '1970-07-02', 'Oruro', 'M', 'Ayacucho # 436, entre Tejerina y Tarapac', 'No Se Especifica', '5254797', '5276366', '72457783', 'cbv170@hotmail.com'),
(97906, 7702, '2759464', 'OR', '1998-03-16', 'FERNANDEZ', 'GUTIERREZ', 'ROLY M.', '1960-06-18', 'Oruro', 'M', 'Demetrio Canelas Nº 757 P. Montes y La P', 'No Se Especifica', '5257890', '', '72499374', 'rm_fg@hotmail.com'),
(97907, 7705, '2761114', 'OR', '1998-03-16', 'CHINCHE', 'IMAÑA', 'FRANZ', '1961-04-10', 'Oruro', 'M', 'Plan  500', 'No Se Especifica', '5263086', '5276366', '73830508', 'fchinche@hotmail.com'),
(97908, 7871, '2762305', 'OR', '1998-08-27', 'TERAN', 'VELASQUEZ', 'ALCIDES', '1960-06-06', 'Oruro', 'M', 'AVENIDA DEHENE # 135 ENTRE VILLAZÓN  Y C', 'No Se Especifica', '5253596', '5261245', '73817021', 'halcydez@hotmail.com'),
(97909, 8122, '3395650', 'LP', '1999-04-03', 'UREÑA', 'MERIDA', 'GREGORIO FERNANDO', '1972-03-12', 'Oruro', 'M', 'Barrio Jardin H1 Prolongacion V. Galvarr', 'No Se Especifica', '5236011', '5276366', '67202455', 'ferurena@gmail.com'),
(97910, 8456, '2730423', 'OR', '1999-10-29', 'LEDEZMA', 'SALAZAR', 'WILFREDO', '1959-02-22', 'Oruro', 'M', 'Junín # 1124 Petot', 'No Se Especifica', '5252709', '', '', 'wledezma@coteor.net.'),
(97911, 8535, '3512929', 'OR', '1999-12-21', 'VERA', 'PELAEZ', 'SIRLEY PATRICIA', '1973-05-14', 'Oruro', 'F', 'LIRA Nº 625 VASQUEZ Y LA PAZ', 'No Se Especifica', '5257366', '5271629', '73839192', 'sirley_verap@hotmail'),
(97912, 8680, '3094687', 'OR', '2000-02-18', 'MIRANDA', 'ALCONCE', 'RICHARD OMAR', '1966-12-16', 'Oruro', 'M', 'Camacho 1635 y Bolivar', 'No Se Especifica', '5253804', '', '72306474', 'ro_miranda@latinmail'),
(97913, 9688, '3071548', '', '2000-12-12', 'NINA', 'YUCRA', 'SCIRLEY MARITZA', '1966-04-18', 'Oruro', 'F', 'C. Arce # 545 Soria Galvarro 6 de Octubr', 'No Se Especifica', '5276694', '', '71930470', ''),
(97914, 10514, '3115100', 'OR', '2001-08-20', 'NINA', 'YUCRA', 'MARIA DEL ROSARIO', '1971-03-13', 'Oruro', 'F', 'C. Arce # 545 Soria Galvarro 6 de Octubr', 'No Se Especifica', '5276694', '', '73839600', 'marosnina@hotmail.co'),
(97915, 10627, '3704069', 'PT', '2001-01-10', 'CHOQUE', 'UÑO', 'JUAN GREGORIO', '1970-11-17', 'Oruro', 'M', 'Jaen # 380 Pagador y Velasco', 'No Se Especifica', '5258885', '', '70434657', 'juancho_lar@hotmail.'),
(97916, 10884, '3508294', 'OR', '2001-12-17', 'CHUMACERO', 'TELLEZ', 'GISELA', '1975-09-27', 'Oruro', 'F', 'Barrio Jardin H1 Prolongacion V. Galvarr', 'No Se Especifica', '5236011', '', '79419633', 'giselach@hotmail.com'),
(97917, 11034, '3064080', 'OR', '2002-08-02', 'ZABALETA', 'RIOJA', 'IVAR FERNANDO', '1965-09-02', 'Oruro', 'M', 'TEJERINA # 2160  ARCE Y SANTA BARBARA', 'No Se Especifica', '5259824', '22331832', '70420009', 'izabaleta@hotmail.co'),
(97918, 11156, '652459', 'OR', '2002-03-15', 'ESCALANTE', 'LUNARIO', 'CESAR FERNANDO', '1956-02-20', 'Oruro', 'M', 'Velasco Galvarro y Leon # 5182', 'No Se Especifica', '5256984', '5265505', '72493990', 'cf_escala@hotmail.co'),
(97919, 11161, '3095280', 'OR', '2002-03-18', 'RIVEROS', 'ORE', 'MARTIN GONZALO', '1974-03-17', 'Oruro', 'M', 'LA PLATA # 5541  CARO Y MONTESINOS', 'No Se Especifica', '', '5264421', '72490772', 'martiinr@yahoo.com'),
(97920, 11291, '3503173', 'OR', '2002-01-05', 'QUISPIA', 'MERCADO', 'LUPE', '1972-07-11', 'Oruro', 'F', 'AVENIDA AVAROA', 'No Se Especifica', '5265202', '', '73780470', 'lupeqm@hotmail.com'),
(97921, 12054, '3109448', 'OR', '2002-06-12', 'GONZALES', 'ECHEVERRIA', 'RINA JANNETH', '1970-07-23', 'Oruro', 'F', 'Camacho N°1635 y Bolivar', 'No Se Especifica', '5253804', '5254674', '72464649', 'rinagon@hotmail.com'),
(97922, 12632, '1115447', 'OR', '2003-05-27', 'REYNOLDS', 'SALINAS', 'MIGUEL ANGEL', '1972-12-09', 'Oruro', 'M', 'FORTIN BOQUERON Nº 21 CAPITAN USTARES', 'No Se Especifica', '5231812', '5276366', '71843757', 'miguel.reynolds@gmai'),
(97923, 13070, '2767500', 'OR', '2003-01-10', 'VILLALOBOS', 'SANDY', 'EDWIN', '1970-09-14', 'Oruro', 'M', 'Santa Bárbara #599', 'No Se Especifica', '', '5276366', '71882696', ''),
(97924, 13138, '4079207', 'OR', '2003-10-21', 'PEREZ', 'AQUINO', 'WILFREDO', '1964-02-24', 'Oruro', 'M', 'BACOVICK #2177 ARCE Y SANTA BARBARA', 'No Se Especifica', '5274650', '', '72490766', 'jack_wil1@hotmail.co'),
(97925, 13271, '3060652', 'OR', '2003-08-12', 'CESPEDES', 'ROJAS', 'ANDY ALEX', '1969-08-03', 'Oruro', 'M', 'COLOMBIA # 225 Y PERU', 'No Se Especifica', '5263968', '5276366', '72495185', 'acero225@hotmail.com'),
(97926, 13287, '3509420', 'OR', '2003-02-12', 'COSSIO', 'ALANES', 'ONAYDA', '1975-10-04', 'Oruro', 'F', 'La Paz # 101 y Galleguillos', 'No Se Especifica', '5242654', '5255877', '79411189', 'caonayda@hotmail.com'),
(97927, 14077, '3093701', 'OR', '2004-05-31', 'CORTEZ', 'MENDEZ', 'SAUL', '1966-08-23', 'Oruro', 'M', 'La Plata # 5711 Y Cochabamba', 'No Se Especifica', '5252363', '5257844', '71856212', 'saulcortezm@yahoo.es'),
(97928, 14344, '2773620', 'OR', '2004-08-19', 'RAMIREZ', 'CHOQUE', 'JACQUELINE CRISTINA', '1974-10-25', 'Oruro', 'F', 'Soria Galvarro # 6380, Murguia y Aldana', 'No Se Especifica', '5255722', '5274887', '72474730', 'jackyta2510@yahoo.co'),
(97929, 14805, '4509756', 'CBBA', '2004-11-30', 'SALAZAR', 'MALDONADO', 'CESAR AUGUSTO', '1980-06-11', 'Oruro', 'M', 'Jaen # 159 Catacora y 6 de Agosto', 'No Se Especifica', '5258551', '', '72716162', ''),
(97930, 14810, '3511793', 'OR', '2004-03-12', 'PACHECO', 'CONDORI', 'FREDDY', '1976-06-03', 'Oruro', 'M', 'Aroma A # 518 Brasil y Tejerina', 'No Se Especifica', '5277955', '', '70415580', 'pacheco_freddy@hotma'),
(97931, 14912, '3528103', 'OR', '2004-12-24', 'VALLEJOS', 'PANIAGUA', 'JUAN CARLOS', '1977-05-16', 'Oruro', 'M', 'La Planta # 1960 esq. Aldana', 'No Se Especifica', '', '', '67200287', 'jcvallejos@gmail.com'),
(97932, 14957, '3098363', 'OR', '2005-01-18', 'MISERICORDIA', 'AYAVIRI', 'TEOFILO CESAR', '1966-03-11', 'Oruro', 'M', '6 DE OCTUBRE JAEN # 495', 'No Se Especifica', '5273048', '5274834', '', 'rasecma@yahoo.com'),
(97933, 14958, '3544306', 'OR', '2005-01-18', 'ALANEZ', 'DURAN', 'JOEL REYNALDO', '1978-08-14', 'Oruro', 'M', 'PAGADOR # 470 CSI ESQ.BENI', 'No Se Especifica', '5230835', '', '76433066', 'jaladur@hotmail.com'),
(97934, 14995, '3534376', 'OR', '2005-01-20', 'FLORES', 'MAGNE', 'EVELYN MARCIA', '1977-01-10', 'Oruro', 'F', 'La Plata # 5255 Tupiza', 'No Se Especifica', '5246607', '', '72454088', 'evelynfloresm@hotmai'),
(97935, 15122, '3111821', 'OR', '2005-04-02', 'QUINTANILLA', 'GUZMAN', 'YUBITZA ADELA', '1969-12-16', 'Oruro', 'F', 'Bakovik # 134 Jaen Santa Barbara', 'No Se Especifica', '5275484', '', '72471008', 'yaqg@hotmail.com'),
(97936, 15169, '3119845', 'OR', '2005-02-18', 'HUANCA', 'CALLE', 'RONALD', '1974-06-21', 'Oruro', 'M', '', 'No Se Especifica', '', '', '', 'inghucaro@yahoo.com'),
(97937, 15274, '3078636', 'OR', '2005-07-03', 'TAPIA', 'VELASCO', 'IBER DENIZ', '1967-04-25', 'Oruro', 'M', 'Barrio San José Nº 54', 'No Se Especifica', '5247321', '5272504', '75400495', 'itapia@hotmail.com'),
(97938, 15460, '3512754', 'OR', '2005-11-04', 'COPA', 'CRUZ', 'JORGE LARRY', '1975-03-10', 'Oruro', 'M', 'ALDANA # 565 TACNA Y TARAPACA', 'No Se Especifica', '5259381', '', '71180030', 'jorgelarrycopa@gmail'),
(97939, 15492, '5062286', 'OR', '2005-04-15', 'VILLANUEVA', 'FULGUERA', 'FRANKLIN HUMBERTO', '1970-01-06', 'Oruro', 'M', 'Brazil # 20, esq. Bustamante', 'No Se Especifica', '5231166', '5276366', '73804000', 'villafh@yahoo.es'),
(97940, 15580, '3076970', 'OR', '2005-11-05', 'GUARACHI', 'CANEDO', 'JUAN JOSE', '1976-11-23', 'Oruro', 'M', 'AV. 6 DE AGOSTO # 707', 'No Se Especifica', '5275381', '', '67346838', 'juanjigc@gmail.com'),
(97941, 15585, '3533212', 'OR', '2005-05-13', 'BALDERRAMA', 'VASQUEZ', 'CARLA GRACE', '1977-02-05', 'Oruro', 'F', 'Ayacucho # 436, entre Tejerina y Tarapac', 'No Se Especifica', '5254797', '', '', 'cargra@hotmail.com'),
(97942, 15757, '3509939', 'OR', '2005-06-30', 'PARIHUANCOLLO', 'CHINCHE', 'NITZA FRANCISCA', '1972-09-17', 'Oruro', 'F', 'Iquique # 350 y 12 de Octubre', 'No Se Especifica', '5276868', '', '73843857', 'nitzap17@yahoo.es'),
(97943, 16409, '3114112', 'OR', '2005-10-31', 'FULGUERA', 'CAYOJA', 'NORAH', '1971-04-02', 'Oruro', 'F', '6 DE OCTUBRE # 6789 Y SANTA BARBARA', 'No Se Especifica', '5286760', '', '72474349', ''),
(97944, 16545, '690422', 'OR', '2005-09-12', 'INGALA', 'JIMENEZ', 'ALBERTO', '1958-06-06', 'Oruro', 'M', 'PROLONG. SOTOMAYOR Nº 35 Y CHANCADORA II', 'No Se Especifica', '5237478', '', '76500450', 'a_ingala_jimenez@hot'),
(97945, 16887, '7559201', 'OR', '2006-03-16', 'ESCOBAR', 'VARGAS', 'EDGAR HENRY', '1979-05-03', 'Oruro', 'M', 'La Paz #  285   Esq. Oblitas', 'No Se Especifica', '5242596', '', '70420060', 'eescobar287@gmail.co'),
(97946, 16889, '3514633', 'OR', '2006-03-16', 'BAPTISTA', 'ROCABADO', 'PATRICIA INGRID', '1974-11-28', 'Oruro', 'F', 'La Paz Corneta Mamani  43', 'No Se Especifica', '5235813', '5276665', '70423953', 'pibaptista@hotmail.c'),
(97947, 16911, '3518402', 'OR', '2006-03-17', 'GUZMAN', 'ZUÑIGA', 'MELINA DANNA', '1975-08-23', 'Oruro', 'F', 'Herrera Esq. Luna Pomier', 'No Se Especifica', '5270766', '', '72453350', 'meldanna312@hotmail.'),
(97948, 17078, '3508792', 'OR', '2006-04-28', 'CONDE', 'VARGAS', 'OSCAR FELIPE', '1973-07-09', 'Oruro', 'M', 'Av. España #  2110 esq. Topater', 'No Se Especifica', '5260010', '5273780', '70426546', 'oscova2005@hotmail.c'),
(97949, 17414, '7266917', 'OR', '2006-07-20', 'CAYO', 'MAMANI', 'OSCAR', '1973-06-23', 'Oruro', 'M', 'UYUNI', 'No Se Especifica', '', '', '67203920', 'caio_oscar@hotmail.c'),
(97950, 17696, '3534374', 'OR', '2006-12-10', 'VELASCO', 'ANCALLE', 'BETTY LIDIA', '1977-03-27', 'Oruro', 'F', 'Av. Avaroa Nº 7 y Tocopilla  (Zona Sud)', 'No Se Especifica', '5261649', '5277544', '72465989', 'bvelasco@credinforms'),
(97951, 17811, '4021762', 'OR', '2006-11-13', 'ZAPATA', 'LAYME', 'GLADYS ROSSEMARY', '1978-04-06', 'Oruro', 'F', 'Catacora # 724 y America', 'No Se Especifica', '5258352', '', '71186780', 'glad_@hotmail.com'),
(97952, 17923, '4065469', 'OR', '2007-08-01', 'ANDRADE', 'ZEBALLOS', 'MARIA ANGELICA', '1982-06-05', 'Oruro', 'F', 'CALLE KM 7 # 143 Y S. ENCINAS Y HEROES D', 'No Se Especifica', '5230887', '5236215', '67226648', 'zangel_ma@hotmail.co'),
(97953, 18016, '2783982', 'OR', '2007-01-26', 'UGARTE', 'CARVAJAL', 'JUAN CARLOS', '1972-12-07', 'Oruro', 'M', 'León # 408 Potosí', 'No Se Especifica', '5242209', '', '73832776', 'jugarte2010@hotmail.'),
(97954, 18214, '4020464', 'OR', '2007-03-16', 'FLORES', 'VISCARRA', 'BILMA MARIBEL', '1978-12-02', 'Potosi', 'F', 'PASAJE ACHA # 171, ENTRE COLON Y VILLAZO', 'No Se Especifica', '5265627', '', '72479591', 'bilmaflores2005@hotm'),
(97955, 18267, '3537636', 'OR', '2007-03-27', 'BARRIOS', 'CORDOVA', 'JUAN', '1979-07-19', 'Potosi', 'M', 'BACOVICK Nº 1 Y CALLE (TRAS SELA)', 'No Se Especifica', '5254784', '', '70424976', 'jbarrios.fni@hotmail'),
(97956, 18333, '3519523', 'OR', '2007-11-04', 'BALDERRAMA', 'GUILLEN', 'WILSON ADHEMAR', '1976-01-22', 'Oruro', 'M', '6 de Octubre y Montesinos  547', 'No Se Especifica', '5237029', '5257143', '71187561', 'wilsonbalderrama1@ho'),
(97957, 18411, '3693508', 'PT', '2007-04-05', 'LIMA', 'ARAMAYO', 'ADELAIDA ZULEMA', '1971-11-05', 'Oruro', 'F', 'Oblitas y Soria Galvarro No 4972', 'No Se Especifica', '5247636', '5273992', '72352828', 'zulemalima@hotmail.c'),
(97958, 18439, '3510151', 'OR', '2007-05-14', 'LLANOS', 'TORRICO', 'BORIS ADOLFO', '1976-09-28', 'Oruro', 'M', 'TENIENTE VILLA Y JUAN LECHIN NO 388', 'No Se Especifica', '5240309', '', '72497251', 'borisito_la@hotmail.'),
(97959, 18728, '3099776', 'OR', '2007-01-08', 'BERNAL', 'MARTINEZ', 'RAMIRO MARCIAL', '1967-05-26', 'Oruro', 'M', 'LA PAZ', 'No Se Especifica', '2421118', '', '70651185', 'ramiro_bernal12000@y'),
(97960, 19538, '4051661', 'OR', '2008-07-05', 'MENACHO', 'MOLLO', 'IVONNE KARINA', '1981-05-09', 'Oruro', 'F', 'JAEN # 250, ENTRE PAGADOR Y POTOSI', 'No Se Especifica', '5273330', '', '72466692', 'ikmenacho@gmail.com'),
(97961, 19645, '3060100', 'OR', '2008-05-30', 'CAYOJA', 'MENDEZ', 'GONZALO', '1974-03-27', 'Oruro', 'M', 'JUAN LECHIN PASAJE  Q  # 397', 'Norte', '524102160400250', '5273781', '', 'gonzobst@gmail.com'),
(97962, 19761, '4021744', 'OR', '2008-06-27', 'MENA', 'RODRIGUEZ', 'JHONNY MARCELO', '1977-06-20', 'Oruro', 'M', 'PASAJE ACHA # 171, ENTRE COLON Y VILLAZO', 'No Se Especifica', '5265627', '', '72456006', 'nit_10@hotmail.com'),
(97963, 19841, '3061766', 'OR', '2008-07-21', 'MAGNE', 'PARICOLLO', 'HERNAN JOSE', '1966-03-17', 'Oruro', 'M', 'Pdte Montes 5045 Aroma y Rodriguez', 'No Se Especifica', '5243259', '5240556', '73840284', 'mag_soft98@hotmail.c'),
(97964, 19874, '4014867', 'PT', '2008-09-28', 'LOPEZ', 'TAPIA', 'JUAN ANGEL', '1978-05-15', 'Oruro', 'M', 'Santa Barbara # 274 Brasil', 'No Se Especifica', '', '', '71858495', 'juanlopeztp@hotmail.'),
(97965, 19950, '2733290', 'OR', '2008-08-25', 'CHAMBI', 'AJHUACHO', 'SAMUEL ELIAS', '1968-02-16', 'Oruro', 'M', 'TARIJA  # 2425  Y RENGEL', 'No Se Especifica', '', '', '71885656', 'sechambia@gmail.com'),
(97966, 20026, '3064657', 'OR', '2008-09-15', 'ZABALA', 'USNAYO', 'MONICA FRANCY', '1965-12-03', 'Oruro', 'F', 'CALLE 4 Nº 12 Y CAMPO JORDAN', 'NOROESTE', '5231036', '5278366', '76275695', 'arazam-monica@yahoo.'),
(97967, 20381, '5012099', 'TJ', '2008-10-12', 'MIRANDA', 'CORTEZ', 'EFRAIN', '1978-12-29', 'Oruro', 'M', 'AYACUCHO Nº 1136', 'No Se Especifica', '5254797', '', '72497675', ''),
(97968, 20383, '4156572', 'TJ', '2008-10-12', 'RIOS', 'ROCABABDO', 'JORGE', '1979-05-02', 'Oruro', 'M', 'Ayacucho  # 508 entre Soria Galvarro cas', 'No Se Especifica', '', '5251381', '72454202', 'jorgeriosr@yahoo.es'),
(97969, 20568, '3520647', 'OR', '2009-09-02', 'LIMA', 'ARAMAYO', 'JOSE LUIS', '1974-04-19', 'Oruro', 'M', 'La Plata y Cañada Stronger # 139', 'No Se Especifica', '5243556', '', '70431091', 'jlyc7@hotmail.com'),
(97970, 21002, '4060642', 'OR', '2009-05-26', 'FERNANDEZ', 'CRUZ', 'MARCELA VERONICA', '1986-02-22', 'Oruro', 'F', 'Arce # 125 entre 6 de Agosto y Bacobick', 'No Se Especifica', '5271170', '5272804', '72488518', 'marcela.fernandez@vi'),
(97971, 21314, '3094137', 'OR', '2009-08-31', 'SARAVIA', 'ALANES', 'SANDRA MARISOL', '1970-07-07', 'La Paz', 'F', 'BACOVICK Y CARO  Nº 1064', 'Este', '5276798', '5280864', '70797870', 'sas_marisol@hotmail.'),
(97972, 21333, '3550635', 'OR', '2009-02-09', 'CONDORI', 'LLAVE', 'BETTY', '1977-07-15', 'Oruro', 'F', 'LA PAZ', 'No Se Especifica', '', '', '73700060', 'exploefra@hotmail.co'),
(97973, 21556, '3505483', 'OR', '2009-05-11', 'AREQUIPA', 'ESTRADA', 'MARCIAL', '1973-06-16', 'Oruro', 'M', 'Urbanizacion Aurora Plan Justo Juez  I-1', 'No Se Especifica', '', '', '', 'marcioema@yahoo.es'),
(97974, 21824, '3553602', 'OR', '2010-01-26', 'ROCHA', 'TOCO', 'ROSSE MARY', '1979-12-20', 'Oruro', 'F', 'Vasquez  #  122 Sargento Flores y Soto M', 'No Se Especifica', '', '', '72473656', 'rose_angelat@hotmail'),
(97975, 21991, '3110233', 'OR', '2010-03-22', 'CORNEJO', 'RAMOS', 'JAVIER MILTON', '1969-10-03', 'Oruro', 'M', 'SANTA BARBARA  #  851  IQUIQUE PISAGUA', 'No Se Especifica', '5279915', '5820321', '72302786', 'jamcoram@hotmail.com'),
(97976, 22493, '5001107', 'TJ', '2010-07-22', 'MARTINEZ', 'MENDEZ', 'VICTOR HUGO', '1978-03-29', 'Oruro', 'M', 'Potosi casi esquina Leon ( puerta verde)', 'No Se Especifica', '5271440', '', '72498629', 'vhmatinezmendez@uton'),
(97977, 22507, '4024254', 'OR', '2010-07-15', 'CRUZ', 'MAMANI', 'LUCRECIA', '1978-12-18', 'Oruro', 'F', 'MARCELO QUIROGA S. CRUZ ENTRE CALLE C #', 'No Se Especifica', '', '', '74258148', 'ingsislucy@hotmail.c'),
(97978, 22532, '4038395', 'OR', '2010-07-21', 'GUZMAN', 'CORONEL', 'ROLY GONZALO', '1980-04-28', 'Oruro', 'M', 'AMERICA Nº 302 ENTRE PAGADOR Y POTOSI', 'No Se Especifica', '', '', '71848310', 'chanogc2@hotmail.com'),
(97979, 22728, '4040717', 'OR', '2010-08-09', 'MONTALVO', 'BARRIENTOS', 'MIGUEL ANGEL', '1980-07-12', 'Oruro', 'M', 'Av. 6 de Agoto Backovic Pasaje 1 Nº F 12', 'No Se Especifica', '5248845', '', '72335860', 'angelguardian_mon@ho'),
(97980, 22812, '3117029', 'OR', '2010-09-27', 'FLORES', 'CACERES', 'LENNY JHOVANNA', '1983-01-20', 'Oruro', 'F', 'SORIA GALVARRO Nº 310 ENTRE KENEDY VICUÑ', 'No Se Especifica', '5259176', '', '72484684', 'felenny@hotmail.com'),
(97981, 23003, '4037672', 'OR', '2010-11-16', 'FERNANDEZ', 'RAMOS', 'MABEL CRISTINA', '1982-01-15', 'Oruro', 'F', 'Los Andes Nº 9 y Primero de Mayo', 'No Se Especifica', '5240837', '5259058', '71883711', 'mabynet15@hotmail.co'),
(97982, 23007, '4077087', 'OR', '2010-11-23', 'MENDOZA', 'RUFINO', 'ALISON WENDY', '1983-12-08', 'Oruro', 'F', 'PAGADOR Nº 7361 ENTRE 12 DE OCTUBRE Y AM', 'No Se Especifica', '5258495', '', '70425558', 'aly_mack8@yahoo.es'),
(97983, 23477, '4037503', 'OR', '2011-03-16', 'MAMANI', 'MENDOZA', 'BEATRIZ MACARIA', '1980-02-28', 'Oruro', 'F', 'Calle Teniente Leon Nº 289 y Juan Lechin', 'No Se Especifica', '5245584', '', '73801182', 'tuamigabeita@hotmail'),
(97984, 23718, '3558375', 'OR', '2011-04-05', 'BELLOTA', 'CESPEDES', 'ALVARO ROLANDO', '1982-02-09', 'Oruro', 'M', 'PDTE. MONTES Nº 6442 Y BALLIVIAN', 'No Se Especifica', '5257425', '5276480', '72450468', 'alvarexx@hotmail.com'),
(97985, 23906, '5724192', 'OR', '2011-05-06', 'OJEDA', 'VARGAS', 'IVANA HELEN', '1985-09-28', 'Oruro', 'F', 'Calle Potosi Nº 4878 Villarroel y Oblita', 'No Se Especifica', '5243969', '', '71107029', 'ihojeda@hotmail.com'),
(97986, 23975, '4078407', 'OR', '2011-06-28', 'MURIEL', 'GARCIA', 'CLAUDIA GRACIELA', '1984-08-27', 'Oruro', 'F', 'San Felipe Nº 686 - 1 entre Tacna y Aric', 'No Se Especifica', '5244662', '', '72490365', 'clauditamurielgarcia'),
(97987, 24031, '7276553', 'OR', '2011-05-07', 'RAMOS', 'ALCONZ', 'WILMA', '1975-09-28', 'Oruro', 'F', 'Calle Jaen Nº entre Velasco y Catacora', 'No Se Especifica', '', '77156090', '71109795', 'wilra75@hotmail.com'),
(97988, 24111, '4038533', 'OR', '2011-07-19', 'MARTINEZ', 'MONTENEGRO', 'LESLIE ELSA', '1980-06-21', 'Oruro', 'F', 'Velasco G. Nº 4848 y Villarroel', 'No Se Especifica', '5234041', '', '70420356', 'lemm_sam@hotmail.com'),
(97989, 24524, '3554908', 'OR', '2011-10-18', 'HEREDIA', 'LOREDO', 'CRISTIAN MAURICIO', '1978-02-05', 'Oruro', 'M', 'Rodriguez Nº 22 Esq. Brasil', 'No Se Especifica', '5276453', '', '70425931', 'yotrovador@hotmail.c'),
(97990, 24622, '5766307', 'OR', '2011-11-14', 'PEREZ', 'ANCASI', 'JOSE LUIS', '1988-10-04', 'Oruro', 'M', 'CALLE D Nº CALLE 2 Y 3', 'KANTUTA', '5244919', '', '73842102', 'jperezancasi@gmail.c'),
(97991, 24870, '5763736', 'OR', '2012-02-06', 'GARCIA', 'MENDOZA', 'EVELYN', '1987-07-22', 'Oruro', 'F', 'Rodriguez Nª145 entre 6 de Agosto y Back', 'No Se Especifica', '5256424', '', '79404955', 'evelyn_gm12@hotmail.'),
(97992, 25268, '4038636', 'OR', '2012-07-05', 'SALINAS', 'MAMANI', 'MIRIAN GLADYS', '1982-09-21', 'Oruro', 'F', 'TENIENTE LEÓN Nº 500 Y CAP. USTARIZ', 'No Se Especifica', '5242568', '', '72348519', 'miriangsm@hotmail.co'),
(97993, 25306, '3529917', 'OR', '2012-05-18', 'OCAÑA', 'UZARES', 'MARIA DEL CARMEN', '1975-10-18', 'Oruro', 'F', 'Aldana Nº 334 entre Pagdor y Potosi', 'No Se Especifica', '72485032', '', '72967057', 'mariadcou@hotmail.co'),
(97994, 25431, '6206610', 'SC', '2012-06-22', 'BLANCO', 'ADRIAN', 'DANIEL ADOLFO', '1984-07-06', 'Oruro', 'M', 'Washington Nº 1883, Aldana y Murguia', 'No Se Especifica', '5254048', '', '72486418', 'daniel_b_adrian@hotm'),
(97995, 25432, '5068911', 'OR', '2012-06-22', 'ALANES', 'MAYA', 'KARLA MARIA', '1971-05-11', 'Oruro', 'F', 'Urb. Villa Dorina B#2 ( Zona Nor- Este)', 'No Se Especifica', '5232020', '', '72453235', 'karla_alanes@hotmail'),
(97996, 25486, '5764987', 'OR', '2012-06-07', 'LEDEZMA', 'MIRANDA', 'MARCELL DAVID', '1988-06-08', 'Oruro', 'M', 'Petot Nº 6870, Jaen y Renjel', 'No Se Especifica', '5274173', '', '75400493', 'ledezma_david@hotmai'),
(97997, 25499, '4247170', 'OR', '2012-11-07', 'ARANCIBIA', 'ANCALLE', 'JUAN CARLOS', '1976-05-11', 'Oruro', 'M', 'Prolongacion Beni Nº 10, Calle 1 y 2', 'No Se Especifica', '5241664', '5822506', '71444938', 'carlos_arancibia@hot'),
(97998, 25625, '7026410', 'OR', '2012-09-08', 'CONDORI', 'LAYME', 'CARMEN', '1988-11-15', 'Oruro', 'F', 'Barrio La Colorada y Calle 7', 'No Se Especifica', '', '', '79064226', 'carmen_15_dulce@hotm'),
(97999, 25883, '5748702', 'OR', '2012-11-10', 'FERNANDEZ', 'CALLE', 'JUAN JULIAN', '1987-01-08', 'Oruro', 'M', 'QUINTANA \"A\" Nº 345, POTOSI Y TOMAS FRIA', 'No Se Especifica', '5272013', '', '71859463', 'julian.s.8@hotmail.c'),
(98000, 26141, '4044221', 'OR', '2012-10-12', 'MUÑOZ', 'ESPINOZA', 'MONICA NATALY', '1981-05-07', 'Oruro', 'F', 'CHARCAS Nº 225 Y PRESIDENTE MONTES', 'Norte', '5242408', '5282750', '72493246', 'monic_nataly@yahoo.e'),
(98001, 26261, '4068278', 'OR', '2013-01-21', 'MONZON', 'FUENTES', 'REMY KENIER', '1983-08-27', 'Oruro', 'M', 'AYACUCHO Nº 550 ESQ. TACNA', 'Central', '5273195', '5251194', '79427784', 'remy_kenier@yahoo.es'),
(98002, 26331, '4036080', 'OR', '2013-01-31', 'MARTINEZ', 'CROVO', 'DENNIS', '1984-08-20', 'Oruro', 'M', 'AV. ESPAÑA Nº 648, LA PLATA Y SORIA GALV', 'Sud', '5275779', '', '72471751', 'dennis.m.c@hotmail.c'),
(98003, 26771, '4076020', 'OR', '2013-04-29', 'MEDINA', 'BERDEJA', 'MIGUEL ANGEL', '1984-03-30', 'Oruro', 'M', 'VELASCO Nº 6785, SANTA BARBARA Y ARCE', 'Central', '5275477', '5252969', '70425105', 'miguel_medinab@hotma'),
(98004, 27055, '5531394', 'PT', '2013-06-28', 'PLAZA', 'IBARRA', 'MARCO ANTONIO', '1983-11-06', 'Potosi', 'M', 'TEJERINA Nº 1757 , SUCRE Y MURGUIA', 'Central', '', '5285641', '79429160', 'bicho_185@hotmail.co'),
(98005, 27102, '5720375', 'OR', '2013-11-07', 'FERNANDEZ', 'GARCIA', 'ANDREINA CARMEN', '1989-08-07', 'Oruro', 'F', 'DEMETRIO CANELAS Nº 757, PRESIDENTE MONT', 'Central', '5257890', '5280864', '68350265', 'andrefer_8@hotmail.c'),
(98006, 27103, '3548161', 'OR', '2013-10-07', 'GIL', 'ABASTO', 'ALEX RONALD', '1977-06-01', 'Oruro', 'M', 'ARICA Nº 1716, SUCRE Y MURGUIA', 'Este', '5287406', '52454005283043', '72493588', 'aronaldga@gmail.com'),
(98007, 27160, '595685', 'OR', '2013-07-24', 'TARQUE', 'ORTEGA', 'FERNANDO EDWIN', '1967-10-13', 'Oruro', 'M', 'J.J. PEREZ Nº 526 A ESQUINA ALIANZA', 'MERCADO YUNG', '5262249', '', '71188317', 'fertaror@hotmail.com'),
(98008, 27167, '4741534', 'LP', '2013-07-24', 'ULLOA', 'FUENTES', 'REYNALDO ALEX', '1982-07-02', 'Chuquisaca', 'M', 'PAGADOR Nº 5364 ESQUINA 1º DE NOVIEMBRE', 'Central', '', '', '77793905', 'rey_alexulloa@yahoo.'),
(98009, 27443, '6175442', 'LP', '2013-08-19', 'LUNA', 'CHINO', 'HENRY', '1983-03-07', 'La Paz', 'M', 'VILLARROEL Nº 3, CALES M Y S', 'TERMINAL', '', '68224768', '72472746', 'hlcluna@gmail.com'),
(98010, 27491, '5731863', 'OR', '2013-09-28', 'MARTINEZ', 'ALEJANDRO', 'CARMEN ROSA', '1985-01-16', 'Oruro', 'F', 'TENIENTE  LEON Nº 150 WASHINGTON Y CAMAC', 'Norte', '5270561', '5270561', '70435424', 'cmartinez_0@hotmail.'),
(98011, 28019, '5740817', 'OR', '2014-01-17', 'ZENTENO', 'GUTIERREZ', 'VICTORIA', '1985-12-23', 'Oruro', 'F', 'JUNIN Nº 850 IQUIQUE Y PISAGUA', 'Este', '', '', '75718677', 'vizegu_zgv@hotmail.c'),
(98012, 28045, '4027748', 'OR', '2014-01-29', 'LOZANO', 'CRUZ', 'LIMBERT', '1982-07-01', 'Oruro', 'M', 'PAGADOR Nº 4241  ENTRE BENI Y C. JORDAN', 'NOROESTE', '5244599', '5252197', '7.2313320794039', 'lilozcruz@hotmail.co'),
(98013, 28354, '5961063', 'LP', '2014-03-17', 'RODRIGUEZ', 'MENAR', 'ABRAHAM IVAN', '1983-06-06', 'Cochabamba', 'M', 'TARAPACA N° 2282, SANTA BARBARA Y JAEN', 'Cementerio', '5274452', '5242986', '73837938', 'ivanovrock@hotmail.c'),
(98014, 28491, '5771418', 'OR', '2014-04-04', 'HELGUERO', 'VELASQUEZ', 'HERNAN LUIS', '1989-11-03', 'Oruro', 'M', 'MADRID #10 ENTRE VILLAZON', 'Sud', '', '', '67262244', 'hlhv11@gmail.com'),
(98015, 28503, '4079598', 'OR', '2014-11-04', 'RAMIREZ', 'ZARATE', 'SHERLY ALEIDA', '1984-03-16', 'Cochabamba', 'F', 'VICTOR STA. CRUZ #8, A. ZAMUDIO Y G. RIO', 'Norte', '52464877', '', '72479906', 'sherly_aleida@yahoo.'),
(98016, 28620, '5731791', 'OR', '2014-06-05', 'GUZMAN', 'CORONEL', 'SILVIA', '1985-04-23', 'Potosi', 'F', 'AMERICA Nº 302 ENTRE PAGADOR Y POTOSI', 'Sud', '', '', '73071016', 'silbayo@hotmail.com'),
(98017, 28734, '5745328', 'OR', '2014-05-14', 'CRUZ', 'BURGOA', 'ERICKA TATIANA', '1986-11-18', 'Oruro', 'M', 'BAKOVICK Nº 27 ENTRE HERERA Y MONTECINOS', 'Central', '5256978', '', '71857222', 'ery_tati@hotmail.com'),
(98018, 28735, '4537392', 'CBBA', '2014-05-13', 'ORELLANA', 'CAMPOS', 'EDUARDO', '1980-03-21', 'Cochabamba', 'M', 'POTOSI Nº 6462  ENTRE ALDANA Y BALLIVIAN', 'Central', '5282585', '5050022', '70424498', 'eduardoorellanacampo'),
(98019, 28736, '4030672', 'OR', '2014-09-05', 'QUILLA', 'GONZALES', 'FLAVIO', '1979-12-10', 'Oruro', 'M', 'URBANIZACION AURORA UV5 Ñ11', 'Norte', '5235493', '', '72479379', 'fla_qui_gon79@hotmai'),
(98020, 28805, '4038534', 'OR', '2014-06-16', 'ASLLANI', 'VILLEGAS', 'PATRICIA', '1980-04-02', 'Oruro', 'F', 'URB. SAN JOSE Nº 15', 'NOROESTE', '5243865', '', '79426147', 'pattyasllani@gmail.c'),
(98021, 28825, '3649511', 'SC', '2014-06-18', 'MALPARTIDA', 'AZURDUY', 'ERIK RAMIRO', '1976-08-12', 'Chuquisaca', 'M', 'JUNIN Nº 405 ESQ. TEJERINA', 'Central', '', '', '72414367', 'emalpartida76@gmail.'),
(98022, 28896, '5732626', 'OR', '2014-06-26', 'CHAMBI', 'RUFINO', 'EDSON JOSUE', '1985-04-27', 'Oruro', 'M', 'AV. DEHENE Nº 142 ENTRE CALLE D', 'Sud', '5262531', '', '60405904', 'e_josue27@hotmail.co'),
(98023, 28898, '5741755', 'OR', '2014-06-26', 'ADUVIRI', 'MAMANI', 'OMAR', '1986-09-15', 'Cochabamba', 'M', 'URB. HUAJARA CALLE 8 \"A\" Nº 22 ENTRE  CA', 'NOROESTE', '5237364', '', '72472490', 'amo017@hotmail.com'),
(98024, 28910, '3527348', 'OR', '2014-06-30', 'ALVARADO', 'SOLIZ', 'SHARI JHONNY', '1976-01-14', 'Oruro', 'M', 'SGTO. TEJERINA Nº 355, HERRERA YB 1º DE', 'Central', '5254829', '', '72493647', 'shari_alvarado_soliz'),
(98025, 28912, '5737894', 'OR', '2014-06-30', 'APAZA', 'ATAHUICHI', 'LUISA ZULMA', '1986-04-22', 'Oruro', 'F', 'URBANIZACION PEDRO FERRARI MANZANO B 31', 'Central', '', '', '72490645', 'zulma_apaza@hotmail.'),
(98026, 28942, '5723249', 'OR', '2014-06-28', 'FELIPEZ', 'VELIZ', 'MARIA PATRICIA', '1984-06-22', 'Oruro', 'F', 'WASHINGTON Nº 12 Y TOMAS FRIAS', 'Sud', '5257227', '', '70435227', 'patty_mapafeve@hotma'),
(98027, 28995, '3528999', 'OR', '2014-08-07', 'COLQUE', 'CHURQUI', 'MARIA ARACELY', '1976-05-14', 'Oruro', 'F', 'PDTE. MONTES Nº 1375 JUNIN Y AYACUCHO', 'Central', '5251982', '', '72335765', 'aracely_macc@hotmail'),
(98028, 29000, '4053356', 'OR', '2014-01-07', 'GUTIERREZ', 'ANGULO', 'MARIELA', '1981-01-15', 'Oruro', 'F', 'CALLE URUS  Nº G5 ENTRE ENCINAS Y ACHAVA', 'Norte', '5249133', '', '79407367', 'mariel.gutian@gmail.'),
(98029, 29058, '3538627', 'OR', '2014-09-07', 'QUENAYA', 'GIL', 'BEATRIZ DELMA', '1978-07-29', 'Oruro', 'F', 'TOMAS FRIAS Nº 2797 ENTRE AV. DEHENE', 'Sud', '5261197', '', '74137847', 'delmaqg_29@hotmail.c'),
(98030, 29064, '3501779', 'OR', '2014-07-16', 'CANQUI', 'VILLARROEL', 'ANGELICA LILIAN', '1973-02-04', 'Oruro', 'F', 'TEJERINA Nº 53 ENTRE AROMA Y VILLARROEL', 'TERMINAL', '5279527', '', '71452323', 'angelilian@hotmail.c'),
(98031, 29113, '4054681', 'OR', '2014-07-28', 'VASQUEZ', 'WILLCARANI', 'NELLY  ISABEL', '1980-11-11', 'Oruro', 'F', 'PRESVITERO MEDINA Nº 2521', 'SOPOCACHI', '', '2118200', '72581524', 'isabel_vw40@hotmail.'),
(98032, 29472, '3536256', 'OR', '2014-08-22', 'TORREZ', 'PRADO', 'PATRICIA', '1977-03-13', 'Oruro', 'F', 'BARRIO JARDIN D-4  ESQ.PROL. VELASCO GAL', 'BARRIO LITORAL', '5233752', '5271442112', '70425075', 'pt_prado@hotmail.com'),
(98033, 29827, '3505615', 'OR', '2014-12-09', 'CHOQUE', 'VILLALTA', 'ADALBERTO', '1976-03-23', 'Oruro', 'M', 'AV.JUAN LECHIN Nº 262 Y FORTIN', 'NOROESTE', '5244263', '', '73833737', 'adalbertochoque@hotm'),
(98034, 29867, '4039343', 'OR', '2014-09-25', 'CALIZAYA', 'CHOQUE', 'LUZ MERY', '1980-03-30', 'Oruro', 'F', 'RENGEL ESQUINA POTOSI NRO 345', 'Sud', '', '', '72463949', 'mery_calizaya@hotmai'),
(98035, 29991, '3550323', 'OR', '2014-10-17', 'HURTADO', 'PARRAGA', 'VERONICA GABRIELA', '1978-03-18', 'Oruro', 'F', 'ALDANA NRO 350, PAGADOR Y POTOSI', 'Central', '5254904', '', '7.2485520724855', 'verogab_hp@hotmail.c'),
(98036, 30012, '4038180', 'OR', '2014-10-30', 'AYALA', 'HUANCA', 'MARCO MARCELO', '1980-01-14', 'Oruro', 'M', 'AVENIDA AMERICA NRO 132 LA PLATA', 'Alto Oruro', '', '5235042', '72474270', 'marck1411@gmail.com'),
(98037, 30015, '5799691', 'TJ', '2014-10-28', 'AVALOS', 'LOPEZ', 'MARIA ANGELICA', '1986-02-10', 'Tarija', 'F', 'ARCE ESQUINA ARICA NRO 797', 'Sud Este', '', '25281712', '72302078', 'alma_m5@hotmail.com'),
(98038, 30017, '5760400', 'OR', '2014-10-31', 'CONDORI', 'RODRIGUEZ', 'ARIEL RICHARD', '1987-05-26', 'Oruro', 'M', 'AVENIDA QUINTANA NRO 14 FRIAS Y LIZARRAG', 'Sud Este', '', '', '76131158', 'arielrcr@gmail.com'),
(98039, 30022, '3539661', 'OR', '2014-05-11', 'CHUGAR', 'GALLEGOS', 'JOSE ANTONIO', '1977-03-09', 'Potosi', 'M', 'RENGEL NRO 626, BULLAIN Y MADRID', 'Sud', '5261239', '5290005', '72487360', 'jchugar@hotmail.com'),
(98040, 30026, '3514429', 'OR', '2014-07-11', 'MARQUEZ', 'VASQUEZ', 'PAOLA ELENA', '1974-01-10', 'Oruro', 'F', 'URB. LA AURORA UV-4 T9 DEMETRIO CANELAS', 'Norte', '5247220', '', '70421842', 'paola.marquez@oep.or'),
(98041, 30133, '5729624', 'OR', '2014-11-19', 'VENTURA', 'TOVAR', 'JAIR SAMUEL', '1985-02-27', 'Cochabamba', 'M', 'AV. HERROES DEL CHACO Nº128', 'Norte', '', '', '', 'samuel_fni@hotmail.c'),
(98042, 30196, '5748092', 'OR', '2014-11-27', 'VILLARREAL', 'SANJINEZ', 'MELINA GRISEL', '1986-05-09', 'Oruro', 'F', 'AROMA A Nº 116 TEJERINA Y TARAPACA', 'Este', '5276318', '', '73832120', 'melivs597@gmail.com'),
(98043, 30209, '4048484', 'OR', '2014-04-12', 'GUTIERREZ', 'RODRIGUEZ', 'SIMON RYLTHON', '1980-10-28', 'Oruro', 'M', '12 DE OCTUBRE Nº 200 Y AVENIDA CIRCUNVAL', 'CHIRIPUJYO', '', '', '73031148', 'rylthon@hotmail.com'),
(98044, 30272, '4069879', 'OR', '2014-12-17', 'CESPEDES', 'FLORES', 'ROXANA MARCELA', '1983-01-16', 'Oruro', 'F', 'VILLA COPACABANA 5 B (HUANUNI )', 'HUANUNI', '', '', '67262661', 'roxi_marce@hotmail.c'),
(98045, 30279, '3559128', 'OR', '2014-12-12', 'DE LA CRUZ', 'CANEDO', 'MARIA ISABEL', '1979-10-23', 'Oruro', 'F', '6 DE AGOSTO Nº711 LEON Y 1º DE NOVIEMBRE', 'TERMINAL', '5276870', '5250506', '72484062', 'isab_delacruz@hotmai'),
(98046, 30321, '3505146', 'OR', '2015-12-01', 'ALVAREZ', 'ZAMBRANA', 'PAOLA CLEYDER', '1985-01-05', 'Chuquisaca', 'F', 'BARRIO SAN JOSE', 'NOROESTE', '5241682', '', '70422115', 'pao_cley_222@hotmail'),
(98047, 30339, '3528355', 'OR', '2015-01-20', 'VARGAS', 'RAMOS', 'BIKY MARIZOL', '1975-12-13', 'Oruro', 'F', 'JAEN # 132, LA PLATA - ORURO', 'Sud Oeste', '5256402', '', '70411665', 'kybim@hotmail.com'),
(98048, 30473, '3552808', 'OR', '2015-02-19', 'ERQUICIA', 'MONZON', 'LUIS GONZALO', '2000-06-02', 'Chuquisaca', 'M', 'VILLA COPACABANA', 'HUANUNI', '', '520033', '73809258', 'luiermo@gmail.com'),
(98049, 31093, '4182172', 'OR', '2015-04-28', 'TRONCOSO', 'TAPUNA', 'JAIME', '1979-01-14', 'Oruro', 'M', 'VELASCO GALVARRO  N° 2958 ENTRE COLON  Y', 'Sud', '5281455', '', '71188189', 'jaime_tt@hotmail.com'),
(98050, 31096, '3559169', 'OR', '2015-05-18', 'TRONCOSO', 'MOLLER', 'HELEN MARY', '1980-08-27', 'Oruro', 'M', 'AV. VILLARROEL Nº 2 Y ANTOFAGASTA', 'OESTE', '5270846', '5211555', '69570056', 'marhytronc@hotmail.c'),
(98051, 31194, '5069597', 'OR', '2015-08-06', 'BLANCO', 'TERRAZAS', 'GUIDO EDMUNDO', '1982-10-23', 'Oruro', 'F', 'CLAUDIO PEÑARANDA NRO. 6 ENTRE PROFIRIO', 'Norte', '5236629', '', '', 'eddu_b@hotmail.com'),
(98052, 31216, '4020762', 'OR', '2015-12-06', 'VALLEJOS', 'SALGADO', 'NOEMI IVANOE', '1978-12-25', 'Oruro', 'F', '21 DE ENERO ENTRE TEJERINA Y BRAZIL', 'TERMINAL', '', '72479855', '', 'noe_ivanoe@hotmail.c'),
(98053, 31389, '4074428', 'OR', '2015-07-15', 'VALDIVIA', 'SOLIZ', 'EIBAR', '1981-03-20', 'La Paz', 'M', 'AV. DEL EJERCITO NRO. 452', 'Este', '5284282', '5286467', '70428081', 'eibarv@hotmail.com'),
(98054, 31391, '2794503', 'OR', '2015-07-15', 'DIAZ', 'MONTENEGRO', 'ANTONIETA', '1967-09-04', 'Oruro', 'F', '6 DE AGOSTO NRO. 345 ENTRE 12 DE OCTUBRE', 'Sud Este', '5277525', '', '73835000', 'montenegrodiantony@g'),
(98055, 31840, '3546193', 'OR', '2015-08-27', 'CORNEJO', 'RAMOS', 'GILDA ALEJANDRA', '1977-02-26', 'Oruro', 'F', 'SANTA BARBARA , IQUIQUE NRO. 851', 'Cementerio', '5272074', '', '72302786', 'giacora@hotmail.it'),
(98056, 31898, '3541285', 'OR', '2015-04-09', 'HUANACO', 'CHAMBI', 'JAVIER VICENTE', '1978-07-29', 'Oruro', 'M', 'PRESIDENTE MONTES NRO 7376 AMERICA Y 12', 'Sud', '5280243', '', '71846683', 'huanacochambi2012@ho'),
(98057, 32248, '4063910', 'OR', '2015-09-11', 'VASQUEZ', 'AYLLON', 'MARIA CRISTINA', '1984-12-17', 'Potosi', 'F', 'ALDANA NRO. 242 ENTRE PAGADOR Y VELASCO', 'Este', '5289831', '5285924', '72491113', 'mcvasquezayllon@gmai'),
(98058, 32264, '4074995', 'OR', '2015-12-11', 'ZAPATA', 'RODRIGUEZ', 'RENE AURELIO', '1983-12-22', 'Oruro', 'M', 'LA PLATA NRO. 5918 ENTRE JUNIN Y ADOLFO', 'Central', '5251434', '', '72473012', 'ren_f04@hotmail.com'),
(98059, 32395, '3533960', 'OR', '2015-11-25', 'LARA', 'VALDIVIA', 'ALVARO RODRIGO', '1979-10-31', 'Oruro', 'M', 'CALLE JAEN NRO. 494 ENTRE TARAPACA Y TAC', 'Este', '5274918', '', '71884774', 'vlaraar@gmail.com'),
(98060, 32504, '5724885', 'OR', '2015-03-12', 'MAMANI', 'CHOQUE', 'MARLENE', '1983-09-10', 'Oruro', 'F', 'AV. JOSERMO MURILLO NRO. 350', 'Norte', '', '5252022', '72359094', 'mary_mamani1@hotmail'),
(98061, 32866, '5740181', 'OR', '2016-01-03', 'CHALLAPA', 'LLUSCO', 'GUSTAVO ALVARO', '1985-08-21', 'Oruro', 'M', 'ECUADOR  N°24 AV. AVAROA Y VENEZUALA', 'Sud', '5261674', '75423652', '72486742', 'gustavoa_36@yahoo.es'),
(98062, 32904, '3115836', 'OR', '2016-02-03', 'GUTIERREZ', 'LIMACHI', 'MARLENE MARTHA', '1968-09-27', 'Cochabamba', 'F', 'POTOSI N° 5161 ENTRE LEON Y RODRIGUEZ', 'Central', '55210', '45400', '72340086', 'mamaguli@yahoo.es'),
(98063, 32946, '3530167', 'OR', '2016-07-03', 'CALAHUARA', 'YUGAR', 'LUDBY JAVIER', '1978-05-25', 'Oruro', 'M', 'POTOSI N2637 TOMAS FRIAS , LIZARRAGA', 'Sud', '5284235', '2681225', '71889488', 'ludby.javier@gmail.c'),
(98064, 32951, '3559517', 'CH', '2016-07-03', 'ZAMBRANA', 'CHAVARRIA', 'SUSAN INGRID', '1978-05-16', 'Oruro', 'F', 'TUPIZA N° 920 PRESIDENTE MONTES', 'Central', '5242449', '5277419', '72479529', 'susy_ingrid@hotmail.'),
(98065, 33095, '5765507', 'OR', '2016-04-29', 'RODRIGUEZ', 'CHAVARRIA', 'JAVIER EDUARDO', '1986-10-29', '', 'M', '', '', '', '', '', 'Jaedu_rch@hotmail.co'),
(98066, 33172, '4049926', 'OR', '2016-04-11', 'CHOQUE', 'MIRANDA', 'REYNA', '1983-01-01', 'Oruro', 'F', 'Marcelo Quiroga No. 200', '', '', '72486275', '67211692', 'reynachoque5@gmail.c'),
(98067, 33362, '4079405', 'OR', '2016-04-27', 'CRUZ', 'NICOLAS', 'WILDE', '1986-06-15', 'Oruro', 'M', 'CAMACHO Nº 140 Y CALLE \"B\"', 'No Se Especifica', '5251329', '5117709', '71105174', 'wildec_10@hotmail.co'),
(98068, 34065, '5763565', 'OR', '2016-07-26', 'RIOS', 'VARGAS', 'MARCELA LIZETH', '1988-07-09', 'Oruro', 'F', 'Calle Rene Zabaleta,Prolongación Lira y', 'Noreste', '5235255', '', '60410262', 'LIZETHH17_18@YOHOO.E'),
(98069, 34077, '4018995', 'PT', '2016-08-01', 'GARCIA', 'MEDINACELI', 'ALEJANDRO', '2016-07-01', 'Potosi', 'M', 'Tejerina y León Pasaje D nº 113', 'Este', '5276756', '5117710', '79426267', 'alegarmed85@gmail.co'),
(98070, 34172, '3076538', 'OR', '2016-08-12', 'SANDI', 'GOMEZ', 'ROGER IVES', '1970-02-22', 'PR', 'M', '6 DE OCTUBRE No. 1870 Aldana y Murguia', '', '5272927', '44663214', '60501197', 'sandiroger@yahoo.com'),
(98071, 34406, '4048479', 'or', '2016-09-06', 'CHALLAPA', 'LICIDIO', 'EDWIN LUIS', '1980-06-21', 'Oruro', 'M', 'Av. Envis Esq. Copacabana', 'No Se Especifica', '', '5250667', '73846954', 'edluchli@hotmail.com'),
(98072, 34454, '4051982', 'OR', '2016-09-12', 'COLQUE', 'VILLCA', 'RUDDY RONALD', '1980-05-07', 'Oruro', 'M', 'Psagua esq. Caro Nº 1090', 'Este', '5270260', '', '67201812', 'ruddy_ronald@hotmail'),
(98073, 34601, '7262318', 'OR', '2016-09-29', 'OJALVO', 'CANEDO', 'DANIEL ALEJANDRO', '1989-11-14', 'Oruro', 'M', 'Pagador Nº 4540 y Sotomayor', 'No Se Especifica', '5234822', '', '72464162', 'daniel-sj@hotmail.co'),
(98074, 34602, '5746236', 'OR', '2016-09-29', 'VILLEGAS', 'YUCRA', 'EVELYN', '1986-02-18', 'Oruro', 'F', 'Calle D Nº 19 entre 2 y 3 (Barrio Kantut', 'Norte', '5244919', '', '76156001', 'evelyn.villegas18@gm'),
(98075, 34715, '3508224', 'OR', '2016-10-20', 'OLMOS', 'ROJAS', 'MARIO', '1976-08-02', 'Oruro', 'M', 'PRESIDENTE MONTES Y SAN FELIPE', 'Central', '5284810', '', '73846568', 'mariolmosr@hotmail.c'),
(98076, 34771, '3042574', 'OR', '2016-10-31', 'ROCABADO', 'GUEVARA', 'GUSTAVO PASTOR', '1973-01-14', 'Oruro', 'M', 'General acha Nº 93 Entre America y Colon', 'Sud', '5233730', '5278197', '', 'gprocabado@hotmail.c'),
(98077, 34942, '3512387', 'OR', '2016-11-24', 'CHOQUE', 'SOTO', 'VICENTE JOSE', '1972-03-19', 'Oruro', 'M', 'Prolongacion  Av. España Nº 3 entre call', 'Sud', '', '', '72451675', 'vicentechoque@gmail.'),
(98078, 34978, '4037249', 'OR', '2016-12-02', 'VALLEJOS', 'PANIAGUA', 'LUCIO', NULL, 'Oruro', 'M', 'La Plata Nº 1960 Esq. Canelas', 'No Se Especifica', '', '', '', 'luciovallejos@hotmai'),
(98079, 35016, '3100131', 'OR', '2016-12-06', 'MONTAÑO', 'CALDERON', 'WINSOR ARNALDO', '1978-12-13', '', 'M', '', '', '', '', '', 'windsor_13@hotmail.c'),
(98080, 35018, '7262090', 'OR', '2016-12-06', 'GALVEZ', 'RODRIGUEZ', 'MARCO ANTONIO', '1989-04-15', '', 'M', '', '', '', '', '', 'galro.ma15@gmail.com'),
(98081, 35151, '4073157', 'OR', '2017-01-12', 'ESCOBAR', 'COLQUE', 'ROLLY', '1983-03-04', 'Oruro', 'M', 'Ciudadela Universitaria Verde ll Leon y', 'Sud', '', '', '', 'roly.esco@yahoo.es'),
(98082, 35323, '4458443', 'CBBA', '2017-02-03', 'NAVIA', 'OBLEAS', 'JUAN CARLOS', '1979-10-30', 'Cochabamba', 'M', 'Calle Q nº 679 y alonzo Ibañez', 'No Se Especifica', '5235643', '5277495', '70435114', 'noble_as_jc@hotmail.'),
(98083, 35416, '6400445', 'CBBA', '2017-02-13', 'ARONI', 'BERRIOS', 'GROVER', '1981-11-11', 'Potosi', 'M', 'QUINTANA B ENTRE SAN FELIPE - ARCE', 'Sudeste', '', '', '72323708', 'gab_fni@hotmail.com'),
(98084, 35471, '5523896', 'OR', '2017-02-24', 'FUENTES', 'LEYTON', 'LOURDES GUADALUPE', '1982-12-15', 'Potosi', 'M', 'ADOLFO MIER E IQUIQUE Nº 835', 'Este', '5272980', '5281745', '72476480', 'guada.fuentes@hotmai'),
(98085, 35598, '4057355', 'OR', '2017-03-29', 'LAFUENTE', 'AYALA', 'AMPARO DEL CARMEN', '1984-11-10', 'Oruro', 'F', 'POTOSI ENTRE CAMPO JORDAN Y SANTA CRUZ', '', '5239393', '', '60436764', 'lafuentedeaguaviva@h'),
(98086, 35700, '4051157', 'OR', '2017-04-18', 'AMPUERO', 'HIDALGO', 'WILMA XIMENA', '1982-04-16', 'Oruro', 'F', 'Madrid Nº 2 Colon y Villazon', '', '5261290', '', '77140674', 'xime_w@hotmail.com'),
(98087, 35717, '3527771', 'OR', '2017-04-18', 'MENDOZA', 'VASQUEZ', 'ROSIE SORAYA', '1979-08-29', 'Oruro', 'F', 'Velasco Galvarro y Ayacucho Nº 5781', 'Central', '5274057', '72461356', '72461384', 'sori_mendvas@hotmail'),
(98088, 35980, '4055098', 'OR', '2017-05-25', 'CRUZ', 'MAGNE', 'ELMER RODRIGO', '1982-09-19', 'Oruro', 'M', 'Oblitas 6 de Octubre y potosi', 'Este', '5211462', '', '68338223', 'rodrigo12mc@gmail.co'),
(98089, 36033, '4074445', 'OR', '2017-06-08', 'JUANIQUINA', 'TITO', 'JEANETTE', '1982-12-30', 'Oruro', 'F', 'Tomas Frias Nº 611 Potosi y tarija', '', '5280762', '', '67222874', 'aloibak@hotmail.com'),
(98090, 36049, '4067465', 'OR', '2017-06-08', 'COLQUE', 'MOLINA', 'CLAUDIA VERONICA', '1983-07-01', 'Oruro', 'F', 'La Plata Nº 7156 Av. España y Tpmas Fria', 'Sud', '5272360', '', '77153044', 'claudita2bbs@outlook'),
(98091, 36241, '5722703', 'OR', '2017-07-07', 'VILLCA', 'AGUILAR', 'LORENZO FILEMON', '1983-08-10', 'Cochabamba', 'M', 'MACHACAMARCA', '', '', '', '71887538', 'lore.2315@gmail.com'),
(98092, 36901, '4051291', 'OR', '2017-09-19', 'ZAMBRANA', 'LIRA', 'MIJAIL GABRIEL', '1983-09-11', 'Oruro', 'M', 'AROMA N 481 POTOSI Y 6 DE OCTUBRE', 'CENTRAL', '5285131', '5236988', '77151230', 'mijailzambrana2387@g'),
(98093, 36902, '4078382', 'OR', '2017-09-14', 'CRUZ', 'MAMANI', 'MARCIA MARLENE', '1983-07-24', 'ORURO', 'F', 'villa fatima calle 9 1 de mayo n 14', '', '', '', '79402592', 'harciamar77@gmail.co'),
(98094, 36907, '5122194-1B', 'PO', '2017-09-19', 'LLAVE', 'COLQUE', 'GLORIA XIMENA', '1981-06-19', 'Potosi', 'F', 'ENRIQUE PEÑARANDA N 194 SEGUNDO ENCINAS', 'No Se Especifica', '', '', '72492647', 'ximenagloria@hotmail'),
(98095, 36964, '3112217', 'OR', '2017-09-19', 'PATZI', 'ARELLANO', 'CLAUDIA', '1983-01-25', 'ORURO', 'F', 'URBANIZACION CORDEOR CALLE 15 Y 16', '5288122', '', '', '70427831', 'claudia_cipa21@hotma'),
(98096, 37111, '3558294', 'OR', '2017-10-26', 'OROSCO', 'CACERES', 'ADEMAR', '1978-07-25', 'Cochabamba', 'M', 'CARO QUINTANA S/N', 'ESTE', '', '73816972', '70435475', 'ademar_orosco@hotmai'),
(98097, 37205, '5113383', 'PO', '2017-11-06', 'PLAZA', 'IBARRA', 'YUBERT RUFINO', '1979-08-26', 'Potosi', 'M', 'SANTA BARBARA N 775 ARICA E IQUIQUE', 'ESTE', '', '', '76153307', 'yubertplaza@gmail.co'),
(98098, 37349, '5737775', 'OR', '2017-11-22', 'ROSALES', 'POMARAYME', 'RONALD', '1966-01-06', 'Oruro', 'M', 'C/LINARES #1788', '', '5250385', '', '79410390', 'rp_ronald@hotmail.co'),
(98099, 37479, '7271062', 'OR', '2017-12-06', 'MONTAÑO', 'MAMANI', 'VIANKA LAURA', '1991-08-04', 'Oruro', 'F', 'C/TOMAS FRIAS #112', 'SUD', '5260131', '', '73849401', 'viankita0816@gmail.c'),
(98100, 37847, '7337982', 'OR', '2018-01-26', 'VENTURA', 'VELASQUEZ', 'MILENKA TATIANA', '1990-02-05', 'Oruro', 'F', 'C/6 DE OCTUBRE #4019', 'ORURO MODERNO', '25236284', '', '71102848', 'venturamilenka@gmail'),
(98101, 37885, '5041716', 'TJ', '2018-02-05', 'SANDOVAL', 'RIVERO', 'ORLANDO', '1981-06-21', 'Potosi', 'M', 'C/YAVI#305', 'No Se Especifica', '', '', '70233759', 'osr_csl@hotmail.com'),
(98102, 37962, '5067197', 'OR', '2018-02-15', 'UYUNI', 'PEREDO', 'OSWALDO RAUL', '1984-10-01', 'Oruro', 'M', 'AV.HERNANDO SILES #5593', 'OBRAJES', '', '', '77741697', 'osraul@hotmail.com'),
(98103, 38499, '7264567', 'OR', '2018-04-03', 'ACUÑA', 'VINCENTY', 'LESLIE VANIA', '1988-02-10', 'Oruro', 'F', 'VICUÑA S/N ENTRE PETOT Y URQUIDI', 'SUD', '25266984', '', '72486807', 'lesacvi@gmail.com'),
(98104, 38583, '3504132', 'OR', '2018-04-17', 'RODRIGUEZ', 'GOMEZ', 'MARCELO', '1978-12-05', 'Cochabamba', 'M', 'Pagador No. 4421 Santa Cruz', 'Norte', '5236640', '', '72479523', 'marcelorodriguezgome'),
(98105, 38632, '5064225', 'OR', '2018-04-18', 'HUANCA', 'GUTIERREZ', 'MARILY SUSSAN', '1983-03-09', 'Oruro', 'F', 'PASAJE PRESIDENTE MONTES NO 1880', 'OESTE', '25287634', '', '79409483', 'marily_susan@hotmail'),
(98106, 38898, '4029497', 'OR', '2018-05-25', 'ZEGARRA', 'SABA', 'IBRAHIM GERARDO', '1985-06-07', 'ORUO', 'M', 'San Felipe N° 535', '', '5282300', '', '72489000', 'ibrahim7saba@gmail.c'),
(98107, 39009, '7270198', 'OR', '2018-06-12', 'ACUÑA', 'VINCENTY', 'DARWIN', '1990-06-22', 'Oruro', 'M', 'Pasaje Salamanca N° 101 y 12 de Octubre', 'SUD', '5266984', '', '69581375', 'darwin182008@gmail.c'),
(98108, 39104, '5772794', 'OR', '2018-06-26', 'BLANCO', 'TERRAZAS', 'HECTOR FRANCISCO', '1986-10-02', 'Oruro', 'M', 'URB. CAJA NACIONAL DE SALUD ZONA NORTE', 'Norte', '70417194', '', '70417194', 'hectorfr025@gmail.co'),
(98109, 39129, '3503607', 'OR', '2018-07-04', 'CHIVE', 'CHOQUE', 'JUAN CARLOS', '1975-02-11', 'Oruro', 'M', 'Herrera N° 100,', 'Central', '5245512', '', '72186127', 'jchive@gmail.com'),
(98110, 39538, '7308161-ij', 'OR', '2018-08-23', 'YUCRA', 'TOCO', 'BRYAN', '1992-06-08', 'Oruro', 'M', 'AV. KASSO Y ELISEO FLORES S/N', 'SOCAVON', '', '', '72326791', 'yucrabryan@yahoo.com'),
(98111, 39791, '4021663', 'OR', '2018-09-18', 'CASERES', 'LAIME', 'MARIA', '2018-06-02', 'ORURO', 'F', 'AGUA DE CASTILLA CAMACHO Y VICUÑA B', 'SUD', '5259753', '65404309', '72477331', 'maria4021663@gmail.c'),
(98112, 40291, '', '', NULL, 'LAMAS', 'SEJAS', 'BERNARDO HENRY', '1971-12-04', 'Potosi', 'M', 'URB. AURORA CALLE UV 4 - O16', 'Norte', '', '5277077', '70422520', 'henry.lamas@gmail.co'),
(98113, 97898, '7300312', 'OR', '2018-03-02', 'FLORES', 'JAILLITA', 'JESUS OSCAR', '1989-07-12', 'Potosi', 'M', 'C/JAIME MENDOZA #148', 'ESTE', '', '', '67215433', 'oscar_bart5@hotmail.'),
(98114, NULL, '', '', NULL, 'BERDEJA', 'LOPEZ', 'VIVIANA GERALDINE', '1992-05-12', 'Oruro', 'F', '1 DE NOVIEMBRE N° 319 Y PAGADOR', 'TERMINAL', '5279696', '', '67221799', 'viviberdejalopez@gma');

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
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`codreg`);

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
  MODIFY `idprofesional` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `codreg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98115;

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
