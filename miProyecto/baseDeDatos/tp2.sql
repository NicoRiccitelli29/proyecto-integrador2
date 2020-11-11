-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 28, 2020 at 02:56 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usuarios`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuarios_id` int(10) UNSIGNED NOT NULL,
  `usuarios_crearon_comentarios_id` int(10) UNSIGNED NOT NULL,
  `texto` text,
  `fecha_de_creacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuarios_id`, `usuarios_crearon_comentarios_id`, `texto`, `fecha_de_creacion`) VALUES
(1, 1, 1, 'que lindas zapatillas!', '2020-08-13 00:00:00'),
(2, 1, 1, 'muy buenas', '2020-09-12 00:00:00'),
(3, 1, 1, 'cancheras', '2020-09-12 00:00:00'),
(4, 1, 1, 'tremendas', '2020-09-12 00:00:00'),
(5, 2, 2, 'muy ricas!', '2020-08-12 00:00:00'),
(6, 2, 2, 'que pinta', '2020-08-12 00:00:00'),
(7, 2, 2, 'quierooo!!', '2020-08-12 00:00:00'),
(8, 3, 3, 'que buena foto!', '2020-09-02 00:00:00'),
(9, 3, 3, 'que rico!', '2020-09-02 00:00:00'),
(10, 3, 3, 'quieroooo!!', '2020-09-02 00:00:00'),
(11, 3, 3, 'pinta una coca!', '2020-09-02 00:00:00'),
(12, 4, 4, 'que buena foto!', '2020-06-10 00:00:00'),
(13, 4, 4, 'quiero ese celular', '2020-06-10 00:00:00'),
(14, 4, 4, 'tremendo celuuu', '2020-06-10 00:00:00'),
(15, 4, 4, 'que bueno que esta!!', '2020-06-10 00:00:00'),
(16, 5, 5, 'que rico cafe', '2020-08-15 00:00:00'),
(17, 5, 5, 'quiero uno!', '2020-08-15 00:00:00'),
(18, 5, 5, 'espectacular!', '2020-08-15 00:00:00'),
(19, 5, 5, 'cuando tomamos uno?!', '2020-08-15 00:00:00'),
(20, 1, 6, 'muy lindas', '2020-03-10 00:00:00'),
(21, 1, 6, 'quiero todas', '2020-03-10 00:00:00'),
(22, 1, 6, 'muy cancheras', '2020-03-10 00:00:00'),
(23, 1, 7, 'muy copadas las remeras', '2020-02-10 00:00:00'),
(24, 1, 7, 'me encantaron', '2020-02-10 00:00:00'),
(25, 1, 7, 'estan buenisimas', '2020-02-10 00:00:00'),
(26, 1, 7, 'perfectas', '2020-02-10 00:00:00'),
(27, 1, 8, 'me encantaron esos pantalones', '2020-09-10 00:00:00'),
(28, 1, 8, 'super cancheros', '2020-09-10 00:00:00'),
(29, 1, 8, 'tremendos', '2020-09-10 00:00:00'),
(30, 1, 8, 'los quieroooo', '2020-09-10 00:00:00'),
(31, 1, 9, 'me encantaron esas carteras', '2020-03-10 00:00:00'),
(32, 1, 9, 'quiero todas esas carteras', '2020-03-10 00:00:00'),
(33, 1, 9, 'son muy licas', '2020-03-10 00:00:00'),
(34, 1, 9, 'quiero tener todas', '2020-03-10 00:00:00'),
(35, 1, 10, 'espectaculasres esos sillones', '2020-03-10 00:00:00'),
(36, 1, 10, 'muy lindos', '2020-03-10 00:00:00'),
(37, 1, 10, 'quiero comprar todos', '2020-03-10 00:00:00'),
(38, 1, 10, 'espectaculares', '2020-03-10 00:00:00'),
(39, 1, 11, 'que lindas camperas', '2020-03-10 00:00:00'),
(40, 1, 11, 'cancheras', '2020-03-10 00:00:00'),
(41, 1, 11, 'espectaculares', '2020-03-10 00:00:00'),
(42, 1, 11, 'me encantan', '2020-03-10 00:00:00'),
(43, 1, 12, 'anillos divinos', '2020-03-10 00:00:00'),
(44, 1, 12, 'perfectos', '2020-03-10 00:00:00'),
(45, 1, 12, 'muy lindos', '2020-03-10 00:00:00'),
(46, 1, 12, 'amooo', '2020-03-10 00:00:00'),
(47, 1, 13, 'quiero esos caramelos', '2020-05-15 00:00:00'),
(48, 1, 13, 'donde los compraste?', '2020-05-15 00:00:00'),
(49, 1, 13, 'riquisimos!', '2020-05-15 00:00:00'),
(50, 1, 13, 'tremendosss', '2020-05-15 00:00:00'),
(51, 1, 14, 'que buenas zapatillas', '2020-08-13 00:00:00'),
(52, 1, 14, 'lindas', '2020-08-13 00:00:00'),
(53, 1, 14, 'cancheras', '2020-08-13 00:00:00'),
(54, 1, 14, 'divinass', '2020-08-13 00:00:00'),
(55, 2, 15, 'que lindas esas mesas', '2020-09-17 00:00:00'),
(56, 2, 15, 'cuanto te costo?', '2020-09-17 00:00:00'),
(57, 2, 15, 'divinasss', '2020-09-17 00:00:00'),
(58, 2, 15, 'amooo', '2020-09-17 00:00:00'),
(59, 2, 16, 'amo esos limones', '2020-06-10 00:00:00'),
(60, 2, 16, ':)', '2020-06-10 00:00:00'),
(61, 2, 16, 'tremendoo', '2020-06-10 00:00:00'),
(62, 2, 16, 'que ricoo', '2020-06-10 00:00:00'),
(63, 2, 17, 'amo esas limonadas', '2020-06-13 00:00:00'),
(64, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(65, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(66, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(67, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(68, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(69, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(70, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(71, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(72, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(73, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(74, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(75, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(76, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(77, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(78, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(79, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(80, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(81, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(82, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(83, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(84, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(85, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(86, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(87, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(88, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(89, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(90, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(91, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(92, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(93, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(94, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(95, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(96, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(97, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(98, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(99, 2, 17, 'riquisimoo', '2020-06-13 00:00:00'),
(100, 2, 17, 'amooo', '2020-06-13 00:00:00'),
(101, 2, 18, 'que chocolates son?', '2020-04-17 00:00:00'),
(102, 2, 18, 'que ricos', '2020-04-17 00:00:00'),
(103, 2, 18, 'buenisimoss', '2020-04-17 00:00:00'),
(104, 2, 18, 'tremendoss', '2020-04-17 00:00:00'),
(105, 2, 19, 'que rica torta', '2020-03-10 00:00:00'),
(106, 2, 19, 'muy rica', '2020-03-10 00:00:00'),
(107, 2, 19, 'espectacular', '2020-03-10 00:00:00'),
(108, 2, 19, 'amooo', '2020-03-10 00:00:00'),
(109, 2, 20, 'que linda roma', '2020-09-19 00:00:00'),
(110, 2, 20, 'muy  linda roma', '2020-09-19 00:00:00'),
(111, 2, 20, 'la extrano', '2020-09-19 00:00:00'),
(112, 2, 20, 'divina', '2020-09-19 00:00:00'),
(113, 2, 21, 'que lindos perros', '2020-07-10 00:00:00'),
(114, 2, 21, 'quiero uno', '2020-07-10 00:00:00'),
(115, 2, 21, 'los amoo', '2020-07-10 00:00:00'),
(116, 2, 21, 'divinoss', '2020-07-10 00:00:00'),
(117, 2, 22, 'que lindo color', '2020-09-10 00:00:00'),
(118, 2, 22, 'muy lindo', '2020-09-10 00:00:00'),
(119, 2, 22, 'divino', '2020-09-10 00:00:00'),
(120, 2, 22, 'clasico', '2020-09-10 00:00:00'),
(121, 2, 23, 'que lindas bikinisr', '2020-02-14 00:00:00'),
(122, 2, 23, 'muy cancheras', '2020-02-14 00:00:00'),
(123, 2, 23, 'divinas', '2020-02-14 00:00:00'),
(124, 2, 23, 'me encantan los colores', '2020-02-14 00:00:00'),
(125, 3, 24, 'que rico sushi', '2020-09-02 00:00:00'),
(126, 3, 24, 'cuantas piezas pediste?', '2020-09-02 00:00:00'),
(127, 3, 24, 'tienen buena pinta', '2020-09-02 00:00:00'),
(128, 3, 24, 'quiero', '2020-09-02 00:00:00'),
(129, 3, 25, 'que lindos vasos', '2020-06-03 00:00:00'),
(130, 3, 25, 'los amo quiero uno', '2020-06-03 00:00:00'),
(131, 3, 25, 'me encantaron', '2020-06-03 00:00:00'),
(132, 3, 25, 'muy lindos', '2020-06-03 00:00:00'),
(133, 3, 26, 'que ricas pizzas', '2020-08-10 00:00:00'),
(134, 3, 26, 'que buena pinta', '2020-08-10 00:00:00'),
(135, 3, 26, 'amo, que ricoo', '2020-08-10 00:00:00'),
(136, 3, 26, 'quiero probarrr', '2020-08-10 00:00:00'),
(137, 3, 27, 'que buenas tortas olii', '2020-05-10 00:00:00'),
(138, 3, 27, 'me encantaron olii', '2020-05-10 00:00:00'),
(139, 3, 27, 'quedaron espectaculares olii', '2020-05-10 00:00:00'),
(140, 3, 27, 'amo me encantaron olii', '2020-05-10 00:00:00'),
(141, 3, 28, 'que buenas fotos nicoo', '2020-01-10 00:00:00'),
(142, 3, 28, 'quiero ver mas fotos', '2020-01-10 00:00:00'),
(143, 3, 28, 'me encantarin las fotos', '2020-01-10 00:00:00'),
(144, 3, 28, 'subiii mas!!', '2020-01-10 00:00:00'),
(145, 3, 29, 'que ricas pastas', '2020-07-19 00:00:00'),
(146, 3, 29, 'que buena pinta', '2020-07-19 00:00:00'),
(147, 3, 29, 'amo las pastas', '2020-07-19 00:00:00'),
(148, 3, 29, 'quiero probarlas', '2020-07-19 00:00:00'),
(149, 3, 30, 'que lindas fotos marina', '2020-03-19 00:00:00'),
(150, 3, 30, 'que buena pinta tiene esa comida', '2020-03-19 00:00:00'),
(151, 3, 30, 'me encantaron las fotos', '2020-03-19 00:00:00'),
(152, 3, 30, 'quiero ver mas fotos', '2020-03-19 00:00:00'),
(153, 3, 31, 'que ricas medialunas', '2020-04-17 00:00:00'),
(154, 3, 31, 'como amo las medialunas', '2020-04-17 00:00:00'),
(155, 3, 31, 'tremdnasss', '2020-04-17 00:00:00'),
(156, 3, 31, 'tienen una pinta', '2020-04-17 00:00:00'),
(157, 1, 32, 'que lindas fotos', '2020-08-03 00:00:00'),
(158, 1, 32, 'que lindas fotos en madrid', '2020-08-03 00:00:00'),
(159, 1, 32, 'amo madrid', '2020-08-03 00:00:00'),
(160, 4, 33, 'que rico ese salmon', '2020-08-19 00:00:00'),
(161, 4, 33, 'muy rico', '2020-08-19 00:00:00'),
(162, 4, 33, 'tiene una pinta', '2020-08-19 00:00:00'),
(163, 4, 33, 'amo', '2020-08-19 00:00:00'),
(164, 4, 34, 'que rico!', '2020-03-10 00:00:00'),
(165, 4, 34, 'tremendas empanadas', '2020-03-10 00:00:00'),
(166, 4, 34, 'quierooo!!', '2020-03-10 00:00:00'),
(167, 4, 34, 'tienen muy buena pinta', '2020-03-10 00:00:00'),
(168, 4, 35, 'que lindas pulseras!', '2020-03-10 00:00:00'),
(169, 4, 35, 'las amooo', '2020-03-10 00:00:00'),
(170, 4, 35, 'cancheras', '2020-03-10 00:00:00'),
(171, 4, 35, 'me encantaron', '2020-03-10 00:00:00'),
(172, 4, 36, 'tremendo ese sushi', '2020-09-10 00:00:00'),
(173, 4, 36, 'quiero probar', '2020-09-10 00:00:00'),
(174, 4, 36, 'me encanto', '2020-09-10 00:00:00'),
(175, 4, 36, 'muy rico', '2020-09-10 00:00:00'),
(176, 4, 37, 'que buena pinta tiene la sopa', '2020-02-10 00:00:00'),
(177, 4, 37, 'riquisimaaa', '2020-02-10 00:00:00'),
(178, 4, 37, 'me encantooo', '2020-02-10 00:00:00'),
(179, 4, 37, 'quiero probar esas sopas', '2020-02-10 00:00:00'),
(180, 4, 38, 'que rico un jugo de naranja', '2020-06-17 00:00:00'),
(181, 4, 38, 'riquisimooo', '2020-06-17 00:00:00'),
(182, 4, 38, 'me encanto la foto', '2020-06-17 00:00:00'),
(183, 4, 38, 'amo las naranjas', '2020-06-17 00:00:00'),
(184, 4, 38, 'amo las naranjas', '2020-06-17 00:00:00'),
(185, 4, 39, 'que lindo coco', '2020-07-10 00:00:00'),
(186, 4, 39, 'lo quiero conocer', '2020-07-10 00:00:00'),
(187, 4, 39, 'muy tierno', '2020-07-10 00:00:00'),
(188, 4, 40, 'que linda milii', '2020-02-15 00:00:00'),
(189, 4, 40, 'muy lindas fotoos milii', '2020-02-15 00:00:00'),
(190, 4, 40, 'divinas milii', '2020-02-15 00:00:00'),
(191, 4, 40, 'muy cancheras milii', '2020-02-15 00:00:00'),
(192, 4, 41, 'que lindo barcelona', '2020-02-03 00:00:00'),
(193, 4, 41, 'amo barcelona', '2020-02-03 00:00:00'),
(194, 4, 41, 'tremendo disfrutaaa', '2020-02-03 00:00:00'),
(195, 4, 41, 'que lindo  todooo', '2020-02-03 00:00:00'),
(196, 5, 42, 'amoo mcdonals', '2020-06-14 00:00:00'),
(197, 5, 42, 'tremendooo mcdonals', '2020-06-14 00:00:00'),
(198, 5, 42, 'quiero un combo mcdonals', '2020-06-14 00:00:00'),
(199, 5, 43, 'que tiernass', '2020-09-10 00:00:00'),
(200, 5, 43, 'muy lindas', '2020-09-10 00:00:00'),
(201, 5, 43, 'que buena foto', '2020-09-10 00:00:00'),
(202, 5, 43, 'las quiero', '2020-09-10 00:00:00'),
(203, 5, 44, 'que buena compu', '2020-08-19 00:00:00'),
(204, 5, 44, 'tremenda compu', '2020-08-19 00:00:00'),
(205, 5, 44, 'amo esa compu', '2020-08-19 00:00:00'),
(206, 5, 44, 'la quierooo', '2020-08-19 00:00:00'),
(207, 5, 45, 'que buenas remeras', '2020-05-10 00:00:00'),
(208, 5, 45, 'que cancheras remeras', '2020-05-10 00:00:00'),
(209, 5, 45, 'donde la compraste?', '2020-05-10 00:00:00'),
(210, 5, 45, 'las quieroo', '2020-05-10 00:00:00'),
(211, 5, 46, 'que ricos chocolates', '2020-06-03 00:00:00'),
(212, 5, 46, 'tremendoo', '2020-06-03 00:00:00'),
(213, 5, 46, 'los quierooo', '2020-06-03 00:00:00'),
(214, 5, 46, 'amoooo', '2020-06-03 00:00:00'),
(215, 5, 47, 'que rica mirinda', '2020-09-04 00:00:00'),
(216, 5, 47, 'tremenda la mirinda', '2020-09-04 00:00:00'),
(217, 5, 47, 'muy rica gaseosa', '2020-09-04 00:00:00'),
(218, 5, 47, 'me encanta!!', '2020-09-04 00:00:00'),
(219, 5, 48, 'que lindo italia', '2020-01-10 00:00:00'),
(220, 5, 48, 'amo ese lugar', '2020-01-10 00:00:00'),
(221, 5, 48, 'que divino esta para ir', '2020-01-10 00:00:00'),
(222, 5, 48, 'que divino esta para ir', '2020-01-10 00:00:00'),
(223, 5, 49, 'que lindo el campus', '2020-06-19 00:00:00'),
(224, 5, 49, 'amo el campus', '2020-06-19 00:00:00'),
(225, 5, 49, 'tremendo el campus', '2020-06-19 00:00:00'),
(226, 5, 49, 'quiero volver', '2020-06-19 00:00:00'),
(227, 5, 50, 'divinas las pulseras', '2020-08-14 00:00:00'),
(228, 5, 50, 'cancheras', '2020-08-14 00:00:00'),
(229, 5, 50, 'amooo', '2020-08-14 00:00:00'),
(230, 5, 50, 'quiero unaa', '2020-08-14 00:00:00'),
(231, 5, 51, 'quiero esos maquillajes', '2020-04-07 00:00:00'),
(232, 5, 51, 'me encantaron esos maquillajes', '2020-04-07 00:00:00'),
(233, 5, 51, 'de que marca son?', '2020-04-07 00:00:00'),
(234, 5, 51, 'los amooo', '2020-04-07 00:00:00'),
(235, 5, 51, 'los amooo', '2020-04-07 00:00:00'),
(236, 5, 51, 'los amooo', '2020-04-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuarios_id` int(10) UNSIGNED NOT NULL,
  `url_imagen` varchar(40) NOT NULL,
  `texto` text,
  `fecha_de_creacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `usuarios_id`, `url_imagen`, `texto`, `fecha_de_creacion`) VALUES
(1, 1, 'mandarinas.jpng', 'hola estas mandarinas estan ricas!', '2020-07-09 00:00:00'),
(2, 2, 'milanesas.jpng', 'comiendo milanesas!', '2020-08-12 00:00:00'),
(3, 3, 'cocacola.jpng', 'tomando cocacola', '2020-09-02 00:00:00'),
(4, 4, 'celular.jpng', 'celular nuevo', '2020-06-10 00:00:00'),
(5, 1, 'pulseras.jpng', 'nuevas pulseras', '2020-03-10 00:00:00'),
(6, 1, 'remeras.jpng', 'nuevas remeras', '2020-02-10 00:00:00'),
(7, 1, 'pantalones.jpng', 'nuevas pantalones', '2020-09-10 00:00:00'),
(8, 1, 'carteras.jpng', 'nuevas carteras', '2020-03-10 00:00:00'),
(9, 1, 'sillones.jpng', 'nuevas sillones a la venta!', '2020-03-10 00:00:00'),
(10, 1, 'camperas.jpng', 'nuevas camperas a la venta', '2020-03-10 00:00:00'),
(11, 1, 'anillos.jpng', 'entraron nuevos anillos!', '2020-03-10 00:00:00'),
(12, 1, 'caramelos.jpng', 'nuevas caramelos de distintos sabores!', '2020-05-15 00:00:00'),
(13, 1, 'zapatillas.jpng', 'zapatillas cancheras a la venta!', '2020-08-13 00:00:00'),
(14, 2, 'mesas.jpng', 'mesas marrones!', '2020-09-17 00:00:00'),
(15, 2, 'limones.jpng', 'limones creciendo', '2020-06-10 00:00:00'),
(16, 2, 'limonada.jpng', 'limonada con menta', '2020-06-13 00:00:00'),
(17, 2, 'chocolates.jpng', 'chocolates caceros', '2020-04-17 00:00:00'),
(18, 2, 'torta.jpng', 'cumpleaos de ana', '2020-03-10 00:00:00'),
(19, 2, 'roma.jpng', 'roma con sus juguetes!', '2020-09-19 00:00:00'),
(20, 2, 'perros.jpng', 'perros en adopcion!', '2020-07-10 00:00:00'),
(21, 2, 'rosa.jpng', 'nuevas flores floreciendo!', '2020-09-10 00:00:00'),
(22, 2, 'bikinis.jpng', 'bikinis a la venta', '2020-02-14 00:00:00'),
(23, 3, 'suhsi.jpng', 'nuevas piezas de sushi', '2020-09-02 00:00:00'),
(24, 3, 'vasos.jpng', 'vasos de vidirio $50', '2020-06-03 00:00:00'),
(25, 3, 'pizzas.jpng', 'pizzas caceras', '2020-08-10 00:00:00'),
(26, 3, 'oli.jpng', 'tortas ricas cocinadas por oli', '2020-05-10 00:00:00'),
(27, 3, 'nico.jpng', 'vijando por uruguay', '2020-01-10 00:00:00'),
(28, 3, '.pastas', 'martes de pastas', '2020-07-19 00:00:00'),
(29, 3, 'marina.jpng', 'cocinando con mariana', '2020-03-19 00:00:00'),
(30, 3, 'medialunas.jpng', 'medialunas calentitas', '2020-04-17 00:00:00'),
(31, 1, 'madrid.jpng', 'en madrid!!', '2020-08-03 00:00:00'),
(32, 3, 'alfajores.jpng', 'alfajores rellenos', '2020-04-18 00:00:00'),
(33, 4, 'salmon.jpng', 'salmonn', '2020-08-19 00:00:00'),
(34, 4, 'empanadas.jpng', NULL, '2020-03-10 00:00:00'),
(35, 4, 'pulseras.jpng', NULL, '2020-03-10 00:00:00'),
(36, 4, 'suhsi.jpng', 'el sushi mas rico de la argentina', '2020-09-10 00:00:00'),
(37, 4, 'sopa.jpng', 'sopa de verduras', '2020-02-10 00:00:00'),
(38, 4, 'naranja.jpng', NULL, '2020-06-17 00:00:00'),
(39, 4, 'coco.jpng', 'nuevo perro coco!', '2020-07-10 00:00:00'),
(40, 4, 'milagros.jpng', 'de viaje con mili!', '2020-02-15 00:00:00'),
(41, 4, 'barcelona.jpng', 'en barcelona!', '2020-02-03 00:00:00'),
(42, 5, 'mcdonals.jpng', 'comiendo en mc', '2020-06-14 00:00:00'),
(43, 5, 'martina.jpng', 'con la mas buena martu!', '2020-09-10 00:00:00'),
(44, 5, 'compu.jpng', 'jugando con la compu', '2020-08-19 00:00:00'),
(45, 5, 'remeras.jpng', NULL, '2020-05-10 00:00:00'),
(46, 5, 'chocolatada.jpng', 'una rica chocolatada', '2020-06-03 00:00:00'),
(47, 5, 'mirinda.jpng', NULL, '2020-09-04 00:00:00'),
(48, 5, 'italia.jpng', 'paseando por italia', '2020-01-10 00:00:00'),
(49, 5, 'campus.jpng', 'en el campus de la universidad', '2020-06-19 00:00:00'),
(50, 5, 'pulsera.jpng', NULL, '2020-08-14 00:00:00'),
(51, 5, 'maquillaje.jpng', NULL, '2020-04-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `password`, `telefono`, `fecha_de_nacimiento`) VALUES
(1, 'Mirian', 'Martinez', 'mirianmartinez@live.com', 'mirian123', '22354678', '1998-02-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`),
  ADD KEY `usuarios_crearon_comentarios_id` (`usuarios_crearon_comentarios_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_id` (`usuarios_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `comentarios` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`usuarios_crearon_comentarios_id`) REFERENCES `comentarios` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`usuarios_id`) REFERENCES `post` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
