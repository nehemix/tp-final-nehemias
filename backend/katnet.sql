-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 29, 2022 at 05:09 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `katnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Así serán los nuevos iPhone 14: todos los detalles', 'Se filtraron algunas de las funciones que tendrán de los nuevos modelos que Apple lanzará en los próximos meses.', 'Apple lanza un nuevo modelo de celulares y muchos usuarios de iOS no pueden esperar para conocerlo. Te contamos cómo será y qué funciones tendrá este super teléfono. Mientras el iPhone 13 aún es una novedad, el iPhone 14 comienza a generar grandes expectativas en el mercado tecnológico.', ''),
(2, 'Google presenta nuevo lenguaje de programación para reemplazar a C++: Carbon', 'Google presentó hace unas horas Carbon, el último lenguaje de programación creado en el seno de Google (aunque también con desarrolladores externos), y que aspira a ser el sucesor de C++.', 'Se trata de uno de los lenguajes más recurrentes por parte de los desarrolladores, sobre todo para las capas más profundas del sistema operativo Android.', NULL),
(3, 'El hackeo a Solana podría dar lugar a demandas legales', 'Solana podría enfrentar acciones legales tras el hackeo que supuso el vaciado de carteras de 8.000 clientes.', 'Solana, desarrolladores de software y proveedores de servicios externos podrían enfrentar acciones legales tras el hackeo que vació las carteras de 8.000 clientes, según Rodrigo Di Paula Ambrissi en Cointelegraph.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'nehemias', 'aafdc23870ecbcd3d557b6423a8982134e17927e'),
(2, 'ludmila', 'f27d2ea0cd241fd3c17b3d7de5afc7611bdb76a9');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
