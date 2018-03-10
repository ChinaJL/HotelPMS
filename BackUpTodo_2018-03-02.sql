-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2018 a las 15:16:58
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hotelpms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristica`
--

CREATE TABLE `caracteristica` (
  `idCaracteristica` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caracteristica`
--

INSERT INTO `caracteristica` (`idCaracteristica`, `descripcion`) VALUES
(1, 'Tipo de Cama'),
(2, 'Número de camas'),
(3, 'Capacidad Máxima'),
(4, 'Área de Habitación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicahabitacion`
--

CREATE TABLE `caracteristicahabitacion` (
  `idCaracteristica` int(11) NOT NULL,
  `idHabitacion` varchar(100) NOT NULL,
  `valor` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caracteristicahabitacion`
--

INSERT INTO `caracteristicahabitacion` (`idCaracteristica`, `idHabitacion`, `valor`) VALUES
(1, '101', '1 plaza y media'),
(1, '102', '2 Plazas'),
(1, '103', '2 Plazas'),
(1, '104', 'Queen'),
(1, '105', '2 Plazas'),
(1, '106', 'Queen'),
(1, '201', '2 Plazas'),
(1, '202', 'Queen'),
(1, '203', 'Queen'),
(1, '204', '1 Plaza y media'),
(1, '205', '2 Plazas'),
(1, '206', '2 Plazas'),
(1, '207', '2 Plazas'),
(1, '208', '2 Plazas'),
(1, '209', '2 Plazas'),
(1, '210', '2 Plazas'),
(1, '211', '1 Plaza y media'),
(1, '301', '2 Plazas'),
(1, '302', '2 Plazas'),
(1, '303', '2 Plazas'),
(1, '304', '2 Plazas'),
(1, '305', '2 Plazas'),
(1, '306', '2 Plazas'),
(1, '307', '2 Plazas'),
(1, '308', '1 Plaza y media'),
(1, '309', '1 Plaza y media'),
(1, '401', '2 Plazas'),
(1, '402', '2 Plazas'),
(1, '403', 'Queen'),
(1, '404', '2 Plazas'),
(1, '405', '2 Plazas'),
(2, '101', '2'),
(2, '102', '1'),
(2, '103', '1'),
(2, '104', '1'),
(2, '105', '1'),
(2, '106', '1'),
(2, '201', '1'),
(2, '202', '1'),
(2, '203', '1'),
(2, '204', '2'),
(2, '205', '1'),
(2, '206', '1'),
(2, '207', '1'),
(2, '208', '1'),
(2, '209', '1'),
(2, '210', '1'),
(2, '211', '1'),
(2, '301', '1'),
(2, '302', '1'),
(2, '303', '1'),
(2, '304', '1'),
(2, '305', '1'),
(2, '306', '1'),
(2, '307', '1'),
(2, '308', '2'),
(2, '309', '1'),
(2, '401', '1'),
(2, '402', '1'),
(2, '403', '1'),
(2, '404', '1'),
(2, '405', '1'),
(3, '101', '3 Camas'),
(3, '204', '3 Camas'),
(3, '308', '2 Camas'),
(3, 'SALA1', '30'),
(4, '101', '19.16 M²'),
(4, '102', '18.65 M²'),
(4, '103', '12.50 M²'),
(4, '104', '25.40 M²'),
(4, '105', '14.90 M²'),
(4, '106', '22.40 M²'),
(4, '201', '11.72 M²'),
(4, '202', '22.00 M²'),
(4, '203', '21.48 M²'),
(4, '204', '17.80 M²'),
(4, '205', '15.71 M²'),
(4, '206', '14.79 M²'),
(4, '207', '14.62 M²'),
(4, '209', '17.25 M²'),
(4, '210', '10.96 M²'),
(4, '211', '14.08 M²'),
(4, '301', '14.83 M²'),
(4, '302', '14.57 M²'),
(4, '303', '17.56 M²'),
(4, '304', '17.14 M²'),
(4, '305', '16.64 M²'),
(4, '306', '17.72 M²'),
(4, '307', '17.79 M²'),
(4, '308', '17.52 M²'),
(4, '309', '13.67 M²'),
(4, '401', '16.54'),
(4, '402', '14.86 M²'),
(4, '403', '24.20 M²'),
(4, '404', '17.70 M²'),
(4, '405', '19.06 M²');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caracteristicatipohabitacion`
--

CREATE TABLE `caracteristicatipohabitacion` (
  `idCaracteristica` int(11) NOT NULL,
  `idTipoHabitacion` int(11) NOT NULL,
  `valor` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `caracteristicatipohabitacion`
--

INSERT INTO `caracteristicatipohabitacion` (`idCaracteristica`, `idTipoHabitacion`, `valor`) VALUES
(1, 1, '2 Plazas'),
(2, 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `idCiudad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idEstadoPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`idCiudad`, `nombre`, `idEstadoPais`) VALUES
(1, 'Lima', 1),
(2, 'Arequipa', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `idColaborador` int(11) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL,
  `nombreCompleto` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`idColaborador`, `idTipoUsuario`, `nombreCompleto`, `usuario`, `contraseña`) VALUES
(1, 2, 'Administrador', 'admin', '1234'),
(2, 1, 'Recepcionista', 'recepcion', '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL,
  `nombreCompleto` varchar(200) NOT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `correoElectronico` varchar(200) DEFAULT NULL,
  `area` varchar(200) DEFAULT NULL,
  `cargo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactoempresa`
--

CREATE TABLE `contactoempresa` (
  `idEmpresa` bigint(20) NOT NULL,
  `idContacto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenidocorreo`
--

CREATE TABLE `contenidocorreo` (
  `idContenidoCorreo` int(11) NOT NULL,
  `contenido` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databaselog`
--

CREATE TABLE `databaselog` (
  `idDatabaseLog` int(11) NOT NULL,
  `idColaborador` int(11) NOT NULL,
  `fechaHora` datetime DEFAULT NULL,
  `evento` varchar(45) DEFAULT NULL,
  `tipo` varchar(200) DEFAULT NULL,
  `consulta` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `databaselog`
--

INSERT INTO `databaselog` (`idDatabaseLog`, `idColaborador`, `fechaHora`, `evento`, `tipo`, `consulta`) VALUES
(1, 1, '2018-02-13 09:54:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (1,1,1,1,2018-02-13 09:54:39,0,0,null)'),
(2, 1, '2018-02-13 09:56:07', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (211,R18B13I5212,3,2018-02-14,2018-02-16 00:00:01,,1,7,0)'),
(3, 1, '2018-02-13 09:56:24', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13I5212 AND idHabitacion = 211'),
(4, 1, '2018-02-13 15:59:03', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20161541991,Tarifa Especial Tecsup,148,S/.)'),
(5, 1, '2018-02-13 15:59:09', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 22 AND idEmpresa = 20161541991'),
(6, 1, '2018-02-13 15:59:34', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20161541991,Tarifa Especial Tecsup Simple,148,S/.)'),
(7, 1, '2018-02-13 10:00:33', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (309,R18B13I5212,3,2018-02-14,2018-02-14 00:00:01,,,8,0)'),
(8, 1, '2018-02-13 10:01:33', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (46815198,null,null,null,null,Ignacio Rondon,null,null,null,null,null,null,null,0)'),
(9, 1, '2018-02-13 10:01:33', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13I5212,46815198,309,1)'),
(10, 1, '2018-02-13 10:02:17', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13I5212 AND idHabitacion = 309'),
(11, 1, '2018-02-13 10:02:17', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (309,R18B13I5212,1,5,2018-02-13 10:02:17,CheckIn de habitación 309 para reserva R18B13I5212,CheckIn)'),
(12, 1, '2018-02-13 10:09:59', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13I5212 AND idHuesped = 46815198'),
(13, 1, '2018-02-13 10:10:03', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13I5212 AND idHabitacion = 309'),
(14, 1, '2018-02-13 10:23:12', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (46815198,1,46815198,1,2018-02-13 10:23:12,0,0,null)'),
(15, 1, '2018-02-13 10:23:53', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (211,R18B13J2243,3,2018-02-10,2018-02-15 00:00:01,,,8,0)'),
(16, 1, '2018-02-13 10:25:42', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (46815198,null,null,null,null,Ignacio Rondon,null,null,null,null,null,null,null,0)'),
(17, 1, '2018-02-13 10:25:42', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13J2243,46815198,211,1)'),
(18, 1, '2018-02-13 10:25:46', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13J2243 AND idHabitacion = 211'),
(19, 1, '2018-02-13 10:25:46', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (211,R18B13J2243,1,5,2018-02-13 10:25:46,CheckIn de habitación 211 para reserva R18B13J2243,CheckIn)'),
(20, 1, '2018-02-13 11:43:10', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (2,null,null,null,null,LUIS RICO,null,,null,null,,null,null,0)'),
(21, 1, '2018-02-13 11:43:10', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (2,1,2,1,2018-02-13 11:43:10,0,0,null)'),
(22, 1, '2018-02-13 11:44:55', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21248913,null,null,null,null,LUIS RICO,null,,null,null,,null,null,0)'),
(23, 1, '2018-02-13 11:44:55', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (21248913,1,21248913,1,2018-02-13 11:44:55,0,0,null)'),
(24, 1, '2018-02-13 11:45:25', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B13K4429,3,2018-02-13,2018-02-16 00:00:01,,,12,0)'),
(25, 1, '2018-02-13 11:45:37', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21248913,null,null,null,null,LUIS RICO,null,null,null,null,null,null,null,0)'),
(26, 1, '2018-02-13 11:45:37', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K4429,2,206,1)'),
(27, 1, '2018-02-13 11:46:17', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K4429 AND idHabitacion = 206'),
(28, 1, '2018-02-13 11:46:17', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B13K4429,1,5,2018-02-13 11:46:17,CheckIn de habitación 206 para reserva R18B13K4429,CheckIn)'),
(29, 1, '2018-02-13 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B13K4629,1,R18B13K4429,2,206,20,01 DESAYUNO,2018-02-13 11:46:42,Cafetería)'),
(30, 1, '2018-02-13 11:47:36', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70434855,1,70434855,1,2018-02-13 11:47:36,0,0,null)'),
(31, 1, '2018-02-13 11:48:04', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (301,R18B13K4655,3,2018-02-13,2018-02-15 00:00:01,,,12,0)'),
(32, 1, '2018-02-13 11:48:24', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (70434855,null,null,null,null,JUAN FRANCISCO LOAYZA,null,null,null,null,null,null,null,0)'),
(33, 1, '2018-02-13 11:48:24', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K4655,70434855,301,1)'),
(34, 1, '2018-02-13 11:48:27', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K4655 AND idHabitacion = 301'),
(35, 1, '2018-02-13 11:48:27', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (301,R18B13K4655,1,5,2018-02-13 11:48:27,CheckIn de habitación 301 para reserva R18B13K4655,CheckIn)'),
(36, 1, '2018-02-13 11:49:43', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40552967,1,40552967,1,2018-02-13 11:49:43,0,0,null)'),
(37, 1, '2018-02-13 11:50:14', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (302,R18B13K4829,3,2018-02-13,2018-02-18 00:00:01,,,10,0)'),
(38, 1, '2018-02-13 11:50:35', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40552967,null,null,null,null,RAFEEL ROBERTO,null,null,null,null,null,null,null,0)'),
(39, 1, '2018-02-13 11:50:35', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K4829,40552967,302,1)'),
(40, 1, '2018-02-13 11:50:41', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago =  WHERE idReserva = R18B13K4829'),
(41, 1, '2018-02-13 11:51:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (1,1,1,1,2018-02-13 11:51:18,0,0,null)'),
(42, 1, '2018-02-13 11:52:33', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (105,R18B13K5043,3,2018-02-13,2018-02-15 00:00:01,,,12,0)'),
(43, 1, '2018-02-13 11:52:42', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (1,null,null,null,null,RAUL CELI,null,null,null,null,null,null,null,0)'),
(44, 1, '2018-02-13 11:52:42', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K5043,1,105,1)'),
(45, 1, '2018-02-13 11:57:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (3,1,3,1,2018-02-13 11:57:18,0,0,null)'),
(46, 1, '2018-02-13 11:57:40', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (306,R18B13K5243,3,2018-02-13,2018-02-23 00:00:01,,,12,0)'),
(47, 1, '2018-02-13 11:57:52', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (3,null,null,null,null,MISAEL ROBLES,null,null,null,null,null,null,null,0)'),
(48, 1, '2018-02-13 11:57:52', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K5243,3,306,1)'),
(49, 1, '2018-02-13 11:58:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (4,1,4,1,2018-02-13 11:58:39,0,0,null)'),
(50, 1, '2018-02-13 12:00:08', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (404,R18B13K5754,3,2018-02-13,2018-02-23 00:00:01,,,10,0)'),
(51, 1, '2018-02-13 12:00:16', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (4,null,null,null,null,ROBERT SIEVWRIGHT,null,null,null,null,null,null,null,0)'),
(52, 1, '2018-02-13 12:00:16', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13K5754,4,404,1)'),
(53, 1, '2018-02-13 12:03:44', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16698625,1,16698625,1,2018-02-13 12:03:44,0,0,null)'),
(54, 1, '2018-02-13 12:04:09', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B13L0021,3,2018-02-14,2018-02-15 00:00:01,,,12,0)'),
(55, 1, '2018-02-13 12:04:21', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (16698625,null,null,null,null,LUCY CABREJOS,null,null,null,null,null,null,null,0)'),
(56, 1, '2018-02-13 12:04:21', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0021,16698625,209,1)'),
(57, 1, '2018-02-13 18:06:00', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (5,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(58, 1, '2018-02-13 18:06:24', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(59, 1, '2018-02-13 18:06:42', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (3,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(60, 1, '2018-02-13 18:07:01', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (4,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(61, 1, '2018-02-13 18:07:18', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (5,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(62, 1, '2018-02-13 12:07:54', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (5,1,5,1,2018-02-13 12:07:54,0,0,null)'),
(63, 1, '2018-02-13 18:09:04', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 24 AND idEmpresa = 20100190797'),
(64, 1, '2018-02-13 18:09:17', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (1,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(65, 1, '2018-02-13 12:09:27', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (5,1,5,1,2018-02-13 12:09:27,0,0,null)'),
(66, 1, '2018-02-13 12:09:37', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (5,1,5,1,2018-02-13 12:09:37,0,0,null)'),
(67, 1, '2018-02-13 12:09:53', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B13L0930,3,2018-02-14,2018-02-17 00:00:01,,,29,0)'),
(68, 1, '2018-02-13 12:10:05', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(69, 1, '2018-02-13 12:10:05', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0930,5,102,1)'),
(70, 1, '2018-02-13 12:15:16', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (6,1,6,1,2018-02-13 12:15:16,0,0,null)'),
(71, 1, '2018-02-13 12:15:41', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (103,R18B13L1007,3,2018-02-14,2018-02-16 00:00:01,,,29,0)'),
(72, 1, '2018-02-13 12:15:57', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (6,null,null,null,null,GIOVANNA ROJAS,null,null,null,null,null,null,null,0)'),
(73, 1, '2018-02-13 12:15:57', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L1007,6,103,1)'),
(74, 1, '2018-02-13 12:16:25', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (7,1,7,1,2018-02-13 12:16:25,0,0,null)'),
(75, 1, '2018-02-13 12:16:42', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (401,R18B13L1558,3,2018-02-14,2018-02-16 00:00:01,,,10,0)'),
(76, 1, '2018-02-13 12:16:49', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7,null,null,null,null,ALVARO MELLADO,null,null,null,null,null,null,null,0)'),
(77, 1, '2018-02-13 12:16:49', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L1558,7,401,1)'),
(78, 1, '2018-02-13 12:22:07', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (78968521,1,78968521,1,2018-02-13 12:22:07,0,0,null)'),
(79, 1, '2018-02-13 12:22:29', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (106,R18B13L2115,3,2018-02-15,2018-02-15 00:00:01,,,17,0)'),
(80, 1, '2018-02-13 12:22:48', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (78968521,null,null,null,null,NATALIE GILDEMEISTER,null,null,null,null,null,null,null,0)'),
(81, 1, '2018-02-13 12:22:48', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L2115,78968521,106,)'),
(82, 1, '2018-02-13 12:24:53', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (9,null,null,null,null,ROBERTO CORDOVA,null,,null,null,,null,null,0)'),
(83, 1, '2018-02-13 12:24:53', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (9,1,9,1,2018-02-13 12:24:53,0,0,null)'),
(84, 1, '2018-02-13 12:25:32', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (208,R18B13L2253,3,2018-02-15,2018-02-16 00:00:01,,,10,0)'),
(85, 1, '2018-02-13 12:25:43', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B13L2253'),
(86, 1, '2018-02-13 12:25:45', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (15,null,null,null,null,,null,null,null,null,null,null,null,0)'),
(87, 1, '2018-02-13 12:25:45', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L2253,15,,)'),
(88, 1, '2018-02-13 12:25:57', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (9,null,null,null,null,ROBERTO CORDOVA,null,null,null,null,null,null,null,0)'),
(89, 1, '2018-02-13 12:25:57', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L2253,9,208,)'),
(90, 1, '2018-02-13 12:26:10', 'UPDATE', 'Early CheckIn', 'UPDATE HabitacionReservada SET modificadorCheckIO = 1 WHERE idReserva = R18B13L2253 AND idHabitacion = 208'),
(91, 1, '2018-02-13 12:33:30', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (10,1,10,1,2018-02-13 12:33:30,0,0,null)'),
(92, 1, '2018-02-13 12:33:52', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B13L3149,3,2018-02-15,2018-02-16 00:00:01,,,10,0)'),
(93, 1, '2018-02-13 12:33:59', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (10,null,null,null,null,EDGAR FERNANDEZ,null,null,null,null,null,null,null,0)'),
(94, 1, '2018-02-13 12:33:59', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3149,10,303,1)'),
(95, 1, '2018-02-13 12:35:10', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (07762050,1,07762050,1,2018-02-13 12:35:10,0,0,null)'),
(96, 1, '2018-02-13 12:35:25', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (405,R18B13L3401,3,2018-02-15,2018-02-16 00:00:01,,,10,0)'),
(97, 1, '2018-02-13 12:35:51', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7762050,null,null,null,null,FERNANDO AGUERO,null,null,null,null,null,null,null,0)'),
(98, 1, '2018-02-13 12:35:51', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3401,7762050,405,1)'),
(99, 1, '2018-02-13 12:37:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (11,1,11,1,2018-02-13 12:37:18,0,0,null)'),
(100, 1, '2018-02-13 12:37:39', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B13L3700,3,2018-02-19,2018-02-20 00:00:01,,,12,0)'),
(101, 1, '2018-02-13 12:37:46', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (11,null,null,null,null,CYNTHIA VILLACORTA,null,null,null,null,null,null,null,0)'),
(102, 1, '2018-02-13 12:37:46', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3700,11,206,1)'),
(103, 1, '2018-02-13 12:38:14', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (12,1,12,1,2018-02-13 12:38:14,0,0,null)'),
(104, 1, '2018-02-13 12:38:27', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B13L3750,3,2018-02-20,2018-02-22 00:00:01,,,12,0)'),
(105, 1, '2018-02-13 12:38:33', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (12,null,null,null,null,DANTE ALFARO,null,null,null,null,null,null,null,0)'),
(106, 1, '2018-02-13 12:38:33', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3750,12,102,)'),
(107, 1, '2018-02-13 12:40:30', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (14,1,14,1,2018-02-13 12:40:30,0,0,null)'),
(108, 1, '2018-02-13 12:41:11', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (13,1,13,1,2018-02-13 12:41:11,0,0,null)'),
(109, 1, '2018-02-13 12:41:33', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B13L4049,3,2018-02-18,2018-02-19 00:00:01,,,10,0)'),
(110, 1, '2018-02-13 12:41:43', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (13,null,null,null,null,JORGE TAIPE,null,null,null,null,null,null,null,0)'),
(111, 1, '2018-02-13 12:41:43', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L4049,13,303,1)'),
(112, 1, '2018-02-13 12:48:31', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16,1,16,1,2018-02-13 12:48:31,0,0,null)'),
(113, 1, '2018-02-13 12:50:16', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (16,null,null,null,null,,null,,null,null,,null,null,0)'),
(114, 1, '2018-02-13 12:50:16', 'UPDATE', 'HUESPED', 'UPDATE Huesped SET nombreCompleto = , correoElectronico = , telefonoCelular = , idEmpresa = null WHERE idHuesped = 16'),
(115, 1, '2018-02-13 12:50:16', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16,1,16,1,2018-02-13 12:50:16,0,0,null)'),
(116, 1, '2018-02-13 12:50:53', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (17,1,17,1,2018-02-13 12:50:53,0,0,null)'),
(117, 1, '2018-02-13 12:51:43', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (17,1,17,1,2018-02-13 12:51:43,0,0,null)'),
(118, 1, '2018-02-13 12:51:54', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (17,1,17,1,2018-02-13 12:51:54,0,0,null)'),
(119, 1, '2018-02-13 12:52:11', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B13L5146,3,2018-02-13,2018-02-14 00:00:01,,,28,0)'),
(120, 1, '2018-02-13 12:52:23', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (17,null,null,null,null,BLASCO SANTOS,null,null,null,null,null,null,null,0)'),
(121, 1, '2018-02-13 12:52:23', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L5146,17,303,1)'),
(122, 1, '2018-02-14 08:48:42', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L5146 AND idHabitacion = 303'),
(123, 1, '2018-02-14 08:48:42', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L5146,1,5,2018-02-14 08:48:42,CheckIn de habitación 303 para reserva R18B13L5146,CheckIn)'),
(124, 1, '2018-02-14 08:50:28', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0021 AND idHabitacion = 209'),
(125, 1, '2018-02-14 08:50:56', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0021 AND idHabitacion = 209'),
(126, 1, '2018-02-14 08:51:03', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0021 AND idHuesped = 16698625'),
(127, 1, '2018-02-14 08:51:07', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0021 AND idHabitacion = 209'),
(128, 1, '2018-02-14 08:52:03', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0930 AND idHuesped = 5'),
(129, 1, '2018-02-14 08:52:09', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(130, 1, '2018-02-14 08:52:14', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(131, 1, '2018-02-14 08:52:19', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(132, 1, '2018-02-14 08:52:23', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(133, 1, '2018-02-14 08:52:41', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(134, 1, '2018-02-14 08:52:46', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(135, 1, '2018-02-14 08:53:33', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(136, 1, '2018-02-14 08:54:34', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K5043 AND idHabitacion = 105'),
(137, 1, '2018-02-14 08:54:34', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (105,R18B13K5043,1,5,2018-02-14 08:54:34,CheckIn de habitación 105 para reserva R18B13K5043,CheckIn)'),
(138, 1, '2018-02-14 08:56:59', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K5243 AND idHabitacion = 306'),
(139, 1, '2018-02-14 08:56:59', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (306,R18B13K5243,1,5,2018-02-14 08:56:59,CheckIn de habitación 306 para reserva R18B13K5243,CheckIn)'),
(140, 1, '2018-02-14 08:58:56', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(141, 1, '2018-02-14 08:59:05', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (16698625,null,null,null,null,LUCY CABREJOS,null,null,null,null,null,null,null,0)'),
(142, 1, '2018-02-14 08:59:05', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0930,16698625,102,1)'),
(143, 1, '2018-02-14 08:59:11', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(144, 1, '2018-02-14 08:59:44', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0930 AND idHuesped = 16698625'),
(145, 1, '2018-02-14 08:59:47', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(146, 1, '2018-02-14 09:00:15', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(147, 1, '2018-02-14 09:00:18', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(148, 1, '2018-02-14 09:00:21', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(149, 1, '2018-02-14 09:02:55', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(150, 1, '2018-02-14 09:03:09', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(151, 1, '2018-02-14 09:03:09', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0930,5,102,1)'),
(152, 1, '2018-02-14 10:04:52', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(153, 1, '2018-02-14 10:04:56', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0930 AND idHuesped = 5'),
(154, 1, '2018-02-14 10:05:12', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(155, 1, '2018-02-14 10:08:50', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B13L0930,3,2018-02-14,2018-02-17 00:00:01,,,29,0)'),
(156, 1, '2018-02-14 10:09:04', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(157, 1, '2018-02-14 10:09:04', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0930,5,209,1)'),
(158, 1, '2018-02-14 10:09:26', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(159, 1, '2018-02-14 10:09:30', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(160, 1, '2018-02-14 10:09:43', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(161, 1, '2018-02-14 10:14:52', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K4829 AND idHabitacion = 302'),
(162, 1, '2018-02-14 10:14:52', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B13K4829,1,5,2018-02-14 10:14:52,CheckIn de habitación 302 para reserva R18B13K4829,CheckIn)'),
(163, 1, '2018-02-14 10:19:51', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B13K5754,3,, 00:00:01,,,,0)'),
(164, 1, '2018-02-14 10:20:27', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13K5754 AND idHabitacion = 404'),
(165, 1, '2018-02-14 10:20:27', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (404,R18B13K5754,1,5,2018-02-14 10:20:27,CheckIn de habitación 404 para reserva R18B13K5754,CheckIn)'),
(166, 1, '2018-02-14 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B14J2107,1,R18B13K4429,2,206,28,01 POLLO A LA PLANCHA, 01 INCA KOLA,2018-02-14 10:21:50,Cafetería)'),
(167, 1, '2018-02-14 10:31:05', 'INSERT', 'Huesped', 'INSERT INTO Huesped(idHuesped,idEmpresa,idCiudad,idGenero,nacionalidad_idPais,nombreCompleto,direccion,correoElectronico,codigoPostal,telefonoFijo,telefonoCelular,fechaNacimiento,preferencias,vip)\r\n        VALUES (12121212,\',1,Femenino,1,VANESSA HONORIO,CALLE LAS BEGONIAS 415 PISO 11 OF. 1130 SAN ISISDRO - LIMA,a-vhonorio@expedia.com,,51-1-7113873,51-980441482,,NULL,0)'),
(168, 1, '2018-02-14 10:32:13', 'INSERT', 'Huesped', 'INSERT INTO Huesped(idHuesped,idEmpresa,idCiudad,idGenero,nacionalidad_idPais,nombreCompleto,direccion,correoElectronico,codigoPostal,telefonoFijo,telefonoCelular,fechaNacimiento,preferencias,vip)\r\n        VALUES (12121212,NULL,1,Femenino,1,VANESSA HONORIO,CALLE LAS BEGONIAS 415 PISO 11 OF. 1130 SAN ISISDRO - LIMA,a-vhonorio@expedia.com,,51-1-7113873,51-980441482,,NULL,0)'),
(169, 1, '2018-02-14 10:39:48', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 209'),
(170, 1, '2018-02-14 10:39:52', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(171, 1, '2018-02-14 11:43:00', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L1558 AND idHabitacion = 401'),
(172, 1, '2018-02-14 11:43:00', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B13L1558,1,5,2018-02-14 11:43:00,CheckIn de habitación 401 para reserva R18B13L1558,CheckIn)'),
(173, 1, '2018-02-14 11:43:42', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 209'),
(174, 1, '2018-02-14 11:43:46', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 209'),
(175, 1, '2018-02-14 11:43:50', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0930 AND idHuesped = 5'),
(176, 1, '2018-02-14 11:43:54', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 209'),
(177, 1, '2018-02-14 11:43:58', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(178, 1, '2018-02-14 11:44:24', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(179, 1, '2018-02-14 11:44:24', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L0930,5,102,1)'),
(180, 1, '2018-02-14 11:44:34', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(181, 1, '2018-02-14 11:44:37', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L0930 AND idHuesped = 5'),
(182, 1, '2018-02-14 11:44:45', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(183, 1, '2018-02-14 11:49:54', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (18,1,18,1,2018-02-14 11:49:54,0,0,null)'),
(184, 1, '2018-02-14 11:51:29', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (305,R18B14K4926,3,2018-02-15,2018-02-16 00:00:01,,,12,0)'),
(185, 1, '2018-02-14 11:51:41', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (18,null,null,null,null,MICHEL MONTOYA,null,null,null,null,null,null,null,0)'),
(186, 1, '2018-02-14 11:51:41', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14K4926,18,305,1)'),
(187, 1, '2018-02-14 17:59:28', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (1,20161541991,Tarifa Especial Tecsup,148,S/.)'),
(188, 1, '2018-02-14 17:59:35', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 23 AND idEmpresa = 20161541991'),
(189, 1, '2018-02-14 17:59:52', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20161541991,Tarifa Especial Tecsup,148,S/.)'),
(190, 1, '2018-02-14 18:00:10', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (3,20161541991,Tarifa Especial Tecsup,148,S/.)'),
(191, 1, '2018-02-14 18:00:31', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (4,20161541991,Tarifa Especial Tecsup,148,S/.)'),
(192, 1, '2018-02-14 18:00:53', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 25 AND idEmpresa = 20100190797'),
(193, 1, '2018-02-14 18:00:54', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 26 AND idEmpresa = 20100190797'),
(194, 1, '2018-02-14 18:00:55', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 27 AND idEmpresa = 20100190797'),
(195, 1, '2018-02-14 18:00:56', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(196, 1, '2018-02-14 18:00:57', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(197, 1, '2018-02-14 18:00:59', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(198, 1, '2018-02-14 18:01:01', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(199, 1, '2018-02-14 18:06:23', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (1,20504822274,Tarifa Carp & Asociados,238,S/.)'),
(200, 1, '2018-02-14 18:06:42', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20504822274,Tarifa Carp & Asociados,145,S/.)'),
(201, 1, '2018-02-14 18:06:58', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (3,20504822274,Tarifa Carp & Asociados,238,S/.)'),
(202, 1, '2018-02-14 18:07:50', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (1,20563760894,Tarifa Especial Just 4 Fun,142,S/.)'),
(203, 1, '2018-02-14 18:08:06', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20563760894,Tarifa Especial Just 4 Fun,142,S/.)'),
(204, 1, '2018-02-14 18:08:30', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (3,20563760894,Tarifa Especial Just 4 Fun,142,S/.)'),
(205, 1, '2018-02-14 18:08:49', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(206, 1, '2018-02-14 18:08:52', 'DELETE', 'Tarifa', 'DELETE FROM Tarifa WHERE idTarifa = 28 AND idEmpresa = 20100190797'),
(207, 1, '2018-02-14 12:09:56', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (123,1,123,1,2018-02-14 12:09:56,0,0,null)'),
(208, 1, '2018-02-14 12:11:21', 'INSERT', 'Tarifa', 'UPDATE Tarifa SET idTipoHabitacion = 5, descripcion = Tarifa Especial Grupo Gloria, valor = 142, moneda = S/. WHERE idTarifa = 28'),
(209, 1, '2018-02-14 18:12:57', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (2,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(210, 1, '2018-02-14 18:13:23', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (3,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(211, 1, '2018-02-14 18:13:45', 'INSERT', 'Tarifa', 'INSERT INTO Tarifa(idTipoHabitacion,idEmpresa,descripcion,valor,moneda) VALUES (4,20100190797,Tarifa Especial Grupo Gloria,142,S/.)'),
(212, 1, '2018-02-14 12:44:47', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (19,1,19,1,2018-02-14 12:44:47,0,0,null)'),
(213, 1, '2018-02-14 12:45:51', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (402,R18B14L1350,3,2018-02-15,2018-02-17 00:00:01,,,12,0)'),
(214, 1, '2018-02-14 12:46:01', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (19,null,null,null,null,LINO JIMENEZ,null,null,null,null,null,null,null,0)'),
(215, 1, '2018-02-14 12:46:01', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14L1350,19,402,1)'),
(216, 1, '2018-02-14 20:37:29', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (5,1,5,1,2018-02-14 20:37:29,0,0,null)'),
(217, 1, '2018-02-14 20:38:56', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (308,R18B14T3702,3,2018-02-16,2018-02-17 00:00:01,,,4,0)'),
(218, 1, '2018-02-14 20:39:44', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7878978987,null,null,null,null,ROMULO MAYHUA,null,null,null,null,null,null,null,0)'),
(219, 1, '2018-02-14 20:39:44', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14T3702,2147483647,308,)'),
(220, 1, '2018-02-14 20:39:50', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7878978987,null,null,null,null,ROMULO MAYHUA,null,null,null,null,null,null,null,0)'),
(221, 1, '2018-02-14 20:39:50', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14T3702,2147483647,308,)'),
(222, 1, '2018-02-14 20:39:51', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7878978987,null,null,null,null,ROMULO MAYHUA,null,null,null,null,null,null,null,0)'),
(223, 1, '2018-02-14 20:39:51', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14T3702,2147483647,308,1)'),
(224, 1, '2018-02-14 20:39:58', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B14T3702 AND idHuesped = 2147483647'),
(225, 1, '2018-02-14 20:40:00', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B14T3702 AND idHuesped = 2147483647'),
(226, 1, '2018-02-14 20:40:48', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (152156,null,null,null,null,ROMULO MAYHUA,null,null,null,null,null,null,null,0)'),
(227, 1, '2018-02-14 20:40:48', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14T3702,152156,308,1)'),
(228, 1, '2018-02-14 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B14T4615,1,R18B13K4829,40552967,302,130.50,02 TRUCHAS C/ ENSALADA; 01 TRUCHA C/ ARROZ; 01 LOMO SALTADO; 02 SUMOS DE NARANJA; 01 JUGO DE PIÑA; 03 TE,2018-02-14 20:48:15,Cafetería)'),
(229, 1, '2018-02-14 20:50:25', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (7762050,\',null,null,null,,null,,null,null,,null,null,0)'),
(230, 1, '2018-02-14 20:50:25', 'UPDATE', 'HUESPED', 'UPDATE Huesped SET nombreCompleto = , correoElectronico = , telefonoCelular = , idEmpresa = \' WHERE idHuesped = 7762050'),
(231, 1, '2018-02-14 20:50:25', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (7762050,1,7762050,1,2018-02-14 20:50:25,0,0,null)'),
(232, 1, '2018-02-14 20:51:40', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(233, 1, '2018-02-14 20:51:42', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(234, 1, '2018-02-14 20:51:44', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago =  WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(235, 1, '2018-02-14 20:51:47', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(236, 1, '2018-02-14 21:03:56', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (8532699,null,null,null,null,GONZALO GONSALEZ,null,,null,null,,null,null,0)'),
(237, 1, '2018-02-14 21:03:56', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (8532699,1,8532699,1,2018-02-14 21:03:56,0,0,null)'),
(238, 1, '2018-02-14 21:04:13', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B14U0303'),
(239, 1, '2018-02-14 21:04:56', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (202,R18B14U0303,3,2018-02-14,2018-02-15 00:00:01,,,6,0)'),
(240, 1, '2018-02-14 21:05:39', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES ( 8532699,null,null,null,null,GONZALO GONSALEZ,null,null,null,null,null,null,null,0)'),
(241, 1, '2018-02-14 21:05:39', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B14U0303,8532699,202,)'),
(242, 1, '2018-02-14 21:21:14', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B14U0303 AND idHuesped = 8532699'),
(243, 1, '2018-02-15 00:40:38', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (13500374,null,null,null,null,JAIME DANIEL GONZALEZ MUÑOZ,null,,null,null,,null,null,0)'),
(244, 1, '2018-02-15 00:40:38', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (13500374,1,13500374,1,2018-02-15 00:40:38,0,0,null)'),
(245, 1, '2018-02-15 00:42:08', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (104,R18B15X0716,3,2018-02-14,2018-02-16 00:00:01,,,6,0)'),
(246, 1, '2018-02-15 00:43:41', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (13500374,null,null,null,null,JAIME DANIEL GONZALEZ MUÑOZ,null,null,null,null,null,null,null,0)'),
(247, 1, '2018-02-15 00:43:41', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15X0716,13500374,104,)'),
(248, 1, '2018-02-15 00:44:41', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B15X0716 AND idHabitacion = 104'),
(249, 1, '2018-02-15 00:44:41', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (104,R18B15X0716,1,5,2018-02-15 00:44:41,CheckIn de habitación 104 para reserva R18B15X0716,CheckIn)'),
(250, 1, '2018-02-15 00:49:04', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21005216,null,null,null,null,JAVIER IGNACIO GONZALEZ LIEFOC,null,,null,null,,null,null,0)'),
(251, 1, '2018-02-15 00:49:04', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (21005216,1,21005216,1,2018-02-15 00:49:04,0,0,null)'),
(252, 1, '2018-02-15 00:49:16', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B15X4807'),
(253, 1, '2018-02-15 00:51:24', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (101,R18B15X4807,3,2018-02-14,2018-02-15 00:00:01,,,3,0)'),
(254, 1, '2018-02-15 00:51:59', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21005216,null,null,null,null,JAVIER IGNACIO GONZALEZ LIEFOC,null,null,null,null,null,null,null,0)'),
(255, 1, '2018-02-15 00:51:59', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15X4807,21005216,101,)'),
(256, 1, '2018-02-15 00:52:38', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B15X4807 AND idHabitacion = 101'),
(257, 1, '2018-02-15 00:52:38', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (101,R18B15X4807,1,5,2018-02-15 00:52:38,CheckIn de habitación 101 para reserva R18B15X4807,CheckIn)'),
(258, 1, '2018-02-15 00:57:07', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (13415197,null,null,null,null,GLADIS PAMELA LIEFOC MARABOLI,null,null,null,null,null,null,null,0)'),
(259, 1, '2018-02-15 00:57:07', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15X0716,13415197,,)'),
(260, 1, '2018-02-15 01:04:20', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16698625,1,16698625,1,2018-02-15 01:04:20,0,0,null)'),
(261, 1, '2018-02-15 01:04:56', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16698625,1,16698625,1,2018-02-15 01:04:56,0,0,null)'),
(262, 1, '2018-02-15 06:22:37', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21873181,null,null,null,null,NICOLE GONZALES LIEFOC,null,null,null,null,null,null,null,0)'),
(263, 1, '2018-02-15 06:22:37', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15X4807,21873181,101,)'),
(264, 1, '2018-02-15 07:20:46', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L2115 AND idHuesped = 78968521'),
(265, 1, '2018-02-15 07:21:00', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (78968521,null,null,null,null,NATALIE GILDEMEISTER,null,null,null,null,null,null,null,0)'),
(266, 1, '2018-02-15 07:21:00', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L2115,78968521,106,1)'),
(267, 1, '2018-02-15 07:21:33', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L2253 AND idHuesped = 9'),
(268, 1, '2018-02-15 07:21:40', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (9,null,null,null,null,ROBERTO CORDOVA,null,null,null,null,null,null,null,0)'),
(269, 1, '2018-02-15 07:21:40', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L2253,9,208,1)'),
(270, 1, '2018-02-15 07:21:57', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L2253 AND idHabitacion = 208'),
(271, 1, '2018-02-15 07:21:57', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (208,R18B13L2253,1,5,2018-02-15 07:21:57,CheckIn de habitación 208 para reserva R18B13L2253,CheckIn)'),
(272, 1, '2018-02-15 14:33:31', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L1007 AND idHuesped = 6'),
(273, 1, '2018-02-15 14:33:35', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L1007 AND idHabitacion = 103'),
(274, 1, '2018-02-15 14:33:58', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (103,R18B13L1007,3,2018-02-15,2018-02-17 00:00:01,,,29,0)'),
(275, 1, '2018-02-15 14:34:06', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (6,null,null,null,null,GIOVANNA ROJAS,null,null,null,null,null,null,null,0)'),
(276, 1, '2018-02-15 14:34:06', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L1007,6,103,)'),
(277, 1, '2018-02-15 14:34:47', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B15X4807 AND idHabitacion = 101'),
(278, 1, '2018-02-15 14:34:47', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B15X4807'),
(279, 1, '2018-02-15 14:34:47', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (101,R18B15X4807,1,5,2018-02-15 14:34:47,Retiro normal de habitación 101 para reserva R18B15X4807,Check Out)'),
(280, 1, '2018-02-15 14:34:54', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B15X0716 AND idHabitacion = 104'),
(281, 1, '2018-02-15 14:34:54', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B15X0716'),
(282, 1, '2018-02-15 14:34:54', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (104,R18B15X0716,1,5,2018-02-15 14:34:54,Retiro normal de habitación 104 para reserva R18B15X0716,Check Out)');
INSERT INTO `databaselog` (`idDatabaseLog`, `idColaborador`, `fechaHora`, `evento`, `tipo`, `consulta`) VALUES
(283, 1, '2018-02-15 14:36:10', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (5,1,5,1,2018-02-15 14:36:10,0,0,null)'),
(284, 1, '2018-02-15 14:36:23', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B15N3602,3,2018-02-15,2018-02-17 00:00:01,,,29,0)'),
(285, 1, '2018-02-15 14:36:59', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(286, 1, '2018-02-15 14:36:59', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15N3602,5,,1)'),
(287, 2, '2018-02-15 19:43:23', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L2115 AND idHabitacion = 106'),
(288, 2, '2018-02-15 19:43:23', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (106,R18B13L2115,2,5,2018-02-15 19:43:23,CheckIn de habitación 106 para reserva R18B13L2115,CheckIn)'),
(289, 2, '2018-02-15 19:43:27', 'UPDATE', 'Early CheckIn', 'UPDATE HabitacionReservada SET modificadorCheckIO = 1 WHERE idReserva = R18B13L2115 AND idHabitacion = 106'),
(290, 2, '2018-02-15 19:43:31', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L2115 AND idHabitacion = 106'),
(291, 2, '2018-02-15 19:43:31', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (106,R18B13L2115,2,5,2018-02-15 19:43:31,CheckIn de habitación 106 para reserva R18B13L2115,CheckIn)'),
(292, 2, '2018-02-15 19:43:57', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L3149 AND idHabitacion = 303'),
(293, 2, '2018-02-15 19:43:57', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L3149,2,5,2018-02-15 19:43:57,CheckIn de habitación 303 para reserva R18B13L3149,CheckIn)'),
(294, 2, '2018-02-15 19:46:13', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L3401 AND idHabitacion = 405'),
(295, 2, '2018-02-15 19:46:13', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (405,R18B13L3401,2,5,2018-02-15 19:46:13,CheckIn de habitación 405 para reserva R18B13L3401,CheckIn)'),
(296, 2, '2018-02-15 19:49:51', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (3123133112,null,null,null,null,Iñigo Garaycochea,null,,null,null,,null,null,0)'),
(297, 2, '2018-02-15 19:49:51', 'UPDATE', 'HUESPED', 'UPDATE Huesped SET nombreCompleto = Iñigo Garaycochea, correoElectronico = , telefonoCelular = , idEmpresa = null WHERE idHuesped = 3123133112'),
(298, 2, '2018-02-15 19:49:51', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (3123133112,2,3123133112,1,2018-02-15 19:49:51,0,0,null)'),
(299, 2, '2018-02-15 19:50:47', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (403,R18B15S4748,3,2018-02-15,2018-02-17 00:00:01,,,6,0)'),
(300, 2, '2018-02-15 19:51:20', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (789789789456,null,null,null,null,Iñigo Garaycochea,null,null,null,null,null,null,null,0)'),
(301, 2, '2018-02-15 19:51:20', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B15S4748,,403,)'),
(302, 2, '2018-02-15 19:51:50', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B15S4748 AND idHabitacion = 403'),
(303, 2, '2018-02-15 19:51:50', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (403,R18B15S4748,2,5,2018-02-15 19:51:50,CheckIn de habitación 403 para reserva R18B15S4748,CheckIn)'),
(304, 2, '2018-02-15 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B15S5755,2,R18B13K4429,2,206,28,01 POLLO A LA PLANCA C/ ENSLADA; 01 INCA KOLA ,2018-02-15 19:59:02,Cafetería)'),
(305, 2, '2018-02-15 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B15S5902,2,R18B13K4429,2,206,28,01 POLLO A LA PLANCHA; 01 INKA COLA ,2018-02-15 20:00:09,Cafetería)'),
(306, 2, '2018-02-15 20:25:36', 'UPDATE', 'CONFIRMACION RESERVA ', 'UPDATE Reserva SET idEstado = 3 WHERE idReserva = R18B14L0856'),
(307, 2, '2018-02-16 20:18:40', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B14T3702 AND idHuesped = 152156'),
(308, 2, '2018-02-16 20:20:16', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (45866531,2,45866531,1,2018-02-16 20:20:16,0,0,null)'),
(309, 2, '2018-02-16 20:22:49', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B16T1854,3,2018-02-16,2018-02-17 00:00:01,,,12,0)'),
(310, 2, '2018-02-16 20:25:51', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (45866531,null,null,null,null,ROMULO MAYHUA ELGUERA,null,null,null,null,null,null,null,0)'),
(311, 2, '2018-02-16 20:25:51', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B16T1854,45866531,303,)'),
(312, 2, '2018-02-16 20:29:22', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Diferido WHERE idReserva = R18B16T1854'),
(313, 2, '2018-02-16 20:29:47', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B16T1854,3,2018-02-16,2018-02-17 00:00:01,,,,0)'),
(314, 2, '2018-02-16 20:30:18', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B16T1854 AND idHabitacion = 303'),
(315, 2, '2018-02-16 20:30:18', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B16T1854,2,5,2018-02-16 20:30:18,CheckIn de habitación 303 para reserva R18B16T1854,CheckIn)'),
(316, 2, '2018-02-16 20:34:00', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13K4429 AND idHuesped = 2'),
(317, 2, '2018-02-16 20:34:04', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13K4429 AND idHuesped = 2'),
(318, 2, '2018-02-16 20:34:09', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13K4429 AND idHuesped = 2'),
(319, 2, '2018-02-16 20:35:44', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n AND idHabitacion = <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n'),
(320, 2, '2018-02-16 20:35:44', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n'),
(321, 2, '2018-02-16 20:35:44', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (<br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n,<br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n,2,5,2018-02-16 20:35:44,Retiro normal de habitación <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdoc'),
(322, 1, '2018-02-17 00:26:04', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (43832024,1,43832024,1,2018-02-17 00:26:04,0,0,null)'),
(323, 1, '2018-02-17 00:26:29', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B17X2354'),
(324, 1, '2018-02-17 00:27:15', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (301,R18B17X2354,3,2018-02-16,2018-03-02 00:00:01,,,1,0)'),
(325, 1, '2018-02-17 00:27:44', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (43832024,null,null,null,null,CARLOS LOPE ESPINOZA,null,null,null,null,null,null,null,0)'),
(326, 1, '2018-02-17 00:27:44', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B17X2354,43832024,301,)'),
(327, 1, '2018-02-17 00:31:01', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B17X2354 AND idHabitacion = 301'),
(328, 1, '2018-02-17 00:31:01', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (301,R18B17X2354,1,5,2018-02-17 00:31:01,CheckIn de habitación 301 para reserva R18B17X2354,CheckIn)'),
(329, 1, '2018-02-17 00:32:43', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (29480097,1,29480097,1,2018-02-17 00:32:43,0,0,null)'),
(330, 1, '2018-02-17 00:32:52', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B17X3110'),
(331, 1, '2018-02-17 00:33:30', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (307,R18B17X3110,3,2018-02-16,2018-03-02 00:00:01,,,1,0)'),
(332, 1, '2018-02-17 00:34:05', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (29480097,null,null,null,null,JAMES BEGAZO V.,null,null,null,null,null,null,null,0)'),
(333, 1, '2018-02-17 00:34:05', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B17X3110,29480097,307,)'),
(334, 1, '2018-02-17 00:34:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B17X3110 AND idHabitacion = 307'),
(335, 1, '2018-02-17 00:34:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (307,R18B17X3110,1,5,2018-02-17 00:34:14,CheckIn de habitación 307 para reserva R18B17X3110,CheckIn)'),
(336, 1, '2018-02-17 00:36:22', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40273416,1,40273416,1,2018-02-17 00:36:22,0,0,null)'),
(337, 1, '2018-02-17 00:36:30', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B17X3437'),
(338, 1, '2018-02-17 00:37:02', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (309,R18B17X3437,3,2018-02-16,2018-03-02 00:00:01,,,7,0)'),
(339, 1, '2018-02-17 00:37:27', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40273416,null,null,null,null,JOMAR LOZANO MORI,null,null,null,null,null,null,null,0)'),
(340, 1, '2018-02-17 00:37:27', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B17X3437,40273416,309,)'),
(341, 1, '2018-02-17 00:37:33', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B17X3437 AND idHabitacion = 309'),
(342, 1, '2018-02-17 00:37:33', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (309,R18B17X3437,1,5,2018-02-17 00:37:33,CheckIn de habitación 309 para reserva R18B17X3437,CheckIn)'),
(343, 1, '2018-02-17 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B17X3937,1,R18B16T1854,45866531,303,25.50,SANDWICH DE POLLO 6.50 ;1/2 JARRA DE ZUMO DE NARANJA 16.00,2018-02-17 00:42:38,Cafetería)'),
(344, 1, '2018-02-17 00:45:25', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(345, 1, '2018-02-17 00:46:11', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(346, 1, '2018-02-17 00:47:57', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13K5043 AND idHabitacion = 105'),
(347, 1, '2018-02-17 00:47:57', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13K5043'),
(348, 1, '2018-02-17 00:47:57', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (105,R18B13K5043,1,5,2018-02-17 00:47:57,Retiro normal de habitación 105 para reserva R18B13K5043,Check Out)'),
(349, 1, '2018-02-17 00:48:37', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(350, 1, '2018-02-17 00:49:46', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B14L1350 AND idHabitacion = 402'),
(351, 1, '2018-02-17 00:49:46', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (402,R18B14L1350,1,5,2018-02-17 00:49:46,CheckIn de habitación 402 para reserva R18B14L1350,CheckIn)'),
(352, 1, '2018-02-17 00:50:21', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(353, 1, '2018-02-17 00:50:21', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B13L0930,1,5,2018-02-17 00:50:21,CheckIn de habitación 102 para reserva R18B13L0930,CheckIn)'),
(354, 1, '2018-02-17 00:51:12', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L0930 AND idHabitacion = 102'),
(355, 1, '2018-02-17 00:51:12', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L0930'),
(356, 1, '2018-02-17 00:51:12', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B13L0930,1,5,2018-02-17 00:51:12,Retiro normal de habitación 102 para reserva R18B13L0930,Check Out)'),
(357, 1, '2018-02-17 00:51:41', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L1007 AND idHabitacion = 103'),
(358, 1, '2018-02-17 00:51:41', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B13L1007,1,5,2018-02-17 00:51:41,CheckIn de habitación 103 para reserva R18B13L1007,CheckIn)'),
(359, 1, '2018-02-17 00:52:18', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L1007 AND idHabitacion = 103'),
(360, 1, '2018-02-17 00:52:18', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L1007'),
(361, 1, '2018-02-17 00:52:18', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B13L1007,1,5,2018-02-17 00:52:18,Retiro normal de habitación 103 para reserva R18B13L1007,Check Out)'),
(362, 1, '2018-02-17 00:52:33', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L2115 AND idHabitacion = 106'),
(363, 1, '2018-02-17 00:52:33', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L2115'),
(364, 1, '2018-02-17 00:52:33', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (106,R18B13L2115,1,5,2018-02-17 00:52:33,Retiro normal de habitación 106 para reserva R18B13L2115,Check Out)'),
(365, 1, '2018-02-17 00:53:03', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B14U0303 AND idHabitacion = 202'),
(366, 1, '2018-02-17 00:53:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (202,R18B14U0303,1,5,2018-02-17 00:53:03,CheckIn de habitación 202 para reserva R18B14U0303,CheckIn)'),
(367, 1, '2018-02-17 00:53:55', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B15N3602 AND idHabitacion = 209'),
(368, 1, '2018-02-17 00:53:55', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (209,R18B15N3602,1,5,2018-02-17 00:53:55,CheckIn de habitación 209 para reserva R18B15N3602,CheckIn)'),
(369, 1, '2018-02-17 02:40:38', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13K4429 AND idHabitacion = 206'),
(370, 1, '2018-02-17 02:40:38', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13K4429'),
(371, 1, '2018-02-17 02:40:38', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B13K4429,1,5,2018-02-17 02:40:38,Retiro normal de habitación 206 para reserva R18B13K4429,Check Out)'),
(372, 1, '2018-02-17 02:41:46', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L3149 AND idHabitacion = 303'),
(373, 1, '2018-02-17 02:41:46', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L3149'),
(374, 1, '2018-02-17 02:41:46', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L3149,1,5,2018-02-17 02:41:46,Retiro normal de habitación 303 para reserva R18B13L3149,Check Out)'),
(375, 1, '2018-02-17 02:42:03', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L5146 AND idHabitacion = 303'),
(376, 1, '2018-02-17 02:42:03', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L5146'),
(377, 1, '2018-02-17 02:42:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L5146,1,5,2018-02-17 02:42:03,Retiro normal de habitación 303 para reserva R18B13L5146,Check Out)'),
(378, 1, '2018-02-17 02:42:37', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B14K4926 AND idHabitacion = 305'),
(379, 1, '2018-02-17 02:54:55', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B14T3702 AND idHabitacion = 308'),
(380, 1, '2018-02-17 02:54:55', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (308,R18B14T3702,1,5,2018-02-17 02:54:55,CheckIn de habitación 308 para reserva R18B14T3702,CheckIn)'),
(381, 1, '2018-02-17 02:55:10', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B14L1350 AND idHabitacion = 402'),
(382, 1, '2018-02-17 02:55:10', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B14L1350'),
(383, 1, '2018-02-17 02:55:10', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (402,R18B14L1350,1,5,2018-02-17 02:55:10,Retiro normal de habitación 402 para reserva R18B14L1350,Check Out)'),
(384, 1, '2018-02-17 02:55:42', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B15S4748 AND idHabitacion = 403'),
(385, 1, '2018-02-17 02:55:42', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B15S4748'),
(386, 1, '2018-02-17 02:55:42', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (403,R18B15S4748,1,5,2018-02-17 02:55:42,Retiro normal de habitación 403 para reserva R18B15S4748,Check Out)'),
(387, 1, '2018-02-17 02:56:07', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L3401 AND idHabitacion = 405'),
(388, 1, '2018-02-17 02:56:07', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L3401'),
(389, 1, '2018-02-17 02:56:07', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (405,R18B13L3401,1,5,2018-02-17 02:56:07,Retiro normal de habitación 405 para reserva R18B13L3401,Check Out)'),
(390, 1, '2018-02-17 08:14:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (10339502,1,10339502,1,2018-02-17 08:14:18,0,0,null)'),
(391, 1, '2018-02-17 08:14:57', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B17B5608'),
(392, 1, '2018-02-17 08:15:24', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (208,R18B17B5608,3,2018-02-17,2018-02-18 00:00:01,,,1,0)'),
(393, 1, '2018-02-17 08:16:48', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (10339502,null,null,null,null,LUIS FELIX MEJIA TAN,null,null,null,null,null,null,null,0)'),
(394, 1, '2018-02-17 08:16:48', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B17B5608,10339502,208,)'),
(395, 1, '2018-02-17 08:17:45', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B17B5608 AND idHabitacion = 208'),
(396, 1, '2018-02-17 08:17:45', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (208,R18B17B5608,1,5,2018-02-17 08:17:45,CheckIn de habitación 208 para reserva R18B17B5608,CheckIn)'),
(397, 1, '2018-02-17 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B17H1915,1,R18B17B5608,10339502,208,20.00,01 DESAYUNO,2018-02-17 08:20:04,Cafetería)'),
(398, 1, '2018-02-17 09:35:30', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B14K4926 AND idHabitacion = 305'),
(399, 1, '2018-02-17 09:36:22', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B14K4926 AND idHabitacion = 305'),
(400, 1, '2018-02-17 09:36:22', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (305,R18B14K4926,1,5,2018-02-17 09:36:22,CheckIn de habitación 305 para reserva R18B14K4926,CheckIn)'),
(401, 1, '2018-02-17 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B17I4227,1,R18B13K4829,40552967,302,5.50,01 AGUA MINERAL; 01 CEREAL; ,2018-02-17 09:44:09,Cafetería)'),
(402, 1, '2018-02-17 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B17I4409,1,R18B13K4829,40552967,302,40.50,01 MILANESA DE POLLO; 1/2 JARRA DE ZUMO DE NARANJA.,2018-02-17 09:45:57,Cafetería)'),
(403, 1, '2018-02-17 09:49:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-17 09:49:39,0,0,null)'),
(404, 1, '2018-02-17 09:50:02', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Diferido WHERE idReserva = R18B17I4802'),
(405, 1, '2018-02-17 09:53:41', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-17 09:53:41,0,0,null)'),
(406, 1, '2018-02-17 09:54:31', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-17 09:54:31,0,0,null)'),
(407, 1, '2018-02-18 11:12:53', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (02865246,1,02865246,1,2018-02-18 11:12:53,0,0,null)'),
(408, 1, '2018-02-18 11:15:30', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B18J2626'),
(409, 1, '2018-02-18 11:16:07', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (201,R18B18J2626,3,2018-02-07,2018-02-22 00:00:01,,,12,0)'),
(410, 1, '2018-02-18 11:16:43', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (02865246,null,null,null,null,ORLANDO ROJAS M.,null,null,null,null,null,null,null,0)'),
(411, 1, '2018-02-18 11:16:43', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18J2626,2865246,201,)'),
(412, 1, '2018-02-18 11:16:48', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18J2626 AND idHabitacion = 201'),
(413, 1, '2018-02-18 11:16:48', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (201,R18B18J2626,1,5,2018-02-18 11:16:48,CheckIn de habitación 201 para reserva R18B18J2626,CheckIn)'),
(414, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K1730,1,R18B18J2626,2865246,201,4.00,01 PRINGLES,2018-02-18 11:19:06,Cafetería)'),
(415, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K1906,1,R18B18J2626,2865246,201,6.0,1. Chocolate Milk; 1 Piqueo,2018-02-18 11:20:15,Cafetería)'),
(416, 1, '2018-02-18 11:22:14', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-18 11:22:14,0,0,null)'),
(417, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K2356,1,R18B17B5608,10339502,208,33.5,1 Asado c/ pure; 01 porcion de arroz; 01 cafe,2018-02-18 11:25:21,Cafetería)'),
(418, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K2618,1,R18B13K5243,3,306,37.00,01 Trucha c/ arroz; 01 Sopa criolla,2018-02-18 11:27:19,Cafetería)'),
(419, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K2719,1,R18B13K5243,3,306,45.50,01 Milanesa c/ pollo; 01 Jugo de piña; 01 Sopa criolla,2018-02-18 11:29:03,Cafetería)'),
(420, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K2904,1,R18B13K5243,3,306,5.50,01 Cereal; 01 Agua San luis,2018-02-18 11:30:26,Cafetería)'),
(421, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K3026,1,R18B13K5243,3,306,9.50,01 Agua Mineral; 01 Cereal; 01 Milk,2018-02-18 11:31:22,Cafetería)'),
(422, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18K3214,1,R18B17X3437,40273416,309,22.50,01 Mozarella de pollo; 01 Vaso de zumo de naranja,2018-02-18 11:33:24,Cafetería)'),
(423, 1, '2018-02-18 11:44:41', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n AND idHabitacion = <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n'),
(424, 1, '2018-02-18 11:44:41', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n'),
(425, 1, '2018-02-18 11:44:41', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (<br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n,<br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n,1,5,2018-02-18 11:44:41,Retiro normal de habitación <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdoc'),
(426, 1, '2018-02-18 11:46:16', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13K4829 AND idHabitacion = 302'),
(427, 1, '2018-02-18 11:46:16', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13K4829'),
(428, 1, '2018-02-18 11:46:16', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B13K4829,1,5,2018-02-18 11:46:16,Retiro normal de habitación 302 para reserva R18B13K4829,Check Out)'),
(429, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18L2527,1,R18B13K5754,4,404,22.00,01 Ravioles c/ S.R.,2018-02-18 12:35:55,Cafetería)'),
(430, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18L3556,1,R18B13K5754,4,404,8.0,01 zumo,2018-02-18 12:37:05,Cafetería)'),
(431, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18L3705,1,R18B13K5754,4,404,40.00,01 Pantalon; 01 Casaca; 01 Chompa; 01 Camisa; 01 Pares de medias; 01 short; 01 Boxer,2018-02-18 12:57:12,Lavandería)'),
(432, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18L5712,1,R18B13K5754,4,404,89.00,08 Boxer ; 02 short; 07 Polos; 10 pares de medias; 01 Pantalon; 01 Camisa,2018-02-18 12:58:40,Lavandería)'),
(433, 1, '2018-02-18 13:03:43', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (43164855,1,43164855,1,2018-02-18 13:03:43,0,0,null)'),
(434, 1, '2018-02-18 13:03:49', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago =  WHERE idReserva = R18B18L5930'),
(435, 1, '2018-02-18 13:06:45', 'INSERT', 'RECOJO RESERVA ', 'INSERT INTO Recojo (idReserva, nroTicket, fechaHora, lugarRecojo, numPersonas, personaPrincipal) \n                  VALUES (R18B18L5930,LA2105,2018-02-18T11:00,Aeropuerto,02,Eduardo Janampa)'),
(436, 1, '2018-02-18 13:07:15', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (103,R18B18L5930,3,2018-02-18,2018-02-21 00:00:01,,,12,0)'),
(437, 1, '2018-02-18 13:08:49', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (43164855,null,null,null,null,Eduardo Arturo Janampa Urrutia,null,null,null,null,null,null,null,0)'),
(438, 1, '2018-02-18 13:08:49', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18L5930,43164855,103,)'),
(439, 1, '2018-02-18 13:09:24', 'UPDATE', 'Early CheckIn', 'UPDATE HabitacionReservada SET modificadorCheckIO = 1 WHERE idReserva = R18B18J2626 AND idHabitacion = 201'),
(440, 1, '2018-02-18 13:10:58', 'DELETE', 'Recojo', 'DELETE FROM Recojo WHERE idRecojo = 1'),
(441, 1, '2018-02-18 13:11:03', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18L5930 AND idHabitacion = 103'),
(442, 1, '2018-02-18 13:11:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B18L5930,1,5,2018-02-18 13:11:03,CheckIn de habitación 103 para reserva R18B18L5930,CheckIn)'),
(443, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18M1146,1,R18B18L5930,43164855,103,3.50,01 agua mineral,2018-02-18 13:12:20,Cafetería)'),
(444, 1, '2018-02-18 13:17:55', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (43,1,43,1,2018-02-18 13:17:55,0,0,null)'),
(445, 1, '2018-02-18 13:18:20', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B18M1223'),
(446, 1, '2018-02-18 13:18:48', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (105,R18B18M1223,3,2018-02-18,2018-02-21 00:00:01,,,12,0)'),
(447, 1, '2018-02-18 13:19:43', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (E4020018,null,null,null,null,kris Hennessy,null,null,null,null,null,null,null,0)'),
(448, 1, '2018-02-18 13:19:43', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18M1223,0,105,)'),
(449, 1, '2018-02-18 13:19:49', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18M1223 AND idHabitacion = 105'),
(450, 1, '2018-02-18 13:19:49', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (105,R18B18M1223,1,5,2018-02-18 13:19:49,CheckIn de habitación 105 para reserva R18B18M1223,CheckIn)'),
(451, 1, '2018-02-18 14:19:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (32834734,1,32834734,1,2018-02-18 14:19:18,0,0,null)'),
(452, 1, '2018-02-18 14:20:26', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (304,R18B18N1815,3,2018-02-16,2018-02-25 00:00:01,,,12,0)'),
(453, 1, '2018-02-18 14:20:47', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (32834734,null,null,null,null,CELSO PEREZ CRIBILLERO,null,null,null,null,null,null,null,0)'),
(454, 1, '2018-02-18 14:20:47', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18N1815,32834734,304,)'),
(455, 1, '2018-02-18 14:20:52', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18N1815 AND idHabitacion = 304'),
(456, 1, '2018-02-18 14:20:52', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (304,R18B18N1815,1,5,2018-02-18 14:20:52,CheckIn de habitación 304 para reserva R18B18N1815,CheckIn)'),
(457, 1, '2018-02-18 19:51:19', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-18 19:51:19,0,0,null)'),
(458, 1, '2018-02-18 19:51:38', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70426684,1,70426684,1,2018-02-18 19:51:38,0,0,null)'),
(459, 1, '2018-02-18 19:52:45', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (205,R18B18S5122,3,2018-02-12,2018-02-23 00:00:01,,,12,0)'),
(460, 1, '2018-02-18 19:53:02', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (70426684,null,null,null,null,SAUL GALVEZ,null,null,null,null,null,null,null,0)'),
(461, 1, '2018-02-18 19:53:02', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18S5122,70426684,205,)'),
(462, 1, '2018-02-18 19:53:15', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18S5122 AND idHabitacion = 205'),
(463, 1, '2018-02-18 19:53:15', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (205,R18B18S5122,1,5,2018-02-18 19:53:15,CheckIn de habitación 205 para reserva R18B18S5122,CheckIn)'),
(464, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18S5509,1,R18B18S5122,70426684,205,20.00,01 DESAYUNO; ,2018-02-18 19:56:00,Cafetería)'),
(465, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18S5600,1,R18B18S5122,70426684,205,30.50,01 Mozarella de pollo; 01 Vaso de zumo de naranja,2018-02-18 19:56:40,Cafetería)'),
(466, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18S5641,1,R18B18S5122,70426684,205,13.00,01 Ensalada de legumbres; 01 Mate,2018-02-18 19:57:41,Cafetería)'),
(467, 1, '2018-02-18 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B18S5812,1,R18B18S5122,70426684,205,16.50,01 agua mineral; 02 Cervezas,2018-02-18 19:58:54,Lavandería)'),
(468, 1, '2018-02-18 21:24:44', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40897576,1,40897576,1,2018-02-18 21:24:44,0,0,null)'),
(469, 1, '2018-02-18 21:25:26', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B18T1941'),
(470, 1, '2018-02-18 21:28:26', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B18T1941,3,2018-02-18,2018-02-19 00:00:01,,,10,0)'),
(471, 1, '2018-02-18 21:29:21', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40897576,null,null,null,null,Jorge Taipe Rojas,null,null,null,null,null,null,null,0)'),
(472, 1, '2018-02-18 21:29:21', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18T1941,40897576,,)'),
(473, 1, '2018-02-18 21:29:42', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L4049 AND idHabitacion = 303'),
(474, 1, '2018-02-18 21:29:42', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L4049,1,5,2018-02-18 21:29:42,CheckIn de habitación 303 para reserva R18B13L4049,CheckIn)'),
(475, 1, '2018-02-18 23:35:45', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (47,1,47,1,2018-02-18 23:35:45,0,0,null)'),
(476, 1, '2018-02-18 23:36:21', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (104,R18B18U3012,3,2018-02-18,2018-02-23 00:00:01,,,6,0)'),
(477, 1, '2018-02-18 23:36:50', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (29705454,null,null,null,null,OSCAR TALAVERA VELASQUEZ,null,null,null,null,null,null,null,0)'),
(478, 1, '2018-02-18 23:36:50', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B18U3012,47,104,)'),
(479, 1, '2018-02-18 23:36:55', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B18U3012 AND idHabitacion = 104'),
(480, 1, '2018-02-18 23:36:55', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (104,R18B18U3012,1,5,2018-02-18 23:36:55,CheckIn de habitación 104 para reserva R18B18U3012,CheckIn)'),
(481, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F3458,1,R18B18S5122,70426684,205,77.50,01 Ravioles c/salsa de champiñones; 02 Asado c/ pure; 01 Porcion de arroz ,2018-02-19 06:37:42,Cafetería)'),
(482, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F3742,1,R18B18S5122,70426684,205,39.00,06 cervezas,2018-02-19 06:38:31,Cafetería)'),
(483, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F3904,1,R18B17X2354,43832024,301,18.50,01 Tallarin en salsa roja,2018-02-19 06:39:57,Cafetería)'),
(484, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F4028,1,R18B13L4049,13,303,46.00,01 Ravioles en salsa de champiñones; 01 Jarra de zumo de naranja,2018-02-19 06:45:26,Cafetería)'),
(485, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F4645,1,R18B13K5243,3,306,7.00,02 Agua San luis,2018-02-19 06:48:50,Cafetería)'),
(486, 1, '2018-02-19 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B19F4940,1,R18B17X3437,40273416,309,3.50,01 Agua San Luis,2018-02-19 06:51:28,Cafetería)'),
(487, 1, '2018-02-19 07:53:12', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (05489759,1,05489759,1,2018-02-19 07:53:12,0,0,null)'),
(488, 1, '2018-02-19 07:53:33', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (05489759,1,05489759,1,2018-02-19 07:53:33,0,0,null)'),
(489, 1, '2018-02-19 07:53:53', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (401,R18B19G5316,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(490, 1, '2018-02-19 07:55:05', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19G5316 AND idHabitacion = 401'),
(491, 1, '2018-02-19 07:55:05', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B19G5316,1,5,2018-02-19 07:55:05,CheckIn de habitación 401 para reserva R18B19G5316,CheckIn)'),
(492, 1, '2018-02-19 07:55:26', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (5489759,null,null,null,null,CARLOS COSSIO,null,null,null,null,null,null,null,0)'),
(493, 1, '2018-02-19 07:55:26', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19G5316,5489759,,)'),
(494, 1, '2018-02-19 10:44:29', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (10263202,1,10263202,1,2018-02-19 10:44:29,0,0,null)'),
(495, 1, '2018-02-19 10:45:04', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (403,R18B19J4407,3,2018-02-19,2018-02-22 00:00:01,,,17,0)'),
(496, 1, '2018-02-19 10:45:19', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (10263202,null,null,null,null,CARLOS NIETO,null,null,null,null,null,null,null,0)'),
(497, 1, '2018-02-19 10:45:19', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19J4407,10263202,403,1)'),
(498, 1, '2018-02-19 10:45:34', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19J4407 AND idHabitacion = 403'),
(499, 1, '2018-02-19 10:45:34', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (403,R18B19J4407,1,5,2018-02-19 10:45:34,CheckIn de habitación 403 para reserva R18B19J4407,CheckIn)'),
(500, 1, '2018-02-19 10:46:43', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (20,null,null,null,null,ITALO PINO,null,,null,null,,null,null,0)'),
(501, 1, '2018-02-19 10:46:43', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (20,1,20,1,2018-02-19 10:46:43,0,0,null)'),
(502, 1, '2018-02-19 10:47:36', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L3700 AND idHuesped = 11'),
(503, 1, '2018-02-19 10:47:40', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(504, 1, '2018-02-19 10:47:44', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(505, 1, '2018-02-19 10:48:11', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (11,null,null,null,null,CYNTHIA VILLACORTA,null,null,null,null,null,null,null,0)'),
(506, 1, '2018-02-19 10:48:11', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3700,11,206,1)'),
(507, 1, '2018-02-19 10:50:38', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (20,null,null,null,null,ITALO PINO,null,,null,null,,null,null,0)'),
(508, 1, '2018-02-19 10:50:38', 'UPDATE', 'HUESPED', 'UPDATE Huesped SET nombreCompleto = ITALO PINO, correoElectronico = , telefonoCelular = , idEmpresa = null WHERE idHuesped = 20'),
(509, 1, '2018-02-19 10:50:38', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (20,1,20,1,2018-02-19 10:50:38,0,0,null)'),
(510, 1, '2018-02-19 10:52:44', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (207,R18B19J4813,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(511, 1, '2018-02-19 10:52:56', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (20,null,null,null,null,ITALO PINO,null,null,null,null,null,null,null,0)'),
(512, 1, '2018-02-19 10:52:56', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19J4813,20,207,1)'),
(513, 1, '2018-02-19 11:12:15', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (21,1,21,1,2018-02-19 11:12:15,0,0,null)'),
(514, 1, '2018-02-19 11:13:18', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (21,1,21,1,2018-02-19 11:13:18,0,0,null)'),
(515, 1, '2018-02-19 11:14:13', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B19K1301,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(516, 1, '2018-02-19 11:16:08', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B19K1301 AND idHabitacion = 209'),
(517, 1, '2018-02-19 11:16:45', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (208,R18B19K1301,3,2018-02-19,2018-02-23 00:00:01,,,12,0)'),
(518, 1, '2018-02-19 11:16:53', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (21,null,null,null,null,ABELARDO RIVERA,null,null,null,null,null,null,null,0)'),
(519, 1, '2018-02-19 11:16:53', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K1301,21,208,1)'),
(520, 1, '2018-02-19 11:29:28', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (22,1,22,1,2018-02-19 11:29:28,0,0,null)');
INSERT INTO `databaselog` (`idDatabaseLog`, `idColaborador`, `fechaHora`, `evento`, `tipo`, `consulta`) VALUES
(521, 1, '2018-02-19 11:30:22', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B19K1719,3,2018-02-19,2018-02-20 00:00:01,,,12,0)'),
(522, 1, '2018-02-19 11:30:34', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (22,null,null,null,null,JUANA ZUÑIGA,null,null,null,null,null,null,null,0)'),
(523, 1, '2018-02-19 11:30:34', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K1719,22,209,1)'),
(524, 1, '2018-02-19 11:38:10', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (00452845,1,00452845,1,2018-02-19 11:38:10,0,0,null)'),
(525, 1, '2018-02-19 11:38:31', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (305,R18B19K3709,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(526, 1, '2018-02-19 11:38:49', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (00452845,null,null,null,null,RICARDI ISHIDA,null,null,null,null,null,null,null,0)'),
(527, 1, '2018-02-19 11:38:49', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K3709,452845,305,1)'),
(528, 1, '2018-02-19 11:39:38', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (121212,1,121212,1,2018-02-19 11:39:38,0,0,null)'),
(529, 1, '2018-02-19 11:40:06', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (402,R18B19K3904,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(530, 1, '2018-02-19 11:40:17', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (121212,null,null,null,null,JORGE AUBERT,null,null,null,null,null,null,null,0)'),
(531, 1, '2018-02-19 11:40:17', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K3904,121212,402,1)'),
(532, 1, '2018-02-19 11:43:19', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (08049980,1,08049980,1,2018-02-19 11:43:19,0,0,null)'),
(533, 1, '2018-02-19 11:43:40', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (405,R18B19K4023,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(534, 1, '2018-02-19 11:43:56', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (08049980,null,null,null,null,JOSE LUIS CALDERON,null,null,null,null,null,null,null,0)'),
(535, 1, '2018-02-19 11:43:56', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K4023,8049980,405,1)'),
(536, 1, '2018-02-19 12:15:06', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B19J4813 AND idHuesped = 20'),
(537, 1, '2018-02-19 12:15:12', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B19J4813 AND idHabitacion = 207'),
(538, 1, '2018-02-19 12:15:47', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L3700 AND idHuesped = 11'),
(539, 1, '2018-02-19 12:15:51', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(540, 1, '2018-02-19 12:15:54', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(541, 1, '2018-02-19 12:16:25', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B19K1719 AND idHuesped = 22'),
(542, 1, '2018-02-19 12:16:29', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B19K1719 AND idHabitacion = 209'),
(543, 1, '2018-02-19 12:16:47', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (207,R18B19K1719,3,2018-02-19,2018-02-20 00:00:01,,,12,0)'),
(544, 1, '2018-02-19 12:16:52', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (22,null,null,null,null,JUANA ZUÑIGA,null,null,null,null,null,null,null,0)'),
(545, 1, '2018-02-19 12:16:52', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19K1719,22,,)'),
(546, 1, '2018-02-19 12:17:09', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(547, 1, '2018-02-19 12:37:39', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (11,null,null,null,null,CYNTHIA VILLACORTA,null,null,null,null,null,null,null,0)'),
(548, 1, '2018-02-19 12:37:39', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B13L3700,11,206,1)'),
(549, 1, '2018-02-20 15:11:17', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (42902258,null,null,null,null,MARIANGELA DE LA BARRA,null,,null,null,,null,null,0)'),
(550, 1, '2018-02-20 15:11:17', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (42902258,1,42902258,1,2018-02-20 15:11:17,0,0,null)'),
(551, 1, '2018-02-20 15:11:51', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (302,R18B20O1019,3,2018-02-20,2018-02-22 00:00:01,,,12,0)'),
(552, 1, '2018-02-20 15:12:02', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (42902258,null,null,null,null,MARIANGELA DE LA BARRA,null,null,null,null,null,null,null,0)'),
(553, 1, '2018-02-20 15:12:02', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20O1019,42902258,302,1)'),
(554, 1, '2018-02-20 20:27:13', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n AND idHabitacion = <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n'),
(555, 1, '2018-02-20 20:27:13', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n'),
(556, 1, '2018-02-20 20:27:13', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (<br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n,<br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n,1,5,2018-02-20 20:27:13,Retiro normal de habitación <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdoc'),
(557, 1, '2018-02-20 20:32:23', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B18L5930 AND idHabitacion = 103'),
(558, 1, '2018-02-20 20:32:23', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B18L5930'),
(559, 1, '2018-02-20 20:32:23', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B18L5930,1,5,2018-02-20 20:32:23,Retiro normal de habitación 103 para reserva R18B18L5930,Check Out)'),
(560, 1, '2018-02-20 20:34:24', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (16451856,1,16451856,1,2018-02-20 20:34:24,0,0,null)'),
(561, 1, '2018-02-20 20:35:43', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (103,R18B20T3236,3,2018-02-20,2018-02-21 00:00:01,,,12,0)'),
(562, 1, '2018-02-20 20:36:03', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (16451856,null,null,null,null,JOSE ARMANDO CHANDUVI CORNEJO,null,null,null,null,null,null,null,0)'),
(563, 1, '2018-02-20 20:36:03', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20T3236,16451856,103,)'),
(564, 1, '2018-02-20 20:36:08', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20T3236 AND idHabitacion = 103'),
(565, 1, '2018-02-20 20:36:08', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B20T3236,1,5,2018-02-20 20:36:08,CheckIn de habitación 103 para reserva R18B20T3236,CheckIn)'),
(566, 1, '2018-02-20 20:37:35', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B18M1223 AND idHabitacion = 105'),
(567, 1, '2018-02-20 20:37:35', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B18M1223'),
(568, 1, '2018-02-20 20:37:35', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (105,R18B18M1223,1,5,2018-02-20 20:37:35,Retiro normal de habitación 105 para reserva R18B18M1223,Check Out)'),
(569, 1, '2018-02-20 20:39:23', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (59,1,59,1,2018-02-20 20:39:23,0,0,null)'),
(570, 1, '2018-02-20 20:40:03', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (105,R18B20T3741,3,2018-02-20,2018-02-23 00:00:01,,,12,0)'),
(571, 1, '2018-02-20 20:40:20', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (59,null,null,null,null,RAFAEL ROBERTO,null,null,null,null,null,null,null,0)'),
(572, 1, '2018-02-20 20:40:20', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20T3741,59,105,)'),
(573, 1, '2018-02-20 20:40:25', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20T3741 AND idHabitacion = 105'),
(574, 1, '2018-02-20 20:40:25', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (105,R18B20T3741,1,5,2018-02-20 20:40:25,CheckIn de habitación 105 para reserva R18B20T3741,CheckIn)'),
(575, 1, '2018-02-20 20:44:00', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40241782,1,40241782,1,2018-02-20 20:44:00,0,0,null)'),
(576, 1, '2018-02-20 20:50:31', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(577, 1, '2018-02-20 20:50:40', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(578, 1, '2018-02-20 20:52:45', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(579, 1, '2018-02-20 20:58:01', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(580, 1, '2018-02-20 21:00:20', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (255113398,1,255113398,1,2018-02-20 21:00:20,0,0,null)'),
(581, 1, '2018-02-20 21:00:26', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B20T5916'),
(582, 1, '2018-02-20 21:01:18', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B20T5916,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(583, 1, '2018-02-20 21:02:35', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L3700 AND idHuesped = 11'),
(584, 1, '2018-02-20 21:02:41', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(585, 1, '2018-02-20 21:07:37', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(586, 1, '2018-02-20 21:07:37', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B13L3700,1,5,2018-02-20 21:07:37,CheckIn de habitación 206 para reserva R18B13L3700,CheckIn)'),
(587, 1, '2018-02-20 21:07:52', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(588, 1, '2018-02-20 21:07:52', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B13L3700,1,5,2018-02-20 21:07:52,CheckIn de habitación 206 para reserva R18B13L3700,CheckIn)'),
(589, 1, '2018-02-20 21:07:57', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(590, 1, '2018-02-20 21:09:21', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B19K1719 AND idHabitacion = 207'),
(591, 1, '2018-02-20 21:10:03', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L3700 AND idHabitacion = 206'),
(592, 1, '2018-02-20 21:10:03', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L3700'),
(593, 1, '2018-02-20 21:10:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B13L3700,1,5,2018-02-20 21:10:03,Retiro normal de habitación 206 para reserva R18B13L3700,Check Out)'),
(594, 1, '2018-02-20 21:10:16', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19K1719 AND idHabitacion = 207'),
(595, 1, '2018-02-20 21:10:16', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (207,R18B19K1719,1,5,2018-02-20 21:10:16,CheckIn de habitación 207 para reserva R18B19K1719,CheckIn)'),
(596, 1, '2018-02-20 21:10:35', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19K1719 AND idHabitacion = 207'),
(597, 1, '2018-02-20 21:10:35', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19K1719'),
(598, 1, '2018-02-20 21:10:35', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (207,R18B19K1719,1,5,2018-02-20 21:10:35,Retiro normal de habitación 207 para reserva R18B19K1719,Check Out)'),
(599, 1, '2018-02-20 21:12:01', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40241782,1,40241782,1,2018-02-20 21:12:01,0,0,null)'),
(600, 1, '2018-02-20 21:13:25', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B20U1138,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(601, 1, '2018-02-20 21:13:47', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40241782,null,null,null,null,MANUEL PINO ROMANI ASPAJO,null,null,null,null,null,null,null,0)'),
(602, 1, '2018-02-20 21:13:47', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20U1138,40241782,206,)'),
(603, 1, '2018-02-20 21:13:51', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20U1138 AND idHabitacion = 206'),
(604, 1, '2018-02-20 21:13:51', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B20U1138,1,5,2018-02-20 21:13:51,CheckIn de habitación 206 para reserva R18B20U1138,CheckIn)'),
(605, 1, '2018-02-20 21:15:14', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (25513398,1,25513398,1,2018-02-20 21:15:14,0,0,null)'),
(606, 1, '2018-02-20 21:16:38', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (207,R18B20U1416,3,2018-02-19,2018-02-21 00:00:01,,,12,0)'),
(607, 1, '2018-02-20 21:17:05', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (25513398,null,null,null,null,JUANA ZUÑIGA MEZA,null,null,null,null,null,null,null,0)'),
(608, 1, '2018-02-20 21:17:05', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20U1416,25513398,207,)'),
(609, 1, '2018-02-20 21:17:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20U1416 AND idHabitacion = 207'),
(610, 1, '2018-02-20 21:17:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (207,R18B20U1416,1,5,2018-02-20 21:17:14,CheckIn de habitación 207 para reserva R18B20U1416,CheckIn)'),
(611, 1, '2018-02-20 21:18:08', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19K1301 AND idHabitacion = 208'),
(612, 1, '2018-02-20 21:18:08', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (208,R18B19K1301,1,5,2018-02-20 21:18:08,CheckIn de habitación 208 para reserva R18B19K1301,CheckIn)'),
(613, 1, '2018-02-20 21:19:03', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B15N3602 AND idHabitacion = 209'),
(614, 1, '2018-02-20 21:19:03', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B15N3602'),
(615, 1, '2018-02-20 21:19:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (209,R18B15N3602,1,5,2018-02-20 21:19:03,Retiro normal de habitación 209 para reserva R18B15N3602,Check Out)'),
(616, 1, '2018-02-20 21:19:59', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (29565092,1,29565092,1,2018-02-20 21:19:59,0,0,null)'),
(617, 1, '2018-02-20 21:20:38', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (209,R18B20U1912,3,2018-02-20,2018-02-24 00:00:01,,,12,0)'),
(618, 1, '2018-02-20 21:20:59', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (29565092,null,null,null,null,ANIBAL VENERO,null,null,null,null,null,null,null,0)'),
(619, 1, '2018-02-20 21:20:59', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20U1912,29565092,209,)'),
(620, 1, '2018-02-20 21:21:03', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20U1912 AND idHabitacion = 209'),
(621, 1, '2018-02-20 21:21:03', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (209,R18B20U1912,1,5,2018-02-20 21:21:03,CheckIn de habitación 209 para reserva R18B20U1912,CheckIn)'),
(622, 1, '2018-02-20 21:22:23', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20O1019 AND idHabitacion = 302'),
(623, 1, '2018-02-20 21:22:23', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B20O1019,1,5,2018-02-20 21:22:23,CheckIn de habitación 302 para reserva R18B20O1019,CheckIn)'),
(624, 1, '2018-02-20 21:23:55', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L4049 AND idHabitacion = 303'),
(625, 1, '2018-02-20 21:23:55', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L4049'),
(626, 1, '2018-02-20 21:23:55', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B13L4049,1,5,2018-02-20 21:23:55,Retiro normal de habitación 303 para reserva R18B13L4049,Check Out)'),
(627, 1, '2018-02-20 21:24:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (64,1,64,1,2018-02-20 21:24:39,0,0,null)'),
(628, 1, '2018-02-20 21:25:26', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B20U2403,3,2018-02-19,2018-02-22 00:00:01,,,12,0)'),
(629, 1, '2018-02-20 21:25:41', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (64,null,null,null,null,JOSE MALAVER,null,null,null,null,null,null,null,0)'),
(630, 1, '2018-02-20 21:25:41', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20U2403,64,303,)'),
(631, 1, '2018-02-20 21:25:44', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20U2403 AND idHabitacion = 303'),
(632, 1, '2018-02-20 21:25:44', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B20U2403,1,5,2018-02-20 21:25:44,CheckIn de habitación 303 para reserva R18B20U2403,CheckIn)'),
(633, 1, '2018-02-20 21:27:04', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19K3709 AND idHabitacion = 305'),
(634, 1, '2018-02-20 21:27:04', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (305,R18B19K3709,1,5,2018-02-20 21:27:04,CheckIn de habitación 305 para reserva R18B19K3709,CheckIn)'),
(635, 1, '2018-02-20 21:29:22', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(636, 1, '2018-02-20 21:29:54', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (05489759,null,null,null,null,CARLOS COSSIO,null,null,null,null,null,null,null,0)'),
(637, 1, '2018-02-20 21:29:54', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B19G5316,5489759,401,)'),
(638, 1, '2018-02-20 21:31:00', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19K3904 AND idHabitacion = 402'),
(639, 1, '2018-02-20 21:31:00', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (402,R18B19K3904,1,5,2018-02-20 21:31:00,CheckIn de habitación 402 para reserva R18B19K3904,CheckIn)'),
(640, 1, '2018-02-20 21:31:42', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\nuevaReserva.php</b> on line <b>338</b><br />\r\n'),
(641, 1, '2018-02-20 21:33:17', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B19K4023 AND idHabitacion = 405'),
(642, 1, '2018-02-20 21:33:17', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (405,R18B19K4023,1,5,2018-02-20 21:33:17,CheckIn de habitación 405 para reserva R18B19K4023,CheckIn)'),
(643, 1, '2018-02-20 21:37:30', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3750 AND idHabitacion = 102'),
(644, 1, '2018-02-20 21:37:44', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B13L3750 AND idHuesped = 12'),
(645, 1, '2018-02-20 21:37:50', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B13L3750 AND idHabitacion = 102'),
(646, 1, '2018-02-20 00:00:00', 'INSERT', 'Transaccion', 'INSERT INTO Transaccion(idTransaccion,idColaborador,idReserva,idHuesped,idHabitacion,monto,detalle,fechaTransaccion,tipo) VALUES \n        (TRS18B20U4852,1,R18B13K5243,3,306,5.5,01 QUAKER; 01 SAN LUIS S/ GAS,2018-02-20 21:51:02,Cafetería)'),
(647, 1, '2018-02-20 22:26:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (10797695,1,10797695,1,2018-02-20 22:26:39,0,0,null)'),
(648, 1, '2018-02-20 22:26:45', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B20V2555'),
(649, 1, '2018-02-20 22:27:08', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B20V2555,3,2018-02-20,2018-02-21 00:00:01,,,12,0)'),
(650, 1, '2018-02-20 22:27:27', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (10797695,null,null,null,null,DANIEL URBINA HUERTAS,null,null,null,null,null,null,null,0)'),
(651, 1, '2018-02-20 22:27:27', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20V2555,10797695,102,)'),
(652, 1, '2018-02-20 22:27:31', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20V2555 AND idHabitacion = 102'),
(653, 1, '2018-02-20 22:27:31', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B20V2555,1,5,2018-02-20 22:27:31,CheckIn de habitación 102 para reserva R18B20V2555,CheckIn)'),
(654, 1, '2018-02-20 22:29:50', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (07758905,1,07758905,1,2018-02-20 22:29:50,0,0,null)'),
(655, 1, '2018-02-20 22:29:54', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago =  WHERE idReserva = R18B20V2815'),
(656, 1, '2018-02-20 22:30:28', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B20V2815,3,2018-02-20,2018-02-21 00:00:01,,,7,0)'),
(657, 1, '2018-02-20 22:30:54', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B14T3702 AND idHabitacion = 308'),
(658, 1, '2018-02-20 22:32:27', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (07758905,1,07758905,1,2018-02-20 22:32:27,0,0,null)'),
(659, 1, '2018-02-20 22:38:15', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (07758905,1,07758905,1,2018-02-20 22:38:15,0,0,null)'),
(660, 1, '2018-02-20 22:38:20', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B20V3751'),
(661, 1, '2018-02-20 22:38:46', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (308,R18B20V3751,3,2018-02-20,2018-02-21 00:00:01,,,13,0)'),
(662, 1, '2018-02-20 22:39:06', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (07758905,null,null,null,null,RENATO COLCHADO,null,null,null,null,null,null,null,0)'),
(663, 1, '2018-02-20 22:39:06', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B20V3751,7758905,308,)'),
(664, 1, '2018-02-20 22:39:10', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B20V3751 AND idHabitacion = 308'),
(665, 1, '2018-02-20 22:39:10', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (308,R18B20V3751,1,5,2018-02-20 22:39:10,CheckIn de habitación 308 para reserva R18B20V3751,CheckIn)'),
(666, 1, '2018-02-21 00:46:14', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n AND idHabitacion = <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n'),
(667, 1, '2018-02-21 00:46:14', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n'),
(668, 1, '2018-02-21 00:46:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (<br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n,<br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n,1,5,2018-02-21 00:46:14,Retiro normal de habitación <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdoc'),
(669, 1, '2018-02-21 00:48:04', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B18U3012 AND idHabitacion = 104'),
(670, 1, '2018-02-21 00:50:15', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B18U3012 AND idHuesped = 47'),
(671, 1, '2018-02-21 00:51:30', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B18U3012 AND idHabitacion = 104'),
(672, 1, '2018-02-21 00:51:30', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B18U3012'),
(673, 1, '2018-02-21 00:51:30', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (104,R18B18U3012,1,5,2018-02-21 00:51:30,Retiro normal de habitación 104 para reserva R18B18U3012,Check Out)'),
(674, 1, '2018-02-21 06:34:18', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20V2555 AND idHabitacion = 102'),
(675, 1, '2018-02-21 06:34:18', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20V2555'),
(676, 1, '2018-02-21 06:34:18', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B20V2555,1,5,2018-02-21 06:34:18,Retiro normal de habitación 102 para reserva R18B20V2555,Check Out)'),
(677, 1, '2018-02-21 08:23:42', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20U1138 AND idHabitacion = 206'),
(678, 1, '2018-02-21 08:23:42', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20U1138'),
(679, 1, '2018-02-21 08:23:42', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B20U1138,1,5,2018-02-21 08:23:42,Retiro normal de habitación 206 para reserva R18B20U1138,Check Out)'),
(680, 1, '2018-02-21 08:23:59', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19K4023 AND idHabitacion = 405'),
(681, 1, '2018-02-21 08:23:59', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19K4023'),
(682, 1, '2018-02-21 08:23:59', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (405,R18B19K4023,1,5,2018-02-21 08:23:59,Retiro normal de habitación 405 para reserva R18B19K4023,Check Out)'),
(683, 1, '2018-02-21 09:02:44', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40341328,1,40341328,1,2018-02-21 09:02:44,0,0,null)'),
(684, 1, '2018-02-21 09:03:00', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (103,R18B21H2400,3,2018-02-21,2018-02-22 00:00:01,,,12,0)'),
(685, 1, '2018-02-21 09:03:06', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B21H2400 AND idHabitacion = 103'),
(686, 1, '2018-02-21 09:03:20', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40341328,null,null,null,null,SANDRA CORDOVA,null,null,null,null,null,null,null,0)'),
(687, 1, '2018-02-21 09:03:20', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B21H2400,40341328,103,1)'),
(688, 1, '2018-02-21 09:04:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B21H2400 AND idHabitacion = 103'),
(689, 1, '2018-02-21 09:04:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (103,R18B21H2400,1,5,2018-02-21 09:04:14,CheckIn de habitación 103 para reserva R18B21H2400,CheckIn)'),
(690, 1, '2018-02-21 11:21:17', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (08253472,1,08253472,1,2018-02-21 11:21:17,0,0,null)'),
(691, 1, '2018-02-21 11:21:34', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B21I0420,3,2018-02-21,2018-02-22 00:00:01,,,12,0)'),
(692, 1, '2018-02-21 11:21:54', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (08253472,null,null,null,null,JORGE JAMES,null,null,null,null,null,null,null,0)'),
(693, 1, '2018-02-21 11:21:54', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B21I0420,8253472,206,1)'),
(694, 1, '2018-02-21 11:22:39', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (123123,1,123123,1,2018-02-21 11:22:39,0,0,null)'),
(695, 1, '2018-02-21 11:22:53', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B21K2158,3,2018-02-21,2018-02-22 00:00:01,,,12,0)'),
(696, 1, '2018-02-21 11:23:05', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (123123,null,null,null,null,DIEGO ROJAS,null,null,null,null,null,null,null,0)'),
(697, 1, '2018-02-21 11:23:05', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B21K2158,123123,102,1)'),
(698, 1, '2018-02-21 11:23:46', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (122,1,122,1,2018-02-21 11:23:46,0,0,null)'),
(699, 1, '2018-02-21 11:24:07', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (305,R18B21K2324,3,2018-02-21,2018-02-23 00:00:01,,,12,0)'),
(700, 1, '2018-02-21 11:24:14', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (122,null,null,null,null,MARIANO SALAZAR,null,null,null,null,null,null,null,0)'),
(701, 1, '2018-02-21 11:24:14', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B21K2324,122,305,1)'),
(702, 1, '2018-02-21 11:25:11', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B21K2158 AND idHuesped = 123123'),
(703, 1, '2018-02-21 11:25:15', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B21K2158 AND idHabitacion = 102'),
(704, 1, '2018-02-21 11:25:21', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B21K2158 AND idHabitacion = 102'),
(705, 1, '2018-02-22 14:25:10', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19G5316 AND idHabitacion = 401'),
(706, 1, '2018-02-22 14:25:10', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19G5316'),
(707, 1, '2018-02-22 14:25:10', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B19G5316,1,5,2018-02-22 14:25:10,Retiro normal de habitación 401 para reserva R18B19G5316,Check Out)'),
(708, 1, '2018-02-22 19:29:34', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (42213989,1,42213989,1,2018-02-22 19:29:34,0,0,null)'),
(709, 1, '2018-02-22 19:43:36', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (42213989,1,42213989,1,2018-02-22 19:43:36,0,0,null)'),
(710, 1, '2018-02-22 19:45:21', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Diferido WHERE idReserva = R18B22S3305'),
(711, 1, '2018-02-22 19:45:46', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B22S3305,3,2018-02-22,2018-02-23 00:00:01,,,12,0)'),
(712, 1, '2018-02-22 19:46:08', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (42213989,null,null,null,null,DIEGO ROJAS MENDIZABAL,null,null,null,null,null,null,null,0)'),
(713, 1, '2018-02-22 19:46:08', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B22S3305,42213989,102,)'),
(714, 1, '2018-02-22 19:46:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B22S3305 AND idHabitacion = 102'),
(715, 1, '2018-02-22 19:46:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B22S3305,1,5,2018-02-22 19:46:14,CheckIn de habitación 102 para reserva R18B22S3305,CheckIn)'),
(716, 1, '2018-02-22 19:53:51', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (09333470,1,09333470,1,2018-02-22 19:53:51,0,0,null)'),
(717, 1, '2018-02-22 19:54:01', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B22S5150'),
(718, 1, '2018-02-22 19:54:35', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B22S5150,3,2018-02-22,2018-02-23 00:00:01,,,12,0)'),
(719, 1, '2018-02-22 19:55:38', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (09333470,null,null,null,null,BENJAMIN DE LOS SANTOS,null,null,null,null,null,null,null,0)'),
(720, 1, '2018-02-22 19:55:38', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B22S5150,9333470,206,)'),
(721, 1, '2018-02-22 19:55:43', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B22S5150 AND idHabitacion = 206'),
(722, 1, '2018-02-22 19:55:43', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B22S5150,1,5,2018-02-22 19:55:43,CheckIn de habitación 206 para reserva R18B22S5150,CheckIn)'),
(723, 1, '2018-02-22 19:58:53', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n AND idHabitacion = <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n'),
(724, 1, '2018-02-22 19:58:53', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = <br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n'),
(725, 1, '2018-02-22 19:58:53', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (<br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>309</b><br />\r\n,<br />\r\n<b>Notice</b>:  Undefined index: idReserva in <b>C:xampphtdocshotelpms\registrarCheckout.php</b> on line <b>308</b><br />\r\n,1,5,2018-02-22 19:58:53,Retiro normal de habitación <br />\r\n<b>Notice</b>:  Undefined index: idHabitacion in <b>C:xampphtdoc'),
(726, 1, '2018-02-22 19:59:34', 'UPDATE', 'Late CheckOut', 'UPDATE HabitacionReservada SET modificadorCheckIO = 2 WHERE idReserva = R18B20U2403 AND idHabitacion = 303'),
(727, 1, '2018-02-22 19:59:53', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20U2403 AND idHabitacion = 303'),
(728, 1, '2018-02-22 19:59:53', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20U2403'),
(729, 1, '2018-02-22 19:59:53', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B20U2403,1,5,2018-02-22 19:59:53,Retiro normal de habitación 303 para reserva R18B20U2403,Check Out)'),
(730, 1, '2018-02-22 20:01:33', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (73,1,73,1,2018-02-22 20:01:33,0,0,null)'),
(731, 1, '2018-02-22 20:02:31', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (303,R18B22T0015,3,2018-02-22,2018-02-25 00:00:01,,,12,0)'),
(732, 1, '2018-02-22 20:02:37', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B22T0015'),
(733, 1, '2018-02-22 20:02:53', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (73,null,null,null,null,WILLY TORO,null,null,null,null,null,null,null,0)'),
(734, 1, '2018-02-22 20:02:53', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B22T0015,73,303,)'),
(735, 1, '2018-02-22 20:03:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B22T0015 AND idHabitacion = 303'),
(736, 1, '2018-02-22 20:03:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (303,R18B22T0015,1,5,2018-02-22 20:03:14,CheckIn de habitación 303 para reserva R18B22T0015,CheckIn)'),
(737, 1, '2018-02-22 20:05:01', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B21K2324 AND idHabitacion = 305'),
(738, 1, '2018-02-22 20:05:01', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (305,R18B21K2324,1,5,2018-02-22 20:05:01,CheckIn de habitación 305 para reserva R18B21K2324,CheckIn)'),
(739, 1, '2018-02-22 20:06:14', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20V3751 AND idHabitacion = 308'),
(740, 1, '2018-02-22 20:06:14', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20V3751'),
(741, 1, '2018-02-22 20:06:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (308,R18B20V3751,1,5,2018-02-22 20:06:14,Retiro normal de habitación 308 para reserva R18B20V3751,Check Out)'),
(742, 1, '2018-02-22 20:14:19', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (41182358,1,41182358,1,2018-02-22 20:14:19,0,0,null)'),
(743, 1, '2018-02-22 20:14:27', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B22T1245'),
(744, 1, '2018-02-22 20:15:07', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (401,R18B22T1245,3,2018-02-22,2018-02-23 00:00:01,,,12,0)'),
(745, 1, '2018-02-22 20:15:27', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (41182358,null,null,null,null,CESAR MARTINEZ,null,null,null,null,null,null,null,0)'),
(746, 1, '2018-02-22 20:15:27', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B22T1245,41182358,401,)'),
(747, 1, '2018-02-22 20:15:44', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B22T1245 AND idHabitacion = 401'),
(748, 1, '2018-02-22 20:15:44', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B22T1245,1,5,2018-02-22 20:15:44,CheckIn de habitación 401 para reserva R18B22T1245,CheckIn)'),
(749, 1, '2018-02-22 20:17:22', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19K3904 AND idHabitacion = 402'),
(750, 1, '2018-02-22 20:17:22', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19K3904'),
(751, 1, '2018-02-22 20:17:22', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (402,R18B19K3904,1,5,2018-02-22 20:17:22,Retiro normal de habitación 402 para reserva R18B19K3904,Check Out)'),
(752, 1, '2018-02-22 20:17:41', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19J4407 AND idHabitacion = 403'),
(753, 1, '2018-02-22 20:17:41', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19J4407'),
(754, 1, '2018-02-22 20:17:41', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (403,R18B19J4407,1,5,2018-02-22 20:17:41,Retiro normal de habitación 403 para reserva R18B19J4407,Check Out)'),
(755, 1, '2018-02-22 20:22:28', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20O1019 AND idHabitacion = 302'),
(756, 1, '2018-02-22 20:22:28', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20O1019'),
(757, 1, '2018-02-22 20:22:28', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B20O1019,1,5,2018-02-22 20:22:28,Retiro normal de habitación 302 para reserva R18B20O1019,Check Out)'),
(758, 1, '2018-02-22 20:28:38', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B19K3709 AND idHabitacion = 305'),
(759, 1, '2018-02-22 20:28:38', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B19K3709'),
(760, 1, '2018-02-22 20:28:38', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (305,R18B19K3709,1,5,2018-02-22 20:28:38,Retiro normal de habitación 305 para reserva R18B19K3709,Check Out)'),
(761, 1, '2018-02-22 20:30:29', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (,R18B13K5754,3,,2018-02-25 00:00:01,,,,0)'),
(762, 1, '2018-02-23 01:58:28', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (06726880,1,06726880,1,2018-02-23 01:58:28,0,0,null)'),
(763, 1, '2018-02-23 01:58:38', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B23A5717'),
(764, 1, '2018-02-23 01:59:14', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (101,R18B23A5717,3,2018-02-23,2018-02-23 00:00:01,,,13,0)'),
(765, 1, '2018-02-23 01:59:33', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (06726880,null,null,null,null,CARMEN ARCE,null,null,null,null,null,null,null,0)'),
(766, 1, '2018-02-23 01:59:33', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23A5717,5,101,)'),
(767, 1, '2018-02-23 01:59:44', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B23A5717 AND idHabitacion = 101'),
(768, 1, '2018-02-23 01:59:44', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (101,R18B23A5717,1,5,2018-02-23 01:59:44,CheckIn de habitación 101 para reserva R18B23A5717,CheckIn)'),
(769, 1, '2018-02-23 02:01:12', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (23873456,1,23873456,1,2018-02-23 02:01:12,0,0,null)'),
(770, 1, '2018-02-23 02:01:16', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B23B0010'),
(771, 1, '2018-02-23 02:01:47', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (104,R18B23B0010,3,2018-02-23,2018-02-23 00:00:01,,,5,0)'),
(772, 1, '2018-02-23 02:02:14', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (23873456,null,null,null,null,MIGUEL YAÑEZ RUBIO,null,null,null,null,null,null,null,0)'),
(773, 1, '2018-02-23 02:02:14', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23B0010,23873456,104,)');
INSERT INTO `databaselog` (`idDatabaseLog`, `idColaborador`, `fechaHora`, `evento`, `tipo`, `consulta`) VALUES
(774, 1, '2018-02-23 02:03:35', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (01225408,null,null,null,null,MARCIA CASTILLO DE YAÑEZ,null,null,null,null,null,null,null,0)'),
(775, 1, '2018-02-23 02:03:35', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23B0010,1225408,104,)'),
(776, 1, '2018-02-23 02:05:30', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B23B0010 AND idHabitacion = 104'),
(777, 1, '2018-02-23 02:05:30', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (104,R18B23B0010,1,5,2018-02-23 02:05:30,CheckIn de habitación 104 para reserva R18B23B0010,CheckIn)'),
(778, 1, '2018-02-23 02:06:44', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (09679060,1,09679060,1,2018-02-23 02:06:44,0,0,null)'),
(779, 1, '2018-02-23 02:06:50', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B23B0538'),
(780, 1, '2018-02-23 02:07:26', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (204,R18B23B0538,3,2018-02-23,2018-02-23 00:00:01,,,13,0)'),
(781, 1, '2018-02-23 02:07:51', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (09679060,null,null,null,null,WILY JARA,null,null,null,null,null,null,null,0)'),
(782, 1, '2018-02-23 02:07:51', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23B0538,9679060,204,)'),
(783, 1, '2018-02-23 02:08:11', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B23B0538 AND idHabitacion = 204'),
(784, 1, '2018-02-23 02:08:11', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (204,R18B23B0538,1,5,2018-02-23 02:08:11,CheckIn de habitación 204 para reserva R18B23B0538,CheckIn)'),
(785, 1, '2018-02-23 02:09:24', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (44067073,1,44067073,1,2018-02-23 02:09:24,0,0,null)'),
(786, 1, '2018-02-23 02:09:29', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B23B0836'),
(787, 1, '2018-02-23 02:10:10', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (302,R18B23B0836,3,2018-02-23,2018-02-23 00:00:01,,,12,0)'),
(788, 1, '2018-02-23 02:10:32', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (44067073,null,null,null,null,GABRIELA YAÑEZ,null,null,null,null,null,null,null,0)'),
(789, 1, '2018-02-23 02:10:32', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23B0836,44067073,302,)'),
(790, 1, '2018-02-23 02:10:44', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B23B0836 AND idHabitacion = 302'),
(791, 1, '2018-02-23 02:10:44', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B23B0836,1,5,2018-02-23 02:10:44,CheckIn de habitación 302 para reserva R18B23B0836,CheckIn)'),
(792, 1, '2018-02-23 02:12:38', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (400322679,1,400322679,1,2018-02-23 02:12:38,0,0,null)'),
(793, 1, '2018-02-23 02:12:43', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B23B1147'),
(794, 1, '2018-02-23 02:13:19', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (308,R18B23B1147,3,2018-02-23,2018-02-23 00:00:01,,,3,0)'),
(795, 1, '2018-02-23 02:14:09', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40032679,null,null,null,null,JOSE VILLACORTA BRAVO,null,null,null,null,null,null,null,0)'),
(796, 1, '2018-02-23 02:14:09', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B23B1147,40032679,308,)'),
(797, 1, '2018-02-23 02:14:29', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B23B1147 AND idHabitacion = 308'),
(798, 1, '2018-02-23 02:14:29', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (308,R18B23B1147,1,5,2018-02-23 02:14:29,CheckIn de habitación 308 para reserva R18B23B1147,CheckIn)'),
(799, 1, '2018-02-23 02:20:38', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13L1558 AND idHabitacion = 401'),
(800, 1, '2018-02-23 02:20:38', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13L1558'),
(801, 1, '2018-02-23 02:20:38', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B13L1558,1,5,2018-02-23 02:20:38,Retiro normal de habitación 401 para reserva R18B13L1558,Check Out)'),
(802, 1, '2018-02-23 07:21:35', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B20T3741 AND idHuesped = 59'),
(803, 1, '2018-02-23 07:21:39', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B20T3741 AND idHabitacion = 105'),
(804, 1, '2018-02-23 07:21:42', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B20T3741 AND idHabitacion = 105'),
(805, 1, '2018-02-24 08:30:26', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B23A5717 AND idHabitacion = 101'),
(806, 1, '2018-02-24 08:30:26', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B23A5717'),
(807, 1, '2018-02-24 08:30:26', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (101,R18B23A5717,1,5,2018-02-24 08:30:26,Retiro normal de habitación 101 para reserva R18B23A5717,Check Out)'),
(808, 1, '2018-02-24 08:32:37', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B23B0538 AND idHabitacion = 204'),
(809, 1, '2018-02-24 08:32:37', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B23B0538'),
(810, 1, '2018-02-24 08:32:37', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (204,R18B23B0538,1,5,2018-02-24 08:32:37,Retiro normal de habitación 204 para reserva R18B23B0538,Check Out)'),
(811, 1, '2018-02-24 08:32:48', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20U1416 AND idHabitacion = 207'),
(812, 1, '2018-02-24 08:32:48', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20U1416'),
(813, 1, '2018-02-24 08:32:48', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (207,R18B20U1416,1,5,2018-02-24 08:32:48,Retiro normal de habitación 207 para reserva R18B20U1416,Check Out)'),
(814, 1, '2018-02-24 08:33:04', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B20U1912 AND idHabitacion = 209'),
(815, 1, '2018-02-24 08:33:04', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B20U1912'),
(816, 1, '2018-02-24 08:33:04', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (209,R18B20U1912,1,5,2018-02-24 08:33:04,Retiro normal de habitación 209 para reserva R18B20U1912,Check Out)'),
(817, 1, '2018-02-24 08:33:27', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B17B5608 AND idHabitacion = 208'),
(818, 1, '2018-02-24 08:33:27', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B17B5608'),
(819, 1, '2018-02-24 08:33:27', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (208,R18B17B5608,1,5,2018-02-24 08:33:27,Retiro normal de habitación 208 para reserva R18B17B5608,Check Out)'),
(820, 1, '2018-02-24 08:33:59', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B23B0836 AND idHabitacion = 302'),
(821, 1, '2018-02-24 08:33:59', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B23B0836'),
(822, 1, '2018-02-24 08:33:59', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (302,R18B23B0836,1,5,2018-02-24 08:33:59,Retiro normal de habitación 302 para reserva R18B23B0836,Check Out)'),
(823, 1, '2018-02-24 08:34:23', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B21K2324 AND idHabitacion = 305'),
(824, 1, '2018-02-24 08:34:23', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B21K2324'),
(825, 1, '2018-02-24 08:34:23', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (305,R18B21K2324,1,5,2018-02-24 08:34:23,Retiro normal de habitación 305 para reserva R18B21K2324,Check Out)'),
(826, 1, '2018-02-24 08:34:38', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13K5243 AND idHabitacion = 306'),
(827, 1, '2018-02-24 08:34:38', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13K5243'),
(828, 1, '2018-02-24 08:34:38', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (306,R18B13K5243,1,5,2018-02-24 08:34:38,Retiro normal de habitación 306 para reserva R18B13K5243,Check Out)'),
(829, 1, '2018-02-24 08:34:50', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B23B1147 AND idHabitacion = 308'),
(830, 1, '2018-02-24 08:34:50', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B23B1147'),
(831, 1, '2018-02-24 08:34:50', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (308,R18B23B1147,1,5,2018-02-24 08:34:50,Retiro normal de habitación 308 para reserva R18B23B1147,Check Out)'),
(832, 1, '2018-02-24 08:35:10', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B22T1245 AND idHabitacion = 401'),
(833, 1, '2018-02-24 08:35:10', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B22T1245'),
(834, 1, '2018-02-24 08:35:10', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (401,R18B22T1245,1,5,2018-02-24 08:35:10,Retiro normal de habitación 401 para reserva R18B22T1245,Check Out)'),
(835, 1, '2018-02-24 08:35:27', 'UPDATE', 'HabitacionReservada-CheckOut', 'UPDATE HabitacionReservada SET idEstado = 5 WHERE idReserva = R18B13K5754 AND idHabitacion = 404'),
(836, 1, '2018-02-24 08:35:27', 'UPDATE', 'Reserva-CheckOut Completo', 'UPDATE Reserva SET idEstado = 5 WHERE idReserva = R18B13K5754'),
(837, 1, '2018-02-24 08:35:27', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (404,R18B13K5754,1,5,2018-02-24 08:35:27,Retiro normal de habitación 404 para reserva R18B13K5754,Check Out)'),
(838, 1, '2018-02-24 09:00:35', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (40062849,1,40062849,1,2018-02-24 09:00:35,0,0,null)'),
(839, 1, '2018-02-24 09:01:01', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B24H3547'),
(840, 1, '2018-02-24 09:06:32', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (402,R18B24H3547,3,2018-02-23,2018-02-25 00:00:01,,,12,0)'),
(841, 1, '2018-02-24 09:07:00', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (40062849,null,null,null,null,ACROPLIS  HERRERA HIDALGO,null,null,null,null,null,null,null,0)'),
(842, 1, '2018-02-24 09:07:00', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B24H3547,40062849,402,)'),
(843, 1, '2018-02-24 09:07:17', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B24H3547 AND idHabitacion = 402'),
(844, 1, '2018-02-24 09:07:17', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (402,R18B24H3547,1,5,2018-02-24 09:07:17,CheckIn de habitación 402 para reserva R18B24H3547,CheckIn)'),
(845, 1, '2018-02-24 09:09:13', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (70120612,1,70120612,1,2018-02-24 09:09:13,0,0,null)'),
(846, 1, '2018-02-24 09:18:36', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Pago Directo WHERE idReserva = R18B24I0756'),
(847, 1, '2018-02-24 09:19:42', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (405,R18B24I0756,3,2018-02-23,2018-03-09 00:00:01,,,12,0)'),
(848, 1, '2018-02-24 09:20:01', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (70120612,null,null,null,null,CARLOS J. CARRANZA PINTO,null,null,null,null,null,null,null,0)'),
(849, 1, '2018-02-24 09:20:01', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B24I0756,70120612,405,)'),
(850, 1, '2018-02-24 09:20:15', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B24I0756 AND idHabitacion = 405'),
(851, 1, '2018-02-24 09:20:15', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (405,R18B24I0756,1,5,2018-02-24 09:20:15,CheckIn de habitación 405 para reserva R18B24I0756,CheckIn)'),
(852, 1, '2018-02-24 20:13:36', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (06448647,null,null,null,null,ALEX C. DOUROJEANNI,null,,null,null,,null,null,0)'),
(853, 1, '2018-02-24 20:13:36', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (06448647,1,06448647,1,2018-02-24 20:13:36,0,0,null)'),
(854, 1, '2018-02-24 20:13:42', 'INSERT', 'RECOJO RESERVA ', 'UPDATE Reserva SET tipoPago = Crédito WHERE idReserva = R18B24T1040'),
(855, 1, '2018-02-24 20:14:10', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (102,R18B24T1040,3,2018-02-24,2018-02-25 00:00:01,,,12,0)'),
(856, 1, '2018-02-24 20:15:36', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (06448647,null,null,null,null,ALEX C. DOUROJEANNI,null,null,null,null,null,null,null,0)'),
(857, 1, '2018-02-24 20:15:36', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B24T1040,6448647,102,)'),
(858, 1, '2018-02-24 20:16:14', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B24T1040 AND idHabitacion = 102'),
(859, 1, '2018-02-24 20:16:14', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (102,R18B24T1040,1,5,2018-02-24 20:16:14,CheckIn de habitación 102 para reserva R18B24T1040,CheckIn)'),
(860, 1, '2018-02-26 09:31:11', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (43137845,1,43137845,1,2018-02-26 09:31:11,0,0,null)'),
(861, 1, '2018-02-26 09:31:56', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (206,R18B26I3048,3,2018-02-26,2018-03-01 00:00:01,,,12,0)'),
(862, 1, '2018-02-26 09:32:09', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (43137845,null,null,null,null,MARIA POLO,null,null,null,null,null,null,null,0)'),
(863, 1, '2018-02-26 09:32:09', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B26I3048,43137845,206,1)'),
(864, 1, '2018-02-26 09:32:56', 'UPDATE', 'CHECKIN HABITACION', 'UPDATE HabitacionReservada SET idEstado = 4 WHERE idReserva = R18B26I3048 AND idHabitacion = 206'),
(865, 1, '2018-02-26 09:32:56', 'INSERT', 'HistorialReserva', 'INSERT INTO HistorialReserva(idHabitacion,idReserva,idColaborador,idEstado,fechaHora,descripcion,tipo) VALUES (206,R18B26I3048,1,5,2018-02-26 09:32:56,CheckIn de habitación 206 para reserva R18B26I3048,CheckIn)'),
(866, 1, '2018-02-27 12:07:05', 'INSERT', 'CREAR RESERVA', 'INSERT INTO Reserva VALUES (45454545,1,45454545,1,2018-02-27 12:07:05,0,0,null)'),
(867, 1, '2018-02-27 12:07:20', 'INSERT', 'HabitacionReservada', 'INSERT INTO HabitacionReservada(idHabitacion,idReserva,idEstado,fechaInicio,fechaFin,preferencias,camaAdicional,idTarifa,modificadorCheckIO) VALUES (SALA 2,R18B27L0639,3,2018-02-27,2018-02-27 00:00:01,,,21,0)'),
(868, 1, '2018-02-27 12:07:30', 'INSERT', 'CREAR HUESPED', 'INSERT INTO Huesped VALUES (45454545,null,null,null,null,SILVIA HUAMANI,null,null,null,null,null,null,null,0)'),
(869, 1, '2018-02-27 12:07:30', 'INSERT', 'OCUPANTE', 'INSERT INTO Ocupantes(idReserva,idHuesped,idHabitacion,cargos) VALUES (R18B27L0639,45454545,,1)'),
(870, 1, '2018-03-02 09:15:17', 'DELETE', 'OCUPANTE ', 'DELETE FROM Ocupantes WHERE idReserva = R18B24T1040 AND idHuesped = 6448647'),
(871, 1, '2018-03-02 09:15:20', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B24T1040 AND idHabitacion = 102'),
(872, 1, '2018-03-02 09:15:24', 'DELETE', 'HABITACION RESERVADA ', 'DELETE FROM HabitacionReservada WHERE idReserva = R18B24T1040 AND idHabitacion = 102');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` bigint(20) NOT NULL,
  `razonSocial` varchar(45) DEFAULT NULL,
  `rubro` varchar(45) DEFAULT NULL,
  `direccionFiscal` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `razonSocial`, `rubro`, `direccionFiscal`) VALUES
(10465151982, 'GLOBAL SOFTWARE DYNAMICS', 'DESARROLLO DE SOFTWARE', 'Av. Lima 417, Vallecito'),
(20100018625, 'MEDIFARMA S.A.', '', 'JR. ECUADOR 787 - CERCADO - LIMA'),
(20100028698, 'FERREYROS S.A.', '', 'JR. CRISTOBAL DE PERALTA 820 - SURCO - LIMA'),
(20100030838, 'G.W. YICHANG Y CIA S.A.', '', 'CALLE 31 N 125 SAN ISIDRO - LIMA'),
(20100035121, 'MOLITALIA S.A.', '', 'AV. VENEZUELA 2850 LIMA'),
(20100041953, 'RIMAC SEGUROS Y REASEGUROS', '', 'LAS BEGONIAS 475 SAN ISIDRO - LIMA'),
(20100043140, 'SCOTIABANK PERU S.A.A.', '', 'DIONISIO DERTEANO 102 SAN ISIDRO - LIMA'),
(20100047218, 'BANCO DE CREDITO DEL PERU', '', 'CALLE CENTENARIO 156 LA MOLINA - LIMA'),
(20100055237, 'ALICORP S.A.A.', '', 'AV. ARGENTINA NRO. 4793 - CARMEN DE LA LEGUA '),
(20100095450, 'LAIVE S.A.', '', 'AV. NICOLAS DE PIEROLA 671 - ATE - LIMA'),
(20100113610, 'UNIÓN DE CERVECERÍAS PERUANAS BACKUS Y JOHNST', '', 'AV. NICOLAS AYLLON 3986 - ATE - LIMA'),
(20100119227, '3M PERU S.A.', '', 'AV. CANAVAL Y MOREYRA 641 SAN ISIDRO - LIMA'),
(20100128218, 'PETROPERU - PETROLEOS DEL PERU S.A.', '', 'AV. CANAVAL MOREYRA 150 SAN ISIDRO - LIMA'),
(20100147514, 'SOUTHERN PERU COPPER CORPORATION', '', 'AV. CAMINOS DEL INCA 171 - SURCO - LIMA'),
(20100148162, 'COMPAÑIA DE SEGURIDAD PROSEGUR S.A.', '', 'AV. MORRO SOLAR 1086 - SANTIAGO DE SURCO - LI'),
(20100166578, 'AGRIBRANDS PURINA PERU S.A.', '', 'CAR.PANAMERICANA NORTE KM. 17.5 INDEPENDENCIA'),
(20100180210, ' FARMAGRO S. A.', ' FABRICACION DE PLAGUICIDAS Y OTROS PRODUCTOS', 'AV. ALFREDO MENDIOLA NRO. 6068 Z.I. MOLITALIA'),
(20100190797, 'GLORIA S.A.', '', 'AV. REP. DE PANAMA 2461 LA VICTORIA - LIMA'),
(20100226813, 'INCALPACA TPX S.A.', '', 'CONDOR 100 TAHUAYCANI - AREQUIPA'),
(20100226902, 'ALIMENTOS PROCESADOS S.A.', '', 'PEREZ ARANIBAR S/N SACHACA - AREQUIPA'),
(20100228191, 'TRANSALTISA S.A.', '', 'EDUARDO LOPEZ DE ROMAÑA S/N PARQUE INDUSTRIAL'),
(20100814162, 'RACIONALIZACION EMPRESARIAL S.A.', '', 'AV. LA CAPITANA 240 HUACHIPA - LURIGANCHO - L'),
(20100999430, 'DOMIRUTH TRAVEL SERVICE S.A.C', '', 'URB. BARBONCITO, CALLE RIO DE JANEIRO 216 MIR'),
(20101024645, 'CORPORACION LINDLEY S.A.', '', 'AV. JAVIER PRADO ESTE NRO. 6210 - LA MOLINA -'),
(20101363008, 'SCANIA DEL PERU S.A.', '', 'AUTOPISTA RAMIRO PRIALE KM. 7.5 - SAN JUAN DE'),
(20106896276, 'GAVEGLIO, APARICIO Y ASOCIADOS S. CIVIL DE R.', '', 'AV. SANTO TORIBIO 143 SAN ISIDRO  - LIMA'),
(20107751913, 'CARLSON WAGONLIT PERU S.A', '', 'AV. BENAVIDES 1579 DPTO. 501 MIRAFLORES - LIM'),
(20111064394, 'PHILIPPI, PRIETOCARRIZOSA, FERRERO DU & URIA ', '', 'AV. SANTA CRUZ NRO. 888 MIRAFLORES - LIMA'),
(20115039262, 'CAL Y CEMENTO SUR S.A.', '', 'CAR.JULIACA-PUNO KM. 11 - SAN ROMAN - CARACOT'),
(20131366966, 'MINISTERIO DEL INTERIOR', '', 'PLAZA 30 DE AGOSTO S/N URB. CORPAC SAN ISIDRO'),
(20131367938, 'MINISTERIO DE DEFENSA', '', 'AV. LA PERUANIDAD S/N J. MARÍA - LIMA'),
(20131370645, 'MINISTERIO DE ECONOMIA Y FINANZAS', '', 'JR. JUNIN 319 LIMA - LIMA'),
(20131370998, 'MINISTERIO DE EDUCACION', '', 'CALLE DEL COMERCIO 193 - SAN BORJA - LIMA'),
(20131372931, 'MINISTERIO DE AGRICULTURA Y RIEGO', '', 'AV. ALAMEDA DEL CORREGIDOR 155 LA MOLINA - LI'),
(20131380101, 'MINISTERIO DE RELACIONES EXTERIORES', '', 'JR. LAMPA NRO. 541 LIMA - LIMA'),
(20133013441, 'INSTITUTO DE EDUCACION SUPERIOR TECNOLOGICO P', '', 'AV. SALAVERRY 301 - VALLECITO - AREQUIPA'),
(20133840533, 'INDECOPI', '', 'CALLE DE LA PROSA 104 SAN BORJA - LIMA'),
(20134676508, 'MARQUISA S.A.C. CONTRATISTAS GENERALES', '', 'URB. MINISTERIO DE AGRICULTURA G-9/10 J. L. B'),
(20139200102, 'ORGANIZACIÓN DE ESTADOS IBEROAMERICANOS', '', 'AV. ARENALES Nº 1555 - LINCE - LIMA'),
(20141637941, 'UNIVERSIDAD CATOLICA DE SANTA MARIA', '', 'URB SAN JOSE S/N UMACOLLO - AREQUIPA'),
(20160641810, 'LABORATORIOS BAGO DEL PERU S.A.', '', 'AV. JORGE CHAVEZ 154 INT. 401 MIRAFLORES - LI'),
(20161541991, 'ASOCIACION TECSUP Nº2', '', 'URB. MONTERREY D-8 J.L. BUSTAMANTE Y RIVERO -'),
(20164766251, 'SCOTIA SOCIEDAD AGENTE DE BOLSA S.A.', '', 'AV. 28 DE JULIO 1044 MIRAFLORES - LIMA'),
(20206018411, 'TECSUR S.A.', '', 'PJ. CALANGO 158 SAN JUAN DE MIRAFLORES - LIMA'),
(20211614545, 'UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS S.A', '', 'AV. ALONSO DE MOLINA 1611 - SANTIAGO DE SURCO'),
(20252883941, 'ANDRICK CONSULTORES S.A.C', '', 'AV. ROOSEVELT NRO. 6268 URB. SAN ANTONIO MIRA'),
(20255224868, 'METALES INDUSTRIALES COPPER S.A.', '', 'AV. ALFONSO UGARTE 1950 - ATE - LIMA'),
(20259880603, 'EXXONMOBIL DEL PERU S.R.L.', '', 'AV. CAMINO REAL NRO. 456 DPTO. 1401 SAN ISIDR'),
(20267781151, 'CONTINENTAL TRAVEL S.A.C.', '', 'MARINO DE LOS SANTOS 198 INT. 204  SAN ISIDRO'),
(20297868790, 'UNIVERSIDAD SAN IGNACIO DE LOYOLA S.A', '', 'AV. LA FONTANA 550 LA MOLINA - LIMA'),
(20302241598, 'KOMATSU MITSUI MAQUINARIAS PERU S.A.', '', 'AV. ARGENTINA 4453 - CALLAO'),
(20312372895, 'YURA  S.A.', '', 'ESTACION YURA S/N'),
(20327739230, 'AGROINCA PRODUCTOS PERUANOS DE EXP. S.A.', '', 'CAL. CAYETANO ARENAS 143 AREQUIPA'),
(20332970411, 'PACIFICO COMPAÑIA DE SEGUROS Y REASEGUROS S.A', '', 'AV. JUAN DE ARONA 830 SAN ISIDRO - LIMA'),
(20341841357, 'LAN PERU S.A.', '', 'AV. JOSE PARDO 513 MIRAFLORES - LIMA'),
(20347100316, 'ADIDAS PERU S.A.C', '', 'AV. 28 DE JULIO NRO. 1011 INT. 1001 MIRAFLORE'),
(20348858182, 'TRANS AMERICAN AIR LINES S.A.', '', 'CAL.LOS SAUCES NRO. 364 SAN ISIDRO - LIMA'),
(20370146994, 'CORPORACION ACEROS AREQUIPA S.A.', '', 'CAR.PANAMERICANA SUR NRO. 241 PISCO - ICA'),
(20371124293, 'PATRONATO ESCOLAR PERUANO ALEMAN MAX UHLE', '', 'AV. FERNANDINI S/N SACHACA AREQUIPA'),
(20380799643, 'AGENCIA DE PROMOCION DE LA INVERSION PRIVADA ', '', 'AV. ENRIQUE CANAVAL MOREYRA 150 SAN ISIDRO - '),
(20391986496, 'BCD TRAVEL S.A.', '', 'AV. BENAVIDES 1850 PISO 9 MIRAFLORES - LIMA'),
(20392965191, 'CONCRETOS SUPERMIX S.A.', '', 'VARIANTE DE UCHUMAYO KM 5.5 CERRO COLORADO - '),
(20414671773, 'FONDO MIVIVIENDA S.A.', '', 'AV. PASEO DE LA REPUBLICA 3121 SAN ISIDRO - L'),
(20419922391, 'ALLTECHNOLOGY PERU S.R.L.', '', 'CAL. LOS CALDEROS 208 URB. VULCANO ATE - LIMA'),
(20421421669, 'AUSENCO PERU S.A.C.', '', 'CALLE ESQUILACHE 371 SAN ISIDRO - LIMA'),
(20424044203, 'PERU BELMOND HOTELS S.A.', '', 'AV. ARMENDARIZ NRO. 480 INT. 501 MIRAFLORES -'),
(20432747833, 'FERROCARRIL TRANSANDINO S.A.', '', 'AV. ARMENDARIZ 480 INT. 402 - MIRAFLORES - LI'),
(20434819165, 'OPEN WORLD MINING S.A.C.', '', 'LUNA PIZARRO 926 VALLECITO -  AREQUIPA'),
(20467539842, 'DEPRODECA S.A.C.', '', 'AV. REPUBLICA DE PANAMA 2457 - LA VICTORIA - '),
(20477922661, 'PEOPLE OUTSOURCING S.A.C.', '', 'AV. ALFREDO BENAVIDES NRO. 1551 DPTO. 901 MIR'),
(20481694907, 'AGROPECUARIA CHACHANI S.A.C.', '', 'AV. PARQUE FABRICA S/N.CASA GRANDE ASCOPE - L'),
(20496790929, 'SAN FRANCISCO XAVIER ESCUELA DE NEGOCIOS S.A.', '', 'CAL.MISTI 412 YANAHUARA - AREQUIPA'),
(20501259552, 'BELMOND PERU MANAGEMENT S.A.', '', 'AV. ARMENDARIZ NRO. 480 INT. 402 - MIRAFLORES'),
(20502007018, 'E-BUSINESS INTERCHANGE ZONE S.A.C.', '', 'JR. MIROQUESADA NRO. 165 (SEGUNDO PISO) LIMA'),
(20503040121, 'REPSOL COMERCIAL S.A.C.', '', 'AV. VICTOR ANDRES BELAUNDE 147 SAN ISIDRO - L'),
(20504629199, 'ERNST & YOUNG ASESORES S. CIVIL DE R.L.', '', 'AV. VICTOR ANDRES BELAUNDE 171 - SAN ISIDRO -'),
(20504645984, 'PAREDES, BURGA & ASOCIADOS S. CIVIL DE R.L.', '', 'AV. VICTOR ANDRES BELAUNDE 171 - SAN ISIDRO -'),
(20504743307, 'MINISTERIO DE VIVIENDA, CONSTRUCCION Y SANEAM', '', 'AV. PASEO DE LA REPUBLICA 3361 SAN ISIDRO - L'),
(20504794637, 'MINISTERIO DE LA PRODUCCION', '', 'CALLE UNO OESTE 060 URB. CORPAC SAN ISIDRO - '),
(20504822274, 'CARP & ASOCIADOS', 'CARP & ASOCIADOS', 'PETI THOURS 3975 - SAN ISIDRO - LIMA'),
(20510656629, 'MINERA ANTARES PERU S.A.C.', '', 'EDUARDO LOPEZ DE ROMAÑA 198 - PARQUE INDUSTRI'),
(20513074370, 'BANCO GNB PERU S.A.', '', 'CAL.LAS BEGONIAS 415 (PISO 22,25 Y 26) SAN IS'),
(20513272848, 'AGRITOP S.A.C', '', 'LOS GORRIONES 130 URB. LA CAMPIÑA - CHORRILOS'),
(20514584789, 'CNCH DE PERU S.A.', '', 'AV. MAQUINARIAS NRO. 2360 LIMA - LIMA'),
(20515802658, 'AENOR PERU S.A.C.', '', 'AV. CORONEL ANDRES REYES 420 - SAN ISIDRO - L'),
(20521286769, 'ORGANISMO DE EVALUACION Y FISCALIZACION AMBIE', '', 'AV. FAUSTINO SANCHEZ CARRION 603 JESUS MARIA '),
(20521293463, 'LABORATORIOS VETERINARIOS GAMMAVET S.A.C.', '', 'JR. TRUJILLO 671 PISO 3 MAGDALENA DEL MAR - L'),
(20523951603, 'LABORATORIOS SIEGFRIED S.A.C.', '', 'AV. RICARDO PALMA 648 MIRAFLORES - LIMA'),
(20524605903, 'PROGRAMA DE COMPENSACIONES PARA LA COMPETITIV', 'ACTIVIDADES DE LA ADMINISTRACION PUBLICA EN G', 'AV. ALFREDO BENAVIDES NRO. 2199 URB. MIRAFLOR'),
(20537841789, 'INVERSIONES SODIVAL S.A.C.', '', 'CAL.JOSE GONZALES NRO. 514 URB. ARMENDARIZ - '),
(20538837611, 'COMPAÑIA MINERA ZAFRANAL S.A.C.', '', 'CAL.DANTE ALIGHIERI MZA. B LOTE. 1 URB. LOS P'),
(20543265056, 'MOTORED S.A.', '', 'VIA DE EVITAMIENTO 1980 ATE LIMA'),
(20545565359, 'MINISTERIO DE DESARROLLO E INCLUSION SOCIAL', '', 'AV. PASEO DE LA REPÚBLICA NRO. 3101 SAN ISIDR'),
(20545990998, ' UNIVERSIDAD DE INGENIERIA Y TECNOLOGIA', '', 'JR. MEDRANO SILVA 165 BARRANCO - LIMA'),
(20547899122, '360 SOLUCIONES EMPRESARIALES S.A.C.', '', 'CAL.MONTE ROSA NRO. 255 INT. 401 SANTIAGO DE '),
(20547999691, 'AGROLMOS S.A.', '', 'AV. PARQUE FABRICA S/N CASAGRANDE - ASCOPE - '),
(20548790248, 'THERMO FISHER SCIENTIFIC PERU S.R.L.', '', 'AV. GRAL CORDOVA NRO. 313 MIRAFLORES - LIMA'),
(20551178294, 'SINEACE', '', 'CAL.MANUEL MIOTTA NRO. 235 - MIRAFLORES - LIM'),
(20554356690, 'ABBVIE S.A.S. SUCURSAL DEL PERU', '', 'AV. REPUBLICA DE PANAMA 3591 SAN ISIDRO - LIM'),
(20563760894, 'JUST 4 FUN S.A.C.', '', 'AV. LA MARINA NRO. 3420 INT. 22 - SAN MIGUEL '),
(20566228611, 'GUEVAL S.A.C.', '', 'CAL.JUAN ROBERTO ACEVEDO 898 PUEBLO LIBRE - L'),
(20602249230, 'LATAM COACHING NETWORK SAC', '', 'CAL..ALCANFORES NRO. 140 INT. 102 - MIRAFLORE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `idEstado` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`idEstado`, `descripcion`) VALUES
(1, 'Activa'),
(2, 'Inactiva'),
(3, 'Confirmada'),
(4, 'En Estadía'),
(5, 'Finalizada'),
(6, 'Pagada'),
(7, 'Cancelada'),
(8, 'Sobrestadía'),
(9, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadopais`
--

CREATE TABLE `estadopais` (
  `idEstadoPais` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estadopais`
--

INSERT INTO `estadopais` (`idEstadoPais`, `nombre`, `idPais`) VALUES
(1, 'Lima', 1),
(2, 'Arequipa', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `idGenero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`idGenero`) VALUES
('Femenino'),
('Masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `idHabitacion` varchar(100) NOT NULL,
  `idTipoHabitacion` int(11) NOT NULL,
  `idTipoVista` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitacion`
--

INSERT INTO `habitacion` (`idHabitacion`, `idTipoHabitacion`, `idTipoVista`, `idEstado`) VALUES
('101', 4, 3, 1),
('102', 1, 3, 1),
('103', 1, 3, 1),
('104', 3, 2, 1),
('105', 1, 3, 1),
('106', 3, 1, 1),
('201', 1, 3, 1),
('202', 3, 2, 1),
('203', 3, 2, 1),
('204', 4, 2, 1),
('205', 1, 3, 1),
('206', 1, 3, 1),
('207', 1, 1, 1),
('208', 1, 1, 1),
('209', 1, 2, 1),
('210', 1, 1, 1),
('211', 2, 1, 1),
('301', 1, 3, 1),
('302', 1, 1, 1),
('303', 1, 1, 1),
('304', 1, 2, 1),
('305', 1, 2, 1),
('306', 1, 2, 1),
('307', 1, 2, 1),
('308', 4, 2, 1),
('309', 2, 2, 1),
('401', 1, 3, 1),
('402', 1, 1, 1),
('403', 3, 1, 1),
('404', 1, 2, 1),
('405', 1, 2, 1),
('SALA 2', 6, 1, 1),
('SALA1', 6, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacionreservada`
--

CREATE TABLE `habitacionreservada` (
  `idHabitacionReservada` int(11) NOT NULL,
  `idHabitacion` varchar(100) NOT NULL,
  `idReserva` varchar(45) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `fechaInicio` datetime DEFAULT NULL,
  `fechaFin` datetime DEFAULT NULL,
  `preferencias` varchar(1000) DEFAULT NULL,
  `camaAdicional` tinyint(1) DEFAULT NULL,
  `idTarifa` int(11) NOT NULL,
  `modificadorCheckIO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitacionreservada`
--

INSERT INTO `habitacionreservada` (`idHabitacionReservada`, `idHabitacion`, `idReserva`, `idEstado`, `fechaInicio`, `fechaFin`, `preferencias`, `camaAdicional`, `idTarifa`, `modificadorCheckIO`) VALUES
(3, '211', 'R18B13J2243', 4, '2018-02-13 10:25:46', '2018-02-15 00:00:01', '', 0, 8, 0),
(4, '206', 'R18B13K4429', 5, '2018-02-13 11:46:17', '2018-02-16 00:00:01', '', 0, 12, 0),
(5, '301', 'R18B13K4655', 4, '2018-02-13 11:48:27', '2018-02-15 00:00:01', '', 0, 12, 0),
(6, '302', 'R18B13K4829', 5, '2018-02-14 10:14:52', '2018-02-18 00:00:01', '', 0, 10, 0),
(7, '105', 'R18B13K5043', 5, '2018-02-14 08:54:34', '2018-02-15 00:00:01', '', 0, 12, 0),
(8, '306', 'R18B13K5243', 5, '2018-02-14 08:56:59', '2018-02-23 00:00:01', '', 0, 12, 0),
(9, '404', 'R18B13K5754', 5, '2018-02-14 10:20:27', '2018-02-23 00:00:01', '', 0, 10, 0),
(11, '102', 'R18B13L0930', 5, '2018-02-17 00:50:21', '2018-02-17 00:00:01', '', 0, 29, 2),
(13, '401', 'R18B13L1558', 5, '2018-02-14 11:43:00', '2018-02-16 00:00:01', '', 0, 10, 0),
(14, '106', 'R18B13L2115', 5, '2018-02-15 19:43:31', '2018-02-15 00:00:01', '', 0, 17, 1),
(15, '208', 'R18B13L2253', 4, '2018-02-15 07:21:57', '2018-02-16 00:00:01', '', 0, 10, 1),
(16, '303', 'R18B13L3149', 5, '2018-02-15 19:43:57', '2018-02-16 00:00:01', '', 0, 10, 0),
(17, '405', 'R18B13L3401', 5, '2018-02-15 19:46:13', '2018-02-16 00:00:01', '', 0, 10, 0),
(18, '206', 'R18B13L3700', 5, '2018-02-20 21:07:52', '2018-02-20 00:00:01', '', 0, 12, 2),
(20, '303', 'R18B13L4049', 5, '2018-02-18 21:29:42', '2018-02-19 00:00:01', '', 0, 10, 0),
(21, '303', 'R18B13L5146', 5, '2018-02-14 08:48:42', '2018-02-14 00:00:01', '', 0, 28, 0),
(24, '305', 'R18B14K4926', 4, '2018-02-17 09:36:22', '2018-02-16 00:00:01', '', 0, 12, 2),
(25, '402', 'R18B14L1350', 5, '2018-02-17 00:49:46', '2018-02-17 00:00:01', '', 0, 12, 0),
(27, '202', 'R18B14U0303', 4, '2018-02-17 00:53:03', '2018-02-15 00:00:01', '', 0, 6, 0),
(28, '104', 'R18B15X0716', 5, '2018-02-15 00:44:41', '2018-02-16 00:00:01', '', 0, 6, 0),
(29, '101', 'R18B15X4807', 5, '2018-02-15 00:52:38', '2018-02-15 00:00:01', '', 0, 3, 0),
(30, '103', 'R18B13L1007', 5, '2018-02-17 00:51:41', '2018-02-17 00:00:01', '', 0, 29, 0),
(31, '209', 'R18B15N3602', 5, '2018-02-17 00:53:55', '2018-02-17 00:00:01', '', 0, 29, 0),
(32, '403', 'R18B15S4748', 5, '2018-02-15 19:51:50', '2018-02-17 00:00:01', '', 0, 6, 0),
(33, '303', 'R18B16T1854', 4, '2018-02-16 20:30:18', '2018-02-17 00:00:01', '', 0, 12, 0),
(35, '301', 'R18B17X2354', 4, '2018-02-17 00:31:01', '2018-03-02 00:00:01', '', 0, 1, 0),
(36, '307', 'R18B17X3110', 4, '2018-02-17 00:34:14', '2018-03-02 00:00:01', '', 0, 1, 0),
(37, '309', 'R18B17X3437', 4, '2018-02-17 00:37:33', '2018-03-02 00:00:01', '', 0, 7, 0),
(38, '208', 'R18B17B5608', 5, '2018-02-17 08:17:45', '2018-02-18 00:00:01', '', 0, 1, 0),
(39, '201', 'R18B18J2626', 4, '2018-02-18 11:16:48', '2018-02-22 00:00:01', '', 0, 12, 1),
(40, '103', 'R18B18L5930', 5, '2018-02-18 13:11:03', '2018-02-21 00:00:01', '', 0, 12, 0),
(41, '105', 'R18B18M1223', 5, '2018-02-18 13:19:49', '2018-02-21 00:00:01', '', 0, 12, 0),
(42, '304', 'R18B18N1815', 4, '2018-02-18 14:20:52', '2018-02-25 00:00:01', '', 0, 12, 0),
(43, '205', 'R18B18S5122', 4, '2018-02-18 19:53:15', '2018-02-23 00:00:01', '', 0, 12, 0),
(45, '104', 'R18B18U3012', 5, '2018-02-18 23:36:55', '2018-02-23 00:00:01', '', 0, 6, 2),
(46, '401', 'R18B19G5316', 5, '2018-02-19 07:55:05', '2018-02-21 00:00:01', '', 0, 12, 0),
(47, '403', 'R18B19J4407', 5, '2018-02-19 10:45:34', '2018-02-22 00:00:01', '', 0, 17, 0),
(50, '208', 'R18B19K1301', 4, '2018-02-20 21:18:08', '2018-02-23 00:00:01', '', 0, 12, 0),
(52, '305', 'R18B19K3709', 5, '2018-02-20 21:27:04', '2018-02-21 00:00:01', '', 0, 12, 0),
(53, '402', 'R18B19K3904', 5, '2018-02-20 21:31:00', '2018-02-21 00:00:01', '', 0, 12, 0),
(54, '405', 'R18B19K4023', 5, '2018-02-20 21:33:17', '2018-02-21 00:00:01', '', 0, 12, 0),
(55, '207', 'R18B19K1719', 5, '2018-02-20 21:10:16', '2018-02-20 00:00:01', '', 0, 12, 2),
(56, '302', 'R18B20O1019', 5, '2018-02-20 21:22:23', '2018-02-22 00:00:01', '', 0, 12, 0),
(57, '103', 'R18B20T3236', 4, '2018-02-20 20:36:08', '2018-02-21 00:00:01', '', 0, 12, 0),
(58, '105', 'R18B20T3741', 4, '2018-02-20 20:40:25', '2018-02-23 00:00:01', '', 0, 12, 0),
(60, '206', 'R18B20U1138', 5, '2018-02-20 21:13:51', '2018-02-21 00:00:01', '', 0, 12, 0),
(61, '207', 'R18B20U1416', 5, '2018-02-20 21:17:14', '2018-02-21 00:00:01', '', 0, 12, 0),
(62, '209', 'R18B20U1912', 5, '2018-02-20 21:21:03', '2018-02-24 00:00:01', '', 0, 12, 0),
(63, '303', 'R18B20U2403', 5, '2018-02-20 21:25:44', '2018-02-22 00:00:01', '', 0, 12, 2),
(64, '102', 'R18B20V2555', 5, '2018-02-20 22:27:31', '2018-02-21 00:00:01', '', 0, 12, 0),
(66, '308', 'R18B20V3751', 5, '2018-02-20 22:39:10', '2018-02-21 00:00:01', '', 0, 13, 0),
(67, '103', 'R18B21H2400', 4, '2018-02-21 09:04:14', '2018-02-22 00:00:01', '', 0, 12, 2),
(68, '206', 'R18B21I0420', 3, '2018-02-21 00:00:00', '2018-02-22 00:00:01', '', 0, 12, 0),
(69, '102', 'R18B21K2158', 3, '2018-02-21 00:00:00', '2018-02-22 00:00:01', '', 0, 12, 0),
(70, '305', 'R18B21K2324', 5, '2018-02-22 20:05:01', '2018-02-23 00:00:01', '', 0, 12, 0),
(71, '102', 'R18B22S3305', 4, '2018-02-22 19:46:14', '2018-02-23 00:00:01', '', 0, 12, 0),
(72, '206', 'R18B22S5150', 4, '2018-02-22 19:55:43', '2018-02-23 00:00:01', '', 0, 12, 0),
(73, '303', 'R18B22T0015', 4, '2018-02-22 20:03:14', '2018-02-25 00:00:01', '', 0, 12, 0),
(74, '401', 'R18B22T1245', 5, '2018-02-22 20:15:44', '2018-02-23 00:00:01', '', 0, 12, 0),
(76, '101', 'R18B23A5717', 5, '2018-02-23 01:59:44', '2018-02-23 00:00:01', '', 0, 13, 0),
(77, '104', 'R18B23B0010', 4, '2018-02-23 02:05:30', '2018-02-23 00:00:01', '', 0, 5, 0),
(78, '204', 'R18B23B0538', 5, '2018-02-23 02:08:11', '2018-02-23 00:00:01', '', 0, 13, 0),
(79, '302', 'R18B23B0836', 5, '2018-02-23 02:10:44', '2018-02-23 00:00:01', '', 0, 12, 0),
(80, '308', 'R18B23B1147', 5, '2018-02-23 02:14:29', '2018-02-23 00:00:01', '', 0, 3, 0),
(81, '402', 'R18B24H3547', 4, '2018-02-24 09:07:17', '2018-02-25 00:00:01', '', 0, 12, 0),
(82, '405', 'R18B24I0756', 4, '2018-02-24 09:20:15', '2018-03-09 00:00:01', '', 0, 12, 0),
(83, '102', 'R18B24T1040', 4, '2018-02-24 20:16:14', '2018-02-25 00:00:01', '', 0, 12, 0),
(84, '206', 'R18B26I3048', 4, '2018-02-26 09:32:56', '2018-03-01 00:00:01', '', 0, 12, 0),
(85, 'SALA 2', 'R18B27L0639', 3, '2018-02-27 00:00:00', '2018-02-27 00:00:01', '', 0, 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historialreserva`
--

CREATE TABLE `historialreserva` (
  `idHistorialReserva` int(11) NOT NULL,
  `idHabitacion` varchar(100) DEFAULT NULL,
  `idReserva` varchar(45) NOT NULL,
  `idColaborador` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `fechaHora` datetime DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historialreserva`
--

INSERT INTO `historialreserva` (`idHistorialReserva`, `idHabitacion`, `idReserva`, `idColaborador`, `idEstado`, `fechaHora`, `descripcion`, `tipo`) VALUES
(2, '211', 'R18B13J2243', 1, 5, '2018-02-13 10:25:46', 'Check In de habitación 211 para reserva R18B13J2243', 'Check In'),
(3, '206', 'R18B13K4429', 1, 5, '2018-02-13 11:46:17', 'Check In de habitación 206 para reserva R18B13K4429', 'Check In'),
(4, '301', 'R18B13K4655', 1, 5, '2018-02-13 11:48:27', 'Check In de habitación 301 para reserva R18B13K4655', 'Check In'),
(5, '303', 'R18B13L5146', 1, 5, '2018-02-14 08:48:42', 'Check In de habitación 303 para reserva R18B13L5146', 'Check In'),
(6, '105', 'R18B13K5043', 1, 5, '2018-02-14 08:54:34', 'Check In de habitación 105 para reserva R18B13K5043', 'Check In'),
(7, '306', 'R18B13K5243', 1, 5, '2018-02-14 08:56:59', 'Check In de habitación 306 para reserva R18B13K5243', 'Check In'),
(8, '302', 'R18B13K4829', 1, 5, '2018-02-14 10:14:52', 'Check In de habitación 302 para reserva R18B13K4829', 'Check In'),
(9, '404', 'R18B13K5754', 1, 5, '2018-02-14 10:20:27', 'Check In de habitación 404 para reserva R18B13K5754', 'Check In'),
(10, '401', 'R18B13L1558', 1, 5, '2018-02-14 11:43:00', 'Check In de habitación 401 para reserva R18B13L1558', 'Check In'),
(11, '104', 'R18B15X0716', 1, 5, '2018-02-15 00:44:41', 'Check In de habitación 104 para reserva R18B15X0716', 'Check In'),
(12, '101', 'R18B15X4807', 1, 5, '2018-02-15 00:52:38', 'Check In de habitación 101 para reserva R18B15X4807', 'Check In'),
(13, '208', 'R18B13L2253', 1, 5, '2018-02-15 07:21:57', 'Check In de habitación 208 para reserva R18B13L2253', 'Check In'),
(14, '101', 'R18B15X4807', 1, 5, '2018-02-15 14:34:47', 'Retiro normal de habitación 101 para reserva R18B15X4807', 'Check Out'),
(15, '104', 'R18B15X0716', 1, 5, '2018-02-15 14:34:54', 'Retiro normal de habitación 104 para reserva R18B15X0716', 'Check Out'),
(16, '106', 'R18B13L2115', 2, 5, '2018-02-15 19:43:23', 'Check In de habitación 106 para reserva R18B13L2115', 'Check In'),
(17, '106', 'R18B13L2115', 2, 5, '2018-02-15 19:43:31', 'Check In de habitación 106 para reserva R18B13L2115', 'Check In'),
(18, '303', 'R18B13L3149', 2, 5, '2018-02-15 19:43:57', 'Check In de habitación 303 para reserva R18B13L3149', 'Check In'),
(19, '405', 'R18B13L3401', 2, 5, '2018-02-15 19:46:13', 'Check In de habitación 405 para reserva R18B13L3401', 'Check In'),
(20, '403', 'R18B15S4748', 2, 5, '2018-02-15 19:51:50', 'Check In de habitación 403 para reserva R18B15S4748', 'Check In'),
(21, '303', 'R18B16T1854', 2, 5, '2018-02-16 20:30:18', 'Check In de habitación 303 para reserva R18B16T1854', 'Check In'),
(23, '301', 'R18B17X2354', 1, 5, '2018-02-17 00:31:01', 'Check In de habitación 301 para reserva R18B17X2354', 'Check In'),
(24, '307', 'R18B17X3110', 1, 5, '2018-02-17 00:34:14', 'Check In de habitación 307 para reserva R18B17X3110', 'Check In'),
(25, '309', 'R18B17X3437', 1, 5, '2018-02-17 00:37:33', 'Check In de habitación 309 para reserva R18B17X3437', 'Check In'),
(26, '105', 'R18B13K5043', 1, 5, '2018-02-17 00:47:57', 'Retiro normal de habitación 105 para reserva R18B13K5043', 'Check Out'),
(27, '402', 'R18B14L1350', 1, 5, '2018-02-17 00:49:46', 'Check In de habitación 402 para reserva R18B14L1350', 'Check In'),
(28, '102', 'R18B13L0930', 1, 5, '2018-02-17 00:50:21', 'Check In de habitación 102 para reserva R18B13L0930', 'Check In'),
(29, '102', 'R18B13L0930', 1, 5, '2018-02-17 00:51:12', 'Retiro normal de habitación 102 para reserva R18B13L0930', 'Check Out'),
(30, '103', 'R18B13L1007', 1, 5, '2018-02-17 00:51:41', 'Check In de habitación 103 para reserva R18B13L1007', 'Check In'),
(31, '103', 'R18B13L1007', 1, 5, '2018-02-17 00:52:18', 'Retiro normal de habitación 103 para reserva R18B13L1007', 'Check Out'),
(32, '106', 'R18B13L2115', 1, 5, '2018-02-17 00:52:33', 'Retiro normal de habitación 106 para reserva R18B13L2115', 'Check Out'),
(33, '202', 'R18B14U0303', 1, 5, '2018-02-17 00:53:03', 'Check In de habitación 202 para reserva R18B14U0303', 'Check In'),
(34, '209', 'R18B15N3602', 1, 5, '2018-02-17 00:53:55', 'Check In de habitación 209 para reserva R18B15N3602', 'Check In'),
(35, '206', 'R18B13K4429', 1, 5, '2018-02-17 02:40:38', 'Retiro normal de habitación 206 para reserva R18B13K4429', 'Check Out'),
(36, '303', 'R18B13L3149', 1, 5, '2018-02-17 02:41:46', 'Retiro normal de habitación 303 para reserva R18B13L3149', 'Check Out'),
(37, '303', 'R18B13L5146', 1, 5, '2018-02-17 02:42:03', 'Retiro normal de habitación 303 para reserva R18B13L5146', 'Check Out'),
(38, '308', 'R18B14T3702', 1, 5, '2018-02-17 02:54:55', 'Check In de habitación 308 para reserva R18B14T3702', 'Check In'),
(39, '402', 'R18B14L1350', 1, 5, '2018-02-17 02:55:10', 'Retiro normal de habitación 402 para reserva R18B14L1350', 'Check Out'),
(40, '403', 'R18B15S4748', 1, 5, '2018-02-17 02:55:42', 'Retiro normal de habitación 403 para reserva R18B15S4748', 'Check Out'),
(41, '405', 'R18B13L3401', 1, 5, '2018-02-17 02:56:07', 'Retiro normal de habitación 405 para reserva R18B13L3401', 'Check Out'),
(42, '208', 'R18B17B5608', 1, 5, '2018-02-17 08:17:45', 'Check In de habitación 208 para reserva R18B17B5608', 'Check In'),
(43, '305', 'R18B14K4926', 1, 5, '2018-02-17 09:36:22', 'Check In de habitación 305 para reserva R18B14K4926', 'Check In'),
(44, '201', 'R18B18J2626', 1, 5, '2018-02-18 11:16:48', 'Check In de habitación 201 para reserva R18B18J2626', 'Check In'),
(46, '302', 'R18B13K4829', 1, 5, '2018-02-18 11:46:16', 'Retiro normal de habitación 302 para reserva R18B13K4829', 'Check Out'),
(47, '103', 'R18B18L5930', 1, 5, '2018-02-18 13:11:03', 'Check In de habitación 103 para reserva R18B18L5930', 'Check In'),
(48, '105', 'R18B18M1223', 1, 5, '2018-02-18 13:19:49', 'Check In de habitación 105 para reserva R18B18M1223', 'Check In'),
(49, '304', 'R18B18N1815', 1, 5, '2018-02-18 14:20:52', 'Check In de habitación 304 para reserva R18B18N1815', 'Check In'),
(50, '205', 'R18B18S5122', 1, 5, '2018-02-18 19:53:15', 'Check In de habitación 205 para reserva R18B18S5122', 'Check In'),
(51, '303', 'R18B13L4049', 1, 5, '2018-02-18 21:29:42', 'Check In de habitación 303 para reserva R18B13L4049', 'Check In'),
(52, '104', 'R18B18U3012', 1, 5, '2018-02-18 23:36:55', 'Check In de habitación 104 para reserva R18B18U3012', 'Check In'),
(53, '401', 'R18B19G5316', 1, 5, '2018-02-19 07:55:05', 'Check In de habitación 401 para reserva R18B19G5316', 'Check In'),
(54, '403', 'R18B19J4407', 1, 5, '2018-02-19 10:45:34', 'Check In de habitación 403 para reserva R18B19J4407', 'Check In'),
(56, '103', 'R18B18L5930', 1, 5, '2018-02-20 20:32:23', 'Retiro normal de habitación 103 para reserva R18B18L5930', 'Check Out'),
(57, '103', 'R18B20T3236', 1, 5, '2018-02-20 20:36:08', 'Check In de habitación 103 para reserva R18B20T3236', 'Check In'),
(58, '105', 'R18B18M1223', 1, 5, '2018-02-20 20:37:35', 'Retiro normal de habitación 105 para reserva R18B18M1223', 'Check Out'),
(59, '105', 'R18B20T3741', 1, 5, '2018-02-20 20:40:25', 'Check In de habitación 105 para reserva R18B20T3741', 'Check In'),
(60, '206', 'R18B13L3700', 1, 5, '2018-02-20 21:07:37', 'Check In de habitación 206 para reserva R18B13L3700', 'Check In'),
(61, '206', 'R18B13L3700', 1, 5, '2018-02-20 21:07:52', 'Check In de habitación 206 para reserva R18B13L3700', 'Check In'),
(62, '206', 'R18B13L3700', 1, 5, '2018-02-20 21:10:03', 'Retiro normal de habitación 206 para reserva R18B13L3700', 'Check Out'),
(63, '207', 'R18B19K1719', 1, 5, '2018-02-20 21:10:16', 'Check In de habitación 207 para reserva R18B19K1719', 'Check In'),
(64, '207', 'R18B19K1719', 1, 5, '2018-02-20 21:10:35', 'Retiro normal de habitación 207 para reserva R18B19K1719', 'Check Out'),
(65, '206', 'R18B20U1138', 1, 5, '2018-02-20 21:13:51', 'Check In de habitación 206 para reserva R18B20U1138', 'Check In'),
(66, '207', 'R18B20U1416', 1, 5, '2018-02-20 21:17:14', 'Check In de habitación 207 para reserva R18B20U1416', 'Check In'),
(67, '208', 'R18B19K1301', 1, 5, '2018-02-20 21:18:08', 'Check In de habitación 208 para reserva R18B19K1301', 'Check In'),
(68, '209', 'R18B15N3602', 1, 5, '2018-02-20 21:19:03', 'Retiro normal de habitación 209 para reserva R18B15N3602', 'Check Out'),
(69, '209', 'R18B20U1912', 1, 5, '2018-02-20 21:21:03', 'Check In de habitación 209 para reserva R18B20U1912', 'Check In'),
(70, '302', 'R18B20O1019', 1, 5, '2018-02-20 21:22:23', 'Check In de habitación 302 para reserva R18B20O1019', 'Check In'),
(71, '303', 'R18B13L4049', 1, 5, '2018-02-20 21:23:55', 'Retiro normal de habitación 303 para reserva R18B13L4049', 'Check Out'),
(72, '303', 'R18B20U2403', 1, 5, '2018-02-20 21:25:44', 'Check In de habitación 303 para reserva R18B20U2403', 'Check In'),
(73, '305', 'R18B19K3709', 1, 5, '2018-02-20 21:27:04', 'Check In de habitación 305 para reserva R18B19K3709', 'Check In'),
(74, '402', 'R18B19K3904', 1, 5, '2018-02-20 21:31:00', 'Check In de habitación 402 para reserva R18B19K3904', 'Check In'),
(75, '405', 'R18B19K4023', 1, 5, '2018-02-20 21:33:17', 'Check In de habitación 405 para reserva R18B19K4023', 'Check In'),
(76, '102', 'R18B20V2555', 1, 5, '2018-02-20 22:27:31', 'Check In de habitación 102 para reserva R18B20V2555', 'Check In'),
(77, '308', 'R18B20V3751', 1, 5, '2018-02-20 22:39:10', 'Check In de habitación 308 para reserva R18B20V3751', 'Check In'),
(79, '104', 'R18B18U3012', 1, 5, '2018-02-21 00:51:30', 'Retiro normal de habitación 104 para reserva R18B18U3012', 'Check Out'),
(80, '102', 'R18B20V2555', 1, 5, '2018-02-21 06:34:18', 'Retiro normal de habitación 102 para reserva R18B20V2555', 'Check Out'),
(81, '206', 'R18B20U1138', 1, 5, '2018-02-21 08:23:42', 'Retiro normal de habitación 206 para reserva R18B20U1138', 'Check Out'),
(82, '405', 'R18B19K4023', 1, 5, '2018-02-21 08:23:59', 'Retiro normal de habitación 405 para reserva R18B19K4023', 'Check Out'),
(83, '103', 'R18B21H2400', 1, 5, '2018-02-21 09:04:14', 'Check In de habitación 103 para reserva R18B21H2400', 'Check In'),
(84, '401', 'R18B19G5316', 1, 5, '2018-02-22 14:25:10', 'Retiro normal de habitación 401 para reserva R18B19G5316', 'Check Out'),
(85, '102', 'R18B22S3305', 1, 5, '2018-02-22 19:46:14', 'Check In de habitación 102 para reserva R18B22S3305', 'Check In'),
(86, '206', 'R18B22S5150', 1, 5, '2018-02-22 19:55:43', 'Check In de habitación 206 para reserva R18B22S5150', 'Check In'),
(88, '303', 'R18B20U2403', 1, 5, '2018-02-22 19:59:53', 'Retiro normal de habitación 303 para reserva R18B20U2403', 'Check Out'),
(89, '303', 'R18B22T0015', 1, 5, '2018-02-22 20:03:14', 'Check In de habitación 303 para reserva R18B22T0015', 'Check In'),
(90, '305', 'R18B21K2324', 1, 5, '2018-02-22 20:05:01', 'Check In de habitación 305 para reserva R18B21K2324', 'Check In'),
(91, '308', 'R18B20V3751', 1, 5, '2018-02-22 20:06:14', 'Retiro normal de habitación 308 para reserva R18B20V3751', 'Check Out'),
(92, '401', 'R18B22T1245', 1, 5, '2018-02-22 20:15:44', 'Check In de habitación 401 para reserva R18B22T1245', 'Check In'),
(93, '402', 'R18B19K3904', 1, 5, '2018-02-22 20:17:22', 'Retiro normal de habitación 402 para reserva R18B19K3904', 'Check Out'),
(94, '403', 'R18B19J4407', 1, 5, '2018-02-22 20:17:41', 'Retiro normal de habitación 403 para reserva R18B19J4407', 'Check Out'),
(95, '302', 'R18B20O1019', 1, 5, '2018-02-22 20:22:28', 'Retiro normal de habitación 302 para reserva R18B20O1019', 'Check Out'),
(96, '305', 'R18B19K3709', 1, 5, '2018-02-22 20:28:38', 'Retiro normal de habitación 305 para reserva R18B19K3709', 'Check Out'),
(97, '101', 'R18B23A5717', 1, 5, '2018-02-23 01:59:44', 'Check In de habitación 101 para reserva R18B23A5717', 'Check In'),
(98, '104', 'R18B23B0010', 1, 5, '2018-02-23 02:05:30', 'Check In de habitación 104 para reserva R18B23B0010', 'Check In'),
(99, '204', 'R18B23B0538', 1, 5, '2018-02-23 02:08:11', 'Check In de habitación 204 para reserva R18B23B0538', 'Check In'),
(100, '302', 'R18B23B0836', 1, 5, '2018-02-23 02:10:44', 'Check In de habitación 302 para reserva R18B23B0836', 'Check In'),
(101, '308', 'R18B23B1147', 1, 5, '2018-02-23 02:14:29', 'Check In de habitación 308 para reserva R18B23B1147', 'Check In'),
(102, '401', 'R18B13L1558', 1, 5, '2018-02-23 02:20:38', 'Retiro normal de habitación 401 para reserva R18B13L1558', 'Check Out'),
(103, '101', 'R18B23A5717', 1, 5, '2018-02-24 08:30:26', 'Retiro normal de habitación 101 para reserva R18B23A5717', 'Check Out'),
(104, '204', 'R18B23B0538', 1, 5, '2018-02-24 08:32:37', 'Retiro normal de habitación 204 para reserva R18B23B0538', 'Check Out'),
(105, '207', 'R18B20U1416', 1, 5, '2018-02-24 08:32:48', 'Retiro normal de habitación 207 para reserva R18B20U1416', 'Check Out'),
(106, '209', 'R18B20U1912', 1, 5, '2018-02-24 08:33:04', 'Retiro normal de habitación 209 para reserva R18B20U1912', 'Check Out'),
(107, '208', 'R18B17B5608', 1, 5, '2018-02-24 08:33:27', 'Retiro normal de habitación 208 para reserva R18B17B5608', 'Check Out'),
(108, '302', 'R18B23B0836', 1, 5, '2018-02-24 08:33:59', 'Retiro normal de habitación 302 para reserva R18B23B0836', 'Check Out'),
(109, '305', 'R18B21K2324', 1, 5, '2018-02-24 08:34:23', 'Retiro normal de habitación 305 para reserva R18B21K2324', 'Check Out'),
(110, '306', 'R18B13K5243', 1, 5, '2018-02-24 08:34:38', 'Retiro normal de habitación 306 para reserva R18B13K5243', 'Check Out'),
(111, '308', 'R18B23B1147', 1, 5, '2018-02-24 08:34:50', 'Retiro normal de habitación 308 para reserva R18B23B1147', 'Check Out'),
(112, '401', 'R18B22T1245', 1, 5, '2018-02-24 08:35:10', 'Retiro normal de habitación 401 para reserva R18B22T1245', 'Check Out'),
(113, '404', 'R18B13K5754', 1, 5, '2018-02-24 08:35:27', 'Retiro normal de habitación 404 para reserva R18B13K5754', 'Check Out'),
(114, '402', 'R18B24H3547', 1, 5, '2018-02-24 09:07:17', 'Check In de habitación 402 para reserva R18B24H3547', 'Check In'),
(115, '405', 'R18B24I0756', 1, 5, '2018-02-24 09:20:15', 'Check In de habitación 405 para reserva R18B24I0756', 'Check In'),
(116, '102', 'R18B24T1040', 1, 5, '2018-02-24 20:16:14', 'Check In de habitación 102 para reserva R18B24T1040', 'Check In'),
(117, '206', 'R18B26I3048', 1, 5, '2018-02-26 09:32:56', 'Check In de habitación 206 para reserva R18B26I3048', 'Check In');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huesped`
--

CREATE TABLE `huesped` (
  `idHuesped` int(11) NOT NULL,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `idCiudad` int(11) DEFAULT NULL,
  `idGenero` varchar(45) DEFAULT NULL,
  `nacionalidad_idPais` int(11) DEFAULT NULL,
  `nombreCompleto` varchar(300) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `codigoPostal` varchar(45) DEFAULT NULL,
  `telefonoFijo` varchar(45) DEFAULT NULL,
  `telefonoCelular` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `preferencias` varchar(45) DEFAULT NULL,
  `vip` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `huesped`
--

INSERT INTO `huesped` (`idHuesped`, `idEmpresa`, `idCiudad`, `idGenero`, `nacionalidad_idPais`, `nombreCompleto`, `direccion`, `correoElectronico`, `codigoPostal`, `telefonoFijo`, `telefonoCelular`, `fechaNacimiento`, `preferencias`, `vip`) VALUES
(0, NULL, NULL, NULL, NULL, 'kris Hennessy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(1, 20419922391, NULL, NULL, NULL, 'RAUL CELI', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(2, NULL, NULL, NULL, NULL, 'LUIS RICO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(3, 20510656629, NULL, NULL, NULL, 'MISAEL ROBLES', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(4, 20510656629, NULL, NULL, NULL, 'ROBERT SIEVWRIGHT', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(5, 20100190797, NULL, NULL, NULL, 'CARMEN ARCE', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(6, 20100190797, NULL, NULL, NULL, 'GIOVANNA ROJAS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(7, 20100228191, NULL, NULL, NULL, 'ALVARO MELLADO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(10, 20100055237, NULL, NULL, NULL, 'EDGAR FERNANDEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(11, 20391986496, NULL, NULL, NULL, 'CYNTHIA VILLACORTA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(12, 20391986496, NULL, NULL, NULL, 'DANTE ALFARO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(13, 20327739230, NULL, NULL, NULL, 'JORGE TAIPE', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(14, 20391986496, NULL, NULL, NULL, 'DANTE ALFARO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(15, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, NULL, NULL, NULL, NULL, '', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(17, 20467539842, NULL, NULL, NULL, 'BLASCO SANTOS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(18, 20206018411, NULL, NULL, NULL, 'MICHEL MONTOYA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(19, 20206018411, NULL, NULL, NULL, 'LINO JIMENEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(20, NULL, NULL, NULL, NULL, 'ITALO PINO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(21, 20100999430, NULL, NULL, NULL, 'ABELARDO RIVERA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(22, 20297868790, NULL, NULL, NULL, 'JUANA ZUÑIGA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(43, 20548790248, NULL, NULL, NULL, 'Kris Hennessy', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(47, 20211614545, NULL, NULL, NULL, 'OSCAR TALAVERA VELASQUEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(59, 20510656629, NULL, NULL, NULL, 'RAFAEL ROBERTO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(64, 20302241598, NULL, NULL, NULL, 'JOSE MALAVER', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(73, 20563760894, NULL, NULL, NULL, 'WILLY TORO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(122, 20107751913, NULL, NULL, NULL, 'MARIANO SALAZAR', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(123, 20100190797, NULL, NULL, NULL, 'ROBERTO BARBOZA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(121212, 20434819165, NULL, NULL, NULL, 'JORGE AUBERT', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(123123, 20107751913, NULL, NULL, NULL, 'DIEGO ROJAS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(152156, NULL, NULL, NULL, NULL, 'ROMULO MAYHUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(452845, 20302241598, NULL, NULL, NULL, 'RICARDI ISHIDA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(1225408, NULL, NULL, NULL, NULL, 'MARCIA CASTILLO DE YAÑEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2865246, 20100228191, NULL, NULL, NULL, 'ORLANDO ROJAS M.', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(5489759, 20100028698, NULL, NULL, NULL, 'CARLOS COSSIO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(6448647, NULL, NULL, NULL, NULL, 'ALEX C. DOUROJEANNI', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(6726880, 20341841357, NULL, NULL, NULL, 'CARMEN ARCE', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(7758905, 20524605903, NULL, NULL, NULL, 'RENATO COLCHADO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(7762050, 20391986496, NULL, NULL, NULL, 'FERNANDO AGUERO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(8049980, 20554356690, NULL, NULL, NULL, 'JOSE LUIS CALDERON', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(8253472, 20510656629, NULL, NULL, NULL, 'JORGE JAMES', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(8532699, NULL, NULL, NULL, NULL, 'GONZALO GONSALEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(9333470, 20100035121, NULL, NULL, NULL, 'BENJAMIN DE LOS SANTOS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(9679060, 20341841357, NULL, NULL, NULL, 'WILY JARA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(10263202, 20160641810, NULL, NULL, NULL, 'CARLOS NIETO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(10339502, 20161541991, NULL, NULL, NULL, 'LUIS FELIX MEJIA TAN', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(10797695, 20524605903, NULL, NULL, NULL, 'DANIEL URBINA HUERTAS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(12121212, NULL, 1, 'Femenino', 1, 'VANESSA HONORIO', 'CALLE LAS BEGONIAS 415 PISO 11 OF. 1130 SAN ISISDRO - LIMA', 'a-vhonorio@expedia.com', '', '51-1-7113873', '51-980441482', '0000-00-00', NULL, 0),
(13415197, NULL, NULL, NULL, NULL, 'GLADIS PAMELA LIEFOC MARABOLI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13500374, NULL, NULL, NULL, NULL, 'JAIME DANIEL GONZALEZ MUÑOZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(16451856, 20100180210, NULL, NULL, NULL, 'JOSE ARMANDO CHANDUVI CORNEJO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(16698625, 20554356690, NULL, NULL, NULL, 'LUCY CABREJOS', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(21005216, NULL, NULL, NULL, NULL, 'JAVIER IGNACIO GONZALEZ LIEFOC', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(21248913, NULL, NULL, NULL, NULL, 'LUIS RICO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(21873181, NULL, NULL, NULL, NULL, 'NICOLE GONZALES LIEFOC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23873456, 20341841357, NULL, NULL, NULL, 'MIGUEL YAÑEZ RUBIO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(25513398, 20297868790, NULL, NULL, NULL, 'JUANA ZUÑIGA MEZA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(29480097, 20100190797, NULL, NULL, NULL, 'JAMES BEGAZO V.', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(29565092, 20432747833, NULL, NULL, NULL, 'ANIBAL VENERO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(29705454, NULL, NULL, NULL, NULL, 'OSCAR TALAVERA VELASQUEZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(32834734, 20421421669, NULL, NULL, NULL, 'CELSO PEREZ CRIBILLERO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40032679, NULL, NULL, NULL, NULL, 'JOSE VILLACORTA BRAVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(40062849, 20551178294, NULL, NULL, NULL, 'ACROPLIS  HERRERA HIDALGO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40241782, 20252883941, NULL, NULL, NULL, 'MANUEL PINO ROMANI ASPAJO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40273416, 20100190797, NULL, NULL, NULL, 'JOMAR LOZANO MORI', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40341328, 20160641810, NULL, NULL, NULL, 'SANDRA CORDOVA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40552967, 20510656629, NULL, NULL, NULL, 'RAFEEL ROBERTO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(40897576, 20327739230, NULL, NULL, NULL, 'Jorge Taipe Rojas', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(41182358, 20419922391, NULL, NULL, NULL, 'CESAR MARTINEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(42213989, 20107751913, NULL, NULL, NULL, 'DIEGO ROJAS MENDIZABAL', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(42902258, NULL, NULL, NULL, NULL, 'MARIANGELA DE LA BARRA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(43137845, 20100180210, NULL, NULL, NULL, 'MARIA POLO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(43164855, 20548790248, NULL, NULL, NULL, 'Eduardo Arturo Janampa Urrutia', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(43832024, 20100190797, 1, NULL, 1, 'CARLOS LOPE ESPINOZA', NULL, '', NULL, NULL, NULL, NULL, NULL, 0),
(44067073, 20341841357, NULL, NULL, NULL, 'GABRIELA YAÑEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(45454545, 20538837611, NULL, NULL, NULL, 'SILVIA HUAMANI', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(45866531, 20421421669, NULL, NULL, NULL, 'ROMULO MAYHUA ELGUERA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(46815198, 20545990998, NULL, NULL, NULL, 'Ignacio Rondon', NULL, 'ignacio@gmail.com', NULL, NULL, '992112752', NULL, NULL, 0),
(70120612, 20547899122, NULL, NULL, NULL, 'CARLOS J. CARRANZA PINTO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(70426684, 20510656629, 1, 'Masculino', 1, 'SAUL GALVEZ', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(70434855, 20391986496, NULL, NULL, NULL, 'JUAN FRANCISCO LOAYZA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(78968521, 20501259552, NULL, NULL, NULL, 'NATALIE GILDEMEISTER', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(255113398, 20297868790, NULL, NULL, NULL, 'JUANA ZUÑIGA MEZA', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(400322679, 20341841357, NULL, NULL, NULL, 'JOSE VILLACORTA BRAVO', NULL, '', NULL, NULL, '', NULL, NULL, 0),
(700157852, NULL, NULL, 'Masculino', 1, 'ROBERTO CORDOVA', NULL, '', NULL, NULL, NULL, NULL, NULL, 0),
(2147483647, NULL, NULL, NULL, NULL, 'ROMULO MAYHUA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ocupantes`
--

CREATE TABLE `ocupantes` (
  `idOcupantes` int(11) NOT NULL,
  `idReserva` varchar(45) NOT NULL,
  `idHuesped` int(11) NOT NULL,
  `idHabitacion` varchar(100) NOT NULL,
  `cargos` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ocupantes`
--

INSERT INTO `ocupantes` (`idOcupantes`, `idReserva`, `idHuesped`, `idHabitacion`, `cargos`) VALUES
(2, 'R18B13J2243', 46815198, '211', 1),
(3, 'R18B13K4429', 2, '206', 1),
(4, 'R18B13K4655', 70434855, '301', 1),
(5, 'R18B13K4829', 40552967, '302', 1),
(6, 'R18B13K5043', 1, '105', 1),
(7, 'R18B13K5243', 3, '306', 1),
(8, 'R18B13K5754', 4, '404', 1),
(12, 'R18B13L1558', 7, '401', 1),
(16, 'R18B13L3149', 10, '303', 1),
(17, 'R18B13L3401', 7762050, '405', 1),
(20, 'R18B13L4049', 13, '303', 1),
(21, 'R18B13L5146', 17, '303', 1),
(26, 'R18B14K4926', 18, '305', 1),
(27, 'R18B14L1350', 19, '402', 1),
(33, 'R18B15X0716', 13500374, '104', 0),
(34, 'R18B15X4807', 21005216, '101', 0),
(36, 'R18B15X4807', 21873181, '101', 0),
(37, 'R18B13L2115', 78968521, '106', 1),
(38, 'R18B13L2253', 700157852, '208', 1),
(39, 'R18B13L1007', 6, '103', 0),
(41, 'R18B16T1854', 45866531, '303', 0),
(42, 'R18B17X2354', 43832024, '301', 0),
(43, 'R18B17X3110', 29480097, '307', 0),
(44, 'R18B17X3437', 40273416, '309', 0),
(45, 'R18B17B5608', 10339502, '208', 0),
(46, 'R18B18J2626', 2865246, '201', 0),
(47, 'R18B18L5930', 43164855, '103', 0),
(48, 'R18B18M1223', 0, '105', 0),
(49, 'R18B18N1815', 32834734, '304', 0),
(50, 'R18B18S5122', 70426684, '205', 0),
(54, 'R18B19J4407', 10263202, '403', 1),
(57, 'R18B19K1301', 21, '208', 1),
(59, 'R18B19K3709', 452845, '305', 1),
(60, 'R18B19K3904', 121212, '402', 1),
(61, 'R18B19K4023', 8049980, '405', 1),
(64, 'R18B20O1019', 42902258, '302', 1),
(65, 'R18B20T3236', 16451856, '103', 0),
(67, 'R18B20U1138', 40241782, '206', 0),
(68, 'R18B20U1416', 25513398, '207', 0),
(69, 'R18B20U1912', 29565092, '209', 0),
(70, 'R18B20U2403', 64, '303', 0),
(71, 'R18B19G5316', 5489759, '401', 0),
(72, 'R18B20V2555', 10797695, '102', 0),
(73, 'R18B20V3751', 7758905, '308', 0),
(74, 'R18B21H2400', 40341328, '103', 1),
(75, 'R18B21I0420', 8253472, '206', 1),
(77, 'R18B21K2324', 122, '305', 1),
(78, 'R18B22S3305', 42213989, '102', 0),
(79, 'R18B22S5150', 9333470, '206', 0),
(80, 'R18B22T0015', 73, '303', 0),
(81, 'R18B22T1245', 41182358, '401', 0),
(82, 'R18B23A5717', 5, '101', 0),
(83, 'R18B23B0010', 23873456, '104', 0),
(84, 'R18B23B0010', 1225408, '104', 0),
(85, 'R18B23B0538', 9679060, '204', 0),
(86, 'R18B23B0836', 44067073, '302', 0),
(87, 'R18B23B1147', 40032679, '308', 0),
(88, 'R18B24H3547', 40062849, '402', 0),
(89, 'R18B24I0756', 70120612, '405', 0),
(91, 'R18B26I3048', 43137845, '206', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`idPais`, `nombre`) VALUES
(1, 'Perú');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `idPaquete` int(11) NOT NULL,
  `nombre` varchar(300) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `duracion` varchar(45) DEFAULT NULL,
  `moneda` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recojo`
--

CREATE TABLE `recojo` (
  `idRecojo` int(11) NOT NULL,
  `idReserva` varchar(45) NOT NULL,
  `nroTicket` varchar(45) DEFAULT NULL,
  `fechaHora` datetime DEFAULT NULL,
  `lugarRecojo` varchar(200) DEFAULT NULL,
  `numPersonas` int(11) DEFAULT NULL,
  `personaPrincipal` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `idReserva` varchar(45) NOT NULL,
  `idColaborador` int(11) NOT NULL,
  `idHuesped` int(11) NOT NULL,
  `idEstado` int(11) NOT NULL,
  `fechaReserva` datetime DEFAULT NULL,
  `montoTotal` float DEFAULT NULL,
  `montoPendiente` float DEFAULT NULL,
  `tipoPago` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reserva`
--

INSERT INTO `reserva` (`idReserva`, `idColaborador`, `idHuesped`, `idEstado`, `fechaReserva`, `montoTotal`, `montoPendiente`, `tipoPago`) VALUES
('R18B13J2243', 1, 46815198, 3, '2018-02-13 10:23:12', 0, 0, NULL),
('R18B13K4230', 1, 2, 3, '2018-02-13 11:43:10', 0, 0, NULL),
('R18B13K4429', 1, 21248913, 5, '2018-02-13 11:44:55', 0, 728, NULL),
('R18B13K4655', 1, 70434855, 3, '2018-02-13 11:47:36', 0, 0, NULL),
('R18B13K4829', 1, 40552967, 5, '2018-02-13 11:49:43', 0, 800.5, ''),
('R18B13K5043', 1, 1, 5, '2018-02-13 11:51:18', 0, 468, NULL),
('R18B13K5243', 1, 3, 5, '2018-02-13 11:57:18', 0, 1670, NULL),
('R18B13K5754', 1, 4, 5, '2018-02-13 11:58:39', 0, 1719, NULL),
('R18B13L0021', 1, 16698625, 3, '2018-02-13 12:03:44', 0, 0, NULL),
('R18B13L0729', 1, 5, 3, '2018-02-13 12:07:54', 0, 0, NULL),
('R18B13L0930', 1, 5, 5, '2018-02-13 12:09:37', 0, 213, NULL),
('R18B13L1007', 1, 6, 5, '2018-02-13 12:15:16', 0, 142, NULL),
('R18B13L1558', 1, 7, 5, '2018-02-13 12:16:25', 0, 1404, NULL),
('R18B13L2115', 1, 78968521, 5, '2018-02-13 12:22:07', 0, 390, NULL),
('R18B13L2253', 1, 700157852, 3, '2018-02-13 12:24:53', 0, 0, 'Pago Directo'),
('R18B13L3149', 1, 10, 5, '2018-02-13 12:33:30', 0, 312, NULL),
('R18B13L3401', 1, 7762050, 5, '2018-02-13 12:35:10', 0, 312, NULL),
('R18B13L3700', 1, 11, 5, '2018-02-13 12:37:18', 0, 234, NULL),
('R18B13L3750', 1, 12, 3, '2018-02-13 12:38:14', 0, 0, NULL),
('R18B13L4049', 1, 13, 5, '2018-02-13 12:41:11', 0, 436, NULL),
('R18B13L4740', 1, 16, 3, '2018-02-13 12:48:31', 0, 0, NULL),
('R18B13L5019', 1, 17, 3, '2018-02-13 12:50:53', 0, 0, NULL),
('R18B13L5146', 1, 17, 5, '2018-02-13 12:51:54', 0, 426, NULL),
('R18B14K4926', 1, 18, 3, '2018-02-14 11:49:54', 0, 0, NULL),
('R18B14L0856', 1, 123, 3, '2018-02-14 12:09:56', 0, 0, NULL),
('R18B14L1350', 1, 19, 5, '2018-02-14 12:44:47', 0, 156, NULL),
('R18B14T3702', 1, 5, 3, '2018-02-14 20:37:29', 0, 0, NULL),
('R18B14T5014', 1, 7762050, 3, '2018-02-14 20:50:25', 0, 0, NULL),
('R18B14U0303', 1, 8532699, 3, '2018-02-14 21:03:56', 0, 0, 'Pago Directo'),
('R18B15N3602', 1, 5, 5, '2018-02-15 14:36:10', 0, 497, NULL),
('R18B15S4748', 2, 2147483647, 5, '2018-02-15 19:49:51', 0, 636, NULL),
('R18B15X0716', 1, 13500374, 5, '2018-02-15 00:40:38', 0, 477, NULL),
('R18B15X4807', 1, 21005216, 5, '2018-02-15 00:49:04', 0, 427.5, 'Pago Directo'),
('R18B16T1854', 2, 45866531, 3, '2018-02-16 20:20:16', 0, 0, 'Pago Diferido'),
('R18B17B5608', 1, 10339502, 5, '2018-02-17 08:14:18', 0, 2048.5, 'Pago Directo'),
('R18B17I4802', 1, 70426684, 3, '2018-02-17 09:49:39', 0, 0, 'Pago Diferido'),
('R18B17X2354', 1, 43832024, 3, '2018-02-17 00:26:04', 0, 0, 'Pago Directo'),
('R18B17X3110', 1, 29480097, 3, '2018-02-17 00:32:43', 0, 0, 'Pago Directo'),
('R18B17X3437', 1, 40273416, 3, '2018-02-17 00:36:22', 0, 0, 'Pago Directo'),
('R18B18J2626', 1, 2865246, 3, '2018-02-18 11:12:53', 0, 0, 'Crédito'),
('R18B18L5930', 1, 43164855, 5, '2018-02-18 13:03:43', 0, 393.5, ''),
('R18B18M1223', 1, 43, 5, '2018-02-18 13:17:55', 0, 390, 'Pago Directo'),
('R18B18N1815', 1, 32834734, 3, '2018-02-18 14:19:18', 0, 0, NULL),
('R18B18S5122', 1, 70426684, 3, '2018-02-18 19:51:38', 0, 0, NULL),
('R18B18T1941', 1, 40897576, 3, '2018-02-18 21:24:44', 0, 0, 'Crédito'),
('R18B18U3012', 1, 47, 5, '2018-02-18 23:35:45', 0, 1113, NULL),
('R18B19G5210', 1, 5489759, 3, '2018-02-19 07:53:12', 0, 0, NULL),
('R18B19G5316', 1, 5489759, 5, '2018-02-19 07:53:33', 0, 546, NULL),
('R18B19J4407', 1, 10263202, 5, '2018-02-19 10:44:29', 0, 546, NULL),
('R18B19J4614', 1, 20, 3, '2018-02-19 10:46:43', 0, 0, NULL),
('R18B19J4813', 1, 20, 3, '2018-02-19 10:50:38', 0, 0, NULL),
('R18B19J5457', 1, 21, 3, '2018-02-19 11:12:15', 0, 0, NULL),
('R18B19K1301', 1, 21, 3, '2018-02-19 11:13:18', 0, 0, NULL),
('R18B19K1719', 1, 22, 5, '2018-02-19 11:29:28', 0, 234, NULL),
('R18B19K3709', 1, 452845, 5, '2018-02-19 11:38:10', 0, 390, NULL),
('R18B19K3904', 1, 121212, 5, '2018-02-19 11:39:38', 0, 390, NULL),
('R18B19K4023', 1, 8049980, 5, '2018-02-19 11:43:19', 0, 156, NULL),
('R18B20O1019', 1, 42902258, 5, '2018-02-20 15:11:17', 0, 390, NULL),
('R18B20T3236', 1, 16451856, 3, '2018-02-20 20:34:24', 0, 0, NULL),
('R18B20T3741', 1, 59, 3, '2018-02-20 20:39:23', 0, 0, NULL),
('R18B20T4027', 1, 40241782, 3, '2018-02-20 20:44:00', 0, 0, NULL),
('R18B20T5916', 1, 255113398, 3, '2018-02-20 21:00:20', 0, 0, 'Pago Directo'),
('R18B20U1138', 1, 40241782, 5, '2018-02-20 21:12:01', 0, 156, NULL),
('R18B20U1416', 1, 25513398, 5, '2018-02-20 21:15:14', 0, 624, NULL),
('R18B20U1912', 1, 29565092, 5, '2018-02-20 21:19:59', 0, 624, NULL),
('R18B20U2403', 1, 64, 5, '2018-02-20 21:24:39', 0, 390, NULL),
('R18B20V2555', 1, 10797695, 5, '2018-02-20 22:26:39', 0, 156, 'Pago Directo'),
('R18B20V2815', 1, 7758905, 3, '2018-02-20 22:29:50', 0, 0, ''),
('R18B20V3203', 1, 7758905, 3, '2018-02-20 22:32:27', 0, 0, NULL),
('R18B20V3751', 1, 7758905, 5, '2018-02-20 22:38:15', 0, 390, 'Pago Directo'),
('R18B21H2400', 1, 40341328, 3, '2018-02-21 09:02:44', 0, 0, NULL),
('R18B21I0420', 1, 8253472, 3, '2018-02-21 11:21:17', 0, 0, NULL),
('R18B21K2158', 1, 123123, 3, '2018-02-21 11:22:39', 0, 0, NULL),
('R18B21K2324', 1, 122, 5, '2018-02-21 11:23:46', 0, 312, NULL),
('R18B22S2827', 1, 42213989, 3, '2018-02-22 19:29:34', 0, 0, NULL),
('R18B22S3305', 1, 42213989, 3, '2018-02-22 19:43:36', 0, 0, 'Pago Diferido'),
('R18B22S5150', 1, 9333470, 3, '2018-02-22 19:53:51', 0, 0, 'Pago Directo'),
('R18B22T0015', 1, 73, 3, '2018-02-22 20:01:33', 0, 0, 'Pago Directo'),
('R18B22T1245', 1, 41182358, 5, '2018-02-22 20:14:19', 0, 312, 'Pago Directo'),
('R18B23A5717', 1, 6726880, 5, '2018-02-23 01:58:28', 0, 156, 'Crédito'),
('R18B23B0010', 1, 23873456, 3, '2018-02-23 02:01:12', 0, 0, 'Crédito'),
('R18B23B0538', 1, 9679060, 5, '2018-02-23 02:06:44', 0, 156, 'Crédito'),
('R18B23B0836', 1, 44067073, 5, '2018-02-23 02:09:24', 0, 156, 'Crédito'),
('R18B23B1147', 1, 400322679, 5, '2018-02-23 02:12:38', 0, 285, 'Crédito'),
('R18B24H3547', 1, 40062849, 3, '2018-02-24 09:00:35', 0, 0, 'Pago Directo'),
('R18B24I0756', 1, 70120612, 3, '2018-02-24 09:09:13', 0, 0, 'Pago Directo'),
('R18B24T1040', 1, 6448647, 3, '2018-02-24 20:13:36', 0, 0, 'Crédito'),
('R18B26I3048', 1, 43137845, 3, '2018-02-26 09:31:11', 0, 0, NULL),
('R18B27L0639', 1, 45454545, 3, '2018-02-27 12:07:05', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservapaquete`
--

CREATE TABLE `reservapaquete` (
  `idPaquete` int(11) NOT NULL,
  `idReserva` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservapendiente`
--

CREATE TABLE `reservapendiente` (
  `idReservaPendiente` int(11) NOT NULL,
  `idTipoHabitacion` int(11) NOT NULL,
  `idReserva` varchar(45) NOT NULL,
  `numeroHabitaciones` int(11) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `preferencias` varchar(1000) DEFAULT NULL,
  `idTarifa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifa`
--

CREATE TABLE `tarifa` (
  `idTarifa` int(11) NOT NULL,
  `idTipoHabitacion` int(11) NOT NULL,
  `idEmpresa` bigint(20) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `valor` varchar(500) DEFAULT NULL,
  `moneda` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarifa`
--

INSERT INTO `tarifa` (`idTarifa`, `idTipoHabitacion`, `idEmpresa`, `descripcion`, `valor`, `moneda`) VALUES
(1, 1, NULL, 'Tarifa Regular Matrimonial', '285', 'S/.'),
(3, 4, NULL, 'Tarifa Regular Doble', '285', 'S/.'),
(4, 4, NULL, 'Tarifa Corporativa Doble', '250', 'S/.'),
(5, 3, NULL, 'Tarifa Regular Suite', '360', 'S/.'),
(6, 3, NULL, 'Tarifa Corporativa Suite', '318', 'S/.'),
(7, 2, NULL, 'Tarifa Corporativa Simple', '156', 'S/.'),
(8, 2, NULL, 'Tarifa Regular Simple', '196', 'S/.'),
(9, 5, NULL, 'Tarifa Regular Simple / Ejecutiva', '196', 'S/.'),
(10, 5, NULL, 'Tarifa Corporativa Simple / Ejecutiva', '156', 'S/.'),
(11, 1, NULL, 'Tarifa Regular Simple', '196', 'S/.'),
(12, 1, NULL, 'Tarifa Corporativa Simple', '156', 'S/.'),
(13, 4, NULL, 'Tarifa Corporativa Simple', '156', 'S/.'),
(14, 4, NULL, 'Tarifa Regular Simple', '196', 'S/.'),
(15, 1, NULL, 'Tarifa Corporativa Matrimonial', '250', 'S/.'),
(16, 3, NULL, 'Tarifa Regular Simple', '196', 'S/.'),
(17, 3, NULL, 'Tarifa Corporativa Simple', '156', 'S/.'),
(18, 5, NULL, 'Tarifa Corporativa Matrimonial', '250', 'S/.'),
(19, 5, NULL, 'Tarifa Regular Matrimonial', '285', 'S/.'),
(20, 6, NULL, 'SALA 1', '200', 'S/.'),
(21, 6, NULL, 'SALA 2', '300', 'S/.'),
(28, 5, 20100190797, 'Tarifa Especial Grupo Gloria', '142', 'S/.'),
(29, 1, 20100190797, 'Tarifa Especial Grupo Gloria', '142', 'S/.'),
(30, 1, 20161541991, 'Tarifa Especial Tecsup', '148', 'S/.'),
(31, 2, 20161541991, 'Tarifa Especial Tecsup', '148', 'S/.'),
(32, 3, 20161541991, 'Tarifa Especial Tecsup', '148', 'S/.'),
(33, 4, 20161541991, 'Tarifa Especial Tecsup', '148', 'S/.'),
(34, 1, 20504822274, 'Tarifa Carp & Asociados', '238', 'S/.'),
(35, 2, 20504822274, 'Tarifa Carp & Asociados', '145', 'S/.'),
(36, 3, 20504822274, 'Tarifa Carp & Asociados', '238', 'S/.'),
(37, 1, 20563760894, 'Tarifa Especial Just 4 Fun', '142', 'S/.'),
(38, 2, 20563760894, 'Tarifa Especial Just 4 Fun', '142', 'S/.'),
(39, 3, 20563760894, 'Tarifa Especial Just 4 Fun', '142', 'S/.'),
(40, 2, 20100190797, 'Tarifa Especial Grupo Gloria', '142', 'S/.'),
(41, 3, 20100190797, 'Tarifa Especial Grupo Gloria', '142', 'S/.'),
(42, 4, 20100190797, 'Tarifa Especial Grupo Gloria', '142', 'S/.'),
(43, 1, NULL, 'CAMA ADICIONAL', '80', 'S/.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohabitacion`
--

CREATE TABLE `tipohabitacion` (
  `idTipoHabitacion` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipohabitacion`
--

INSERT INTO `tipohabitacion` (`idTipoHabitacion`, `descripcion`) VALUES
(1, 'Matrimonial'),
(2, 'Simple'),
(3, 'Suite'),
(4, 'Doble'),
(5, 'Simple/Ejecutiva'),
(6, 'Sala de Conferencias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipohabitacionpaquete`
--

CREATE TABLE `tipohabitacionpaquete` (
  `idPaquete` int(11) NOT NULL,
  `idTipoHabitacion` int(11) NOT NULL,
  `idTarifa` int(11) NOT NULL,
  `nroHabitaciones` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipousuario`
--

CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipousuario`
--

INSERT INTO `tipousuario` (`idTipoUsuario`, `descripcion`) VALUES
(1, 'Recepcionista'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovista`
--

CREATE TABLE `tipovista` (
  `idTipoVista` int(11) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipovista`
--

INSERT INTO `tipovista` (`idTipoVista`, `descripcion`) VALUES
(1, 'Jardín'),
(2, 'Calle'),
(3, 'Interior');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transaccion`
--

CREATE TABLE `transaccion` (
  `idTransaccion` varchar(45) NOT NULL,
  `idColaborador` int(11) NOT NULL,
  `idReserva` varchar(45) NOT NULL,
  `idHuesped` int(11) NOT NULL,
  `idHabitacion` varchar(100) NOT NULL,
  `monto` float DEFAULT NULL,
  `detalle` varchar(45) DEFAULT NULL,
  `fechaTransaccion` date DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `transaccion`
--

INSERT INTO `transaccion` (`idTransaccion`, `idColaborador`, `idReserva`, `idHuesped`, `idHabitacion`, `monto`, `detalle`, `fechaTransaccion`, `tipo`) VALUES
('TRS18B13K4629', 1, 'R18B13K4429', 2, '206', 20, '01 DESAYUNO', '2018-02-13', 'Cafetería'),
('TRS18B14J2107', 1, 'R18B13K4429', 2, '206', 28, '01 POLLO A LA PLANCHA, 01 INCA KOLA', '2018-02-14', 'Cafetería'),
('TRS18B14T4615', 1, 'R18B13K4829', 40552967, '302', 130.5, '02 TRUCHAS C/ ENSALADA; 01 TRUCHA C/ ARROZ; 0', '2018-02-14', 'Cafetería'),
('TRS18B15S5755', 2, 'R18B13K4429', 2, '206', 28, '01 POLLO A LA PLANCA C/ ENSLADA; 01 INCA KOLA', '2018-02-15', 'Cafetería'),
('TRS18B15S5902', 2, 'R18B13K4429', 2, '206', 28, '01 POLLO A LA PLANCHA; 01 INKA COLA ', '2018-02-15', 'Cafetería'),
('TRS18B17H1915', 1, 'R18B17B5608', 10339502, '208', 20, '01 DESAYUNO', '2018-02-17', 'Cafetería'),
('TRS18B17I4227', 1, 'R18B13K4829', 40552967, '302', 5.5, '01 AGUA MINERAL; 01 CEREAL; ', '2018-02-17', 'Cafetería'),
('TRS18B17I4409', 1, 'R18B13K4829', 40552967, '302', 40.5, '01 MILANESA DE POLLO; 1/2 JARRA DE ZUMO DE NA', '2018-02-17', 'Cafetería'),
('TRS18B17X3937', 1, 'R18B16T1854', 45866531, '303', 25.5, 'SANDWICH DE POLLO 6.50 ;1/2 JARRA DE ZUMO DE ', '2018-02-17', 'Cafetería'),
('TRS18B18K1730', 1, 'R18B18J2626', 2865246, '201', 4, '01 PRINGLES', '2018-02-18', 'Cafetería'),
('TRS18B18K1906', 1, 'R18B18J2626', 2865246, '201', 6, '1. Chocolate Milk; 1 Piqueo', '2018-02-18', 'Cafetería'),
('TRS18B18K2356', 1, 'R18B17B5608', 10339502, '208', 33.5, '1 Asado c/ pure; 01 porcion de arroz; 01 cafe', '2018-02-18', 'Cafetería'),
('TRS18B18K2618', 1, 'R18B13K5243', 3, '306', 37, '01 Trucha c/ arroz; 01 Sopa criolla', '2018-02-18', 'Cafetería'),
('TRS18B18K2719', 1, 'R18B13K5243', 3, '306', 45.5, '01 Milanesa c/ pollo; 01 Jugo de piña; 01 Sop', '2018-02-18', 'Cafetería'),
('TRS18B18K2904', 1, 'R18B13K5243', 3, '306', 5.5, '01 Cereal; 01 Agua San luis', '2018-02-18', 'Cafetería'),
('TRS18B18K3026', 1, 'R18B13K5243', 3, '306', 9.5, '01 Agua Mineral; 01 Cereal; 01 Milk', '2018-02-18', 'Cafetería'),
('TRS18B18K3214', 1, 'R18B17X3437', 40273416, '309', 22.5, '01 Mozarella de pollo; 01 Vaso de zumo de nar', '2018-02-18', 'Cafetería'),
('TRS18B18L2527', 1, 'R18B13K5754', 4, '404', 22, '01 Ravioles c/ S.R.', '2018-02-18', 'Cafetería'),
('TRS18B18L3556', 1, 'R18B13K5754', 4, '404', 8, '01 zumo', '2018-02-18', 'Cafetería'),
('TRS18B18L3705', 1, 'R18B13K5754', 4, '404', 40, '01 Pantalon; 01 Casaca; 01 Chompa; 01 Camisa;', '2018-02-18', 'Lavandería'),
('TRS18B18L5712', 1, 'R18B13K5754', 4, '404', 89, '08 Boxer ; 02 short; 07 Polos; 10 pares de me', '2018-02-18', 'Lavandería'),
('TRS18B18M1146', 1, 'R18B18L5930', 43164855, '103', 3.5, '01 agua mineral', '2018-02-18', 'Cafetería'),
('TRS18B18S5509', 1, 'R18B18S5122', 70426684, '205', 20, '01 DESAYUNO; ', '2018-02-18', 'Cafetería'),
('TRS18B18S5600', 1, 'R18B18S5122', 70426684, '205', 30.5, '01 Mozarella de pollo; 01 Vaso de zumo de nar', '2018-02-18', 'Cafetería'),
('TRS18B18S5641', 1, 'R18B18S5122', 70426684, '205', 13, '01 Ensalada de legumbres; 01 Mate', '2018-02-18', 'Cafetería'),
('TRS18B18S5812', 1, 'R18B18S5122', 70426684, '205', 16.5, '01 agua mineral; 02 Cervezas', '2018-02-18', 'Lavandería'),
('TRS18B19F3458', 1, 'R18B18S5122', 70426684, '205', 77.5, '01 Ravioles c/salsa de champiñones; 02 Asado ', '2018-02-19', 'Cafetería'),
('TRS18B19F3742', 1, 'R18B18S5122', 70426684, '205', 39, '06 cervezas', '2018-02-19', 'Cafetería'),
('TRS18B19F3904', 1, 'R18B17X2354', 43832024, '301', 18.5, '01 Tallarin en salsa roja', '2018-02-19', 'Cafetería'),
('TRS18B19F4028', 1, 'R18B13L4049', 13, '303', 46, '01 Ravioles en salsa de champiñones; 01 Jarra', '2018-02-19', 'Cafetería'),
('TRS18B19F4645', 1, 'R18B13K5243', 3, '306', 7, '02 Agua San luis', '2018-02-19', 'Cafetería'),
('TRS18B19F4940', 1, 'R18B17X3437', 40273416, '309', 3.5, '01 Agua San Luis', '2018-02-19', 'Cafetería'),
('TRS18B20U4852', 1, 'R18B13K5243', 3, '306', 5.5, '01 QUAKER; 01 SAN LUIS S/ GAS', '2018-02-20', 'Cafetería');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  ADD PRIMARY KEY (`idCaracteristica`);

--
-- Indices de la tabla `caracteristicahabitacion`
--
ALTER TABLE `caracteristicahabitacion`
  ADD PRIMARY KEY (`idCaracteristica`,`idHabitacion`),
  ADD KEY `fk_Caracteristica_has_Habitacion_Habitacion1_idx` (`idHabitacion`),
  ADD KEY `fk_Caracteristica_has_Habitacion_Caracteristica1_idx` (`idCaracteristica`);

--
-- Indices de la tabla `caracteristicatipohabitacion`
--
ALTER TABLE `caracteristicatipohabitacion`
  ADD PRIMARY KEY (`idCaracteristica`,`idTipoHabitacion`),
  ADD KEY `fk_Caracteristica_has_TipoHabitacion_TipoHabitacion1_idx` (`idTipoHabitacion`),
  ADD KEY `fk_Caracteristica_has_TipoHabitacion_Caracteristica1_idx` (`idCaracteristica`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`idCiudad`,`idEstadoPais`),
  ADD KEY `fk_Ciudad_EstadoPais1_idx` (`idEstadoPais`);

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`),
  ADD KEY `fk_Colaborador_TipoUsuario1_idx` (`idTipoUsuario`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `contactoempresa`
--
ALTER TABLE `contactoempresa`
  ADD PRIMARY KEY (`idEmpresa`,`idContacto`),
  ADD KEY `fk_Empresa_has_Contacto_Contacto1_idx` (`idContacto`),
  ADD KEY `fk_Empresa_has_Contacto_Empresa1_idx` (`idEmpresa`);

--
-- Indices de la tabla `contenidocorreo`
--
ALTER TABLE `contenidocorreo`
  ADD PRIMARY KEY (`idContenidoCorreo`);

--
-- Indices de la tabla `databaselog`
--
ALTER TABLE `databaselog`
  ADD PRIMARY KEY (`idDatabaseLog`),
  ADD KEY `fk_DatabaseLog_Colaborador1_idx` (`idColaborador`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`idEstado`);

--
-- Indices de la tabla `estadopais`
--
ALTER TABLE `estadopais`
  ADD PRIMARY KEY (`idEstadoPais`),
  ADD KEY `fk_Estado_Pais1_idx` (`idPais`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`idHabitacion`),
  ADD KEY `fk_Habitacion_TipoVista1_idx` (`idTipoVista`),
  ADD KEY `fk_Habitacion_TipoHabitacion1_idx` (`idTipoHabitacion`),
  ADD KEY `fk_Habitacion_Estado1_idx` (`idEstado`);

--
-- Indices de la tabla `habitacionreservada`
--
ALTER TABLE `habitacionreservada`
  ADD PRIMARY KEY (`idHabitacionReservada`),
  ADD KEY `fk_Habitacion_has_Reserva_Reserva1_idx` (`idReserva`),
  ADD KEY `fk_Habitacion_has_Reserva_Habitacion_idx` (`idHabitacion`),
  ADD KEY `fk_HabitacionReservada_Estado1_idx` (`idEstado`),
  ADD KEY `fk_HabitacionReservada_Tarifa1_idx` (`idTarifa`);

--
-- Indices de la tabla `historialreserva`
--
ALTER TABLE `historialreserva`
  ADD PRIMARY KEY (`idHistorialReserva`),
  ADD KEY `fk_Historial_Colaborador1_idx` (`idColaborador`),
  ADD KEY `fk_HistorialReserva_Estado1_idx` (`idEstado`),
  ADD KEY `fk_HistorialReserva_Habitacion1_idx` (`idHabitacion`),
  ADD KEY `fk_HistorialReserva_Reserva1_idx` (`idReserva`);

--
-- Indices de la tabla `huesped`
--
ALTER TABLE `huesped`
  ADD PRIMARY KEY (`idHuesped`),
  ADD KEY `fk_Huesped_Empresa1_idx` (`idEmpresa`),
  ADD KEY `fk_Huesped_Ciudad1_idx` (`idCiudad`),
  ADD KEY `fk_Huesped_Genero1_idx` (`idGenero`),
  ADD KEY `fk_Huesped_Pais1_idx` (`nacionalidad_idPais`);

--
-- Indices de la tabla `ocupantes`
--
ALTER TABLE `ocupantes`
  ADD PRIMARY KEY (`idOcupantes`),
  ADD KEY `fk_Reserva_has_Huesped_Huesped1_idx` (`idHuesped`),
  ADD KEY `fk_Reserva_has_Huesped_Reserva1_idx` (`idReserva`),
  ADD KEY `fk_Ocupantes_HabitacionReservada1_idx` (`idHabitacion`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`idPaquete`);

--
-- Indices de la tabla `recojo`
--
ALTER TABLE `recojo`
  ADD PRIMARY KEY (`idRecojo`),
  ADD KEY `fk_Recojo_Reserva1_idx` (`idReserva`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`idReserva`),
  ADD KEY `fk_Reserva_Huesped1_idx` (`idHuesped`),
  ADD KEY `fk_Reserva_Estado1_idx` (`idEstado`),
  ADD KEY `fk_Reserva_Colaborador1_idx` (`idColaborador`);

--
-- Indices de la tabla `reservapaquete`
--
ALTER TABLE `reservapaquete`
  ADD PRIMARY KEY (`idPaquete`,`idReserva`),
  ADD KEY `fk_Paquete_has_Reserva_Reserva1_idx` (`idReserva`),
  ADD KEY `fk_Paquete_has_Reserva_Paquete1_idx` (`idPaquete`);

--
-- Indices de la tabla `reservapendiente`
--
ALTER TABLE `reservapendiente`
  ADD PRIMARY KEY (`idReservaPendiente`),
  ADD KEY `fk_TipoHabitacion_has_Reserva_Reserva1_idx` (`idReserva`),
  ADD KEY `fk_TipoHabitacion_has_Reserva_TipoHabitacion1_idx` (`idTipoHabitacion`),
  ADD KEY `fk_ReservaPendiente_Tarifa1_idx` (`idTarifa`);

--
-- Indices de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD PRIMARY KEY (`idTarifa`),
  ADD KEY `fk_Tarifa_TipoHabitacion1_idx` (`idTipoHabitacion`),
  ADD KEY `fk_Tarifa_Empresa1_idx` (`idEmpresa`);

--
-- Indices de la tabla `tipohabitacion`
--
ALTER TABLE `tipohabitacion`
  ADD PRIMARY KEY (`idTipoHabitacion`);

--
-- Indices de la tabla `tipohabitacionpaquete`
--
ALTER TABLE `tipohabitacionpaquete`
  ADD PRIMARY KEY (`idPaquete`,`idTipoHabitacion`),
  ADD KEY `fk_Paquete_has_TipoHabitacion_TipoHabitacion1_idx` (`idTipoHabitacion`),
  ADD KEY `fk_Paquete_has_TipoHabitacion_Paquete1_idx` (`idPaquete`),
  ADD KEY `fk_TipoHabitacionPaquete_Tarifa1_idx` (`idTarifa`);

--
-- Indices de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`idTipoUsuario`);

--
-- Indices de la tabla `tipovista`
--
ALTER TABLE `tipovista`
  ADD PRIMARY KEY (`idTipoVista`);

--
-- Indices de la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD PRIMARY KEY (`idTransaccion`),
  ADD KEY `fk_Transaccion_Reserva1_idx` (`idReserva`),
  ADD KEY `fk_Transaccion_Ocupantes1_idx` (`idHuesped`),
  ADD KEY `fk_Transaccion_HabitacionReservada1_idx` (`idHabitacion`),
  ADD KEY `fk_Transaccion_Colaborador1_idx` (`idColaborador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caracteristica`
--
ALTER TABLE `caracteristica`
  MODIFY `idCaracteristica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `idCiudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `databaselog`
--
ALTER TABLE `databaselog`
  MODIFY `idDatabaseLog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=873;
--
-- AUTO_INCREMENT de la tabla `estado`
--
ALTER TABLE `estado`
  MODIFY `idEstado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `estadopais`
--
ALTER TABLE `estadopais`
  MODIFY `idEstadoPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `habitacionreservada`
--
ALTER TABLE `habitacionreservada`
  MODIFY `idHabitacionReservada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT de la tabla `historialreserva`
--
ALTER TABLE `historialreserva`
  MODIFY `idHistorialReserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de la tabla `ocupantes`
--
ALTER TABLE `ocupantes`
  MODIFY `idOcupantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `paquete`
--
ALTER TABLE `paquete`
  MODIFY `idPaquete` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `recojo`
--
ALTER TABLE `recojo`
  MODIFY `idRecojo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reservapendiente`
--
ALTER TABLE `reservapendiente`
  MODIFY `idReservaPendiente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tarifa`
--
ALTER TABLE `tarifa`
  MODIFY `idTarifa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `tipohabitacion`
--
ALTER TABLE `tipohabitacion`
  MODIFY `idTipoHabitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tipovista`
--
ALTER TABLE `tipovista`
  MODIFY `idTipoVista` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `caracteristicahabitacion`
--
ALTER TABLE `caracteristicahabitacion`
  ADD CONSTRAINT `fk_Caracteristica_has_Habitacion_Caracteristica1` FOREIGN KEY (`idCaracteristica`) REFERENCES `caracteristica` (`idCaracteristica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Caracteristica_has_Habitacion_Habitacion1` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacion` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `caracteristicatipohabitacion`
--
ALTER TABLE `caracteristicatipohabitacion`
  ADD CONSTRAINT `fk_Caracteristica_has_TipoHabitacion_Caracteristica1` FOREIGN KEY (`idCaracteristica`) REFERENCES `caracteristica` (`idCaracteristica`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Caracteristica_has_TipoHabitacion_TipoHabitacion1` FOREIGN KEY (`idTipoHabitacion`) REFERENCES `tipohabitacion` (`idTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `fk_Ciudad_EstadoPais1` FOREIGN KEY (`idEstadoPais`) REFERENCES `estadopais` (`idEstadoPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `fk_Colaborador_TipoUsuario1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `contactoempresa`
--
ALTER TABLE `contactoempresa`
  ADD CONSTRAINT `fk_Empresa_has_Contacto_Contacto1` FOREIGN KEY (`idContacto`) REFERENCES `contacto` (`idContacto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empresa_has_Contacto_Empresa1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `databaselog`
--
ALTER TABLE `databaselog`
  ADD CONSTRAINT `fk_DatabaseLog_Colaborador1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idColaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estadopais`
--
ALTER TABLE `estadopais`
  ADD CONSTRAINT `fk_Estado_Pais1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `fk_Habitacion_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Habitacion_TipoHabitacion1` FOREIGN KEY (`idTipoHabitacion`) REFERENCES `tipohabitacion` (`idTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Habitacion_TipoVista1` FOREIGN KEY (`idTipoVista`) REFERENCES `tipovista` (`idTipoVista`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `habitacionreservada`
--
ALTER TABLE `habitacionreservada`
  ADD CONSTRAINT `fk_HabitacionReservada_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HabitacionReservada_Tarifa1` FOREIGN KEY (`idTarifa`) REFERENCES `tarifa` (`idTarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Habitacion_has_Reserva_Habitacion` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacion` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Habitacion_has_Reserva_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `historialreserva`
--
ALTER TABLE `historialreserva`
  ADD CONSTRAINT `fk_HistorialReserva_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HistorialReserva_Habitacion1` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacion` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_HistorialReserva_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Historial_Colaborador1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idColaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `huesped`
--
ALTER TABLE `huesped`
  ADD CONSTRAINT `fk_Huesped_Ciudad1` FOREIGN KEY (`idCiudad`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Huesped_Empresa1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Huesped_Genero1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Huesped_Pais1` FOREIGN KEY (`nacionalidad_idPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `ocupantes`
--
ALTER TABLE `ocupantes`
  ADD CONSTRAINT `fk_Ocupantes_HabitacionReservada1` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacionreservada` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_has_Huesped_Huesped1` FOREIGN KEY (`idHuesped`) REFERENCES `huesped` (`idHuesped`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Reserva_has_Huesped_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recojo`
--
ALTER TABLE `recojo`
  ADD CONSTRAINT `fk_Recojo_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `fk_Reserva_Colaborador1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idColaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Estado1` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Reserva_Huesped1` FOREIGN KEY (`idHuesped`) REFERENCES `huesped` (`idHuesped`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservapaquete`
--
ALTER TABLE `reservapaquete`
  ADD CONSTRAINT `fk_Paquete_has_Reserva_Paquete1` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Paquete_has_Reserva_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reservapendiente`
--
ALTER TABLE `reservapendiente`
  ADD CONSTRAINT `fk_ReservaPendiente_Tarifa1` FOREIGN KEY (`idTarifa`) REFERENCES `tarifa` (`idTarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TipoHabitacion_has_Reserva_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TipoHabitacion_has_Reserva_TipoHabitacion1` FOREIGN KEY (`idTipoHabitacion`) REFERENCES `tipohabitacion` (`idTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tarifa`
--
ALTER TABLE `tarifa`
  ADD CONSTRAINT `fk_Tarifa_Empresa1` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Tarifa_TipoHabitacion1` FOREIGN KEY (`idTipoHabitacion`) REFERENCES `tipohabitacion` (`idTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipohabitacionpaquete`
--
ALTER TABLE `tipohabitacionpaquete`
  ADD CONSTRAINT `fk_Paquete_has_TipoHabitacion_Paquete1` FOREIGN KEY (`idPaquete`) REFERENCES `paquete` (`idPaquete`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Paquete_has_TipoHabitacion_TipoHabitacion1` FOREIGN KEY (`idTipoHabitacion`) REFERENCES `tipohabitacion` (`idTipoHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_TipoHabitacionPaquete_Tarifa1` FOREIGN KEY (`idTarifa`) REFERENCES `tarifa` (`idTarifa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `transaccion`
--
ALTER TABLE `transaccion`
  ADD CONSTRAINT `fk_Transaccion_Colaborador1` FOREIGN KEY (`idColaborador`) REFERENCES `colaborador` (`idColaborador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Transaccion_HabitacionReservada1` FOREIGN KEY (`idHabitacion`) REFERENCES `habitacionreservada` (`idHabitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Transaccion_Ocupantes1` FOREIGN KEY (`idHuesped`) REFERENCES `ocupantes` (`idHuesped`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Transaccion_Reserva1` FOREIGN KEY (`idReserva`) REFERENCES `reserva` (`idReserva`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;