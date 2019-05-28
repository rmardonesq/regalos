
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 18, 2016 at 12:18 AM
-- Server version: 10.0.20-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u292769353_bdgif`
--

-- --------------------------------------------------------

--
-- Table structure for table `regalo`
--

CREATE TABLE IF NOT EXISTS `regalo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pedido` tinyint(1) NOT NULL DEFAULT '0',
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=64 ;

--
-- Dumping data for table `regalo`
--

INSERT INTO `regalo` (`id`, `nombre`, `pedido`, `fecha`) VALUES
(4, 'Mini Pyme', 0, '2016-08-09 00:56:44'),
(3, 'Batidora', 0, '2016-08-09 00:56:44'),
(5, 'Máquina para Pan', 0, '2016-08-09 00:56:44'),
(6, 'Juego Cuchillería', 0, '2016-08-09 00:56:44'),
(7, 'Cafétera', 0, '2016-08-09 00:56:44'),
(8, 'Termo', 0, '2016-08-09 00:56:44'),
(9, 'Horno Eléctrico', 0, '2016-08-09 00:56:44'),
(10, 'Alfrombra Living', 0, '2016-08-09 00:56:44'),
(11, 'Rack', 0, '2016-08-09 00:56:44'),
(12, 'Televisor', 0, '2016-08-09 00:56:44'),
(13, 'Respaldo Cama', 0, '2016-08-09 00:56:44'),
(14, 'Plumones 2 plazas', 0, '2016-08-09 00:56:44'),
(15, 'Calienta camas 2 plazas', 0, '2016-08-09 00:56:44'),
(16, 'Frazadas de polar 2 plazas', 0, '2016-08-09 00:56:44'),
(17, 'Copas', 0, '2016-08-09 00:56:44'),
(18, 'Mesa Arrimo', 0, '2016-08-09 00:56:44'),
(19, 'Mesa de Centro', 0, '2016-08-09 00:56:44'),
(20, 'Banqueta', 1, '2016-08-09 00:56:44'),
(21, 'Lampara de Pie', 0, '2016-08-09 00:56:44'),
(22, 'Reloj para Living', 0, '2016-08-09 00:56:44'),
(23, 'Trituradora de papas', 0, '2016-08-09 00:56:44'),
(24, 'Procesadora de alimentos', 0, '2016-08-09 00:56:44'),
(25, 'Set de pailas', 0, '2016-08-09 00:56:44'),
(26, 'Juego de Sartenes', 0, '2016-08-09 00:56:44'),
(27, 'Juego de Sábanas 1 plaza y media', 0, '2016-08-09 00:56:44'),
(28, 'Plumones 1 plaza y media', 0, '2016-08-09 00:56:44'),
(29, 'Frazadas 1 plaza y media', 0, '2016-08-09 00:56:44'),
(30, 'Cama 1 plaza y media', 0, '2016-08-09 00:56:44'),
(31, 'Equipo de Música', 0, '2016-08-09 00:56:44'),
(32, 'Consola de Videojuegos', 0, '2016-08-09 00:56:44'),
(33, 'Máquina Fotografica', 0, '2016-08-09 00:56:44'),
(34, 'Filmadora', 0, '2016-08-09 00:56:44'),
(35, 'Piscina', 0, '2016-08-09 00:56:44'),
(36, 'Set de toallas', 0, '2016-08-09 00:56:44'),
(37, 'Puf', 0, '2016-08-09 00:56:44'),
(38, 'Lámpara para Veladores', 0, '2016-08-09 00:56:44'),
(39, 'Terraza', 0, '2016-08-09 00:56:44'),
(40, 'Fuente de ensaladas', 0, '2016-08-09 00:56:44'),
(41, 'Living', 0, '2016-08-09 00:56:44'),
(42, 'Bar Esquinero', 0, '2016-08-09 00:56:44'),
(43, 'Secadora', 0, '2016-08-09 00:59:47'),
(44, 'Sandwichera', 0, '2016-08-09 00:59:47'),
(45, 'Pisos Plásticos', 0, '2016-08-09 00:59:47'),
(46, 'Silla Mesedora', 0, '2016-08-09 00:59:47'),
(47, 'Set Baño', 0, '2016-08-09 00:59:47'),
(48, 'Parrilla', 0, '2016-08-09 00:59:47'),
(49, 'Disco para cocinar', 0, '2016-08-09 00:59:47'),
(50, 'Puff', 0, '2016-08-09 00:59:47'),
(51, 'Cama 1 plaza y media', 0, '2016-08-09 00:59:47'),
(52, 'Set para Sushi', 0, '2016-08-09 00:59:47'),
(53, 'Set Cocktail', 0, '2016-08-09 00:59:47'),
(54, 'Saca Jugos', 0, '2016-08-09 00:59:47'),
(55, 'Toallas de playa', 0, '2016-08-09 00:59:47'),
(56, 'Especieros', 0, '2016-08-09 00:59:47'),
(57, 'Coctelera', 0, '2016-08-09 00:59:47'),
(58, 'Estante', 0, '2016-08-09 00:59:47'),
(59, 'Librero', 0, '2016-08-09 00:59:47'),
(60, 'Perchero', 0, '2016-08-09 00:59:47'),
(63, 'Veladores', 0, '2016-08-09 01:23:26');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
