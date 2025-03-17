-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-03-2025 a las 04:24:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `email`, `pass`, `nombre`, `direccion`) VALUES
(5, 'cliente@gmail.com', '4983a0ab83ed86e0e7213c8783940193', 'Cliente', ''),
(6, 'lucas@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Lucas', 'El jaguel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

CREATE TABLE `detalleventas` (
  `id` int(11) NOT NULL,
  `idProd` int(5) NOT NULL,
  `idVenta` int(5) NOT NULL,
  `cantidad` int(5) NOT NULL,
  `precio` double NOT NULL,
  `subTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `filename` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `web_path` varchar(250) NOT NULL DEFAULT '',
  `system_path` varchar(250) NOT NULL DEFAULT '',
  `test` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `filename`, `filesize`, `web_path`, `system_path`, `test`) VALUES
(1, 'coca2.25L.webp', 8928, '/AllYouNeed/uploads/1.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/1.webp', 0),
(2, 'cocacola2.25l.webp', 22588, '/AllYouNeed/uploads/2.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/2.webp', 0),
(3, 'cocacola500ml.jpg', 86821, '/AllYouNeed/uploads/3.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/3.jpg', 0),
(4, 'cocacola2.25l.webp', 22588, '/AllYouNeed/uploads/4.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/4.webp', 0),
(5, 'coca2.25L.webp', 8928, '/AllYouNeed/uploads/5.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/5.webp', 0),
(6, 'cocacola500ml.jpg', 86821, '/AllYouNeed/uploads/6.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/6.jpg', 0),
(7, 'coca2.25L.webp', 8928, '/AllYouNeed/uploads/7.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/7.webp', 0),
(8, 'cocacola2.25l.webp', 22588, '/AllYouNeed/uploads/8.webp', 'C:/xampp/htdocs/AllYouNeed/uploads/8.webp', 0),
(9, '26.jpg', 57587, '/AllYouNeed/uploads/9.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/9.jpg', 0),
(10, '27.jpg', 70566, '/AllYouNeed/uploads/10.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/10.jpg', 0),
(11, '21.jpg', 70211, '/AllYouNeed/uploads/11.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/11.jpg', 0),
(12, '22.jpg', 22189, '/AllYouNeed/uploads/12.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/12.jpg', 0),
(13, '19.jpg', 24214, '/AllYouNeed/uploads/13.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/13.jpg', 0),
(14, '20.jpg', 23931, '/AllYouNeed/uploads/14.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/14.jpg', 0),
(15, '24.jpg', 78529, '/AllYouNeed/uploads/15.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/15.jpg', 0),
(16, '25.jpg', 80653, '/AllYouNeed/uploads/16.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/16.jpg', 0),
(17, '23.jpg', 33754, '/AllYouNeed/uploads/17.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/17.jpg', 0),
(18, '30.jpg', 59200, '/AllYouNeed/uploads/18.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/18.jpg', 0),
(19, '31.jpg', 96428, '/AllYouNeed/uploads/19.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/19.jpg', 0),
(20, '28.jpg', 39358, '/AllYouNeed/uploads/20.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/20.jpg', 0),
(21, '29.jpg', 20467, '/AllYouNeed/uploads/21.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/21.jpg', 0),
(22, '27.jpg', 70566, '/AllYouNeed/uploads/22.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/22.jpg', 0),
(23, '26.jpg', 57587, '/AllYouNeed/uploads/23.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/23.jpg', 0),
(24, '22.jpg', 22189, '/AllYouNeed/uploads/24.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/24.jpg', 0),
(25, '21.jpg', 70211, '/AllYouNeed/uploads/25.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/25.jpg', 0),
(26, '20.jpg', 23931, '/AllYouNeed/uploads/26.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/26.jpg', 0),
(27, '19.jpg', 24214, '/AllYouNeed/uploads/27.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/27.jpg', 0),
(28, '25.jpg', 80653, '/AllYouNeed/uploads/28.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/28.jpg', 0),
(29, '24.jpg', 78529, '/AllYouNeed/uploads/29.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/29.jpg', 0),
(30, '40.jpg', 33754, '/AllYouNeed/uploads/30.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/30.jpg', 0),
(31, '31.jpg', 96428, '/AllYouNeed/uploads/31.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/31.jpg', 0),
(32, '30.jpg', 59200, '/AllYouNeed/uploads/32.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/32.jpg', 0),
(33, '29.jpg', 20467, '/AllYouNeed/uploads/33.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/33.jpg', 0),
(34, '28.jpg', 39358, '/AllYouNeed/uploads/34.jpg', 'C:/xampp/htdocs/AllYouNeed/uploads/34.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `existencia` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `existencia`) VALUES
(3, 'Agua', 500, 10),
(4, 'Celular', 200000, 5),
(5, 'Lavadora', 300000, 10),
(6, 'Leche', 1500, 10),
(7, 'Sillon', 80000, 1),
(8, 'Televisión', 200000, 5),
(9, 'Zanahoria', 800, 10),
(10, 'Agua 2', 750, 10),
(11, 'Celular 2', 250000, 5),
(12, 'Lavadora 2', 290000, 10),
(13, 'Leche 2', 1600, 20),
(14, 'Sillón 2', 90000, 5),
(15, 'Televisión 2', 195000, 7),
(16, 'Zanahoria 2', 1000, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_files`
--

CREATE TABLE `productos_files` (
  `producto_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_files`
--

INSERT INTO `productos_files` (`producto_id`, `file_id`) VALUES
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(6, 15),
(6, 16),
(7, 17),
(8, 18),
(8, 19),
(9, 20),
(9, 21),
(10, 22),
(10, 23),
(11, 24),
(11, 25),
(12, 26),
(12, 27),
(5, 13),
(5, 14),
(13, 28),
(13, 29),
(14, 30),
(15, 31),
(15, 32),
(16, 33),
(16, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `pass`, `nombre`) VALUES
(1, 'vlucas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Lucas'),
(2, 'lanky@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Lankyros'),
(4, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `idCli` int(5) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kEmail` (`email`);

--
-- Indices de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkIdProd` (`idProd`),
  ADD KEY `fkIdVenta` (`idVenta`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkidCli` (`idCli`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD CONSTRAINT `idProd` FOREIGN KEY (`idProd`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idVenta` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `idCli` FOREIGN KEY (`idCli`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
