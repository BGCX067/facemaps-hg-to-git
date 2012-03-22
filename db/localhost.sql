-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 22-03-2012 a las 04:52:15
-- Versión del servidor: 5.1.57
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `usc_facemaps`
--
CREATE DATABASE `usc_facemaps` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `usc_facemaps`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitios`
--

CREATE TABLE IF NOT EXISTS `sitios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `nickfacebook` varchar(45) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `categoria` varchar(45) NOT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `paginaweb` varchar(45) DEFAULT NULL,
  `latitud` double NOT NULL,
  `longitud` double NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nickfacebook_UNIQUE` (`nickfacebook`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `sitios`
--

INSERT INTO `sitios` (`id`, `nombre`, `nickfacebook`, `imagen`, `categoria`, `direccion`, `telefono`, `paginaweb`, `latitud`, `longitud`, `time`) VALUES
(1, 'Unicentro Cali', 'unicentrocali', 'http://profile.ak.fbcdn.net/hprofile-ak-snc4/174807_109086609175071_719133502_s.jpg', 'centro-comercial', 'Cra 100 # 5 - 169', 'PBX: 339 66 26', 'http://www.unicentro.com', 3.36604, -76.52771, 0),
(7, 'Universidad del Valle', 'universidaddelvalle', 'http://profile.ak.fbcdn.net/hprofile-ak-snc4/211163_41595314234_727757489_s.jpg', 'centro-de-estudio', 'Calle 13 No. 100 - 00', 'PBX +57 2 3212100 A.A. 25360', 'http://www.univalle.edu.co/', 3.374755393, -76.5348411172, 1332018713),
(14, 'Teatro Municipal de Cali', '171488349573539', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'espacios-culturales', '', '', '', 3.40905859285, -76.5473882054, 1332191597),
(9, 'La Loma De La Cruz', '241987649166977', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'otras-empresas', '', '', '', 3.442983566, -76.537427862, 1332190464),
(10, 'Cosmocentro', '153480014663899', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'centro-comercial', '', '', 'http://www.centrocomercialcosmocentro.com/', 3.41442832453, -76.54726088, 1332190632),
(11, 'Pontificia Universidad Javeriana', '168937353129240', '', 'centro-de-estudio', 'Calle 18 No. 118-250', '+5723218200', 'http://www.javerianacali.edu.co', 3.34800857967, -76.5320724047, 1332190669),
(12, 'ZoolÃ³gico De Cali', '182039081823411', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'espacios-culturales', '', '', 'http://www.zoologicodecali.com.co', 3.44812101341, -76.5572357559, 1332190875),
(13, 'Teatro al Aire Libre Los Cristales', '262326233784120', '', 'espacios-culturales', '', '', 'http://www.cali.gov.co/publicaciones.php?id=1', 3.44778305556, -76.5488068519, 1332190943),
(15, 'Kukaramakara', '170146619688037', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'bar', '', '', 'http://kukaramakara.com/', 3.46962087419, -76.5251618745, 1332191723),
(20, 'Centro Comercial RÃ­o Cauca', '239751586085426', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'centro-comercial', '', '', '', 3.44104580645, -76.4795678226, 1332192332),
(22, 'Bourbon St', 'bourbonstcali', 'http://profile.ak.fbcdn.net/hprofile-ak-snc4/158039_147525921981683_20019382_s.jpg', 'bar', '', '', 'http://www.bourbonstreetcali.com', 3.46070763854, -76.5328660544, 1332192598),
(23, 'Intercontinental Cali - Un Hotel Estelar', '172330516125704', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'hotel', 'Av. Colombia # 2-72', '', '', 3.47408, -76.48326, 1332193314),
(24, 'Hotel Torre de Cali', '223510144330211', 'http://profile.ak.fbcdn.net/static-ak/rsrc.php/v1/yN/r/cDKJtvtlYv5.png', 'hotel', 'Av. Las Americas No. 18N-26', '(2) 6674949', '', 3.45862005695, -76.528799796, 1332194043),
(25, 'Urbano bar restaurante', 'UrbanoBarRestaurante', 'http://profile.ak.fbcdn.net/hprofile-ak-snc4/174568_257804414245316_1706319923_s.jpg', 'restaurante', '76001000', '3113089938', 'https://www.facebook.com/people/Urbano-Bar-Re', 3.39770725507, -76.5394345547, 1332220799);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
