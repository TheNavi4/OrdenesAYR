-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2023 a las 20:00:29
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
(1, 1, 'Caja Principal', '85930.00');

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
(4, 'Clima sencillo y doble', 'Autoclimas'),
(5, 'Tracto camion', 'Autoclimas');

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
(6, '2012', 'jc-84d-8d', 'Vanessa Perez', 'fiesta', 'ford', 'rojo', 'Apizaco', '25836547595', ''),
(7, '2017', '45f-gf5-56', 'Eduardo Tecuapacho', 'miracle', 'tesla', 'gris', 'new york', '2489631478', ''),
(9, '2017', '14-hjd-45', 'Carlos Sanchez', 'coche', 'Chevrolet', 'amarillo', 'Apizaco', '2415987456', ''),
(10, '2010', 'XT6-905-D', 'Vicente Hernández Guerrero', 'marcel', 'bmw', 'blanco', 'Tlaxcala', '2461701640', ''),
(11, '2018', '2dadfsd-4', 'Ricardo Herndez', 'figo', 'Ford', 'gris', 'Apizco', '241598423', ''),
(12, '2019', '41hgf56', 'samuel l jackson', 'sport', 'Bmw', 'rojo', 'apizaco', '24588445651', ''),
(13, '2015', '12fd45df', 'Alejandro Orozco', 'Aquamirne', 'BMW', 'azul', 'Apizaco', '2411474747', ''),
(14, '2015', '14fdf5d5', 'Eduardo Jaramillo', 'Jetta', 'BMW', 'rojo', 'Apizaco', '2411599988', ''),
(15, '2017', '......................', 'Miguel Juarez', 'Sprinter', 'Nissan', 'Blanco', 'Tetla', '2145698444', ''),
(16, '2019', '...................', 'Darien Cornona', 'Lobo', 'Chevrolet', '..............', 'cdmx', '24666595887', ''),
(17, '2019', '.................', 'Samantha Cornona Peralta', 'fiesta', 'wolgwaguen', '.....................', 'Apizaco', '2411023650', ''),
(19, '2017', '.................', 'alan zaid cruz', 'jetta', 'Chevrolet', '.................', 'panzacola', '24156320000', ''),
(20, '2013', '...........', 'Alfonoso Rodriguez', 'Casio', 'bmw', 'black', 'Apziaco', '2583691478', '');

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
(2, 'cambio de balero caja fria', 'cambio de balero', 2147483642, 'Unidad', '1.00', '3500.00', 'caja fria', '', '', '', 2),
(4, 'Autobus revision', 'Revisión', 999999999, 'Unidad', '1.00', '500.00', 'Autobus', '', '', '', 3),
(6, 'revision caja fria', 'Revisión', 2147483643, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(8, 'Revision clima SD', 'Revisión', 2147483641, 'Unidad', '1.00', '100.00', 'clima SD', '', '', '', 4),
(11, 'carga de gas caja fria', 'carga de gas', 99999996, 'Unidad', '1.00', '2800.00', 'caja fria', '', '', '', 2),
(12, 'Control de clima caja fria', 'Control de clima', 2147483647, 'Unidad', '1.00', '25000.00', 'caja fria', '', '', '', 2),
(13, 'manguera de baja caja fria', 'manguera de baja', 2147483647, 'Unidad', '1.00', '6500.00', 'caja fria', '', '', '', 2),
(15, 'lavado de sistema caja fria', 'lavado de sistema', 2147483646, 'Unidad', '1.00', '4000.00', 'caja fria', '', '', '', 2),
(16, 'bajar tablero caja fria', 'bajar tablero', 2147483647, 'Unidad', '1.00', '1.00', 'caja fria', '', '', '', 2),
(17, 'mantenimiento de soplador caja fria', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '2500.00', 'caja fria', '', '', '', 2),
(18, 'falla electrica caja fria', 'falla electrica', 2147483645, 'Unidad', '1.00', '1500.00', 'caja fria', '', '', '', 2),
(19, 'soldar tubo caja fria', 'soldar tubo', 2147483647, 'Unidad', '1.00', '1500.00', 'caja fria', '', '', '', 2),
(20, 'conector de baja caja fria', 'conector de baja', 2147483647, 'Unidad', '1.00', '4200.00', 'caja fria', '', '', '', 2),
(21, 'carga parcial de gas caja fria', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '1400.00', 'caja fria', '', '', '', 2),
(22, 'soldar condensador caja fria', 'soldar condensador', 2147483647, 'Unidad', '1.00', '2500.00', 'caja fria', '', '', '', 2),
(23, 'filtro deshidratador caja fria', 'filtro deshidratador', 2147483646, 'Unidad', '1.00', '2500.00', 'caja fria', '', '', '', 2),
(24, 'manguera de alta caja fria', 'manguera de alta', 2147483645, 'Unidad', '1.00', '4500.00', 'caja fria', '', '', '', 2),
(26, 'recuperacion y carga de gas caja fria', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '500.00', 'caja fria', '', '', '', 2),
(28, 'pivote universal caja fria', 'pivote universal', 2147483647, 'Unidad', '1.00', '200.00', 'caja fria', '', '', '', 2),
(29, 'clutch caja fria', 'clutch', 2147483645, 'Unidad', '1.00', '6500.00', 'caja fria', '', '', '', 2),
(30, 'cambio de filtro de polen caja fria', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '1.00', 'caja fria', '', '', '', 2),
(31, 'aplicacion de aceite caja fria', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'caja fria', '', '', '', 2),
(32, 'aplicacion de aceite autobus', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'autobus', '', '', '', 3),
(33, 'bajar tablero autobus', 'bajar tablero', 2147483647, 'Unidad', '1.00', '1500.00', 'autobus', '', '', '', 3),
(34, 'cambio de balero autobus', 'cambio de balero', 2147483646, 'Unidad', '1.00', '2500.00', 'autobus', '', '', '', 3),
(36, 'cambio de plato autobus', 'cambio de plato', 2147483647, 'Unidad', '1.00', '4500.00', 'autobus', '', '', '', 3),
(37, 'carga de gas autobus', 'carga de gas', 2147483647, 'Unidad', '1.00', '2800.00', 'autobus', '', '', '', 3),
(38, 'carga parcial de gas autobus', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '1400.00', 'autobus', '', '', '', 3),
(40, 'conector de baja autobus', 'conector de baja', 2147483646, 'Unidad', '1.00', '4200.00', 'autobus', '', '', '', 3),
(41, 'control de clima autobus', 'control de clima', 2147483647, 'Unidad', '1.00', '8500.00', 'autobus', '', '', '', 3),
(43, 'falla electrica autobus', 'falla electrica', 2147483647, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(45, 'filtro deshidratador autobus', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '2500.00', 'autobus', '', '', '', 3),
(46, 'lavado de sistema autobus', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '4000.00', 'autobus', '', '', '', 3),
(47, 'manguera de alta autobus', 'manguera de alta', 2147483647, 'Unidad', '1.00', '4500.00', 'autobus', '', '', '', 3),
(48, 'manguera de baja autobus', 'manguera de baja', 2147483647, 'Unidad', '1.00', '6500.00', 'autobus', '', '', '', 3),
(50, 'mantenimiento de soplador autobus', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '1500.00', 'autobus', '', '', '', 3),
(51, 'pivote universal autobus', 'pivote universal', 2147483647, 'Unidad', '1.00', '200.00', 'autobus', '', '', '', 3),
(52, 'recuperacion y carga de gas autobus', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '500.00', 'autobus', '', '', '', 3),
(53, 'soldar condensador autobus', 'soldar condensador autobus', 2147483647, 'Unidad', '1.00', '2500.00', 'autobus', '', '', '', 3),
(54, 'soldar tubo autobus', 'soldar tubo', 2147483647, 'Unidad', '1.00', '1500.00', 'autobus', '', '', '', 3),
(55, 'aplicacion de aceite clima SD', 'aplicacion de aceite', 2147483647, 'Unidad', '1.00', '300.00', 'clima SD', '', '', '', 4),
(56, 'bajar tablero clima SD', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2000.00', 'clima SD', '', '', '', 4),
(57, 'cambio de balero clima SD', 'cambio de balero', 2147483642, 'Unidad', '1.00', '800.00', 'clima SD', '', '', '', 4),
(58, 'cambio de filtro de polen clima SD', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'clima SD', '', '', '', 4),
(59, 'cambio de plato clima SD', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1800.00', 'clima SD', '', '', '', 4),
(60, 'carga de gas clima sencillo', 'carga de gas clima sencillo', 2147483646, 'Unidad', '1.00', '650.00', 'clima SD', '', '', '', 4),
(61, 'carga parcial de gas clima sencillo', 'carga parcial de gas clima sencillo', 2147483647, 'Unidad', '1.00', '350.00', 'clima SD', '', '', '', 4),
(63, 'conector de baja clima SD', 'conector de baja', 2147483646, 'Unidad', '1.00', '150.00', 'clima SD', '', '', '', 4),
(66, 'falla electrica clima SD', 'falla electrica', 2147483646, 'Unidad', '1.00', '300.00', 'clima SD', '', '', '', 4),
(67, 'filtro de cabina clima SD', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'clima SD', '', '', '', 4),
(68, 'filtro deshidratador clima SD', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'clima SD', '', '', '', 4),
(69, 'lavado de sistema clima SD', 'lavado de sistema', 2147483644, 'Unidad', '1.00', '2000.00', 'clima SD', '', '', '', 4),
(70, 'manguera de alta clima SD', 'manguera de alta', 2147483644, 'Unidad', '1.00', '380.00', 'clima SD', '', '', '', 4),
(71, 'manguera de baja clima SD', 'manguera de baja', 2147483647, 'Unidad', '1.00', '600.00', 'clima SD', '', '', '', 4),
(73, 'mantenimiento de soplador clima SD', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '1200.00', 'clima SD', '', '', '', 4),
(74, 'pivote universal clima SD', 'pivote universal', 2147483647, 'Unidad', '1.00', '200.00', 'clima SD', '', '', '', 4),
(75, 'recuperacion y carga de gas clima SD', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '350.00', 'clima SD', '', '', '', 4),
(76, 'soldar condensador clima SD', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'clima SD', '', '', '', 4),
(101, 'cambio de poela caja fria', 'cambio de polea', 2147483647, 'Unidad', '1.00', '3500.00', 'caja fria', '', '', '', 2),
(150, 'cambio de polea autobus', 'cambio de polea', 2147483647, 'Unidad', '1.00', '4200.00', 'autobus', '', '', '', 3),
(151, 'cambio de polea clima SD', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'clima SD', '', '', '', 4),
(153, 'soldar tubo clima SD', 'soldar tubo', 2147483647, 'Unidad', '1.00', '1200.00', 'clima SD', '', '', '', 4),
(154, 'revision tracto', 'revision', 2147483645, 'Unidad', '1.00', '100.00', 'tracto camion', '', '', '', 5),
(156, 'aplicacion de aceite tracto', 'apliacion de aceite', 2147483647, 'Unidad', '1.00', '200.00', 'tracto camion', '', '', '', 5),
(157, 'bajar tablero tracto', 'bajar tablero', 2147483647, 'Unidad', '1.00', '2000.00', 'tracto camion', '', '', '', 5),
(158, 'cambio de balero tracto', 'cambio de balero', 2147483646, 'Unidad', '1.00', '800.00', 'tracto camion', '', '', '', 5),
(159, 'cambio de filtro de polen tracto', 'cambio de filtro de polen', 2147483647, 'Unidad', '1.00', '580.00', 'tracto camion', '', '', '', 5),
(160, 'cambio de plato tracto', 'cambio de plato', 2147483647, 'Unidad', '1.00', '1200.00', 'tracto camion', '', '', '', 5),
(161, 'cambio de polea tracto', 'cambio de polea', 2147483647, 'Unidad', '1.00', '1500.00', 'tracto camion', '', '', '', 5),
(162, 'carga de gas tracto', 'carga de gas', 2147483646, 'Unidad', '1.00', '800.00', 'tracto camion', '', '', '', 5),
(163, 'carga parcial de gas tracto', 'carga parcial de gas', 2147483647, 'Unidad', '1.00', '400.00', 'tracto camion', '', '', '', 5),
(165, 'conector de baja tracto', 'conector de baja', 2147483647, 'Unidad', '1.00', '250.00', 'tracto camion', '', '', '', 5),
(168, 'falla electrica tracto', 'falla electrica', 2147483645, 'Unidad', '1.00', '300.00', 'tracto camion', '', '', '', 5),
(169, 'filtro de cabina tracto', 'filtro de cabina', 2147483647, 'Unidad', '1.00', '580.00', 'tracto camion', '', '', '', 5),
(170, 'filtro deshidratador tracto', 'filtro deshidratador', 2147483647, 'Unidad', '1.00', '1300.00', 'tracto camion', '', '', '', 5),
(171, 'lavado de sistema tracto', 'lavado de sistema', 2147483647, 'Unidad', '1.00', '2000.00', 'tracto camion', '', '', '', 5),
(172, 'manguera de alta corta tracto', 'manguera de alta corta', 2147483646, 'Unidad', '1.00', '380.00', 'tracto camion', '', '', '', 5),
(173, 'manguera de baja corta tracto', 'manguera de baja corta', 2147483647, 'Unidad', '1.00', '500.00', 'tracto camion', '', '', '', 5),
(175, 'mantenimiento de soplador tracto', 'mantenimiento de soplador', 2147483647, 'Unidad', '1.00', '1500.00', 'tracto camion', '', '', '', 5),
(176, 'pivote universal tracto', 'pivote universal', 2147483647, 'Unidad', '1.00', '200.00', 'tracto camion', '', '', '', 5),
(177, 'recuperacion y carga de gas tracto', 'recuperacion y carga de gas', 2147483647, 'Unidad', '1.00', '350.00', 'tracto camion', '', '', '', 5),
(178, 'soldar condensador tracto', 'soldar condensador', 2147483647, 'Unidad', '1.00', '1200.00', 'tracto camion', '', '', '', 5),
(179, 'soldar tubo tracto', 'soldar tubo', 2147483647, 'Unidad', '1.00', '500.00', 'tracto camion', '', '', '', 5),
(180, 'manguera de alta mediana tracto', 'manguera de alta mediana', 2147483647, 'Unidad', '1.00', '500.00', 'tracto camion', '', '', '', 5),
(181, 'manguera de alta larga tracto', 'manguera de alta larga', 2147483647, 'Unidad', '1.00', '600.00', 'tracto camion', '', '', '', 5),
(182, 'manguera de baja mediana tracto', 'manguera de baja mediana', 2147483647, 'Unidad', '1.00', '600.00', 'tracto camion', '', '', '', 5),
(183, 'manguera de baja larga tracto', 'manguera de baja larga', 2147483647, 'Unidad', '1.00', '800.00', 'tracto camion', '', '', '', 5),
(184, 'carga de gas clima doble', 'carga de gas clima doble', 2147483647, 'Unidad', '1.00', '800.00', 'clima SD', '', '', '', 4),
(185, 'carga parcial de gas clima doble', 'carga parcial de gas clima doble', 2147483647, 'Unidad', '1.00', '400.00', 'clima SD', '', '', '', 4);

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
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

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
