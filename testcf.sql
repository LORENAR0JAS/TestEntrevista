-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-08-2023 a las 23:07:00
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testcf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla1`
--

CREATE TABLE `tabla1` (
  `id` int(11) NOT NULL,
  `campo1` int(11) NOT NULL,
  `campo2` int(11) NOT NULL,
  `campo3` int(11) NOT NULL,
  `campo4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla1`
--

INSERT INTO `tabla1` (`id`, `campo1`, `campo2`, `campo3`, `campo4`) VALUES
(1, 1111, 2221, 3331, 4441),
(2, 1112, 2222, 3332, 4442),
(3, 1113, 2223, 3333, 4443),
(4, 1114, 2224, 3334, 4444),
(5, 1115, 2225, 3335, 4445),
(6, 1116, 2226, 3336, 4446);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla2`
--

CREATE TABLE `tabla2` (
  `ID` int(10) UNSIGNED NOT NULL,
  `campo1` int(11) DEFAULT NULL,
  `campo2` int(11) DEFAULT NULL,
  `campo3` int(11) DEFAULT NULL,
  `idtabla1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla2`
--

INSERT INTO `tabla2` (`ID`, `campo1`, `campo2`, `campo3`, `idtabla1`) VALUES
(1, 1111, 2221, 3331, 1),
(2, 1112, 2222, 3332, 1),
(3, 1113, 2223, 3333, 2),
(4, 1114, 2224, 3334, 2),
(5, 1115, 2225, 3335, 3),
(6, 1116, 2226, 3336, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla3`
--

CREATE TABLE `tabla3` (
  `ID` int(10) UNSIGNED NOT NULL,
  `campo1` int(11) DEFAULT NULL,
  `campo2` int(11) DEFAULT NULL,
  `idtabla1` int(11) DEFAULT NULL,
  `idtabla2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tabla3`
--

INSERT INTO `tabla3` (`ID`, `campo1`, `campo2`, `idtabla1`, `idtabla2`) VALUES
(1, 1111, 2221, 1, 1),
(2, 1112, 2222, 2, 1),
(3, 1113, 2223, 2, 2),
(4, 1114, 2224, 3, 3),
(5, 1115, 2225, 4, 3),
(6, 1116, 2226, 4, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla1`
--
ALTER TABLE `tabla1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tabla3`
--
ALTER TABLE `tabla3`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla2`
--
ALTER TABLE `tabla2`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tabla3`
--
ALTER TABLE `tabla3`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
