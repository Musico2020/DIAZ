-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2021 a las 21:55:37
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
-- Base de datos: `digilmarch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrado`
--

CREATE TABLE `administrado` (
  `idADMINISTRADO` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `coreo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrado`
--

INSERT INTO `administrado` (`idADMINISTRADO`, `nombre`, `apellido`, `telefono`, `direccion`, `contraseña`, `coreo`) VALUES
(1, 'DAVINSON', 'NARVAEZ', '7348372366', 'CALLE 45 65 27', 'DAVI542', 'HHBSTG@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL,
  `USUARIO_idUSUARIO` int(11) NOT NULL,
  `SALIDA_id_salida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`nombre`, `apellido`, `usuario`, `contraseña`, `USUARIO_idUSUARIO`, `SALIDA_id_salida`) VALUES
('ANDERSON ', 'QUINTERO', 'ANDER123', 'ANDER2424', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `idENTRADA` int(11) NOT NULL,
  `num_pedidos` varchar(45) NOT NULL,
  `codigo_producto` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `PROVEEDOR_idprovedor` int(11) NOT NULL,
  `MATERIALES_idMATERIALES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`idENTRADA`, `num_pedidos`, `codigo_producto`, `cantidad`, `PROVEEDOR_idprovedor`, `MATERIALES_idMATERIALES`) VALUES
(3, '26 TONELADAS', '2525', '3 TONELADAS', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `idfactura` int(11) NOT NULL,
  `idfecha_factura` varchar(45) NOT NULL,
  `idusuario` varchar(45) NOT NULL,
  `idpedidos` varchar(45) NOT NULL,
  `idcantidad_pedidos` varchar(45) NOT NULL,
  `idtotal` varchar(45) NOT NULL,
  `USUARIO_idUSUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`idfactura`, `idfecha_factura`, `idusuario`, `idpedidos`, `idcantidad_pedidos`, `idtotal`, `USUARIO_idUSUARIO`) VALUES
(1, '25 de septiembre 2019', 'DENILSON', '5 MTS DE TELA', '34 MTS', '65 MTS', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materiales`
--

CREATE TABLE `materiales` (
  `idMATERIALES` int(11) NOT NULL,
  `nom_material` varchar(45) NOT NULL,
  `valor_material` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `tipo_material` varchar(45) NOT NULL,
  `FACTURAS_idfactura` int(11) NOT NULL,
  `ADMINISTRADO_idADMINISTRADO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materiales`
--

INSERT INTO `materiales` (`idMATERIALES`, `nom_material`, `valor_material`, `color`, `cantidad`, `tipo_material`, `FACTURAS_idfactura`, `ADMINISTRADO_idADMINISTRADO`) VALUES
(2, 'TELAS', '34000', 'NEGRO', '200 toneladas', 'LATEX', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `provedor` int(11) NOT NULL,
  `empresa` varchar(45) NOT NULL,
  `distribuidora` varchar(45) NOT NULL,
  `id_entrada` varchar(45) NOT NULL,
  `id_pedido` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`provedor`, `empresa`, `distribuidora`, `id_entrada`, `id_pedido`) VALUES
(1, 'LA ALEJA', 'LA ALEJA', '23 TONELADAS', '2 KILOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `id_salida` int(11) NOT NULL,
  `id_usuario` varchar(45) NOT NULL,
  `id_producto` varchar(45) NOT NULL,
  `id_materiales` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `fecha_hora` varchar(45) NOT NULL,
  `PROVEEDOR_idprovedor` int(11) NOT NULL,
  `MATERIALES_idMATERIALES` int(11) NOT NULL,
  `FACTURAS_idfactura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `salida`
--

INSERT INTO `salida` (`id_salida`, `id_usuario`, `id_producto`, `id_materiales`, `cantidad`, `fecha_hora`, `PROVEEDOR_idprovedor`, `MATERIALES_idMATERIALES`, `FACTURAS_idfactura`) VALUES
(1, 'LUIS ESTIVEN', 'HILOS', 'ALGODON', '54 KILOS', '25 DE FEBRERO ALAS 12:00', 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `contraseña` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `correo`, `contraseña`) VALUES
(1, 'DENILSON', 'GBBNJA@GMAIL.COM', 'lore23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrado`
--
ALTER TABLE `administrado`
  ADD PRIMARY KEY (`idADMINISTRADO`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD KEY `fk_EMPLEADO_USUARIO1_idx` (`USUARIO_idUSUARIO`),
  ADD KEY `fk_EMPLEADO_SALIDA1_idx` (`SALIDA_id_salida`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`idENTRADA`),
  ADD KEY `fk_ENTRADA_PROVEEDOR1_idx` (`PROVEEDOR_idprovedor`),
  ADD KEY `fk_ENTRADA_MATERIALES1_idx` (`MATERIALES_idMATERIALES`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `fk_FACTURAS_USUARIO1_idx` (`USUARIO_idUSUARIO`);

--
-- Indices de la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD PRIMARY KEY (`idMATERIALES`),
  ADD KEY `fk_MATERIALES_FACTURAS1_idx` (`FACTURAS_idfactura`),
  ADD KEY `fk_MATERIALES_ADMINISTRADO1_idx` (`ADMINISTRADO_idADMINISTRADO`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`provedor`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`id_salida`),
  ADD KEY `fk_SALIDA_PROVEEDOR1_idx` (`PROVEEDOR_idprovedor`),
  ADD KEY `fk_SALIDA_MATERIALES1_idx` (`MATERIALES_idMATERIALES`),
  ADD KEY `fk_SALIDA_FACTURAS1_idx` (`FACTURAS_idfactura`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrado`
--
ALTER TABLE `administrado`
  MODIFY `idADMINISTRADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `idENTRADA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `materiales`
--
ALTER TABLE `materiales`
  MODIFY `idMATERIALES` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `provedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `id_salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD CONSTRAINT `fk_EMPLEADO_SALIDA1` FOREIGN KEY (`SALIDA_id_salida`) REFERENCES `salida` (`id_salida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_EMPLEADO_USUARIO1` FOREIGN KEY (`USUARIO_idUSUARIO`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `fk_ENTRADA_MATERIALES1` FOREIGN KEY (`MATERIALES_idMATERIALES`) REFERENCES `materiales` (`idMATERIALES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ENTRADA_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_idprovedor`) REFERENCES `proveedor` (`provedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `fk_FACTURAS_USUARIO1` FOREIGN KEY (`USUARIO_idUSUARIO`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materiales`
--
ALTER TABLE `materiales`
  ADD CONSTRAINT `fk_MATERIALES_ADMINISTRADO1` FOREIGN KEY (`ADMINISTRADO_idADMINISTRADO`) REFERENCES `administrado` (`idADMINISTRADO`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_MATERIALES_FACTURAS1` FOREIGN KEY (`FACTURAS_idfactura`) REFERENCES `facturas` (`idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `salida`
--
ALTER TABLE `salida`
  ADD CONSTRAINT `fk_SALIDA_FACTURAS1` FOREIGN KEY (`FACTURAS_idfactura`) REFERENCES `facturas` (`idfactura`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SALIDA_MATERIALES1` FOREIGN KEY (`MATERIALES_idMATERIALES`) REFERENCES `materiales` (`idMATERIALES`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_SALIDA_PROVEEDOR1` FOREIGN KEY (`PROVEEDOR_idprovedor`) REFERENCES `proveedor` (`provedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
