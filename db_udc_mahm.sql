-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-08-2020 a las 23:24:30
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_udc_mahm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(20) NOT NULL,
  `IDENTIFICACION` int(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `IDENTIFICACION`, `name`, `email`, `password`) VALUES
(1, 1234567890, 'miguel romero', 'miguel@hotmail.com', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(110) NOT NULL,
  `documento` int(11) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `name` varchar(80) NOT NULL,
  `pais_nacimiento` varchar(40) NOT NULL,
  `programa_formacion` varchar(60) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  `ti` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` varchar(20) NOT NULL,
  `zona_recidencial` varchar(10) NOT NULL,
  `institucion_educativa` varchar(10) NOT NULL,
  `educacion_padres` varchar(19) NOT NULL,
  `actividad_economica_padres` varchar(13) NOT NULL,
  `tipo_vivienda` varchar(10) NOT NULL,
  `calificacion_nivel_educativo` varchar(9) NOT NULL,
  `nivel_ingresos_hogar` varchar(25) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `asignaturas_matriculadas` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `documento`, `apellidos`, `name`, `pais_nacimiento`, `programa_formacion`, `email`, `password`, `ti`, `fecha_nacimiento`, `estado_civil`, `zona_recidencial`, `institucion_educativa`, `educacion_padres`, `actividad_economica_padres`, `tipo_vivienda`, `calificacion_nivel_educativo`, `nivel_ingresos_hogar`, `genero`, `asignaturas_matriculadas`) VALUES
(2, 123456789, 'herrera', 'yisel', 'Colombia', 'Desarrollo wed', 'yisel@gmail.com', '1234', 'RC - Registro Civil', '0000-00-00', 'Soltero(a)', 'Rural', 'Privada', 'Ninguno', 'Desempleado', 'Propia', 'Buena', '$0 A 0', 'Femenino', 1),
(3, 0, 'ALVARADO CHIQUILLO', 'MICHELLE CAROLINA', '', 'TECNICO EN CONSTRUCCIONES CIVILES', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(4, 0, 'ARAGON RIVERO', 'JOSE MANUEL', '', 'TECNICO EN MANTENIMIENTO ELECTRONICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(6, 0, 'BARRIOS JULIO', 'ALEXANDER', '', 'TECNICO EN MANTENIMIENTO MECANICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(7, 0, 'BARRIOS PALMA', 'ELOISA BARRIOS', '', 'TECNICO EN ANALISIS QUIMICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(8, 0, 'BATISTA PEDROZA', 'LUIS CARLOS', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(9, 0, 'BENITEZ SIMANCA', 'DIANA CAROLINA', '', 'TECNICO EN ANALISIS QUIMICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(10, 0, 'BOLIVAR ZARAZA', 'JOHN DARIO', '', 'TECNICO EN MANTENIMIENTO ELECTRONICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(11, 0, 'CUETO HERNANDEZ', 'WENDY YULEISIS', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(12, 0, 'DIAZ ANGULO', 'CARLOS MANUEL', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(13, 0, 'DIAZ GUTIERREZ', 'NEISER ALBERTO', '', 'TECNICO EN OPERACI?N DE PROCESOS INDUSTRIALES', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(14, 0, 'DIAZ ROJAS', 'FABIAN DIAZ', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(15, 0, 'ESSALAS ESPEJO', 'CAMILO ANDRES', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(16, 0, 'GALEANO GOMEZ', 'LUIS ESTEBAN', '', 'TECNICO EN MANTENIMIENTO ELECTRONICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(17, 0, 'GARCIA CASTILLO', 'DANIELA', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(18, 0, 'GARCIA DE LEON', 'JORGE LUIS', '', 'TECNICO EN MANTENIMIENTO MECANICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(19, 0, 'GAVIRIA TEHERAN', 'GENESIS NAZARETH', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(20, 0, 'GOMEZ PACHECO', 'DANNA', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(21, 0, 'HERNANDEZ GARCIA', 'AURA CRISTINA', '', 'TECNICO EN CONSTRUCCIONES CIVILES', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(22, 0, 'HERRERA GONZALES', 'LAURA MICHEL', '', 'TECNICO EN CONSTRUCCIONES CIVILES', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(23, 0, 'JIMENEZ RAMOS', 'YORYANIS JIMENEZ', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(24, 0, 'JULIO GUZMAN', 'YARLEIDIS KATERIN', '', 'TECNICO EN ANALISIS QUIMICO INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(25, 0, 'LOZANO RIVERO', 'LORENA LOZANO', '', 'TECNICO EN SEGURIDAD INDUSTRIAL', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0', '', 0),
(26, 0, 'firu', 'lay', '', '', 'firu@gmail.com', '12345', '', '2000-09-19', '', '', '', '', '', '', '', '', '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDENTIFICACION` (`IDENTIFICACION`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(110) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
