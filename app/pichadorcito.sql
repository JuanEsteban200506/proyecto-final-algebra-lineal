-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2025 a las 20:06:02
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
-- Base de datos: `pichadorcito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntajes_usuarios`
--

CREATE TABLE `puntajes_usuarios` (
  `id_puntajes` int(10) NOT NULL,
  `nombre` varchar(110) NOT NULL,
  `puntaje` double NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` int(1) NOT NULL DEFAULT 0 COMMENT 'Estado visual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `puntajes_usuarios`
--

INSERT INTO `puntajes_usuarios` (`id_puntajes`, `nombre`, `puntaje`, `fecha`, `estado`) VALUES
(1, 'Juan', 850, '2025-12-09 00:45:20', 1),
(2, 'María', 920, '2025-12-09 00:45:20', 1),
(3, 'Pedro', 780, '2025-12-09 00:45:20', 1),
(4, '', 850, '2025-12-09 01:05:02', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `puntajes_usuarios`
--
ALTER TABLE `puntajes_usuarios`
  ADD PRIMARY KEY (`id_puntajes`),
  ADD UNIQUE KEY `id_puntajes_2` (`id_puntajes`),
  ADD KEY `id_puntajes` (`id_puntajes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
