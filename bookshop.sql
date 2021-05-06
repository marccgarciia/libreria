-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2021 a las 08:51:28
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bookshop`
--
CREATE DATABASE IF NOT EXISTS `bookshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookshop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `publication` date NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `name`, `publication`, `section`) VALUES
(42, 'It', '1986-09-15', 1),
(43, 'Drácula', '1897-05-26', 1),
(44, 'El misterio de Salem\'s Lot', '1975-10-17', 1),
(45, 'Misery', '1987-06-08', 1),
(46, 'El resplandor', '1977-01-28', 1),
(47, 'Cementerio de animales', '1983-11-14', 1),
(48, 'Zombi - Guía de supervivencia', '2003-09-16', 2),
(49, 'Guerra mundial Z', '2006-09-12', 2),
(50, 'Monster Nation', '2005-01-01', 2),
(51, 'Septiembre zombie', '2007-09-12', 2),
(52, 'Dune', '1965-12-01', 3),
(53, 'Ready Player One', '2011-08-16', 3),
(54, 'Ready Player Two', '2020-11-24', 3),
(55, 'El marciano', '2014-02-11', 3),
(56, 'Naruto, Vol. 10: un gran ninja', '2001-12-04', 4),
(57, 'Naruto, Vol. 11: Impassioned Efforts', '2011-07-13', 4),
(58, 'Naruto, Vol. 28: Homecoming', '2011-07-13', 4),
(59, 'Volumen 1 Romance Dawn: Amanecer de una aventura', '1997-12-24', 4),
(60, 'Yu-Gi-Oh!', '1997-03-04', 4),
(61, 'Yu-Gi-Oh! R', '1997-05-01', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`) VALUES
(1, 'Terror'),
(2, 'Horror'),
(3, 'Ciencia ficción'),
(4, 'Historieta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first name` varchar(250) NOT NULL,
  `last name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first name`, `last name`, `email`, `password`) VALUES
(1, 'random', 'user', 'random.user@mail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_section` (`section`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
