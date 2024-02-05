-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 05-02-2024 a las 06:09:48
-- Versión del servidor: 10.11.6-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u252469687_db_iot`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`u252469687_admin2`@`127.0.0.1` PROCEDURE `consulta_historico` ()  BEGIN
        select command from vehiculo Order by ID DESC LIMIT 10;
END$$

CREATE DEFINER=`u252469687_admin2`@`127.0.0.1` PROCEDURE `consulta_orden` ()  BEGIN
        SELECT command FROM vehiculo ORDER BY reg_date DESC LIMIT 1;
END$$

CREATE DEFINER=`u252469687_admin2`@`127.0.0.1` PROCEDURE `inserta_orden` (IN `valor` VARCHAR(4))  BEGIN
        INSERT INTO vehiculo (command) VALUES (valor);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(11) NOT NULL,
  `command` varchar(4) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `command`, `reg_date`) VALUES
(1, '0', '2024-01-05 20:30:00'),
(2, 'AVAN', '2024-01-05 20:31:04'),
(3, 'AVDE', '2024-01-05 20:31:19'),
(4, 'AVAN', '2024-01-05 20:44:44'),
(5, 'AVIZ', '2024-01-05 20:44:38'),
(6, '\"AVI', '2024-01-05 20:44:54'),
(7, 'RETR', '2024-01-05 20:44:58'),
(8, 'RETR', '2024-01-05 20:45:15'),
(9, 'AVDE', '2024-01-05 20:45:19'),
(10, 'AVIZ', '2024-01-08 19:13:26'),
(11, 'REDE', '2024-01-08 19:17:23'),
(12, 'AVDE', '2024-01-08 19:37:55'),
(13, 'retr', '2024-01-08 19:40:46'),
(14, 'AVAZ', '2024-01-08 19:41:38'),
(15, '', '2024-01-08 19:45:31'),
(16, '', '2024-01-08 19:45:41'),
(17, '', '2024-01-08 19:48:00'),
(18, '', '2024-01-08 19:48:02'),
(19, '', '2024-01-08 19:48:04'),
(20, '', '2024-01-08 19:48:05'),
(21, 'PARA', '2024-01-08 19:48:26'),
(22, 'RETR', '2024-01-08 19:49:45'),
(23, 'PARA', '2024-01-08 19:49:47'),
(24, 'AVAN', '2024-01-08 19:49:48'),
(25, 'PARA', '2024-01-08 19:49:49'),
(26, 'PARA', '2024-01-08 20:06:34'),
(27, 'RETR', '2024-01-08 20:06:35'),
(28, 'RETR', '2024-01-08 20:32:11'),
(29, 'AVAN', '2024-01-08 20:32:13'),
(30, 'RETR', '2024-01-08 20:33:37'),
(31, 'RETR', '2024-01-10 02:52:08'),
(32, 'PARA', '2024-01-10 02:52:11'),
(33, 'AVAN', '2024-01-10 04:49:57'),
(34, 'RETR', '2024-01-10 04:49:58'),
(35, 'HOLA', '2024-01-10 04:52:06'),
(36, 'HOLA', '2024-01-10 05:05:24'),
(37, 'RETR', '2024-01-10 19:06:49'),
(38, 'AVAN', '2024-01-10 19:25:48'),
(39, 'PARA', '2024-01-10 19:46:40'),
(40, 'AVAN', '2024-01-10 19:47:12'),
(41, 'PARA', '2024-01-10 19:55:11'),
(42, 'AVAN', '2024-01-10 19:55:17'),
(43, 'PARA', '2024-01-10 19:59:53'),
(44, 'AVAN', '2024-01-10 19:59:56'),
(45, 'PARA', '2024-01-10 20:05:55'),
(46, 'AVAN', '2024-01-10 20:06:01'),
(47, 'RETR', '2024-01-10 20:15:19'),
(48, 'AVAN', '2024-01-10 20:15:32'),
(49, 'PARA', '2024-01-10 20:19:53'),
(50, 'AVAN', '2024-01-10 20:19:56'),
(51, 'RETR', '2024-01-10 20:31:14'),
(52, 'AVAN', '2024-01-10 20:31:18'),
(53, 'RETR', '2024-01-12 02:44:56'),
(54, 'PARA', '2024-01-12 02:44:59'),
(55, 'AVAN', '2024-01-12 02:45:02'),
(56, 'PARA', '2024-01-12 02:46:46'),
(57, 'AVAN', '2024-01-12 02:58:19'),
(58, 'RETR', '2024-01-12 02:58:25'),
(59, 'PARA', '2024-01-12 02:58:31'),
(60, 'PUTO', '2024-01-12 02:58:53'),
(61, 'AVAN', '2024-01-12 02:59:06'),
(62, 'RETR', '2024-01-12 03:03:51'),
(63, 'AVAN', '2024-01-12 03:03:59'),
(64, '', '2024-01-12 03:18:56'),
(65, 'AVAN', '2024-01-12 03:19:07'),
(66, 'PARA', '2024-01-15 20:22:15'),
(67, 'AVAN', '2024-01-15 20:22:16'),
(68, 'AVAN', '2024-01-15 20:22:16'),
(69, 'AVAN', '2024-01-15 20:22:16'),
(70, 'PARA', '2024-01-15 20:22:16'),
(71, 'AVAN', '2024-01-15 20:22:16'),
(72, 'AVAN', '2024-01-15 20:22:17'),
(73, 'PARA', '2024-01-15 20:22:17'),
(74, 'AVAN', '2024-01-15 20:22:17'),
(75, 'PARA', '2024-01-15 20:22:19'),
(76, 'AVAN', '2024-01-15 20:22:25'),
(77, 'PARA', '2024-01-15 20:22:28'),
(78, 'AVAN', '2024-01-15 20:22:31'),
(79, 'PARA', '2024-01-15 20:22:34'),
(80, 'AVAN', '2024-01-15 20:22:50'),
(81, 'AVAN', '2024-01-15 20:33:00'),
(82, 'PARA', '2024-01-15 20:33:02'),
(83, 'AVAN', '2024-01-15 20:33:10'),
(84, 'PARA', '2024-01-15 20:33:11'),
(85, 'AVAZ', '2024-01-17 02:34:24'),
(86, 'AVAN', '2024-01-17 02:34:35'),
(87, 'PARA', '2024-01-17 02:36:18'),
(88, 'AVAN', '2024-01-17 02:36:25'),
(89, 'PARA', '2024-01-17 02:40:39'),
(90, 'AVAN', '2024-01-17 02:40:45'),
(91, 'PARA', '2024-01-17 03:05:35'),
(92, 'AVAN', '2024-01-17 03:07:32'),
(93, 'PARA', '2024-01-17 03:07:42'),
(94, 'AVAN', '2024-01-17 03:07:57'),
(95, 'PARA', '2024-01-17 03:08:05'),
(96, 'AVAN', '2024-01-17 03:10:25'),
(97, 'PARA', '2024-01-17 03:10:29'),
(98, 'AVAN', '2024-01-17 03:19:56'),
(99, 'PARA', '2024-01-17 03:20:02'),

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1216;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
