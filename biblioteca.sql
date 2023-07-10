-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2023 a las 16:09:41
-- Versión del servidor: 8.0.33
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `legajo`
--

CREATE TABLE `legajo` (
  `numEmpleado` int NOT NULL,
  `num_legajo` int NOT NULL,
  `rol` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `codigo` int NOT NULL,
  `titulo` varchar(30) DEFAULT NULL,
  `autor` varchar(20) DEFAULT NULL,
  `editorial` varchar(30) DEFAULT NULL,
  `tematica` varchar(30) DEFAULT NULL,
  `ubicacion` varchar(60) DEFAULT NULL,
  `cantEjeemplares` int DEFAULT NULL,
  `idioma` int DEFAULT NULL,
  `anioEdicion` int DEFAULT NULL,
  `descripcion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `numPedido` int NOT NULL,
  `cod_usuario` int NOT NULL,
  `codigo_libro` int NOT NULL,
  `formaEnvio` varchar(20) NOT NULL,
  `fechaDevolucion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `cod` int NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellido` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dni` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `direccion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `legajo` int DEFAULT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`cod`, `nombre`, `apellido`, `dni`, `direccion`, `email`, `telefono`, `legajo`, `clave`) VALUES
(1, 'kiara', 'chunga', '10123456', 'hola', 'kiarachunga28@gmail.com', NULL, NULL, '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `legajo`
--
ALTER TABLE `legajo`
  ADD PRIMARY KEY (`numEmpleado`),
  ADD UNIQUE KEY `num_legajo` (`num_legajo`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`numPedido`),
  ADD UNIQUE KEY `cod_usuario` (`cod_usuario`),
  ADD UNIQUE KEY `codigo_libro` (`codigo_libro`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cod`),
  ADD UNIQUE KEY `legajo` (`legajo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `legajo`
--
ALTER TABLE `legajo`
  MODIFY `numEmpleado` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `codigo` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `numPedido` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `cod` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `legajo`
--
ALTER TABLE `legajo`
  ADD CONSTRAINT `legajo_ibfk_1` FOREIGN KEY (`num_legajo`) REFERENCES `usuario` (`legajo`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codigo_libro`) REFERENCES `libro` (`codigo`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`cod_usuario`) REFERENCES `usuario` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
