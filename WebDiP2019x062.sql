-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 23, 2020 at 08:45 AM
-- Server version: 5.5.62-0+deb8u1
-- PHP Version: 7.2.25-1+0~20191128.32+debian8~1.gbp108445

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebDiP2019x062`
--

-- --------------------------------------------------------

--
-- Table structure for table `Artikl`
--

CREATE TABLE `Artikl` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `opis` varchar(45) NOT NULL,
  `cijena` decimal(10,0) NOT NULL,
  `jed_mjera` varchar(45) NOT NULL,
  `zaliha` int(11) NOT NULL,
  `trgovina_id` int(11) DEFAULT NULL,
  `kategorija` int(11) DEFAULT NULL,
  `img_url` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Artikl`
--

INSERT INTO `Artikl` (`id`, `naziv`, `opis`, `cijena`, `jed_mjera`, `zaliha`, `trgovina_id`, `kategorija`, `img_url`) VALUES
(1, 'Adidas majica', 'Sportska majica za muške', '200', '1', 60, 1, 2, '../img/joma.jpg'),
(2, 'Adidas hlače', 'Sportske hlače za muške', '200', '1', 10, 1, 2, '.png'),
(3, 'Adidas tenisice', 'Sportske tenisice za muške', '200', '1', 50, 1, 2, '.png'),
(4, 'Adidas čarape', 'Sportske čarape za muške', '200', '1', 0, 1, 2, '.png'),
(5, 'Adidas trenirka', 'Sportska trenirka za muške', '200', '1', 50, 1, 2, '.png'),
(6, 'Adidas znojnik', 'Sportski znojnik za muške', '200', '1', 10, 1, 2, '.png'),
(7, 'Adidas kapa', 'Sportska kapa za muške', '200', '1', 50, 1, 2, '.png'),
(8, 'Adidas šilterica', 'Sportska šilterica za muške', '200', '1', 50, 1, 2, '.png'),
(9, 'Adidas flaša', 'Sportska flaša za muške', '200', '1', 10, 1, 2, '.png'),
(10, 'Adidas jakna', 'Sportska jakna za muške', '200', '1', 50, 1, 2, '.png'),
(11, 'Kopačke', 'Kopačke za nogomet', '400', '', 4, NULL, 11, NULL),
(12, 'Kopačke', 'Kopačke za nogomet', '400', '', 3, NULL, 11, NULL),
(13, 'Kopačke', 'Kopačke za nogomet', '400', '', 3, NULL, 11, NULL),
(14, 'Hugo Boss', 'Sportske Majice', '400', '', 7, NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Dnevnik`
--

CREATE TABLE `Dnevnik` (
  `id` int(11) NOT NULL,
  `korisnicko` varchar(255) NOT NULL,
  `vrijeme` datetime NOT NULL,
  `akcija` varchar(255) NOT NULL,
  `dataRow` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Dnevnik`
--

INSERT INTO `Dnevnik` (`id`, `korisnicko`, `vrijeme`, `akcija`, `dataRow`) VALUES
(1, 'tkeskic', '2020-06-20 21:06:00', 'Prijava u sustav', 'Nista'),
(26, 'tkeskic', '2020-06-20 21:42:00', 'Upravljanje korisnicima', 'Nista'),
(47, 'tkeskic', '0000-00-00 00:00:00', 'Trgovine -> Sve trgovine', 'Nista'),
(48, 'tkeskic', '0000-00-00 00:00:00', 'Kategorije -> Sve kategorije', 'Nista'),
(49, 'tkeskic', '0000-00-00 00:00:00', 'Kategorije -> Sve kategorije', 'Nista'),
(50, 'tkeskic', '0000-00-00 00:00:00', 'Trgovine -> Sve trgovine', 'Nista'),
(51, 'tkeskic', '0000-00-00 00:00:00', 'Kategorije -> Sve kategorije', 'Nista'),
(52, 'tkeskic', '0000-00-00 00:00:00', 'Kategorije -> Sve kategorije', 'Nista'),
(53, 'tkeskic', '0000-00-00 00:00:00', 'Trgovine -> Sve trgovine', 'Nista'),
(54, '93.136.114.213', '0000-00-00 00:00:00', 'Trgovine -> Sve trgovine', 'Nista'),
(55, '93.136.114.213', '0000-00-00 00:00:00', 'Kategorije -> Sve kategorije', 'Nista'),
(56, 'tkeskic', '0000-00-00 00:00:00', 'Prijava u sustav', 'Nista'),
(57, 'tkeskic', '0000-00-00 00:00:00', 'Upravljanje korisnicima', 'Nista'),
(58, 'tkeskic', '2020-06-21 10:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(59, 'tkeskic', '2020-06-21 10:06:13', 'Trgovine -> Sve trgovine', 'Nista'),
(60, 'tkeskic', '2020-06-21 10:06:13', 'Kategorije -> Sve kategorije', 'Nista'),
(61, 'tkeskic', '2020-06-21 11:06:37', 'Upravljanje korisnicima', 'Nista'),
(62, 'tkeskic', '2020-06-21 11:06:39', 'Kategorije -> Sve kategorije', 'Nista'),
(63, 'tkeskic', '2020-06-21 11:06:40', 'Trgovine -> Sve trgovine', 'Nista'),
(64, 'tkeskic', '2020-06-21 11:06:35', 'Upravljanje korisnicima', 'Nista'),
(65, 'tkeskic', '2020-06-21 11:06:37', 'Trgovine -> Sve trgovine', 'Nista'),
(66, 'tkeskic', '2020-06-21 11:06:40', 'Kategorije -> Sve kategorije', 'Nista'),
(67, 'tkeskic', '2020-06-21 11:06:41', 'Trgovine -> Sve trgovine', 'Nista'),
(68, 'tkeskic', '2020-06-21 11:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(69, 'tkeskic', '2020-06-21 11:06:45', 'Odjava iz sustava', 'Nista'),
(70, 'tkeskic1', '2020-06-21 11:06:51', 'Prijava u sustav', 'Nista'),
(71, 'tkeskic1', '2020-06-21 11:06:54', 'Kategorije -> Sve kategorije', 'Nista'),
(72, 'tkeskic1', '2020-06-21 11:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(73, 'tkeskic1', '2020-06-21 11:06:57', 'Kategorije -> Sve kategorije', 'Nista'),
(74, 'tkeskic1', '2020-06-21 11:06:58', 'Trgovine -> Sve trgovine', 'Nista'),
(75, 'tkeskic1', '2020-06-21 11:06:11', 'Kategorije -> Sve kategorije', 'Nista'),
(76, 'tkeskic1', '2020-06-21 11:06:13', 'Trgovine -> Sve trgovine', 'Nista'),
(77, 'tkeskic1', '2020-06-21 11:06:14', 'Kategorije -> Sve kategorije', 'Nista'),
(78, 'tkeskic1', '2020-06-21 11:06:20', 'Odjava iz sustava', 'Nista'),
(79, 'ihribljan', '2020-06-21 11:06:27', 'Prijava u sustav', 'Nista'),
(80, 'ihribljan', '2020-06-21 11:06:34', 'Kategorije -> Sve kategorije', 'Nista'),
(81, 'ihribljan', '2020-06-21 11:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(82, 'ihribljan', '2020-06-21 11:06:38', 'Kategorije -> Sve kategorije', 'Nista'),
(83, 'ihribljan', '2020-06-21 11:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(84, 'ihribljan', '2020-06-21 11:06:38', 'Kategorije -> Sve kategorije', 'Nista'),
(85, 'ihribljan', '2020-06-21 11:06:39', 'Kategorije -> Sve kategorije', 'Nista'),
(86, 'ihribljan', '2020-06-21 11:06:45', 'Kategorije -> Sve kategorije', 'Nista'),
(87, 'ihribljan', '2020-06-21 11:06:47', 'Kategorije -> Sve kategorije', 'Nista'),
(88, 'ihribljan', '2020-06-21 11:06:51', 'Kategorije -> Sve kategorije', 'Nista'),
(89, 'ihribljan', '2020-06-21 11:06:52', 'Trgovine -> Sve trgovine', 'Nista'),
(90, 'ihribljan', '2020-06-21 11:06:55', 'Kategorije -> Sve kategorije', 'Nista'),
(91, 'ihribljan', '2020-06-21 11:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(92, 'ihribljan', '2020-06-21 11:06:56', 'Kategorije -> Sve kategorije', 'Nista'),
(93, 'ihribljan', '2020-06-21 11:06:58', 'Kategorije -> Sve kategorije', 'Nista'),
(94, 'ihribljan', '2020-06-21 11:06:59', 'Kategorije -> Sve kategorije', 'Nista'),
(95, 'ihribljan', '2020-06-21 11:06:04', 'Kategorije -> Sve kategorije', 'Nista'),
(96, 'ihribljan', '2020-06-21 11:06:06', 'Odjava iz sustava', 'Nista'),
(97, 'tkeskic', '2020-06-21 11:06:11', 'Prijava u sustav', 'Nista'),
(98, 'tkeskic', '2020-06-21 11:06:26', 'Kategorije -> Sve kategorije', 'Nista'),
(99, 'tkeskic', '2020-06-21 11:06:50', 'Promjena konfiguracije', 'Nista'),
(100, 'tkeskic', '2020-06-21 11:06:54', 'Promjena konfiguracije', 'Nista'),
(101, 'tkeskic', '2020-06-21 11:06:59', 'Promjena konfiguracije', 'Nista'),
(102, 'tkeskic', '2020-06-21 11:06:05', 'Promjena konfiguracije', 'Nista'),
(103, 'tkeskic', '2020-06-21 11:06:42', 'Promjena konfiguracije', 'Nista'),
(104, 'tkeskic', '2020-06-21 11:06:44', 'Trgovine -> Sve trgovine', 'Nista'),
(105, 'tkeskic', '2020-06-21 11:06:45', 'Kategorije -> Sve kategorije', 'Nista'),
(106, 'tkeskic', '2020-06-21 11:06:47', 'Promjena konfiguracije', 'Nista'),
(107, 'tkeskic', '2020-06-21 11:06:20', 'Promjena konfiguracije', 'Nista'),
(108, 'tkeskic', '2020-06-21 11:06:43', 'Promjena konfiguracije', 'Nista'),
(109, 'tkeskic', '2020-06-21 11:06:45', 'Promjena konfiguracije', 'Nista'),
(110, 'tkeskic', '2020-06-21 11:06:11', 'Promjena konfiguracije', 'Nista'),
(111, 'tkeskic', '2020-06-21 11:06:14', 'Promjena konfiguracije', 'Nista'),
(112, 'tkeskic', '2020-06-21 11:06:16', 'Promjena konfiguracije', 'Nista'),
(113, 'tkeskic', '2020-06-21 11:06:06', 'Promjena konfiguracije', 'Nista'),
(114, 'tkeskic', '2020-06-21 11:06:08', 'Promjena konfiguracije', 'Nista'),
(115, 'tkeskic', '2020-06-21 11:06:10', 'Promjena konfiguracije', 'Nista'),
(116, 'tkeskic', '2020-06-21 11:06:15', 'Promjena konfiguracije', 'Nista'),
(117, 'tkeskic', '2020-06-21 11:06:18', 'Promjena konfiguracije', 'Nista'),
(118, 'tkeskic', '2020-06-21 11:06:20', 'Promjena konfiguracije', 'Nista'),
(119, 'tkeskic', '2020-06-21 11:06:22', 'Promjena konfiguracije', 'Nista'),
(120, 'tkeskic', '2020-06-21 11:06:24', 'Promjena konfiguracije', 'Nista'),
(121, 'tkeskic', '2020-06-21 11:06:33', 'Promjena konfiguracije', 'Nista'),
(122, 'tkeskic', '2020-06-21 11:06:17', 'Promjena konfiguracije', 'Nista'),
(123, 'tkeskic', '2020-06-21 11:06:19', 'Promjena konfiguracije', 'Nista'),
(124, 'tkeskic', '2020-06-21 11:06:50', 'Kategorije -> Sve kategorije', 'Nista'),
(125, 'tkeskic', '2020-06-21 11:06:53', 'Promjena konfiguracije', 'Nista'),
(126, 'tkeskic', '2020-06-21 11:06:04', 'Promjena konfiguracije', 'Nista'),
(127, 'tkeskic', '2020-06-21 12:06:20', 'Kategorije -> Sve kategorije', 'Nista'),
(128, 'tkeskic', '2020-06-21 12:06:21', 'Kategorije -> Sve kategorije', 'Nista'),
(129, 'tkeskic', '2020-06-21 12:06:25', 'Promjena konfiguracije', 'Nista'),
(130, 'tkeskic', '2020-06-21 12:06:36', 'Promjena konfiguracije', 'Nista'),
(131, 'tkeskic', '2020-06-21 12:06:47', 'Kategorije -> Sve kategorije', 'Nista'),
(132, 'tkeskic', '2020-06-21 12:06:48', 'Trgovine -> Sve trgovine', 'Nista'),
(133, 'tkeskic', '2020-06-21 12:06:51', 'Upravljanje korisnicima', 'Nista'),
(134, 'tkeskic', '2020-06-21 12:06:54', 'Kategorije -> Sve kategorije', 'Nista'),
(135, 'tkeskic', '2020-06-21 12:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(136, 'tkeskic', '2020-06-21 12:06:55', 'Kategorije -> Sve kategorije', 'Nista'),
(137, 'tkeskic', '2020-06-21 12:06:37', 'Promjena konfiguracije', 'Nista'),
(138, 'tkeskic', '2020-06-21 12:06:43', 'Promjena konfiguracije', 'Nista'),
(139, 'tkeskic', '2020-06-21 12:06:55', 'Promjena konfiguracije', 'Nista'),
(140, 'tkeskic', '2020-06-21 12:06:08', 'Promjena konfiguracije', 'Nista'),
(141, 'tkeskic', '2020-06-21 12:06:27', 'Promjena konfiguracije', 'Nista'),
(142, 'tkeskic', '2020-06-21 12:06:36', 'Promjena konfiguracije', 'Nista'),
(143, 'tkeskic', '2020-06-21 12:06:38', 'Kategorije -> Sve kategorije', 'Nista'),
(144, 'tkeskic', '2020-06-21 12:06:46', 'Promjena konfiguracije', 'Nista'),
(145, 'tkeskic', '2020-06-21 12:06:50', 'Upravljanje korisnicima', 'Nista'),
(146, 'tkeskic', '2020-06-21 12:06:52', 'Kategorije -> Sve kategorije', 'Nista'),
(147, 'tkeskic', '2020-06-21 12:06:52', 'Trgovine -> Sve trgovine', 'Nista'),
(148, 'tkeskic', '2020-06-21 12:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(149, 'tkeskic', '2020-06-21 12:06:54', 'Kategorije -> Sve kategorije', 'Nista'),
(150, 'tkeskic', '2020-06-21 12:06:56', 'Upravljanje korisnicima', 'Nista'),
(151, 'tkeskic', '2020-06-21 12:06:57', 'Upravljanje korisnicima', 'Nista'),
(152, 'tkeskic', '2020-06-21 12:06:59', 'Kategorije -> Sve kategorije', 'Nista'),
(153, 'tkeskic', '2020-06-21 12:06:00', 'Trgovine -> Sve trgovine', 'Nista'),
(154, 'tkeskic', '2020-06-21 12:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(155, 'tkeskic', '2020-06-21 12:06:48', 'Kategorije -> Sve kategorije', 'Nista'),
(156, 'tkeskic', '2020-06-21 12:06:49', 'Upravljanje korisnicima', 'Nista'),
(157, 'tkeskic', '2020-06-21 12:06:06', 'Upravljanje korisnicima', 'Nista'),
(158, 'tkeskic', '2020-06-21 12:06:15', 'Trgovine -> Sve trgovine', 'Nista'),
(159, '93.136.114.213', '2020-06-21 23:06:59', 'Kategorije -> Sve kategorije', 'Nista'),
(160, '93.136.114.213', '2020-06-21 23:06:00', 'Trgovine -> Sve trgovine', 'Nista'),
(161, '93.136.89.34', '2020-06-22 01:06:56', 'Kategorije -> Sve kategorije', 'Nista'),
(162, '93.136.89.34', '2020-06-22 01:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(163, 'ihribljan', '2020-06-22 01:06:39', 'Prijava u sustav', 'Nista'),
(164, 'ihribljan', '2020-06-22 01:06:41', 'Kategorije -> Sve kategorije', 'Nista'),
(165, 'ihribljan', '2020-06-22 01:06:43', 'Kategorije -> Sve kategorije', 'Nista'),
(166, 'ihribljan', '2020-06-22 02:06:02', 'Kategorije -> Sve kategorije', 'Nista'),
(167, 'ihribljan', '2020-06-22 02:06:06', 'Kategorije -> Sve kategorije', 'Nista'),
(168, 'ihribljan', '2020-06-22 02:06:11', 'Odjava iz sustava', 'Nista'),
(169, 'ihribljan', '2020-06-22 02:06:15', 'Prijava u sustav', 'Nista'),
(170, 'ihribljan', '2020-06-22 02:06:19', 'Kategorije -> Sve kategorije', 'Nista'),
(171, 'ihribljan', '2020-06-22 02:06:26', 'Trgovine -> Sve trgovine', 'Nista'),
(172, 'ihribljan', '2020-06-22 02:06:30', 'Kategorije -> Sve kategorije', 'Nista'),
(173, 'ihribljan', '2020-06-22 02:06:58', 'Trgovine -> Sve trgovine', 'Nista'),
(174, 'ihribljan', '2020-06-22 02:06:00', 'Trgovine -> Sve trgovine', 'Nista'),
(175, 'ihribljan', '2020-06-22 02:06:01', 'Trgovine -> Sve trgovine', 'Nista'),
(176, 'ihribljan', '2020-06-22 02:06:01', 'Trgovine -> Sve trgovine', 'Nista'),
(177, 'ihribljan', '2020-06-22 02:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(178, 'ihribljan', '2020-06-22 02:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(179, 'ihribljan', '2020-06-22 02:06:04', 'Trgovine -> Sve trgovine', 'Nista'),
(180, 'ihribljan', '2020-06-22 02:06:05', 'Trgovine -> Sve trgovine', 'Nista'),
(181, 'ihribljan', '2020-06-22 02:06:06', 'Trgovine -> Sve trgovine', 'Nista'),
(182, 'ihribljan', '2020-06-22 02:06:07', 'Trgovine -> Sve trgovine', 'Nista'),
(183, 'ihribljan', '2020-06-22 02:06:07', 'Trgovine -> Sve trgovine', 'Nista'),
(184, 'ihribljan', '2020-06-22 02:06:08', 'Trgovine -> Sve trgovine', 'Nista'),
(185, 'ihribljan', '2020-06-22 02:06:09', 'Trgovine -> Sve trgovine', 'Nista'),
(186, 'ihribljan', '2020-06-22 02:06:10', 'Trgovine -> Sve trgovine', 'Nista'),
(187, 'ihribljan', '2020-06-22 02:06:12', 'Kategorije -> Sve kategorije', 'Nista'),
(188, 'ihribljan', '2020-06-22 02:06:54', 'Kategorije -> Sve kategorije', 'Nista'),
(189, 'ihribljan', '2020-06-22 02:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(190, 'tkeskic', '2020-06-22 08:06:29', 'Prijava u sustav', 'Nista'),
(191, 'tkeskic', '2020-06-22 08:06:04', 'Upravljanje korisnicima', 'Nista'),
(192, 'tkeskic', '2020-06-22 08:06:17', 'Kategorije -> Sve kategorije', 'Nista'),
(193, 'tkeskic', '2020-06-22 08:06:20', 'Trgovine -> Sve trgovine', 'Nista'),
(194, '93.142.90.130', '2020-06-23 00:06:28', 'Trgovine -> Sve trgovine', 'Nista'),
(195, '93.142.90.130', '2020-06-23 00:06:28', 'Trgovine -> Sve trgovine', 'Nista'),
(196, 'ihribljan', '2020-06-23 00:06:05', 'Prijava u sustav', 'Nista'),
(197, 'ihribljan', '2020-06-23 00:06:10', 'Kategorije -> Sve kategorije', 'Nista'),
(198, 'ihribljan', '2020-06-23 00:06:49', 'Odjava iz sustava', 'Nista'),
(199, 'tkeskic', '2020-06-23 00:06:57', 'Prijava u sustav', 'Nista'),
(200, 'tkeskic', '2020-06-23 00:06:12', 'Upravljanje korisnicima', 'Nista'),
(201, 'tkeskic', '2020-06-23 00:06:15', 'Odjava iz sustava', 'Nista'),
(202, 'ihribljan', '2020-06-23 00:06:00', 'Prijava u sustav', 'Nista'),
(203, 'ihribljan', '2020-06-23 00:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(204, 'ihribljan', '2020-06-23 00:06:37', 'Kategorije -> Sve kategorije', 'Nista'),
(205, 'ihribljan', '2020-06-23 00:06:39', 'Odjava iz sustava', 'Nista'),
(206, '93.142.90.130', '2020-06-23 00:06:50', 'Kategorije -> Sve kategorije', 'Nista'),
(207, 'tkeskic', '2020-06-23 00:06:14', 'Prijava u sustav', 'Nista'),
(208, 'tkeskic', '2020-06-23 01:06:02', 'Odjava iz sustava', 'Nista'),
(209, 'tkeskic', '2020-06-23 03:06:43', 'Prijava u sustav', 'Nista'),
(210, 'tkeskic', '2020-06-23 03:06:52', 'Odjava iz sustava', 'Nista'),
(211, 'tkeskic', '2020-06-23 03:06:15', 'Prijava u sustav', 'Nista'),
(212, 'tkeskic', '2020-06-23 03:06:18', 'Odjava iz sustava', 'Nista'),
(213, 'tkeskic', '2020-06-23 03:06:44', 'Prijava u sustav', 'Nista'),
(214, 'tkeskic', '2020-06-23 03:06:20', 'Odjava iz sustava', 'Nista'),
(215, 'tkeskic95@gmail.com', '2020-06-23 03:06:46', 'Poslan email za promjenu lozinke', 'Nista'),
(216, 'tkeskic', '2020-06-23 03:06:52', 'Prijava u sustav', 'Nista'),
(217, 'tkeskic', '2020-06-23 03:06:24', 'Odjava iz sustava', 'Nista'),
(218, 'tkeskic', '2020-06-23 03:06:32', 'Prijava u sustav', 'Nista'),
(219, 'tkeskic', '2020-06-23 03:06:33', 'Upravljanje korisnicima', 'Nista'),
(220, 'tkeskic', '2020-06-23 03:06:35', 'Upravljanje korisnicima', 'Nista'),
(221, 'tkeskic', '2020-06-23 03:06:35', 'Odblokiranje korisnika', 'Nista'),
(222, 'tkeskic', '2020-06-23 03:06:37', 'Upravljanje korisnicima', 'Nista'),
(223, 'tkeskic', '2020-06-23 03:06:37', 'Odblokiranje korisnika', 'Nista'),
(224, 'tkeskic', '2020-06-23 03:06:46', 'Odjava iz sustava', 'Nista'),
(225, 'tkeskic1', '2020-06-23 03:06:51', 'Prijava u sustav', 'Nista'),
(226, 'tkeskic1', '2020-06-23 03:06:54', 'Odjava iz sustava', 'Nista'),
(227, 'tkeskic', '2020-06-23 03:06:58', 'Prijava u sustav', 'Nista'),
(228, 'tkeskic', '2020-06-23 03:06:59', 'Upravljanje korisnicima', 'Nista'),
(229, 'tkeskic', '2020-06-23 04:06:59', 'Odjava iz sustava', 'Nista'),
(230, '93.142.90.130', '2020-06-23 04:06:24', 'Kategorije -> Sve kategorije', 'Nista'),
(231, '93.142.90.130', '2020-06-23 04:06:52', 'Kategorije -> Sve kategorije', 'Nista'),
(232, '93.142.90.130', '2020-06-23 04:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(233, '93.142.90.130', '2020-06-23 04:06:34', 'Kategorije -> Sve kategorije', 'Nista'),
(234, '93.142.90.130', '2020-06-23 04:06:30', 'Kategorije -> Sve kategorije', 'Nista'),
(235, 'tkeskic', '2020-06-23 04:06:12', 'Prijava u sustav', 'Nista'),
(236, 'tkeskic', '2020-06-23 04:06:30', 'Promjena konfiguracije', 'Nista'),
(237, 'tkeskic', '2020-06-23 04:06:22', 'Upravljanje korisnicima', 'Nista'),
(238, 'tkeskic', '2020-06-23 04:06:05', 'Upravljanje korisnicima', 'Nista'),
(239, 'tkeskic', '2020-06-23 04:06:06', 'Upravljanje korisnicima', 'Nista'),
(240, 'tkeskic', '2020-06-23 04:06:07', 'Upravljanje korisnicima', 'Nista'),
(241, 'tkeskic', '2020-06-23 04:06:17', 'Upravljanje korisnicima', 'Nista'),
(242, 'tkeskic', '2020-06-23 04:06:18', 'Upravljanje korisnicima', 'Nista'),
(243, 'tkeskic', '2020-06-23 04:06:22', 'Upravljanje korisnicima', 'Nista'),
(244, 'tkeskic', '2020-06-23 04:06:23', 'Upravljanje korisnicima', 'Nista'),
(245, 'tkeskic', '2020-06-23 04:06:01', 'Upravljanje korisnicima', 'Nista'),
(246, 'tkeskic', '2020-06-23 04:06:37', 'Upravljanje korisnicima', 'Nista'),
(247, 'tkeskic', '2020-06-23 04:06:58', 'Upravljanje korisnicima', 'Nista'),
(248, 'tkeskic', '2020-06-23 04:06:29', 'Kategorije -> Sve kategorije', 'Nista'),
(249, 'tkeskic', '2020-06-23 04:06:30', 'Trgovine -> Sve trgovine', 'Nista'),
(250, 'tkeskic', '2020-06-23 04:06:34', 'Odjava iz sustava', 'Nista'),
(251, 'ihribljan', '2020-06-23 04:06:43', 'Prijava u sustav', 'Nista'),
(252, 'ihribljan', '2020-06-23 04:06:48', 'Kategorije -> Sve kategorije', 'Nista'),
(253, 'ihribljan', '2020-06-23 04:06:37', 'Odjava iz sustava', 'Nista'),
(254, 'tkeskic', '2020-06-23 04:06:41', 'Prijava u sustav', 'Nista'),
(255, 'tkeskic', '2020-06-23 04:06:42', 'Upravljanje korisnicima', 'Nista'),
(256, 'tkeskic', '2020-06-23 04:06:56', 'Upravljanje korisnicima', 'Nista'),
(257, 'tkeskic', '2020-06-23 04:06:58', 'Odjava iz sustava', 'Nista'),
(258, 'ihribljan', '2020-06-23 04:06:03', 'Prijava u sustav', 'Nista'),
(259, 'ihribljan', '2020-06-23 04:06:06', 'Kategorije -> Sve kategorije', 'Nista'),
(260, 'ihribljan', '2020-06-23 04:06:13', 'Kategorije -> Sve kategorije', 'Nista'),
(261, 'ihribljan', '2020-06-23 05:06:44', 'Kategorije -> Sve kategorije', 'Nista'),
(262, 'ihribljan', '2020-06-23 05:06:55', 'Odjava iz sustava', 'Nista'),
(263, 'tkeskic', '2020-06-23 05:06:01', 'Prijava u sustav', 'Nista'),
(264, 'tkeskic', '2020-06-23 05:06:12', 'Promjena konfiguracije', 'Nista'),
(265, 'tkeskic', '2020-06-23 05:06:18', 'Upravljanje korisnicima', 'Nista'),
(266, 'tkeskic', '2020-06-23 05:06:20', 'Odjava iz sustava', 'Nista'),
(267, 'ihribljan', '2020-06-23 05:06:27', 'Prijava u sustav', 'Nista'),
(268, 'ihribljan', '2020-06-23 05:06:32', 'Kategorije -> Sve kategorije', 'Nista'),
(269, 'ihribljan', '2020-06-23 05:06:37', 'Kategorije -> Sve kategorije', 'Nista'),
(270, 'ihribljan', '2020-06-23 05:06:45', 'Odjava iz sustava', 'Nista'),
(271, 'tkeskic', '2020-06-23 05:06:37', 'Prijava u sustav', 'Nista'),
(272, 'tkeskic', '2020-06-23 05:06:38', 'Upravljanje korisnicima', 'Nista'),
(273, 'tkeskic', '2020-06-23 05:06:21', 'Promjena konfiguracije', 'Nista'),
(274, 'tkeskic', '2020-06-23 05:06:06', 'Promjena konfiguracije', 'Nista'),
(275, 'tkeskic', '2020-06-22 23:06:35', 'Kategorije -> Sve kategorije', 'Nista'),
(276, 'tkeskic', '2020-06-22 23:06:55', 'Promjena konfiguracije', 'Nista'),
(277, 'tkeskic', '2020-06-23 02:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(278, 'tkeskic', '2020-06-23 02:06:25', 'Promjena konfiguracije', 'Nista'),
(279, 'tkeskic', '2020-06-23 02:06:13', 'Promjena konfiguracije', 'Nista'),
(280, 'tkeskic', '2020-06-22 19:06:48', 'Promjena konfiguracije', 'Nista'),
(281, 'tkeskic', '2020-06-22 23:06:52', 'Promjena konfiguracije', 'Nista'),
(282, 'tkeskic', '2020-06-22 19:06:32', 'Promjena konfiguracije', 'Nista'),
(283, 'tkeskic', '2020-06-22 22:06:59', 'Promjena konfiguracije', 'Nista'),
(284, 'tkeskic', '2020-06-22 22:06:49', 'Promjena konfiguracije', 'Nista'),
(285, 'tkeskic', '2020-06-22 21:06:58', 'Promjena konfiguracije', 'Nista'),
(286, 'tkeskic', '2020-06-23 00:06:04', 'Promjena konfiguracije', 'Nista'),
(287, 'tkeskic', '2020-06-22 21:06:55', 'Promjena konfiguracije', 'Nista'),
(288, 'tkeskic', '2020-06-22 21:06:01', 'Promjena konfiguracije', 'Nista'),
(289, 'tkeskic', '2020-06-23 01:06:06', 'Promjena konfiguracije', 'Nista'),
(290, 'tkeskic', '2020-06-22 21:06:23', 'Kategorije -> Sve kategorije', 'Nista'),
(291, 'tkeskic', '2020-06-22 22:06:03', 'Odjava iz sustava', 'Nista'),
(292, '93.142.90.130', '2020-06-22 22:06:46', 'Registracija', 'Nista'),
(293, 'grda', '2020-06-22 22:06:07', 'Prijava u sustav', 'Nista'),
(294, 'tkeskic', '2020-06-22 22:06:13', 'Prijava u sustav', 'Nista'),
(295, 'tkeskic', '2020-06-22 22:06:14', 'Upravljanje korisnicima', 'Nista'),
(296, 'tkeskic', '2020-06-22 22:06:48', 'Upravljanje korisnicima', 'Nista'),
(297, 'tkeskic', '2020-06-22 22:06:49', 'Odjava iz sustava', 'Nista'),
(298, 'grda', '2020-06-22 22:06:53', 'Prijava u sustav', 'Nista'),
(299, 'grda', '2020-06-22 22:06:57', 'Odjava iz sustava', 'Nista'),
(300, 'tkeskic', '2020-06-22 22:06:39', 'Prijava u sustav', 'Nista'),
(301, 'tkeskic', '2020-06-22 22:06:41', 'Kategorije -> Sve kategorije', 'Nista'),
(302, 'tkeskic', '2020-06-22 22:06:42', 'Trgovine -> Sve trgovine', 'Nista'),
(303, 'tkeskic', '2020-06-22 22:06:45', 'Trgovine -> Sve trgovine', 'Nista'),
(304, 'tkeskic', '2020-06-22 22:06:18', 'Kategorije -> Sve kategorije', 'Nista'),
(305, 'tkeskic', '2020-06-22 22:06:06', 'Kategorije -> Sve kategorije', 'Nista'),
(306, 'tkeskic', '2020-06-22 22:06:07', 'Trgovine -> Sve trgovine', 'Nista'),
(307, 'tkeskic', '2020-06-22 22:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(308, 'tkeskic', '2020-06-22 22:06:42', 'Trgovine -> Sve trgovine', 'Nista'),
(309, 'tkeskic', '2020-06-22 22:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(310, 'tkeskic', '2020-06-22 22:06:45', 'Trgovine -> Sve trgovine', 'Nista'),
(311, 'tkeskic', '2020-06-22 22:06:20', 'Trgovine -> Sve trgovine', 'Nista'),
(312, 'tkeskic', '2020-06-22 22:06:26', 'Kategorije -> Sve kategorije', 'Nista'),
(313, 'tkeskic', '2020-06-22 22:06:27', 'Trgovine -> Sve trgovine', 'Nista'),
(314, '93.142.90.130', '2020-06-22 23:06:28', 'Trgovine -> Sve trgovine', 'Nista'),
(315, 'tkeskic', '2020-06-22 23:06:35', 'Prijava u sustav', 'Nista'),
(316, 'tkeskic', '2020-06-22 23:06:37', 'Kategorije -> Sve kategorije', 'Nista'),
(317, 'tkeskic', '2020-06-22 23:06:38', 'Trgovine -> Sve trgovine', 'Nista'),
(318, 'tkeskic', '2020-06-23 00:06:44', 'Trgovine -> Sve trgovine', 'Nista'),
(319, 'tkeskic', '2020-06-23 00:06:52', 'Trgovine -> Sve trgovine', 'Nista'),
(320, 'tkeskic', '2020-06-23 00:06:45', 'Trgovine -> Sve trgovine', 'Nista'),
(321, 'tkeskic', '2020-06-23 00:06:46', 'Trgovine -> Sve trgovine', 'Nista'),
(322, 'tkeskic', '2020-06-23 00:06:42', 'Trgovine -> Sve trgovine', 'Nista'),
(323, 'tkeskic', '2020-06-23 00:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(324, 'tkeskic', '2020-06-23 00:06:59', 'Trgovine -> Sve trgovine', 'Nista'),
(325, 'tkeskic', '2020-06-23 00:06:05', 'Trgovine -> Sve trgovine', 'Nista'),
(326, 'tkeskic', '2020-06-23 00:06:53', 'Trgovine -> Sve trgovine', 'Nista'),
(327, 'tkeskic', '2020-06-23 00:06:54', 'Kategorije -> Sve kategorije', 'Nista'),
(328, 'tkeskic', '2020-06-23 00:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(329, 'tkeskic', '2020-06-23 00:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(330, 'tkeskic', '2020-06-23 00:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(331, 'tkeskic', '2020-06-23 00:06:08', 'Trgovine -> Sve trgovine', 'Nista'),
(332, 'tkeskic', '2020-06-23 00:06:48', 'Trgovine -> Sve trgovine', 'Nista'),
(333, 'tkeskic', '2020-06-23 00:06:14', 'Trgovine -> Sve trgovine', 'Nista'),
(334, 'tkeskic', '2020-06-23 00:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(335, 'tkeskic', '2020-06-23 00:06:40', 'Trgovine -> Sve trgovine', 'Nista'),
(336, 'tkeskic', '2020-06-23 00:06:50', 'Trgovine -> Sve trgovine', 'Nista'),
(337, 'tkeskic', '2020-06-23 00:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(338, 'tkeskic', '2020-06-23 00:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(339, 'tkeskic', '2020-06-23 00:06:04', 'Trgovine -> Sve trgovine', 'Nista'),
(340, 'tkeskic', '2020-06-23 00:06:06', 'Trgovine -> Sve trgovine', 'Nista'),
(341, 'tkeskic', '2020-06-23 00:06:08', 'Trgovine -> Sve trgovine', 'Nista'),
(342, 'tkeskic', '2020-06-23 00:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(343, 'tkeskic', '2020-06-23 00:06:58', 'Trgovine -> Sve trgovine', 'Nista'),
(344, 'tkeskic', '2020-06-23 00:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(345, 'tkeskic', '2020-06-23 00:06:37', 'Trgovine -> Sve trgovine', 'Nista'),
(346, 'tkeskic', '2020-06-23 00:06:38', 'Trgovine -> Sve trgovine', 'Nista'),
(347, 'tkeskic', '2020-06-23 00:06:41', 'Trgovine -> Sve trgovine', 'Nista'),
(348, 'tkeskic', '2020-06-23 00:06:46', 'Trgovine -> Sve trgovine', 'Nista'),
(349, 'tkeskic', '2020-06-23 00:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(350, 'tkeskic', '2020-06-23 00:06:55', 'Kategorije -> Sve kategorije', 'Nista'),
(351, 'tkeskic', '2020-06-23 00:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(352, 'tkeskic', '2020-06-23 00:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(353, 'tkeskic', '2020-06-23 00:06:01', 'Kreiranje trgovine', 'Nista'),
(354, 'tkeskic', '2020-06-23 00:06:01', 'Trgovine -> Sve trgovine', 'Nista'),
(355, 'tkeskic', '2020-06-23 00:06:19', 'Kategorije -> Sve kategorije', 'Nista'),
(356, 'tkeskic', '2020-06-23 00:06:24', 'Trgovine -> Sve trgovine', 'Nista'),
(357, 'tkeskic', '2020-06-23 00:06:27', 'Trgovine -> Sve trgovine', 'Nista'),
(358, 'tkeskic', '2020-06-23 00:06:11', 'Kategorije -> Sve kategorije', 'Nista'),
(359, 'tkeskic', '2020-06-23 00:06:11', 'Trgovine -> Sve trgovine', 'Nista'),
(360, 'tkeskic', '2020-06-23 00:06:12', 'Trgovine -> Sve trgovine', 'Nista'),
(361, 'tkeskic', '2020-06-23 00:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(362, 'tkeskic', '2020-06-23 00:06:04', 'Trgovine -> Sve trgovine', 'Nista'),
(363, 'tkeskic', '2020-06-23 00:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(364, 'tkeskic', '2020-06-23 00:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(365, 'tkeskic', '2020-06-23 00:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(366, 'tkeskic', '2020-06-23 00:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(367, 'tkeskic', '2020-06-23 00:06:12', 'Trgovine -> Sve trgovine', 'Nista'),
(368, 'tkeskic', '2020-06-23 00:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(369, 'tkeskic', '2020-06-23 00:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(370, 'tkeskic', '2020-06-23 00:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(371, 'tkeskic', '2020-06-23 00:06:53', 'Trgovine -> Sve trgovine', 'Nista'),
(372, 'tkeskic', '2020-06-23 00:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(373, 'tkeskic', '2020-06-23 00:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(374, 'tkeskic', '2020-06-23 00:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(375, 'tkeskic', '2020-06-23 00:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(376, 'tkeskic', '2020-06-23 00:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(377, 'tkeskic', '2020-06-23 00:06:53', 'Trgovine -> Sve trgovine', 'Nista'),
(378, 'tkeskic', '2020-06-23 00:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(379, 'tkeskic', '2020-06-23 00:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(380, 'tkeskic', '2020-06-23 00:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(381, 'tkeskic', '2020-06-23 00:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(382, 'tkeskic', '2020-06-23 00:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(383, 'tkeskic', '2020-06-23 00:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(384, 'tkeskic', '2020-06-23 00:06:58', 'Trgovine -> Sve trgovine', 'Nista'),
(385, 'tkeskic', '2020-06-23 00:06:23', 'Trgovine -> Sve trgovine', 'Nista'),
(386, 'tkeskic', '2020-06-23 00:06:26', 'Trgovine -> Sve trgovine', 'Nista'),
(387, 'tkeskic', '2020-06-23 00:06:26', 'Trgovine -> Sve trgovine', 'Nista'),
(388, 'tkeskic', '2020-06-23 00:06:28', 'Trgovine -> Sve trgovine', 'Nista'),
(389, 'tkeskic', '2020-06-23 00:06:29', 'Trgovine -> Sve trgovine', 'Nista'),
(390, 'tkeskic', '2020-06-23 00:06:32', 'Trgovine -> Sve trgovine', 'Nista'),
(391, 'tkeskic', '2020-06-23 00:06:33', 'Trgovine -> Sve trgovine', 'Nista'),
(392, 'tkeskic', '2020-06-23 00:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(393, 'tkeskic', '2020-06-23 00:06:37', 'Trgovine -> Sve trgovine', 'Nista'),
(394, 'tkeskic', '2020-06-23 00:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(395, 'tkeskic', '2020-06-23 00:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(396, 'tkeskic', '2020-06-23 00:06:42', 'Trgovine -> Sve trgovine', 'Nista'),
(397, 'tkeskic', '2020-06-23 00:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(398, 'tkeskic', '2020-06-23 00:06:44', 'Trgovine -> Sve trgovine', 'Nista'),
(399, 'tkeskic', '2020-06-23 00:06:46', 'Trgovine -> Sve trgovine', 'Nista'),
(400, 'tkeskic', '2020-06-23 00:06:48', 'Trgovine -> Sve trgovine', 'Nista'),
(401, 'tkeskic', '2020-06-23 00:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(402, 'tkeskic', '2020-06-23 00:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(403, 'tkeskic', '2020-06-23 00:06:50', 'Trgovine -> Sve trgovine', 'Nista'),
(404, 'tkeskic', '2020-06-23 00:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(405, 'tkeskic', '2020-06-23 00:06:52', 'Trgovine -> Sve trgovine', 'Nista'),
(406, 'tkeskic', '2020-06-23 01:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(407, 'tkeskic', '2020-06-23 01:06:37', 'Trgovine -> Sve trgovine', 'Nista'),
(408, 'tkeskic', '2020-06-23 01:06:38', 'Trgovine -> Sve trgovine', 'Nista'),
(409, 'tkeskic', '2020-06-23 01:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(410, 'tkeskic', '2020-06-23 01:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(411, 'tkeskic', '2020-06-23 01:06:46', 'Trgovine -> Sve trgovine', 'Nista'),
(412, 'tkeskic', '2020-06-23 01:06:48', 'Trgovine -> Sve trgovine', 'Nista'),
(413, 'tkeskic', '2020-06-23 01:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(414, 'tkeskic', '2020-06-23 01:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(415, 'tkeskic', '2020-06-23 01:06:17', 'Trgovine -> Sve trgovine', 'Nista'),
(416, 'tkeskic', '2020-06-23 01:06:18', 'Trgovine -> Sve trgovine', 'Nista'),
(417, 'tkeskic', '2020-06-23 01:06:19', 'Trgovine -> Sve trgovine', 'Nista'),
(418, 'tkeskic', '2020-06-23 01:06:22', 'Trgovine -> Sve trgovine', 'Nista'),
(419, 'tkeskic', '2020-06-23 01:06:23', 'Trgovine -> Sve trgovine', 'Nista'),
(420, 'tkeskic', '2020-06-23 01:06:24', 'Trgovine -> Sve trgovine', 'Nista'),
(421, 'tkeskic', '2020-06-23 01:06:25', 'Trgovine -> Sve trgovine', 'Nista'),
(422, 'tkeskic', '2020-06-23 01:06:26', 'Trgovine -> Sve trgovine', 'Nista'),
(423, 'tkeskic', '2020-06-23 01:06:26', 'Trgovine -> Sve trgovine', 'Nista'),
(424, 'tkeskic', '2020-06-23 01:06:53', 'Trgovine -> Sve trgovine', 'Nista'),
(425, 'tkeskic', '2020-06-23 01:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(426, 'tkeskic', '2020-06-23 01:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(427, 'tkeskic', '2020-06-23 01:06:00', 'Trgovine -> Sve trgovine', 'Nista'),
(428, 'tkeskic', '2020-06-23 01:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(429, 'tkeskic', '2020-06-23 01:06:05', 'Trgovine -> Sve trgovine', 'Nista'),
(430, 'tkeskic', '2020-06-23 01:06:09', 'Trgovine -> Sve trgovine', 'Nista'),
(431, 'tkeskic', '2020-06-23 01:06:13', 'Upravljanje korisnicima', 'Nista'),
(432, 'tkeskic', '2020-06-23 01:06:16', 'Kategorije -> Sve kategorije', 'Nista'),
(433, 'tkeskic', '2020-06-23 01:06:17', 'Trgovine -> Sve trgovine', 'Nista'),
(434, 'tkeskic', '2020-06-23 01:06:20', 'Trgovine -> Sve trgovine', 'Nista'),
(435, 'tkeskic', '2020-06-23 01:06:20', 'Kategorije -> Sve kategorije', 'Nista'),
(436, 'tkeskic', '2020-06-23 01:06:21', 'Kategorije -> Sve kategorije', 'Nista'),
(437, 'tkeskic', '2020-06-23 01:06:23', 'Trgovine -> Sve trgovine', 'Nista'),
(438, 'tkeskic', '2020-06-23 01:06:23', 'Trgovine -> Sve trgovine', 'Nista'),
(439, 'tkeskic', '2020-06-23 01:06:15', 'Trgovine -> Sve trgovine', 'Nista'),
(440, 'tkeskic', '2020-06-23 01:06:24', 'Trgovine -> Sve trgovine', 'Nista'),
(441, 'tkeskic', '2020-06-23 01:06:25', 'Trgovine -> Sve trgovine', 'Nista'),
(442, 'tkeskic', '2020-06-23 01:06:31', 'Trgovine -> Sve trgovine', 'Nista'),
(443, 'tkeskic', '2020-06-23 01:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(444, 'tkeskic', '2020-06-23 01:06:35', 'Kategorije -> Sve kategorije', 'Nista'),
(445, 'tkeskic', '2020-06-23 01:06:36', 'Trgovine -> Sve trgovine', 'Nista'),
(446, 'tkeskic', '2020-06-23 01:06:38', 'Trgovine -> Sve trgovine', 'Nista'),
(447, 'tkeskic', '2020-06-23 01:06:52', 'Trgovine -> Sve trgovine', 'Nista'),
(448, 'tkeskic', '2020-06-23 01:06:54', 'Trgovine -> Sve trgovine', 'Nista'),
(449, 'tkeskic', '2020-06-23 01:06:31', 'Trgovine -> Sve trgovine', 'Nista'),
(450, 'tkeskic', '2020-06-23 01:06:32', 'Trgovine -> Sve trgovine', 'Nista'),
(451, 'tkeskic', '2020-06-23 01:06:33', 'Trgovine -> Sve trgovine', 'Nista'),
(452, 'tkeskic', '2020-06-23 01:06:50', 'Trgovine -> Sve trgovine', 'Nista'),
(453, 'tkeskic', '2020-06-23 01:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(454, 'tkeskic', '2020-06-23 01:06:53', 'Trgovine -> Sve trgovine', 'Nista'),
(455, 'tkeskic', '2020-06-23 01:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(456, 'tkeskic', '2020-06-23 01:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(457, 'tkeskic', '2020-06-23 01:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(458, 'tkeskic', '2020-06-23 01:06:12', 'Trgovine -> Sve trgovine', 'Nista'),
(459, 'tkeskic', '2020-06-23 01:06:01', 'Trgovine -> Sve trgovine', 'Nista'),
(460, 'tkeskic', '2020-06-23 01:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(461, 'tkeskic', '2020-06-23 01:06:12', 'Trgovine -> Sve trgovine', 'Nista'),
(462, 'tkeskic', '2020-06-23 01:06:28', 'Trgovine -> Sve trgovine', 'Nista'),
(463, 'tkeskic', '2020-06-23 01:06:32', 'Trgovine -> Sve trgovine', 'Nista'),
(464, 'tkeskic', '2020-06-23 01:06:10', 'Trgovine -> Sve trgovine', 'Nista'),
(465, 'tkeskic', '2020-06-23 01:06:15', 'Trgovine -> Sve trgovine', 'Nista'),
(466, 'tkeskic', '2020-06-23 01:06:47', 'Trgovine -> Sve trgovine', 'Nista'),
(467, 'tkeskic', '2020-06-23 01:06:27', 'Trgovine -> Sve trgovine', 'Nista'),
(468, 'tkeskic', '2020-06-23 01:06:31', 'Trgovine -> Sve trgovine', 'Nista'),
(469, 'tkeskic', '2020-06-23 01:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(470, 'tkeskic', '2020-06-23 01:06:37', 'Trgovine -> Sve trgovine', 'Nista'),
(471, 'tkeskic', '2020-06-23 01:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(472, 'tkeskic', '2020-06-23 01:06:05', 'Trgovine -> Sve trgovine', 'Nista'),
(473, 'tkeskic', '2020-06-23 01:06:07', 'Trgovine -> Sve trgovine', 'Nista'),
(474, 'tkeskic', '2020-06-23 01:06:22', 'Kreiranje moderatora', 'Nista'),
(475, 'tkeskic', '2020-06-23 01:06:22', 'Trgovine -> Sve trgovine', 'Nista'),
(476, 'tkeskic', '2020-06-23 01:06:38', 'Kategorije -> Sve kategorije', 'Nista'),
(477, 'tkeskic', '2020-06-23 01:06:39', 'Trgovine -> Sve trgovine', 'Nista'),
(478, 'tkeskic', '2020-06-23 01:06:40', 'Trgovine -> Sve trgovine', 'Nista'),
(479, 'tkeskic', '2020-06-23 01:06:44', 'Kreiranje moderatora', 'Nista'),
(480, 'tkeskic', '2020-06-23 01:06:44', 'Trgovine -> Sve trgovine', 'Nista'),
(481, 'tkeskic', '2020-06-23 01:06:58', 'Trgovine -> Sve trgovine', 'Nista'),
(482, 'tkeskic', '2020-06-23 01:06:59', 'Trgovine -> Sve trgovine', 'Nista'),
(483, 'tkeskic', '2020-06-23 01:06:04', 'Kreiranje moderatora', 'Nista'),
(484, 'tkeskic', '2020-06-23 01:06:04', 'Trgovine -> Sve trgovine', 'Nista'),
(485, 'tkeskic', '2020-06-23 01:06:45', 'Upravljanje korisnicima', 'Nista'),
(486, 'tkeskic', '2020-06-23 01:06:23', 'Trgovine -> Sve trgovine', 'Nista'),
(487, 'tkeskic', '2020-06-23 01:06:24', 'Trgovine -> Sve trgovine', 'Nista'),
(488, 'tkeskic', '2020-06-23 01:06:27', 'Kreiranje moderatora', 'Nista'),
(489, 'tkeskic', '2020-06-23 01:06:27', 'Trgovine -> Sve trgovine', 'Nista'),
(490, 'tkeskic', '2020-06-23 01:06:55', 'Trgovine -> Sve trgovine', 'Nista'),
(491, 'tkeskic', '2020-06-23 01:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(492, 'tkeskic', '2020-06-23 01:06:57', 'Trgovine -> Sve trgovine', 'Nista'),
(493, 'tkeskic', '2020-06-23 01:06:59', 'Kreiranje moderatora', 'Nista'),
(494, 'tkeskic', '2020-06-23 01:06:59', 'Trgovine -> Sve trgovine', 'Nista'),
(495, 'tkeskic', '2020-06-23 01:06:14', 'Kreiranje moderatora', 'Nista'),
(496, 'tkeskic', '2020-06-23 01:06:14', 'Trgovine -> Sve trgovine', 'Nista'),
(497, 'tkeskic', '2020-06-23 01:06:01', 'Kategorije -> Sve kategorije', 'Nista'),
(498, 'tkeskic', '2020-06-23 01:06:02', 'Trgovine -> Sve trgovine', 'Nista'),
(499, 'tkeskic', '2020-06-23 01:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(500, 'tkeskic', '2020-06-23 01:06:06', 'Kreiranje moderatora', '0 10'),
(501, 'tkeskic', '2020-06-23 01:06:06', 'Trgovine -> Sve trgovine', 'Nista'),
(502, 'tkeskic', '2020-06-23 01:06:07', 'Upravljanje korisnicima', 'Nista'),
(503, 'tkeskic', '2020-06-23 01:06:18', 'Trgovine -> Sve trgovine', 'Nista'),
(504, 'tkeskic', '2020-06-23 01:06:19', 'Trgovine -> Sve trgovine', 'Nista'),
(505, 'tkeskic', '2020-06-23 01:06:22', 'Kreiranje moderatora', '0 10'),
(506, 'tkeskic', '2020-06-23 01:06:22', 'Trgovine -> Sve trgovine', 'Nista'),
(507, 'tkeskic', '2020-06-23 01:06:05', 'Trgovine -> Sve trgovine', 'Nista'),
(508, 'tkeskic', '2020-06-23 01:06:06', 'Trgovine -> Sve trgovine', 'Nista'),
(509, 'tkeskic', '2020-06-23 01:06:10', 'Kreiranje moderatora', '0 undefined'),
(510, 'tkeskic', '2020-06-23 01:06:10', 'Trgovine -> Sve trgovine', 'Nista'),
(511, 'tkeskic', '2020-06-23 01:06:47', 'Kreiranje moderatora', '0 undefined'),
(512, 'tkeskic', '2020-06-23 01:06:47', 'Trgovine -> Sve trgovine', 'Nista'),
(513, 'tkeskic', '2020-06-23 01:06:50', 'Kreiranje moderatora', '0 Mladen:Grdovi?[grda]'),
(514, 'tkeskic', '2020-06-23 01:06:50', 'Trgovine -> Sve trgovine', 'Nista'),
(515, 'tkeskic', '2020-06-23 01:06:09', 'Kreiranje moderatora', '0 Mladen:Grdovi?[grda]'),
(516, 'tkeskic', '2020-06-23 01:06:09', 'Trgovine -> Sve trgovine', 'Nista'),
(517, 'tkeskic', '2020-06-23 01:06:11', 'Kreiranje moderatora', '0 19'),
(518, 'tkeskic', '2020-06-23 01:06:11', 'Trgovine -> Sve trgovine', 'Nista'),
(519, 'tkeskic', '2020-06-23 01:06:16', 'Kreiranje moderatora', '0 19'),
(520, 'tkeskic', '2020-06-23 01:06:16', 'Trgovine -> Sve trgovine', 'Nista'),
(521, 'tkeskic', '2020-06-23 01:06:21', 'Kreiranje moderatora', '3 19'),
(522, 'tkeskic', '2020-06-23 01:06:21', 'Trgovine -> Sve trgovine', 'Nista'),
(523, 'tkeskic', '2020-06-23 02:06:34', 'Odjava iz sustava', 'Nista'),
(524, 'grda', '2020-06-23 02:06:46', 'Prijava u sustav', 'Nista'),
(525, 'grda', '2020-06-23 02:06:49', 'Trgovine -> Sve trgovine', 'Nista'),
(526, 'grda', '2020-06-23 02:06:50', 'Kategorije -> Sve kategorije', 'Nista'),
(527, 'grda', '2020-06-23 02:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(528, 'grda', '2020-06-23 02:06:53', 'Kategorije -> Sve kategorije', 'Nista'),
(529, 'grda', '2020-06-23 02:06:56', 'Trgovine -> Sve trgovine', 'Nista'),
(530, 'grda', '2020-06-23 02:06:57', 'Kategorije -> Sve kategorije', 'Nista'),
(531, 'grda', '2020-06-23 02:06:04', 'Trgovine -> Sve trgovine', 'Nista'),
(532, 'grda', '2020-06-23 02:06:30', 'Trgovine -> Sve trgovine', 'Nista'),
(533, 'grda', '2020-06-23 02:06:32', 'Kategorije -> Sve kategorije', 'Nista'),
(534, 'grda', '2020-06-23 02:06:33', 'Trgovine -> Sve trgovine', 'Nista'),
(535, 'grda', '2020-06-23 02:06:33', 'Kategorije -> Sve kategorije', 'Nista'),
(536, 'grda', '2020-06-23 02:06:34', 'Trgovine -> Sve trgovine', 'Nista'),
(537, 'grda', '2020-06-23 02:06:35', 'Kategorije -> Sve kategorije', 'Nista'),
(538, 'grda', '2020-06-23 02:06:35', 'Trgovine -> Sve trgovine', 'Nista'),
(539, 'grda', '2020-06-23 02:06:26', 'Kategorije -> Sve kategorije', 'Nista'),
(540, 'grda', '2020-06-23 02:06:43', 'Trgovine -> Sve trgovine', 'Nista'),
(541, 'grda', '2020-06-23 02:06:44', 'Kategorije -> Sve kategorije', 'Nista'),
(542, 'grda', '2020-06-23 02:06:45', 'Trgovine -> Sve trgovine', 'Nista'),
(543, 'grda', '2020-06-23 02:06:33', 'Kategorije -> Sve kategorije', 'Nista'),
(544, 'grda', '2020-06-23 02:06:33', 'Trgovine -> Sve trgovine', 'Nista'),
(545, 'grda', '2020-06-23 02:06:34', 'Kategorije -> Sve kategorije', 'Nista'),
(546, 'grda', '2020-06-23 02:06:50', 'Kategorije -> Sve kategorije', 'Nista'),
(547, 'grda', '2020-06-23 02:06:43', 'Kategorije -> Sve kategorije', 'Nista'),
(548, 'grda', '2020-06-23 02:06:44', 'Trgovine -> Sve trgovine', 'Nista'),
(549, 'grda', '2020-06-23 02:06:45', 'Kategorije -> Sve kategorije', 'Nista'),
(550, 'grda', '2020-06-23 02:06:00', 'Kategorije -> Sve kategorije', 'Nista'),
(551, 'grda', '2020-06-23 02:06:03', 'Trgovine -> Sve trgovine', 'Nista'),
(552, 'grda', '2020-06-23 02:06:03', 'Kategorije -> Sve kategorije', 'Nista'),
(553, 'grda', '2020-06-23 02:06:18', 'Kreiranje kategorije', 'Nista'),
(554, 'grda', '2020-06-23 02:06:18', 'Kategorije -> Sve kategorije', 'Nista'),
(555, 'grda', '2020-06-23 02:06:22', 'Trgovine -> Sve trgovine', 'Nista'),
(556, 'grda', '2020-06-23 02:06:24', 'Kategorije -> Sve kategorije', 'Nista'),
(557, 'grda', '2020-06-23 02:06:25', 'Trgovine -> Sve trgovine', 'Nista'),
(558, 'grda', '2020-06-23 02:06:28', 'Kategorije -> Sve kategorije', 'Nista'),
(559, 'grda', '2020-06-23 02:06:40', 'Odjava iz sustava', 'Nista'),
(560, '93.142.90.130', '2020-06-23 02:06:56', 'Registracija', 'Nista'),
(561, 'tkeskic', '2020-06-23 02:06:57', 'Prijava u sustav', 'Nista'),
(562, 'tkeskic', '2020-06-23 02:06:37', 'Odjava iz sustava', 'Nista'),
(563, 'ihribljan', '2020-06-23 02:06:42', 'Prijava u sustav', 'Nista'),
(564, 'ihribljan', '2020-06-23 02:06:50', 'Kategorije -> Sve kategorije', 'Nista'),
(565, 'ihribljan', '2020-06-23 02:06:51', 'Trgovine -> Sve trgovine', 'Nista'),
(566, 'ihribljan', '2020-06-23 02:06:52', 'Kategorije -> Sve kategorije', 'Nista'),
(567, 'ihribljan', '2020-06-23 02:06:55', 'Odjava iz sustava', 'Nista'),
(568, 'grda', '2020-06-23 02:06:00', 'Prijava u sustav', 'Nista'),
(569, 'grda', '2020-06-23 03:06:07', 'Kategorije -> Sve kategorije', 'Nista'),
(570, 'grda', '2020-06-23 03:06:08', 'Trgovine -> Sve trgovine', 'Nista'),
(571, 'grda', '2020-06-23 03:06:48', 'Kreiran artikl', 'Nista'),
(572, 'grda', '2020-06-23 03:06:24', 'Kreiran artikl', 'Nista'),
(573, 'grda', '2020-06-23 03:06:34', 'Odjava iz sustava', 'Nista'),
(574, 'ihribljan', '2020-06-23 03:06:38', 'Prijava u sustav', 'Nista'),
(575, 'ihribljan', '2020-06-23 03:06:43', 'Kategorije -> Sve kategorije', 'Nista'),
(576, 'ihribljan', '2020-06-23 03:06:46', 'Kategorije -> Sve kategorije', 'Nista'),
(577, 'ihribljan', '2020-06-23 03:06:20', 'Odjava iz sustava', 'Nista'),
(578, 'tkeskic', '2020-06-23 03:06:24', 'Prijava u sustav', 'Nista'),
(579, 'tkeskic', '2020-06-23 03:06:15', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(580, 'tkeskic', '2020-06-23 03:06:58', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(581, 'tkeskic', '2020-06-23 03:06:59', 'Zahtjev prihvacen od strane admina', 'Nista'),
(582, 'tkeskic', '2020-06-23 03:06:59', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(583, 'tkeskic', '2020-06-23 03:06:19', 'Zahtjev prihvacen od strane admina', 'Nista'),
(584, 'tkeskic', '2020-06-23 03:06:19', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(585, 'tkeskic', '2020-06-23 03:06:20', 'Zahtjev prihvacen od strane admina', 'Nista'),
(586, 'tkeskic', '2020-06-23 03:06:20', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(587, 'tkeskic', '2020-06-23 03:06:26', 'Zahtjev prihvacen od strane admina', 'Nista'),
(588, 'tkeskic', '2020-06-23 03:06:26', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(589, 'tkeskic', '2020-06-23 03:06:42', 'Zahtjev prihvacen od strane admina', 'Nista'),
(590, 'tkeskic', '2020-06-23 03:06:42', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(591, 'tkeskic', '2020-06-23 03:06:43', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(592, 'tkeskic', '2020-06-23 03:06:46', 'Zahtjev prihvacen od strane admina', 'Nista'),
(593, 'tkeskic', '2020-06-23 03:06:46', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(594, 'tkeskic', '2020-06-23 03:06:48', 'Zahtjev prihvacen od strane admina', 'Nista'),
(595, 'tkeskic', '2020-06-23 03:06:48', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(596, 'tkeskic', '2020-06-23 03:06:11', 'Zahtjev prihvacen od strane admina', 'Nista'),
(597, 'tkeskic', '2020-06-23 03:06:11', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(598, 'tkeskic', '2020-06-23 03:06:12', 'Zahtjev prihvacen od strane admina', 'Nista'),
(599, 'tkeskic', '2020-06-23 03:06:12', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(600, 'tkeskic', '2020-06-23 04:06:01', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(601, 'tkeskic', '2020-06-23 04:06:11', 'Zahtjev prihvacen od strane admina', 'Nista'),
(602, 'tkeskic', '2020-06-23 04:06:11', 'Poslan zahtjev administratoru za narudžbom artikla', 'Nista'),
(603, 'tkeskic', '2020-06-23 04:06:37', 'Odjava iz sustava', 'Nista'),
(604, 'ihribljan', '2020-06-23 04:06:42', 'Prijava u sustav', 'Nista'),
(605, 'ihribljan', '2020-06-23 04:06:44', 'Kategorije -> Sve kategorije', 'Nista'),
(606, 'ihribljan', '2020-06-23 04:06:46', 'Kategorije -> Sve kategorije', 'Nista'),
(607, '93.142.90.130', '2020-06-23 10:06:01', 'Kategorije -> Sve kategorije', 'Nista');

-- --------------------------------------------------------

--
-- Table structure for table `DZ4_Users`
--

CREATE TABLE `DZ4_Users` (
  `id` int(11) NOT NULL,
  `razina` int(11) NOT NULL,
  `ime` varchar(30) CHARACTER SET utf8 NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `godinaRodenja` int(11) NOT NULL,
  `korisnicko` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `lozinka` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DZ4_Users`
--

INSERT INTO `DZ4_Users` (`id`, `razina`, `ime`, `prezime`, `godinaRodenja`, `korisnicko`, `email`, `lozinka`) VALUES
(1, 4, 'Tomislav', 'Keški?', 1995, 'Zero Cool', 'zerocool@foi.hr', 'dragonBook'),
(2, 3, 'Ivica', 'Ivi?', 1998, 'iivic', 'iivic@foi.hr', '12345678'),
(3, 2, 'Marko', 'Mari?', 1990, 'mmaric', 'mmaric@foi.hr', '12345678'),
(4, 2, 'Jerko', 'Leko', 1980, 'jleko', 'jleko@foi.hr', '12345678'),
(5, 2, 'Ivano', 'Bali?', 1981, 'ibalic', 'ibalic@foi.hr', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `Kategorija`
--

CREATE TABLE `Kategorija` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) DEFAULT NULL,
  `opis` varchar(45) DEFAULT NULL,
  `popust` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Kategorija`
--

INSERT INTO `Kategorija` (`id`, `naziv`, `opis`, `popust`) VALUES
(1, 'Hlače', 'Predmet koji se oblači na donji dio tijela', 4),
(2, 'Majica', 'Predmet koji se oblači na gornji dio tijela', 1),
(3, 'Cipele', 'Predmet koji se oblači na stopala', 1),
(4, 'Tenisice', 'Predmet koji se oblači na stopala', 1),
(5, 'Oprema', 'Utezi i oprema za vjezbanje', 1),
(6, 'Laptop', 'Prenosivo računalo', 1),
(7, 'Stolno racunalo', 'Stolno računalo', 1),
(8, 'Mobitel', 'Mobitel', 1),
(9, 'Televizor', 'Televizor', 1),
(10, 'Stol', 'Predmet', 1),
(11, 'Kopačke', 'Kopačke za nogomet', 4),
(12, 'šalica', 'šalica za kavu i čaj', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Konfiguracija`
--

CREATE TABLE `Konfiguracija` (
  `id` int(11) NOT NULL,
  `trajanje_sesije` datetime DEFAULT NULL,
  `stranicenje` int(11) DEFAULT NULL,
  `pomak` int(11) DEFAULT NULL,
  `neuspjesnih_prijava` int(11) DEFAULT NULL,
  `broj_prijava` int(11) DEFAULT NULL,
  `broj_neaktiviranih` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Konfiguracija`
--

INSERT INTO `Konfiguracija` (`id`, `trajanje_sesije`, `stranicenje`, `pomak`, `neuspjesnih_prijava`, `broj_prijava`, `broj_neaktiviranih`) VALUES
(1, '2020-06-21 01:11:00', 5, 2, 100, 1000, 134);

-- --------------------------------------------------------

--
-- Table structure for table `Korisnik`
--

CREATE TABLE `Korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(55) NOT NULL,
  `prezime` varchar(55) NOT NULL,
  `datum_rodjenja` date NOT NULL,
  `korisnicko` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `lozinka` varchar(55) NOT NULL,
  `lozinka_hash` varchar(255) NOT NULL,
  `permission_level` int(11) DEFAULT '0',
  `aktiviran` int(11) DEFAULT '0',
  `broj_pokusaja` int(11) DEFAULT '0',
  `blokiran` int(11) DEFAULT '0',
  `trgovina_id` int(11) DEFAULT NULL,
  `kod` varchar(20) DEFAULT NULL,
  `datum_registracije` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Korisnik`
--

INSERT INTO `Korisnik` (`id`, `ime`, `prezime`, `datum_rodjenja`, `korisnicko`, `email`, `lozinka`, `lozinka_hash`, `permission_level`, `aktiviran`, `broj_pokusaja`, `blokiran`, `trgovina_id`, `kod`, `datum_registracije`) VALUES
(7, 'Tomislav', 'Keškić', '1995-07-28', 'tkeskic', 'haxcontroler@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 3, 1, 0, 0, NULL, '', '2020-06-22 15:14:01'),
(8, 'Tomislav', 'Keskic', '1995-07-28', 'tkeskic1', 'tkeskic95@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, 0, 0, 11, '', '2020-06-22 15:26:51'),
(9, 'tomislav', 'Keskic', '1995-07-28', 'tkeskic2', 'tkeskic@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, 0, 0, 12, 'vlfjXubdm2TZH3*', '2020-06-18 22:08:18'),
(11, 'Ivan', 'Hribljan', '1995-07-28', 'ihribljan', 'dsaddasdn@foi.hr', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 1, 1, 0, 0, NULL, 'I1q*Lb2pgKO6EQh', '2020-06-20 15:22:49'),
(13, 'Ime', 'Prezime', '1995-07-28', 'spaced username', 'test@gmail.com', 'Asd123', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 2, 0, NULL, 'OUiFB$EJ4SRjdW0', '2020-06-20 20:41:46'),
(14, 'Mislav', 'Jakopovic', '1995-07-28', 'spaced username', 'mislavjakopovic6@gmail.com', 'Asd123', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 0, 0, NULL, 'eX2$Nudkh*LlbfP', '2020-06-20 16:59:04'),
(15, 'Mislav', 'Jakopovic', '1995-07-28', 'test321', 'mislavjakopovic6+2@gmail.com', 'Asd123', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 1, 0, 0, 0, NULL, 'lfwCDGn*OBvjem/', '2020-06-20 17:07:31'),
(16, 'dsa', 'dsad', '1995-07-28', 'dasdsad', 'haxcontrole111r@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 0, 0, NULL, '6bq2nSTPUdClKi5', '2020-06-20 20:31:00'),
(17, 'dsad', 'dsad', '1995-07-28', 'dsadas', 'haxcontr11oler@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 0, 0, NULL, 'WblJsDozLNHr/8v', '2020-06-20 20:31:50'),
(18, 'dsad', 'dsad', '1995-07-28', 'dasdas', '11@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 0, 0, NULL, 'PKc*OBYkJr/V7dI', '2020-06-20 20:33:00'),
(19, 'Mladen', 'Grdović', '1995-07-28', 'grda', 'compiledapi@gmail.com', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2, 1, 0, 0, 3, '', '2020-06-22 21:54:21'),
(20, 'tomislav', 'keskic', '1995-07-28', 'dsad', 'tkdskic@foi.hr', '11', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 0, 0, 0, 0, NULL, '6WDh2HjnrtmaqoF', '2020-06-23 00:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `Kosarica`
--

CREATE TABLE `Kosarica` (
  `id` int(11) NOT NULL,
  `stavka` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Narudzba`
--

CREATE TABLE `Narudzba` (
  `id` int(11) NOT NULL,
  `p_partner` int(11) NOT NULL,
  `zaposlenik_kreirao` int(11) NOT NULL,
  `datum_kreiranja` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Narudzba`
--

INSERT INTO `Narudzba` (`id`, `p_partner`, `zaposlenik_kreirao`, `datum_kreiranja`) VALUES
(1, 1, 1, '2020-01-01 09:10:10'),
(2, 1, 1, '2020-01-01 09:10:10'),
(3, 1, 1, '2020-01-01 09:10:10'),
(4, 1, 1, '2020-01-01 09:10:10'),
(5, 1, 1, '2020-01-01 09:10:10'),
(6, 1, 1, '2020-01-01 09:10:10'),
(7, 1, 1, '2020-01-01 09:10:10'),
(8, 1, 1, '2020-01-01 09:10:10'),
(9, 1, 1, '2020-01-01 09:10:10'),
(10, 1, 1, '2020-01-01 09:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `Narudzba_stavka`
--

CREATE TABLE `Narudzba_stavka` (
  `id` int(11) NOT NULL,
  `id_narudzbe` int(11) NOT NULL,
  `id_artikl` int(11) NOT NULL,
  `kolicina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Narudzba_stavka`
--

INSERT INTO `Narudzba_stavka` (`id`, `id_narudzbe`, `id_artikl`, `kolicina`) VALUES
(31, 1, 1, 1),
(32, 1, 1, 1),
(33, 1, 1, 1),
(34, 1, 1, 1),
(35, 1, 1, 1),
(36, 1, 1, 1),
(37, 1, 1, 1),
(38, 1, 1, 1),
(39, 1, 1, 1),
(40, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Popusti`
--

CREATE TABLE `Popusti` (
  `id` int(11) NOT NULL,
  `postotak` int(11) NOT NULL,
  `vrijedi_od` date NOT NULL,
  `vrijedi_do` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Popusti`
--

INSERT INTO `Popusti` (`id`, `postotak`, `vrijedi_od`, `vrijedi_do`) VALUES
(1, 5, '2020-01-01', '2020-02-01'),
(2, 10, '2020-01-01', '2020-02-01'),
(3, 15, '2020-01-01', '2020-02-01'),
(4, 20, '2020-01-01', '2020-02-01'),
(5, 25, '2020-01-01', '2020-02-01'),
(6, 30, '2020-01-01', '2020-02-01'),
(7, 35, '2020-01-01', '2020-02-01'),
(8, 40, '2020-01-01', '2020-02-01'),
(9, 45, '2020-01-01', '2020-02-01'),
(10, 50, '2020-01-01', '2020-02-01'),
(11, 5, '2020-06-09', '2020-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `Poslovni_Partner`
--

CREATE TABLE `Poslovni_Partner` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `adresa` varchar(45) NOT NULL,
  `adresa_racuna` varchar(45) NOT NULL,
  `telefon` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `korisnik_od` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Poslovni_Partner`
--

INSERT INTO `Poslovni_Partner` (`id`, `naziv`, `adresa`, `adresa_racuna`, `telefon`, `email`, `korisnik_od`) VALUES
(1, 'Adidas main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(2, 'Nike main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(3, 'Puma main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(4, 'HP main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(5, 'Lenovo main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(6, 'Google main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(7, 'Reebok main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(8, 'Dell main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(9, 'Apple main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10'),
(10, 'Windows main', 'London', '001122330', '0911122', 'adidasmain@email.com', '2020-01-01 09:10:10');

-- --------------------------------------------------------

--
-- Table structure for table `Racun`
--

CREATE TABLE `Racun` (
  `id` int(11) NOT NULL,
  `korisnik_id` int(11) NOT NULL,
  `datum` datetime NOT NULL,
  `ukupno` int(11) NOT NULL,
  `placen` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Radno_Mjesto`
--

CREATE TABLE `Radno_Mjesto` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) DEFAULT NULL,
  `opis` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Radno_Mjesto`
--

INSERT INTO `Radno_Mjesto` (`id`, `naziv`, `opis`) VALUES
(1, 'Skladistar', 'Rad u skladistu, utovar, istovar'),
(2, 'Prodavac', 'Osoba koja pomaže kupcima pri odabiru i vrši '),
(3, 'Voditelj', 'Osoba koja upravlja trgovinom, narudzbe, itd');

-- --------------------------------------------------------

--
-- Table structure for table `Stavka`
--

CREATE TABLE `Stavka` (
  `id` int(11) NOT NULL,
  `artikl` int(11) DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Stavka`
--

INSERT INTO `Stavka` (`id`, `artikl`, `kolicina`) VALUES
(1, 1, 10),
(2, 2, 10),
(3, 3, 10),
(4, 4, 10),
(5, 5, 10),
(6, 6, 10),
(7, 7, 10),
(8, 8, 10),
(9, 9, 10),
(10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `StavkaRacun`
--

CREATE TABLE `StavkaRacun` (
  `id` int(11) NOT NULL,
  `racun_id` int(11) DEFAULT NULL,
  `artikl_id` int(11) DEFAULT NULL,
  `kolicina` int(11) DEFAULT NULL,
  `cijena` int(11) DEFAULT NULL,
  `popust` int(11) DEFAULT NULL,
  `iznos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Trgovacki_centar`
--

CREATE TABLE `Trgovacki_centar` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) NOT NULL,
  `adresa` varchar(45) NOT NULL,
  `kontakt` varchar(45) NOT NULL,
  `broj_trgovina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trgovacki_centar`
--

INSERT INTO `Trgovacki_centar` (`id`, `naziv`, `adresa`, `kontakt`, `broj_trgovina`) VALUES
(1, 'City centar one', 'Granicarska 1', 'one@email.com', 59),
(2, 'City centar two', 'Granicarska 2', 'two@email.com', 42),
(3, 'City centar three', 'Granicarska 3', 'three@email.com', 23),
(4, 'City centar four', 'Granicarska 4', 'four@email.com', 11),
(5, 'City centar five', 'Granicarska 5', 'five@email.com', 55),
(6, 'City centar six', 'Granicarska 6', 'six@email.com', 404),
(7, 'City centar seven', 'Granicarska 7', 'seven@email.com', 77),
(8, 'City centar eigth', 'Granicarska 8', 'eight@email.com', 88),
(9, 'City centar nine', 'Granicarska 9', 'nine@email.com', 99),
(10, 'City centar ten', 'Granicarska 10', 'ten@email.com', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Trgovina`
--

CREATE TABLE `Trgovina` (
  `id` int(11) NOT NULL,
  `naziv` varchar(45) DEFAULT NULL,
  `kontakt` varchar(45) DEFAULT NULL,
  `centar_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trgovina`
--

INSERT INTO `Trgovina` (`id`, `naziv`, `kontakt`, `centar_id`) VALUES
(1, 'Adidas', 'adidas@email.com', 1),
(2, 'Adidas', 'adidas@email.com', 1),
(3, 'Nike', 'nike@email.com', 1),
(4, 'Puma', 'puma@email.com', 1),
(5, 'Santa domenica', 'santa@email.com', 1),
(6, 'Smoking', 'smoking@email.com', 1),
(7, 'Tisak', 'tisak@email.com', 1),
(8, 'Hervis', 'hervis@email.com', 1),
(9, 'H&M', 'hm@email.com', 1),
(10, 'New Yorker', 'newyorker@email.com', 1),
(11, 'Muller', 'muller@email.com', 1),
(12, 'Polleo', '099 21 1892', NULL),
(16, 'Muller', '091-2222-111', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualnoVrijeme`
--

CREATE TABLE `VirtualnoVrijeme` (
  `id` int(11) NOT NULL,
  `pomak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `VirtualnoVrijeme`
--

INSERT INTO `VirtualnoVrijeme` (`id`, `pomak`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Zahtjevi`
--

CREATE TABLE `Zahtjevi` (
  `id` int(11) NOT NULL,
  `korisnicko` varchar(255) CHARACTER SET utf8 NOT NULL,
  `artikl_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Zahtjevi`
--

INSERT INTO `Zahtjevi` (`id`, `korisnicko`, `artikl_id`) VALUES
(5, 'grda', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Zaposlenik`
--

CREATE TABLE `Zaposlenik` (
  `id` int(11) NOT NULL,
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `adresa` varchar(45) NOT NULL,
  `telefon` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `datum_rodenja` datetime NOT NULL,
  `datum_zaposlenja` datetime NOT NULL,
  `radno_mjesto` int(11) NOT NULL,
  `korisnicko_ime` varchar(45) NOT NULL,
  `lozinka` varchar(45) NOT NULL,
  `trgovina_id` int(11) DEFAULT NULL,
  `moderator` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Zaposlenik`
--

INSERT INTO `Zaposlenik` (`id`, `ime`, `prezime`, `adresa`, `telefon`, `email`, `datum_rodenja`, `datum_zaposlenja`, `radno_mjesto`, `korisnicko_ime`, `lozinka`, `trgovina_id`, `moderator`) VALUES
(1, 'Tomislav', 'Keskic', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'tkeskic', 'aa', 1, 1),
(2, 'Marko', 'Markic', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'mmaric', 'aa', 1, 1),
(3, 'Ivan', 'Ivic', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'iivic', 'aa', 1, 1),
(4, 'Luka', 'Lukic', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'llukic', 'aa', 1, 1),
(5, 'Zarko', 'Zaric', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'zzaric', 'aa', 1, 1),
(6, 'Vjekoslav', 'Vjeko', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'vvjeko', 'aa', 1, 1),
(7, 'Ivica', 'Luzanin', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'iluzanin', 'aa', 1, 1),
(8, 'Ivana', 'Brlic', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'ibrlic', 'aa', 1, 1),
(9, 'Steve', 'Jobs', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'sjobs', 'aa', 1, 1),
(10, 'Steve', 'Wozniac', 'Sobocani', '0919191', 'email@email.com', '0000-00-00 00:00:00', '2020-01-01 10:10:10', 1, 'swozniac', 'aa', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Artikl`
--
ALTER TABLE `Artikl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trgovina_id` (`trgovina_id`),
  ADD KEY `kategorija` (`kategorija`);

--
-- Indexes for table `Dnevnik`
--
ALTER TABLE `Dnevnik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DZ4_Users`
--
ALTER TABLE `DZ4_Users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Kategorija`
--
ALTER TABLE `Kategorija`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popust` (`popust`);

--
-- Indexes for table `Konfiguracija`
--
ALTER TABLE `Konfiguracija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Korisnik`
--
ALTER TABLE `Korisnik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trgovina_id` (`trgovina_id`);

--
-- Indexes for table `Kosarica`
--
ALTER TABLE `Kosarica`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Narudzba`
--
ALTER TABLE `Narudzba`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p_partner` (`p_partner`),
  ADD KEY `zaposlenik_kreirao` (`zaposlenik_kreirao`);

--
-- Indexes for table `Narudzba_stavka`
--
ALTER TABLE `Narudzba_stavka`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_narudzbe` (`id_narudzbe`),
  ADD KEY `id_artikl` (`id_artikl`);

--
-- Indexes for table `Popusti`
--
ALTER TABLE `Popusti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Poslovni_Partner`
--
ALTER TABLE `Poslovni_Partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Racun`
--
ALTER TABLE `Racun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `korisnik_id` (`korisnik_id`);

--
-- Indexes for table `Radno_Mjesto`
--
ALTER TABLE `Radno_Mjesto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Stavka`
--
ALTER TABLE `Stavka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `StavkaRacun`
--
ALTER TABLE `StavkaRacun`
  ADD PRIMARY KEY (`id`),
  ADD KEY `racun_id` (`racun_id`),
  ADD KEY `artikl_id` (`artikl_id`);

--
-- Indexes for table `Trgovacki_centar`
--
ALTER TABLE `Trgovacki_centar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Trgovina`
--
ALTER TABLE `Trgovina`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centar_id` (`centar_id`);

--
-- Indexes for table `VirtualnoVrijeme`
--
ALTER TABLE `VirtualnoVrijeme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Zahtjevi`
--
ALTER TABLE `Zahtjevi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikl_id` (`artikl_id`);

--
-- Indexes for table `Zaposlenik`
--
ALTER TABLE `Zaposlenik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `radno_mjesto` (`radno_mjesto`),
  ADD KEY `trgovina_id` (`trgovina_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Artikl`
--
ALTER TABLE `Artikl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `Dnevnik`
--
ALTER TABLE `Dnevnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;
--
-- AUTO_INCREMENT for table `DZ4_Users`
--
ALTER TABLE `DZ4_Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Kategorija`
--
ALTER TABLE `Kategorija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Konfiguracija`
--
ALTER TABLE `Konfiguracija`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `Korisnik`
--
ALTER TABLE `Korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `Kosarica`
--
ALTER TABLE `Kosarica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Narudzba`
--
ALTER TABLE `Narudzba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Narudzba_stavka`
--
ALTER TABLE `Narudzba_stavka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `Popusti`
--
ALTER TABLE `Popusti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `Poslovni_Partner`
--
ALTER TABLE `Poslovni_Partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Racun`
--
ALTER TABLE `Racun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Radno_Mjesto`
--
ALTER TABLE `Radno_Mjesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Stavka`
--
ALTER TABLE `Stavka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `StavkaRacun`
--
ALTER TABLE `StavkaRacun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Trgovacki_centar`
--
ALTER TABLE `Trgovacki_centar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Trgovina`
--
ALTER TABLE `Trgovina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `VirtualnoVrijeme`
--
ALTER TABLE `VirtualnoVrijeme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Zahtjevi`
--
ALTER TABLE `Zahtjevi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Zaposlenik`
--
ALTER TABLE `Zaposlenik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Artikl`
--
ALTER TABLE `Artikl`
  ADD CONSTRAINT `Artikl_ibfk_1` FOREIGN KEY (`trgovina_id`) REFERENCES `Trgovina` (`id`),
  ADD CONSTRAINT `Artikl_ibfk_2` FOREIGN KEY (`kategorija`) REFERENCES `Kategorija` (`id`);

--
-- Constraints for table `Kategorija`
--
ALTER TABLE `Kategorija`
  ADD CONSTRAINT `Kategorija_ibfk_1` FOREIGN KEY (`popust`) REFERENCES `Popusti` (`id`);

--
-- Constraints for table `Korisnik`
--
ALTER TABLE `Korisnik`
  ADD CONSTRAINT `Korisnik_ibfk_1` FOREIGN KEY (`trgovina_id`) REFERENCES `Trgovina` (`id`);

--
-- Constraints for table `Kosarica`
--
ALTER TABLE `Kosarica`
  ADD CONSTRAINT `Kosarica_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Stavka` (`id`);

--
-- Constraints for table `Narudzba`
--
ALTER TABLE `Narudzba`
  ADD CONSTRAINT `Narudzba_ibfk_1` FOREIGN KEY (`p_partner`) REFERENCES `Poslovni_Partner` (`id`),
  ADD CONSTRAINT `Narudzba_ibfk_2` FOREIGN KEY (`zaposlenik_kreirao`) REFERENCES `Zaposlenik` (`id`);

--
-- Constraints for table `Narudzba_stavka`
--
ALTER TABLE `Narudzba_stavka`
  ADD CONSTRAINT `Narudzba_stavka_ibfk_1` FOREIGN KEY (`id_narudzbe`) REFERENCES `Narudzba` (`id`),
  ADD CONSTRAINT `Narudzba_stavka_ibfk_2` FOREIGN KEY (`id_artikl`) REFERENCES `Artikl` (`id`);

--
-- Constraints for table `Racun`
--
ALTER TABLE `Racun`
  ADD CONSTRAINT `Racun_ibfk_1` FOREIGN KEY (`korisnik_id`) REFERENCES `Korisnik` (`id`);

--
-- Constraints for table `Stavka`
--
ALTER TABLE `Stavka`
  ADD CONSTRAINT `Stavka_ibfk_1` FOREIGN KEY (`id`) REFERENCES `Artikl` (`id`);

--
-- Constraints for table `StavkaRacun`
--
ALTER TABLE `StavkaRacun`
  ADD CONSTRAINT `StavkaRacun_ibfk_1` FOREIGN KEY (`racun_id`) REFERENCES `Racun` (`id`),
  ADD CONSTRAINT `StavkaRacun_ibfk_2` FOREIGN KEY (`artikl_id`) REFERENCES `Artikl` (`id`);

--
-- Constraints for table `Trgovina`
--
ALTER TABLE `Trgovina`
  ADD CONSTRAINT `Trgovina_ibfk_1` FOREIGN KEY (`centar_id`) REFERENCES `Trgovacki_centar` (`id`);

--
-- Constraints for table `Zahtjevi`
--
ALTER TABLE `Zahtjevi`
  ADD CONSTRAINT `Zahtjevi_ibfk_1` FOREIGN KEY (`artikl_id`) REFERENCES `Artikl` (`id`);

--
-- Constraints for table `Zaposlenik`
--
ALTER TABLE `Zaposlenik`
  ADD CONSTRAINT `Zaposlenik_ibfk_1` FOREIGN KEY (`radno_mjesto`) REFERENCES `Radno_Mjesto` (`id`),
  ADD CONSTRAINT `Zaposlenik_ibfk_2` FOREIGN KEY (`trgovina_id`) REFERENCES `Trgovina` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
