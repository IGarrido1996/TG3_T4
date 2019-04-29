-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-04-2019 a las 14:49:10
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_optica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IdEmpleado` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido1` text NOT NULL,
  `Apellido2` text NOT NULL,
  `Perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`IdEmpleado`, `Nombre`, `Apellido1`, `Apellido2`, `Perfil`) VALUES
(1, 'Sandra', 'Bravo', 'Blanco', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `IdPaciente` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Apellido1` text NOT NULL,
  `Apellido2` text NOT NULL,
  `FechaNacimiento` date NOT NULL,
  `NIF` text NOT NULL,
  `Dirección` text NOT NULL,
  `Telefono` text NOT NULL,
  `LOPD` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`IdPaciente`, `Nombre`, `Apellido1`, `Apellido2`, `FechaNacimiento`, `NIF`, `Dirección`, `Telefono`, `LOPD`) VALUES
(1, 'Juan José', 'Martín', 'Martín', '1990-05-02', '6565604D', 'c/ Marmol, 20', '65788848', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `IdPerfil` int(11) NOT NULL,
  `Tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`IdPerfil`, `Tipo`) VALUES
(1, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rx`
--

CREATE TABLE `rx` (
  `IdRx` int(11) NOT NULL,
  `Sph_OD` text NOT NULL,
  `Cil_OD` text NOT NULL,
  `Eje_OD` int(11) NOT NULL,
  `Ad_OD` text NOT NULL,
  `Sph_OI` text NOT NULL,
  `Cil_OI` text NOT NULL,
  `Eje_OI` int(11) NOT NULL,
  `Ad_OI` text NOT NULL,
  `Fecha` date NOT NULL,
  `Paciente` int(11) NOT NULL,
  `Optico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `rx`
--

INSERT INTO `rx` (`IdRx`, `Sph_OD`, `Cil_OD`, `Eje_OD`, `Ad_OD`, `Sph_OI`, `Cil_OI`, `Eje_OI`, `Ad_OI`, `Fecha`, `Paciente`, `Optico`) VALUES
(2, '-1,00', '-0,75', 120, '0', '-2,00', '-0,50', 134, '0', '2019-04-29', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocklentes`
--

CREATE TABLE `stocklentes` (
  `IdLente` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Precio` double NOT NULL,
  `Tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stocklentes`
--

INSERT INTO `stocklentes` (`IdLente`, `Nombre`, `Precio`, `Tipo`) VALUES
(1, 'CEFIR', 40, 1),
(2, 'AD+', 20, 1),
(3, 'V7', 10, 1),
(4, 'OFICCE 2M', 120, 4),
(5, 'OFICCE 4M', 120, 4),
(6, 'DRIVE', 120, 4),
(7, 'DIGITAL FREE FORM BC 1.5', 300, 5),
(8, 'DIGITAL TRUE FORM BC', 250, 5),
(9, 'MAXIMA ENERGY', 320, 5),
(10, 'SUPERB', 400, 5),
(11, 'VARIFOCO', 180, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stockmonturas`
--

CREATE TABLE `stockmonturas` (
  `IdMontura` int(11) NOT NULL,
  `Referencia` text NOT NULL,
  `Color` text NOT NULL,
  `Calibre` text NOT NULL,
  `Marca` text NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `Tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `stockmonturas`
--

INSERT INTO `stockmonturas` (`IdMontura`, `Referencia`, `Color`, `Calibre`, `Marca`, `Precio`, `Tipo`) VALUES
(1, 'RB3023', 'L03403', '5419', 'RayBan', '120', 'Graduado'),
(2, 'PH3024', '5464', '5117', 'Polo Ralph Lauren', '116', 'Graduado'),
(3, 'RA6059', '4352', '5119', 'Ralph', '99', 'Graduado'),
(4, 'OO6594-01', '01', '5617', 'Oakley', '159', 'Graduado'),
(5, 'AN6295', '5318', '432', 'Arnette', '89', 'Sol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposlentes`
--

CREATE TABLE `tiposlentes` (
  `IdTipo` int(11) NOT NULL,
  `Tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tiposlentes`
--

INSERT INTO `tiposlentes` (`IdTipo`, `Tipo`) VALUES
(1, 'Monofocal'),
(4, 'Ocupacional'),
(5, 'Progresiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IdVenta` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Observaciones` text NOT NULL,
  `Importe` double NOT NULL,
  `Paciente` int(11) NOT NULL,
  `Empleado` int(11) NOT NULL,
  `Montura` int(11) NOT NULL,
  `TipoLente` int(11) NOT NULL,
  `StockLente` int(11) NOT NULL,
  `Rx` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IdEmpleado`),
  ADD KEY `Perfil` (`Perfil`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`IdPaciente`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`IdPerfil`);

--
-- Indices de la tabla `rx`
--
ALTER TABLE `rx`
  ADD PRIMARY KEY (`IdRx`),
  ADD KEY `paciente` (`Paciente`),
  ADD KEY `optico` (`Optico`);

--
-- Indices de la tabla `stocklentes`
--
ALTER TABLE `stocklentes`
  ADD PRIMARY KEY (`IdLente`),
  ADD KEY `tipo` (`Tipo`);

--
-- Indices de la tabla `stockmonturas`
--
ALTER TABLE `stockmonturas`
  ADD PRIMARY KEY (`IdMontura`);

--
-- Indices de la tabla `tiposlentes`
--
ALTER TABLE `tiposlentes`
  ADD PRIMARY KEY (`IdTipo`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IdVenta`),
  ADD KEY `paciente` (`Paciente`),
  ADD KEY `empleado` (`Empleado`),
  ADD KEY `montura` (`Montura`),
  ADD KEY `tipolente` (`TipoLente`),
  ADD KEY `stocklente` (`StockLente`),
  ADD KEY `rx` (`Rx`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `IdPaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `IdPerfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `rx`
--
ALTER TABLE `rx`
  MODIFY `IdRx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `stocklentes`
--
ALTER TABLE `stocklentes`
  MODIFY `IdLente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `stockmonturas`
--
ALTER TABLE `stockmonturas`
  MODIFY `IdMontura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tiposlentes`
--
ALTER TABLE `tiposlentes`
  MODIFY `IdTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `IdVenta` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Perfil`) REFERENCES `perfiles` (`IdPerfil`);

--
-- Filtros para la tabla `rx`
--
ALTER TABLE `rx`
  ADD CONSTRAINT `rx_ibfk_1` FOREIGN KEY (`Paciente`) REFERENCES `pacientes` (`IdPaciente`),
  ADD CONSTRAINT `rx_ibfk_2` FOREIGN KEY (`Optico`) REFERENCES `empleados` (`IdEmpleado`);

--
-- Filtros para la tabla `stocklentes`
--
ALTER TABLE `stocklentes`
  ADD CONSTRAINT `stocklentes_ibfk_1` FOREIGN KEY (`Tipo`) REFERENCES `tiposlentes` (`IdTipo`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`Paciente`) REFERENCES `pacientes` (`IdPaciente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`Empleado`) REFERENCES `empleados` (`IdEmpleado`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`Montura`) REFERENCES `stockmonturas` (`IdMontura`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`TipoLente`) REFERENCES `tiposlentes` (`IdTipo`),
  ADD CONSTRAINT `venta_ibfk_5` FOREIGN KEY (`StockLente`) REFERENCES `stocklentes` (`IdLente`),
  ADD CONSTRAINT `venta_ibfk_6` FOREIGN KEY (`Rx`) REFERENCES `rx` (`IdRx`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
