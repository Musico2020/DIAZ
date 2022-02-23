-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 21:54:48
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diaz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `nombre` varchar(40) NOT NULL,
  `cedula` int(11) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`nombre`, `cedula`, `apellidos`, `direccion`, `telefono`, `correo`, `usuario`, `clave`) VALUES
('OSCAR', 709789, 'DIAZ MARTINEZ', 'calle 11 #22 34', 2147483647, 'yeyo@gmail.com', '', ''),
('gfdgdg', 543543, 'gfdgdfg', 'calle 11 #22 34', 32446666, 'nsgsgsg@gmail.com', '', ''),
('DENILSON', 1876954, 'DIAZ MARTINEZ', 'calle 11 #22 34', 234123376, 'musico@gmail.com', '', ''),
('YURA', 2145678, 'BOLAÑOS', 'DIAGONAL 22 43 76', 2147483647, 'ddiltec@gmail.com', '', ''),
('KARINA', 34343545, 'MESA', 'CALLE 56 67 54', 32566777, 'MEZA@GMAIL.COM', '', ''),
('jose montesino', 12456987, 'montesino', 'CALLE 16C #21 03', 2147483647, 'monte@gmail.com', '', ''),
('jkjhjhk', 7766876, 'hhghghg', 'jhghjg', 87875, 'gffg@gfdgdgdg', '', ''),
('estiven', 1987766, 'gddfgfdg', 'fgdfgfdgfdgfdg', 2147483647, 'fddffsd@gmail.com', 'estiven3', '12345'),
('valeria', 1001096259, 'Martinez', 'CALLE 16C #21 03', 2147483647, 'gdssgdsa@gmail.com', 'valeria2', 'valery12'),
('CARLOS ', 1065614961, 'CASTELLAR', 'DIAGONAL 22 43 76', 2147483647, 'carloscastellar90@hotmail.com', 'Carloscas', 'carlos12'),
('Carlos Andres', 1065614961, 'Castellar Florez', 'Diagonal 11B # 42 - 94', 2147483647, 'carloscastellar90@hotmail.com', 'castellar90', '050390'),
('', 1782382949, 'CHIQUILLO', 'calle 11 #22 34', 2147483647, 'aleidis@gmail.com', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
