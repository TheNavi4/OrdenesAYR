-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2023 a las 19:51:07
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `autoclimasayr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`caja_id`, `caja_numero`, `caja_nombre`, `caja_efectivo`) VALUES
(1, 1, 'Caja Principal', '61430.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_ubicacion` varchar(150) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(2, 'Caja Fria', 'Autoclimas'),
(3, 'Autobus', 'Autoclimas'),
(4, 'Clima sencillo', 'Autoclimas'),
(5, 'Tracto', 'Autoclimas'),
(6, 'Camiones', 'Autoclimas'),
(9, 'Doble clima', 'Autoclimas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_tipo_documento` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_numero_documento` varchar(35) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_provincia` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_ciudad` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_direccion` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `cliente_email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_tipo_documento`, `cliente_numero_documento`, `cliente_nombre`, `cliente_apellido`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_telefono`, `cliente_email`) VALUES
(1, 'Otro', 'N/A', 'Publico', 'General', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(2, '2001', 'ASA-45FS5', 'Ivan Reyes', 'Lobo', 'Ford', 'Tlaxcala', 'San Carlos', '2411589551', ''),
(3, '2006', '45-JHG-56', 'Joaquin Perez', 'vento', 'Nissan', 'Azul', 'Santa Ana', '2469558774', ''),
(4, '2003', '245-jku-4d', 'Dante Sanchez', 'Camaro', 'Chevrolet', 'Azul', 'Santa cruz', '2456987532', ''),
(5, '2015', 'AS-45F-41', 'Gustavo Reynosa', 'Camaro', 'Chevrolet', 'Amarillo', 'Estados unidos', '2451478536', ''),
(6, '2012', 'jc-84d-8d', 'Vanessa Perez', 'fiesta', 'ford', 'rojo', 'Apizaco', '25836547595', ''),
(7, '2017', '45f-gf5-56', 'Eduardo Tecuapacho', 'miracle', 'tesla', 'gris', 'new york', '2489631478', ''),
(8, '2019', 'mk5-87d-85', 'Marisol Filipina', 'Orizon', 'Testa', 'rojo', 'Puebla', '2411456297', ''),
(9, '2017', '14-hjd-45', 'Carlos Sanchez', 'coche', 'Chevrolet', 'amarillo', 'Apizaco', '2415987456', ''),
(10, '2010', 'XT6-905-D', 'Vicente Hernández Guerrero', 'marcel', 'bmw', 'blanco', 'Tlaxcala', '2461701640', ''),
(11, '2018', '2dadfsd-4', 'Ricardo Herndez', 'figo', 'Ford', 'gris', 'Apizco', '241598423', ''),
(12, '2019', '41hgf56', 'samuel l jackson', 'sport', 'Bmw', 'rojo', 'apizaco', '24588445651', ''),
(13, '2015', '12fd45df', 'Alejandro Orozco', 'Aquamirne', 'BMW', 'azul', 'Apizaco', '2411474747', ''),
(14, '2015', '14fdf5d5', 'Eduardo Jaramillo', 'Jetta', 'BMW', 'rojo', 'Apizaco', '2411599988', ''),
(15, '2017', '......................', 'Miguel Juarez', 'Sprinter', 'Nissan', 'Blanco', 'Tetla', '2145698444', ''),
(16, '2019', '...................', 'Darien Cornona', 'Lobo', 'Chevrolet', '..............', 'cdmx', '24666595887', ''),
(17, '2019', '.................', 'Samantha Cornona Peralta', 'fiesta', 'wolgwaguen', '.....................', 'Apizaco', '2411023650', ''),
(18, '2016', '.................', 'Carolina Ortega', 'gol', 'KYA', '.................', 'Apizaco', '2468585469', ''),
(19, '2017', '.................', 'alan zaid cruz', 'jetta', 'Chevrolet', '.................', 'panzacola', '24156320000', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `empresa_nombre` varchar(90) COLLATE utf8_spanish2_ci NOT NULL,
  `empresa_telefono` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `empresa_email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `empresa_direccion` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_nombre`, `empresa_telefono`, `empresa_email`, `empresa_direccion`) VALUES
(1, 'Autoclimas A&R', '2411171560', 'ay-r@hotmail.com', 'Apizaco Tlaxcala Calle Francisco Sarabia #2100');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(77) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_nombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_stock_total` int(25) NOT NULL,
  `producto_tipo_unidad` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_marca` varchar(35) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_modelo` varchar(35) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_estado` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_foto` varchar(500) COLLATE utf8_spanish2_ci NOT NULL,
  `categoria_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(2, 'cambio de balero caja fria', 'cambio de balero', 2147483644, 'Unidad', '1.00', '800.00', 'caja fria', '', '', '', 2),
(4, 'Autobus revision', 'Revisión', 999999999, 'Unidad', '1.00', '100.00', 'Autobus', '', '', '', 3),
(6, 'revision caja fria', 'Revisión', 2147483644, 'Unidad', '1.00', '100.00', 'caja fria', '', '', '', 2),
(7, 'Revision Camion', 'Revisión', 2147483646, 'Unidad', '1.00', '100.00', 'Camion', '', '', '', 6),
(8, 'Revision clima sencillo', 'Revisión', 2147483641, 'Unidad', '1.00', '100.00', 'clima sencillo', '', '', '', 4),
(9, 'corregir fuga caja fria', 'corregir fuga', 2147483646, 'Unidad', '1.00', '650.00', 'caja fria', '', '', '', 2),
(10, 'revision doble clima', 'Revisión', 2147483633, 'Unidad', '1.00', '100.00', 'doble clima', '', '', '', 9),
(11, 'carga de gas caja fria', 'carga de gas', 99999996, 'Unidad', '1.00', '800.00', 'caja fria', '', '', '', 2),
(12, 'Control de clima caja fria', 'Control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'caja fria', '', '', '', 2),
(13, 'manguera de baja caja fria', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'caja fria', '', '', '', 2),
(14, 'filtro de cabina caja fria', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'caja fria', '', '', '', 2),
(15, 'lavado de sistema caja fria', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(16, 'bajar tablero caja fria', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'caja fria', '', '', '', 2),
(17, 'mantenimiento de soplador caja fria', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(18, 'falla electrica caja fria', 'falla electrica', 2147483646, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(19, 'soldar tubo caja fria', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'caja fria', '', '', '', 2),
(20, 'conector de baja caja fria', 'conector de baja', 2147483647, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(21, 'carga parcial de gas caja fria', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '350.00', 'caja fria', '', '', '', 2),
(22, 'soldar condensador caja fria', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'caja fria', '', '', '', 2),
(23, 'filtro deshidratador caja fria', 'filtro deshidratador', 2147483646, 'Unidad', '1.00', '1300.00', 'caja fria', '', '', '', 2),
(24, 'manguera de alta caja fria', 'manguera de alta', 2147483646, 'Unidad', '1.00', '600.00', 'caja fria', '', '', '', 2),
(25, 'cambio de plato caja fria', 'cambio de plato', 2147483646, 'Unidad', '1.00', '1800.00', 'caja fria', '', '', '', 2),
(26, 'recuperacion y carga de gas caja fria', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'caja fria', '', '', '', 2),
(27, 'mano de obra caja fria', 'mano de obra', 2147483647, 'Unidad', '1.00', '1500.00', 'caja fria', '', '', '', 2),
(28, 'pivote universal caja fria', 'pivote universal', 2147483647, 'Unidad', '1.00', '150.00', 'caja fria', '', '', '', 2),
(29, 'clutch caja fria', 'clutch', 2147483646, 'Unidad', '1.00', '1800.00', 'caja fria', '', '', '', 2),
(30, 'cambio de filtro de polen caja fria', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'caja fria', '', '', '', 2),
(31, 'aplicacion de aceite caja fria', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'caja fria', '', '', '', 2),
(32, 'aplicacion de aceite autobus', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'autobus', '', '', '', 3),
(33, 'bajar tablero autobus', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'autobus', '', '', '', 3),
(34, 'cambio de balero autobus', 'cambio de balero', 2147483646, 'Unidad', '1.00', '800.00', 'autobus', '', '', '', 3),
(35, 'cambio de filtro de polen autobus', 'cambio de filtro de polen', 2147483646, 'Unidad', '1.00', '580.00', 'autobus', '', '', '', 3),
(36, 'cambio de plato autobus', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'autobus', '', '', '', 3),
(37, 'carga de gas autobus', 'carga de gas', 2147483647, 'Unidad', '1.00', '800.00', 'autobus', '', '', '', 3),
(38, 'carga parcial de gas autobus', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '350.00', 'autobus', '', '', '', 3),
(39, 'clutch autobus', 'clutch', 2147483647, 'Unidad', '1.00', '1800.00', 'autobus', '', '', '', 3),
(40, 'conector de baja autobus', 'conector de baja', 2147483646, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(41, 'control de clima autobus', 'control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'autobus', '', '', '', 3),
(42, 'corregir fuja autobus', 'corregir fuja autobus', 2147483647, 'Unidad', '1.00', '650.00', 'autobus', '', '', '', 3),
(43, 'falla electrica autobus', 'falla electrica', 2147483647, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(44, 'filtro de cabina autobus', 'filtro de cabina autobus', 2147483647, 'Unidad', '1.00', '580.00', 'autobus', '', '', '', 3),
(45, 'filtro deshidratador autobus', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'autobus', '', '', '', 3),
(46, 'lavado de sistema autobus', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(47, 'manguera de alta autobus', 'manguera de alta', 2147483647, 'Unidad', '1.00', '600.00', 'autobus', '', '', '', 3),
(48, 'manguera de baja autobus', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'autobus', '', '', '', 3),
(49, 'mano de obra autobus', 'mano de obra', 2147483647, 'Unidad', '1.00', '1500.00', 'autobus', '', '', '', 3),
(50, 'mantenimiento de soplador autobus', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(51, 'pivote universal autobus', 'pivote universal', 2147483647, 'Unidad', '1.00', '150.00', 'autobus', '', '', '', 3),
(52, 'recuperacion y carga de gas autobus', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'autobus', '', '', '', 3),
(53, 'soldar condensador autobus', 'soldar condensador autobus', 2147483647, 'Unidad', '1.00', '1200.00', 'autobus', '', '', '', 3),
(54, 'soldar tubo autobus', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'autobus', '', '', '', 3),
(55, 'aplicacion de aceite clima sencillo', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'clima sencillo', '', '', '', 4),
(56, 'bajar tablero clima sencillo', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'clima sencillo', '', '', '', 4),
(57, 'cambio de balero clima sencillo', 'cambio de balero', 2147483642, 'Unidad', '1.00', '800.00', 'clima sencillo', '', '', '', 4),
(58, 'cambio de filtro de polen clima sencillo', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'clima sencillo', '', '', '', 4),
(59, 'cambio de plato clima sencillo', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'clima sencillo', '', '', '', 4),
(60, 'carga de gas clima sencillo', 'carga de gas', 2147483646, 'Unidad', '1.00', '800.00', 'clima sencillo', '', '', '', 4),
(61, 'carga parcial de gas clima sencillo', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '350.00', 'clima sencillo', '', '', '', 4),
(62, 'clutch clima sencillo', 'clutch', 2147483647, 'Unidad', '1.00', '1800.00', 'clima sencillo', '', '', '', 4),
(63, 'conector de baja clima sencillo', 'conector de baja', 2147483646, 'Unidad', '1.00', '500.00', 'clima sencillo', '', '', '', 4),
(64, 'control de clima clima sencillo', 'control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'clima sencillo', '', '', '', 4),
(65, 'corregir fuja clima sencillo', 'corregir fuja', 2147483647, 'Unidad', '1.00', '650.00', 'clima sencillo', '', '', '', 4),
(66, 'falla electrica clima sencillo', 'falla electrica', 2147483646, 'Unidad', '1.00', '500.00', 'clima sencillo', '', '', '', 4),
(67, 'filtro de cabina clima sencillo', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'clima sencillo', '', '', '', 4),
(68, 'filtro deshidratador clima sencillo', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'clima sencillo', '', '', '', 4),
(69, 'lavado de sistema clima sencillo', 'lavado de sistema', 2147483644, 'Unidad', '1.00', '500.00', 'clima sencillo', '', '', '', 4),
(70, 'manguera de alta clima sencillo', 'manguera de alta', 2147483644, 'Unidad', '1.00', '600.00', 'clima sencillo', '', '', '', 4),
(71, 'manguera de baja clima sencillo', 'manguera de baja clima sencillo', 2147483647, 'Unidad', '1.00', '600.00', 'clima sencillo', '', '', '', 4),
(72, 'mano de obra clima sencillo', 'mano de obra', 2147483647, 'Unidad', '1.00', '1500.00', 'clima sencillo', '', '', '', 4),
(73, 'mantenimiento de soplador clima sencillo', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '500.00', 'clima sencillo', '', '', '', 4),
(74, 'pivote universal clima sencillo', 'pivote universal', 2147483647, 'Unidad', '1.00', '150.00', 'clima sencillo', '', '', '', 4),
(75, 'recuperacion y carga de gas clima sencillo', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'clima sencillo', '', '', '', 4),
(76, 'soldar condensador clima sencillo', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'clima sencillo', '', '', '', 4),
(101, 'cambio de poela caja fria', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'caja fria', '', '', '', 2),
(103, 'bajar tablero camion', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'camion', '', '', '', 6),
(104, 'cambio de balero camion', 'cambio de balero', 2147483644, 'Unidad', '1.00', '800.00', 'camion', '', '', '', 6),
(105, 'cambio de filtro de polen camion', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'camion', '', '', '', 6),
(106, 'cambio de plato camion', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'camion', '', '', '', 6),
(107, 'cambio de polea camion', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'camion', '', '', '', 6),
(108, 'carga de gas camion', 'carga de gas', 2147483646, 'Unidad', '1.00', '800.00', 'camion', '', '', '', 6),
(109, 'carga parcial de gas camion', 'carga parcial de gas', 2147483646, 'Unidad', '1.00', '350.00', 'camion', '', '', '', 6),
(110, 'clutch camion', 'clutch', 2147483647, 'Unidad', '1.00', '1800.00', 'camion', '', '', '', 6),
(111, 'conector de baja camion', 'conector de baja', 2147483647, 'Unidad', '1.00', '500.00', 'camion', '', '', '', 6),
(112, 'control de clima camion', 'control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'camion', '', '', '', 6),
(113, 'corregir fuja camion', 'corregir fuja', 2147483647, 'Unidad', '1.00', '650.00', 'camion', '', '', '', 6),
(114, 'falla electrica camion', 'falla electrica', 2147483647, 'Unidad', '1.00', '500.00', 'camion', '', '', '', 6),
(115, 'filtro de cabina camion', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'camion', '', '', '', 6),
(116, 'filtro deshidratador camion', 'filtro deshidratador', 2147483646, 'Unidad', '1.00', '1300.00', 'camion', '', '', '', 6),
(117, 'lavado de sistema camion', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '500.00', 'camion', '', '', '', 6),
(118, 'manguera de alta camion', 'manguera de alta', 2147483647, 'Unidad', '1.00', '600.00', 'camion', '', '', '', 6),
(119, 'manguera de baja camion', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'camion', '', '', '', 6),
(120, 'mano de obra camion', 'mano de obra', 2147483647, 'Unidad', '1.00', '1500.00', 'camion', '', '', '', 6),
(121, 'mantenimiento soplador camion', 'mantenimiento soplador', 2147483647, 'Unidad', '1.00', '500.00', 'camion', '', '', '', 6),
(122, 'pivote universal camion', 'pivote universal', 2147483646, 'Unidad', '1.00', '150.00', 'camion', '', '', '', 6),
(123, 'recuperacion y carga de gas camion', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'camion', '', '', '', 6),
(124, 'soldar condensador camion', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'camion', '', '', '', 6),
(125, 'soldar tubo camion', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'camion', '', '', '', 6),
(126, 'aplicacion de aceite doble clima', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'doble clima', '', '', '', 9),
(127, 'bajar tablero doble clima', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'doble clima', '', '', '', 9),
(128, 'cambio de balero doble clima', 'cambio de balero', 2147483631, 'Unidad', '1.00', '800.00', 'doble clima', '', '', '', 9),
(129, 'cambio de filtro de polen doble clima', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'doble clima', '', '', '', 9),
(130, 'cambio de plato doble clima', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'doble clima', '', '', '', 9),
(131, 'cambio de polea doble clima', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'doble clima', '', '', '', 9),
(132, 'carga de gas doble clima', 'carga de gas', 2147483646, 'Unidad', '1.00', '800.00', 'doble clima', '', '', '', 9),
(133, 'carga parcial de gas doble clima', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '350.00', 'doble clima', '', '', '', 9),
(134, 'clutch doble clima', 'clutch', 2147483646, 'Unidad', '1.00', '1800.00', 'doble clima', '', '', '', 9),
(135, 'conector de baja doble clima', 'conector de baja', 2147483647, 'Unidad', '1.00', '500.00', 'doble clima', '', '', '', 9),
(136, 'control de clima doble clima', 'control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'doble clima', '', '', '', 9),
(137, 'corregir fuja doble clima', 'corregir fuja', 2147483647, 'Unidad', '1.00', '650.00', 'doble clima', '', '', '', 9),
(138, 'falla electrica doble clima', 'falla electrica', 2147483636, 'Unidad', '1.00', '500.00', 'doble clima', '', '', '', 9),
(139, 'filtro de cabina doble clima', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'doble clima', '', '', '', 9),
(140, 'filtro deshidratador doble clima', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'doble clima', '', '', '', 9),
(141, 'lavado de sistema doble clima', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '500.00', 'doble clima', '', '', '', 9),
(142, 'manguera de alta doble clima', 'manguera de alta', 2147483646, 'Unidad', '1.00', '600.00', 'doble clima', '', '', '', 9),
(143, 'manguera de baja doble clima', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'doble clima', '', '', '', 9),
(144, 'mano de obra doble clima', 'mano de obra', 2147483647, 'Unidad', '1.00', '1500.00', 'doble clima', '', '', '', 9),
(145, 'mantenimiento de soplador doble clima', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '500.00', 'doble clima', '', '', '', 9),
(146, 'pivote universal doble clima', 'pivote universal', 2147483647, 'Unidad', '1.00', '150.00', 'doble clima', '', '', '', 9),
(147, 'recuperacion y carga de gas doble clima', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'doble clima', '', '', '', 9),
(148, 'soldar condensador doble clima', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'doble clima', '', '', '', 9),
(149, 'soldar tubo doble clima', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'doble clima', '', '', '', 9),
(150, 'cambio de polea autobus', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'autobus', '', '', '', 3),
(151, 'cambio de polea clima sencillo', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'clima sencillo', '', '', '', 4),
(153, 'soldar tubo clima sencillo', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'clima sencillo', '', '', '', 4),
(154, 'revision tracto', 'revision', 2147483645, 'Unidad', '1.00', '100.00', 'tracto', '', '', '', 5),
(155, 'aplicacion de aceite camion', 'aplicacion de aceite', 2147483646, 'Unidad', '1.00', '200.00', 'camiones', '', '', '', 6),
(156, 'aplicacion de aceite tracto', 'apliacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'tracto', '', '', '', 5),
(157, 'bajar tablero tracto', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2500.00', 'tracto', '', '', '', 5),
(158, 'cambio de balero tracto', 'cambio de balero', 2147483646, 'Unidad', '1.00', '800.00', 'tracto', '', '', '', 5),
(159, 'cambio de filtro de polen tracto', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'tracto', '', '', '', 5),
(160, 'cambio de plato tracto', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'tracto', '', '', '', 5),
(161, 'cambio de polea tracto', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'tracto', '', '', '', 5),
(162, 'carga de gas tracto', 'carga de gas', 2147483646, 'Unidad', '1.00', '800.00', 'tracto', '', '', '', 5),
(163, 'carga parcial de gas tracto', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '350.00', 'tracto', '', '', '', 5),
(164, 'clutch tracto', 'clutch', 2147483647, 'Unidad', '1.00', '1800.00', 'tracto', '', '', '', 5),
(165, 'conector de baja tracto', 'conector de baja', 2147483647, 'Unidad', '1.00', '500.00', 'tracto', '', '', '', 5),
(166, 'control de clima tracto', 'control de clima', 2147483647, 'Unidad', '1.00', '6000.00', 'tracto', '', '', '', 5),
(167, 'corregir fuja tracto', 'corregir fuja', 2147483647, 'Unidad', '1.00', '650.00', 'tracto', '', '', '', 5),
(168, 'falla electrica tracto', 'falla electrica', 2147483645, 'Unidad', '1.00', '500.00', 'tracto', '', '', '', 5),
(169, 'filtro de cabina tracto', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'tracto', '', '', '', 5),
(170, 'filtro deshidratador tracto', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'tracto', '', '', '', 5),
(171, 'lavado de sistema tracto', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '500.00', 'tracto', '', '', '', 5),
(172, 'manguera de alta tracto', 'manguera de alta', 2147483646, 'Unidad', '1.00', '600.00', 'tracto', '', '', '', 5),
(173, 'manguera de baja tracto', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'tracto', '', '', '', 5),
(174, 'mano de obra tracto', 'mano de obra', 2147483646, 'Unidad', '1.00', '1500.00', 'tracto', '', '', '', 5),
(175, 'mantenimiento de soplador tracto', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '500.00', 'tracto', '', '', '', 5),
(176, 'pivote universal tracto', 'pivote universal', 2147483647, 'Unidad', '1.00', '150.00', 'tracto', '', '', '', 5),
(177, 'recuperacion y carga de gas tracto', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '300.00', 'tracto', '', '', '', 5),
(178, 'soldar condensador tracto', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'tracto', '', '', '', 5),
(179, 'soldar tubo tracto', 'soldar tubo', 2147483647, 'Unidad', '1.00', '800.00', 'tracto', '', '', '', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(7) NOT NULL,
  `usuario_nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_apellido` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_email` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_usuario` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_clave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `usuario_foto` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `caja_id`) VALUES
(1, 'Autoclimas', 'A&R', '', 'AutoclimasA&R', '$2y$10$oz.LXEC7rhDeZuxp.9ExOeVNk.QPAXFZg/DiTA4t2QRdZvVAPqEQm', 'Autoclimas_98.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(30) NOT NULL,
  `venta_codigo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) COLLATE utf8_spanish2_ci NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `usuario_id` int(7) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`venta_id`, `venta_codigo`, `venta_fecha`, `venta_hora`, `venta_total`, `venta_pagado`, `venta_cambio`, `usuario_id`, `cliente_id`, `caja_id`) VALUES
(7, 'C2Q4G7X5P4-1', '2023-10-20', '10:54 am', '750.00', '1000.00', '250.00', 1, 1, 1),
(8, 'N6E5E1R8R2-2', '2023-10-26', '10:34 am', '2700.00', '3000.00', '300.00', 1, 9, 1),
(10, 'M9Q0A8W5U8-4', '2023-10-26', '11:48 am', '100.00', '100.00', '0.00', 1, 1, 1),
(11, 'C5A2L1B0M1-5', '2023-10-27', '10:33 am', '1600.00', '2000.00', '400.00', 1, 9, 1),
(12, 'V2T3F9U7N0-6', '2023-10-27', '10:40 am', '1880.00', '1880.00', '0.00', 1, 10, 1),
(13, 'N8A4W8M8O5-7', '2023-10-30', '12:11 pm', '100.00', '200.00', '100.00', 1, 9, 1),
(14, 'U3S3Z9P7P8-8', '2023-10-30', '01:01 pm', '100.00', '50.00', '-50.00', 1, 1, 1),
(15, 'O8V4I8V4K6-9', '2023-10-30', '01:09 pm', '900.00', '500.00', '-400.00', 1, 1, 1),
(16, 'B0W9O3I6V3-10', '2023-10-30', '01:29 pm', '800.00', '300.00', '-500.00', 1, 1, 1),
(17, 'B2U2K5P0Y6-11', '2023-10-30', '01:55 pm', '600.00', '1000.00', '400.00', 1, 1, 1),
(18, 'A6S6O8O9W5-12', '2023-10-30', '02:00 pm', '800.00', '200.00', '-600.00', 1, 1, 1),
(21, 'H1F1E4J8I0-13', '2023-10-31', '02:37 pm', '5900.00', '3000.00', '-2900.00', 1, 2, 1),
(22, 'R2K1K5Y8I5-14', '2023-11-03', '01:30 pm', '2200.00', '1000.00', '-1200.00', 1, 11, 1),
(23, 'D1O4F9J2A7-15', '2023-11-03', '02:23 pm', '800.00', '1000.00', '200.00', 1, 1, 1),
(24, 'P0C2W3G6I3-16', '2023-11-06', '12:15 pm', '900.00', '0.00', '-900.00', 1, 1, 1),
(25, 'P5D0C0E4N6-17', '2023-11-06', '12:26 pm', '900.00', '0.00', '-900.00', 1, 1, 1),
(26, 'V6E1O7P0M7-17', '2023-11-06', '12:47 pm', '1400.00', '1000.00', '-400.00', 1, 1, 1),
(27, 'Z8J2N4U1J2-18', '2023-11-06', '01:41 pm', '700.00', '900.00', '200.00', 1, 1, 1),
(28, 'W9F7T5C1U4-19', '2023-11-08', '02:57 pm', '1050.00', '1500.00', '450.00', 1, 1, 1),
(29, 'P5K1P7U1S2-20', '2023-11-14', '01:10 pm', '3700.00', '1000.00', '-2700.00', 1, 2, 1),
(30, 'P4M9F7K3J5-21', '2023-11-14', '02:11 pm', '3500.00', '4100.00', '600.00', 1, 13, 1),
(31, 'R1U7W5X6G3-22', '2023-11-16', '11:41 am', '2000.00', '500.00', '-1500.00', 1, 14, 1),
(32, 'U7S9Z8J7J9-23', '2023-11-16', '11:56 am', '1400.00', '2000.00', '600.00', 1, 15, 1),
(33, 'A0O0Q8G9U4-24', '2023-11-17', '12:03 pm', '2200.00', '2600.00', '400.00', 1, 13, 1),
(34, 'G8O2I6U9Q7-25', '2023-11-17', '12:32 pm', '3450.00', '3500.00', '50.00', 1, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(100) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `venta_codigo` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta_detalle`
--

INSERT INTO `venta_detalle` (`venta_detalle_id`, `venta_detalle_cantidad`, `venta_detalle_precio_compra`, `venta_detalle_precio_venta`, `venta_detalle_total`, `venta_detalle_descripcion`, `venta_codigo`, `producto_id`) VALUES
(12, 1, '50.00', '100.00', '100.00', 'Revisión', 'C2Q4G7X5P4-1', 6),
(13, 1, '100.00', '650.00', '650.00', 'corregir fuga', 'C2Q4G7X5P4-1', 9),
(14, 1, '1.00', '800.00', '800.00', 'carga de gas', 'N6E5E1R8R2-2', 11),
(15, 1, '1.00', '1800.00', '1800.00', 'cambio de plato', 'N6E5E1R8R2-2', 25),
(16, 1, '1.00', '100.00', '100.00', 'Revisión', 'N6E5E1R8R2-2', 6),
(22, 1, '1.00', '100.00', '100.00', 'Revisión', 'M9Q0A8W5U8-4', 8),
(23, 1, '1.00', '800.00', '800.00', 'carga de gas', 'C5A2L1B0M1-5', 11),
(24, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'C5A2L1B0M1-5', 2),
(25, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'V2T3F9U7N0-6', 34),
(26, 1, '1.00', '580.00', '580.00', 'cambio de filtro de polen', 'V2T3F9U7N0-6', 35),
(27, 1, '1.00', '500.00', '500.00', 'conector de baja', 'V2T3F9U7N0-6', 40),
(28, 1, '1.00', '100.00', '100.00', 'Revisión', 'N8A4W8M8O5-7', 8),
(29, 1, '1.00', '100.00', '100.00', 'Revisión', 'U3S3Z9P7P8-8', 10),
(30, 1, '1.00', '100.00', '100.00', 'Revisión', 'O8V4I8V4K6-9', 6),
(31, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'O8V4I8V4K6-9', 2),
(32, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'B0W9O3I6V3-10', 128),
(33, 1, '1.00', '100.00', '100.00', 'Revisión', 'B2U2K5P0Y6-11', 10),
(34, 1, '1.00', '500.00', '500.00', 'falla electrica', 'B2U2K5P0Y6-11', 138),
(35, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'A6S6O8O9W5-12', 128),
(38, 1, '1.00', '100.00', '100.00', 'Revisión', 'H1F1E4J8I0-13', 8),
(39, 1, '1.00', '500.00', '500.00', 'falla electrica', 'H1F1E4J8I0-13', 18),
(40, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'H1F1E4J8I0-13', 2),
(41, 1, '1.00', '800.00', '800.00', 'carga de gas', 'H1F1E4J8I0-13', 11),
(42, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'H1F1E4J8I0-13', 24),
(43, 1, '1.00', '1300.00', '1300.00', 'filtro deshidratador', 'H1F1E4J8I0-13', 23),
(44, 1, '1.00', '1800.00', '1800.00', 'clutch', 'H1F1E4J8I0-13', 29),
(45, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'R2K1K5Y8I5-14', 70),
(46, 2, '1.00', '800.00', '1600.00', 'cambio de balero', 'R2K1K5Y8I5-14', 57),
(47, 1, '1.00', '800.00', '800.00', 'carga de gas', 'D1O4F9J2A7-15', 132),
(48, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'P0C2W3G6I3-16', 128),
(49, 1, '1.00', '100.00', '100.00', 'Revisión', 'P0C2W3G6I3-16', 10),
(50, 1, '1.00', '100.00', '100.00', 'Revisión', 'P5D0C0E4N6-17', 10),
(51, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'P5D0C0E4N6-17', 128),
(52, 1, '1.00', '100.00', '100.00', 'Revisión', 'V6E1O7P0M7-17', 10),
(53, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'V6E1O7P0M7-17', 128),
(54, 1, '1.00', '500.00', '500.00', 'falla electrica', 'V6E1O7P0M7-17', 138),
(55, 1, '1.00', '100.00', '100.00', 'Revisión', 'Z8J2N4U1J2-18', 8),
(56, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'Z8J2N4U1J2-18', 70),
(57, 1, '1.00', '800.00', '800.00', 'carga de gas', 'W9F7T5C1U4-19', 108),
(58, 1, '1.00', '150.00', '150.00', 'pivote universal', 'W9F7T5C1U4-19', 122),
(59, 1, '1.00', '100.00', '100.00', 'Revisión', 'W9F7T5C1U4-19', 7),
(60, 1, '1.00', '1800.00', '1800.00', 'clutch', 'P5K1P7U1S2-20', 134),
(61, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'P5K1P7U1S2-20', 128),
(62, 1, '1.00', '500.00', '500.00', 'falla electrica', 'P5K1P7U1S2-20', 138),
(63, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'P5K1P7U1S2-20', 142),
(64, 1, '1.00', '100.00', '100.00', 'revision', 'P4M9F7K3J5-21', 154),
(65, 1, '1.00', '1500.00', '1500.00', 'mano de obra', 'P4M9F7K3J5-21', 174),
(66, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'P4M9F7K3J5-21', 158),
(67, 1, '1.00', '500.00', '500.00', 'falla electrica', 'P4M9F7K3J5-21', 168),
(68, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'P4M9F7K3J5-21', 172),
(69, 1, '1.00', '100.00', '100.00', 'Revisión', 'R1U7W5X6G3-22', 10),
(70, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'R1U7W5X6G3-22', 128),
(71, 1, '1.00', '600.00', '600.00', 'manguera de alta', 'R1U7W5X6G3-22', 70),
(72, 1, '1.00', '500.00', '500.00', 'lavado de sistema', 'R1U7W5X6G3-22', 69),
(73, 1, '1.00', '800.00', '800.00', 'carga de gas', 'U7S9Z8J7J9-23', 162),
(74, 1, '1.00', '100.00', '100.00', 'revision', 'U7S9Z8J7J9-23', 154),
(75, 1, '1.00', '500.00', '500.00', 'falla electrica', 'U7S9Z8J7J9-23', 168),
(76, 1, '1.00', '100.00', '100.00', 'Revisión', 'A0O0Q8G9U4-24', 8),
(77, 1, '1.00', '800.00', '800.00', 'carga de gas', 'A0O0Q8G9U4-24', 60),
(78, 1, '1.00', '800.00', '800.00', 'cambio de balero', 'A0O0Q8G9U4-24', 57),
(79, 1, '1.00', '500.00', '500.00', 'lavado de sistema', 'A0O0Q8G9U4-24', 69),
(80, 1, '1.00', '350.00', '350.00', 'carga parcial de gas', 'G8O2I6U9Q7-25', 109),
(81, 1, '1.00', '1300.00', '1300.00', 'filtro deshidratador', 'G8O2I6U9Q7-25', 116),
(82, 1, '1.00', '200.00', '200.00', 'aplicacion de aceite', 'G8O2I6U9Q7-25', 155),
(83, 2, '1.00', '800.00', '1600.00', 'cambio de balero', 'G8O2I6U9Q7-25', 104);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`venta_detalle_id`),
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
