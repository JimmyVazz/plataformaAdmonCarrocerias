-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2021 a las 04:17:12
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carroceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspirantes`
--

CREATE TABLE `aspirantes` (
  `idAspirante` int(11) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `profesion` varchar(20) DEFAULT NULL,
  `educacionMaxima` varchar(20) DEFAULT NULL,
  `idVacanteAspira` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `nombreCargo` varchar(20) DEFAULT NULL,
  `idCargo` int(11) NOT NULL,
  `salario` double DEFAULT NULL,
  `responsabilidadPrincipal` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `nombreDepartamento` varchar(30) DEFAULT NULL,
  `idDepartamento` int(11) NOT NULL,
  `encargadoZona` varchar(20) DEFAULT NULL,
  `numZona` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `numEmpleado` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apPaterno` varchar(30) DEFAULT NULL,
  `apMaterno` varchar(30) DEFAULT NULL,
  `RFC` varchar(30) DEFAULT NULL,
  `NSS` varchar(30) DEFAULT NULL,
  `estado` varchar(29) DEFAULT NULL,
  `municipio` varchar(20) DEFAULT NULL,
  `colonia` varchar(20) DEFAULT NULL,
  `numExt` int(11) DEFAULT NULL,
  `numInt` int(11) DEFAULT NULL,
  `idUsuarioSistema` int(11) DEFAULT NULL,
  `idDepartamentoUsuario` int(11) DEFAULT NULL,
  `idCargoUsuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradassalidas`
--

CREATE TABLE `entradassalidas` (
  `folio` int(11) NOT NULL,
  `numEmpleadoRegistro` int(11) DEFAULT NULL,
  `horasTrabajadas` float DEFAULT NULL,
  `horaEntrada` datetime DEFAULT NULL,
  `horaInicioComida` datetime DEFAULT NULL,
  `horaTerminoComida` datetime DEFAULT NULL,
  `Hora_Salida` datetime DEFAULT NULL,
  `cumplioNormas` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `numEmpleadoHorario` int(11) DEFAULT NULL,
  `idHorario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incapacidades`
--

CREATE TABLE `incapacidades` (
  `idIncapacidad` int(11) NOT NULL,
  `numEmpleadoInc` int(11) DEFAULT NULL,
  `causa` varchar(30) DEFAULT NULL,
  `inicioIncapacidad` datetime DEFAULT NULL,
  `terminoIncapacidad` datetime DEFAULT NULL,
  `salarioApoyo` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sanciones`
--

CREATE TABLE `sanciones` (
  `tipoSancion` varchar(20) DEFAULT NULL,
  `idSancion` int(11) NOT NULL,
  `numEmpleadoSancionado` int(11) DEFAULT NULL,
  `descripcionSancion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nivelUsuario` int(11) DEFAULT NULL,
  `usuario` varchar(30) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacantes`
--

CREATE TABLE `vacantes` (
  `idVacante` int(11) NOT NULL,
  `NombreVacante` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Sector` varchar(30) DEFAULT NULL,
  `Sueldo` decimal(5,2) DEFAULT NULL,
  `Email` varchar(64) DEFAULT NULL,
  `Horario` varchar(50) DEFAULT NULL,
  `Escolaridad` varchar(50) DEFAULT NULL,
  `Categoria` varchar(60) DEFAULT NULL,
  `Experiencia` varchar(200) DEFAULT NULL,
  `Aptitudes` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  ADD PRIMARY KEY (`idAspirante`),
  ADD KEY `idVacanteAspira` (`idVacanteAspira`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`idDepartamento`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`numEmpleado`),
  ADD KEY `idUsuarioSistema` (`idUsuarioSistema`),
  ADD KEY `idDepartamentoUsuario` (`idDepartamentoUsuario`),
  ADD KEY `idCargoUsuario` (`idCargoUsuario`);

--
-- Indices de la tabla `entradassalidas`
--
ALTER TABLE `entradassalidas`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `numEmpleadoRegistro` (`numEmpleadoRegistro`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`idHorario`),
  ADD KEY `numEmpleadoHorario` (`numEmpleadoHorario`);

--
-- Indices de la tabla `incapacidades`
--
ALTER TABLE `incapacidades`
  ADD PRIMARY KEY (`idIncapacidad`),
  ADD KEY `numEmpleadoInc` (`numEmpleadoInc`);

--
-- Indices de la tabla `sanciones`
--
ALTER TABLE `sanciones`
  ADD PRIMARY KEY (`idSancion`),
  ADD KEY `numEmpleadoSancionado` (`numEmpleadoSancionado`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `vacantes`
--
ALTER TABLE `vacantes`
  ADD PRIMARY KEY (`idVacante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  MODIFY `idAspirante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vacantes`
--
ALTER TABLE `vacantes`
  MODIFY `idVacante` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aspirantes`
--
ALTER TABLE `aspirantes`
  ADD CONSTRAINT `aspirantes_ibfk_1` FOREIGN KEY (`idVacanteAspira`) REFERENCES `vacantes` (`idVacante`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`idUsuarioSistema`) REFERENCES `usuarios` (`idUsuario`),
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`idDepartamentoUsuario`) REFERENCES `departamentos` (`idDepartamento`),
  ADD CONSTRAINT `empleados_ibfk_3` FOREIGN KEY (`idCargoUsuario`) REFERENCES `cargos` (`idCargo`);

--
-- Filtros para la tabla `entradassalidas`
--
ALTER TABLE `entradassalidas`
  ADD CONSTRAINT `entradassalidas_ibfk_1` FOREIGN KEY (`numEmpleadoRegistro`) REFERENCES `empleados` (`numEmpleado`);

--
-- Filtros para la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD CONSTRAINT `horarios_ibfk_1` FOREIGN KEY (`numEmpleadoHorario`) REFERENCES `empleados` (`numEmpleado`);

--
-- Filtros para la tabla `incapacidades`
--
ALTER TABLE `incapacidades`
  ADD CONSTRAINT `incapacidades_ibfk_1` FOREIGN KEY (`numEmpleadoInc`) REFERENCES `empleados` (`numEmpleado`);

--
-- Filtros para la tabla `sanciones`
--
ALTER TABLE `sanciones`
  ADD CONSTRAINT `sanciones_ibfk_1` FOREIGN KEY (`numEmpleadoSancionado`) REFERENCES `empleados` (`numEmpleado`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
