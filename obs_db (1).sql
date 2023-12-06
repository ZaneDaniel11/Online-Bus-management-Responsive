-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 04:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce_tb`
--

CREATE TABLE `announce_tb` (
  `id` int(50) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `info` varchar(1000) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announce_tb`
--

INSERT INTO `announce_tb` (`id`, `about`, `info`, `date`) VALUES
(1, 'notice', 'Hala testing naay guba ang imong otok yepee', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `arrival_tb`
--

CREATE TABLE `arrival_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `departured_time` varchar(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arrival_tb`
--

INSERT INTO `arrival_tb` (`id`, `bus_no`, `unit`, `departured_time`, `route_destination`) VALUES
(4, 12321, '10:10', 'CEBU', 'Air Condation');

-- --------------------------------------------------------

--
-- Table structure for table `book_tb`
--

CREATE TABLE `book_tb` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_tb`
--

INSERT INTO `book_tb` (`id`, `email`, `unit`, `route_destination`) VALUES
(1, 'kramnotado22@gmail.com', 'ALC', 'male'),
(2, 'kramnotado22@gmail.com', 'ALC', 'male'),
(3, 'kramnotado22@gmail.com', 'ALC', 'male'),
(4, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(5, 'testing@gmail.com', 'DLX', 'danao'),
(6, 'kramnotado22@gmail.com', 'ALC', 'cebu'),
(7, 'kramnotado22@gmail.com', 'ALC', 'cebu');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stamby`
--

CREATE TABLE `bus_stamby` (
  `id` int(100) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cor_number` int(100) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `departure_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus_stamby`
--

INSERT INTO `bus_stamby` (`id`, `bus_no`, `route_destination`, `unit`, `cor_number`, `drivers_name`, `conductors_name`, `departure_time`) VALUES
(3, 0, 'BOGO', 'ALC', 27, 'Horley', 'Probert', '8:44 AM'),
(4, 796, 'DANAO', 'DLX', 54, 'Gardener', 'Fossett', '2:40 PM'),
(5, 9, 'DANAO', 'ALC', 7443, 'McKilroe', 'Tonge', '6:53 PM'),
(6, 38556, 'BOGO', 'ALC', 50100, 'Garry', 'Ramm', '9:08 PM'),
(7, 600, 'DANAO', 'DLX', 29, 'Pagram', 'Gallgher', '11:21 AM'),
(8, 16, 'DAAN BANTAYAN', 'ALC', 58984, 'Dicey', 'Shelmerdine', '3:52 PM'),
(9, 15200, 'BOGO', 'ALC', 47024, 'Arghent', 'Faussett', '7:59 PM'),
(10, 9847, 'BOGO', 'DLX', 5462, 'Normanton', 'Klimpke', '10:47 AM'),
(11, 65, 'DAAN BANTAYAN', 'ALC', 97, 'Kenlin', 'Hankard', '3:33 AM'),
(12, 56223, 'DAAN BANTAYAN', 'ALC', 20, 'Annets', 'Perrins', '6:46 PM'),
(13, 3, 'BOGO', 'ALC', 9490, 'Gilkison', 'Goodbar', '10:37 AM'),
(14, 30, 'CEBU', 'ALC', 47277, 'Sweetnam', 'Jencey', '12:30 AM'),
(15, 15474, 'BOGO', 'ALC', 9174, 'Isaaksohn', 'Bonavia', '1:45 PM'),
(16, 713, 'CEBU', 'ALC', 9804, 'Peiro', 'Silbert', '7:38 AM'),
(17, 0, 'DAAN BANTAYAN', 'DLX', 89, 'Tremonte', 'Szymanski', '2:13 PM'),
(18, 1, 'BOGO', 'ALC', 1741, 'Dunstall', 'Stradling', '7:19 PM'),
(19, 6322, 'DAAN BANTAYAN', 'ALC', 15, 'Bartram', 'Brydson', '12:14 PM'),
(20, 898, 'DAAN BANTAYAN', 'ALC', 88815, 'Keyser', 'Damiral', '1:15 PM'),
(21, 8864, 'CEBU', 'ALC', 40, 'Reyson', 'Kless', '3:06 PM'),
(22, 28, 'BOGO', 'DLX', 273, 'Haskey', 'Buckthought', '5:41 AM'),
(23, 95, 'CEBU', 'DLX', 686, 'Annott', 'Hedworth', '5:34 AM'),
(24, 9, 'BOGO', 'DLX', 91186, 'Procter', 'Pickance', '1:48 PM'),
(25, 24957, 'CEBU', 'DLX', 37, 'Wedlake', 'De Domenicis', '1:23 AM'),
(26, 3, 'CEBU', 'ALC', 47211, 'Warlton', 'Lowdham', '5:43 AM'),
(27, 814, 'DANAO', 'DLX', 7, 'Sancto', 'Brisson', '12:42 PM'),
(28, 32, 'BOGO', 'DLX', 3766, 'Matthisson', 'Czyz', '2:33 AM'),
(29, 4, 'BOGO', 'DLX', 77, 'Rubinfeld', 'Bysouth', '4:57 AM'),
(30, 74252, 'DANAO', 'ALC', 1151, 'Regler', 'Luard', '1:05 AM'),
(31, 108, 'BOGO', 'DLX', 2, 'Waggatt', 'Manilow', '2:03 PM'),
(32, 421, 'BOGO', 'DLX', 7555, 'Heijnen', 'Farlane', '1:57 AM'),
(33, 841, 'DAAN BANTAYAN', 'DLX', 8, 'Hrachovec', 'Groundwater', '9:28 AM'),
(34, 340, 'BOGO', 'DLX', 4317, 'Spiring', 'Stookes', '7:12 PM'),
(35, 2796, 'DAAN BANTAYAN', 'ALC', 8504, 'Zavattieri', 'Copperwaite', '7:50 AM'),
(36, 3, 'CEBU', 'ALC', 72718, 'Burl', 'Carnaman', '10:04 AM'),
(37, 93895, 'CEBU', 'ALC', 88, 'Fratson', 'Tibols', '5:05 AM'),
(38, 60, 'DANAO', 'DLX', 3, 'Rudgley', 'Percifull', '2:11 AM'),
(39, 6, 'DAAN BANTAYAN', 'DLX', 30159, 'Pavolini', 'D\'Aguanno', '6:08 PM'),
(40, 75, 'DAAN BANTAYAN', 'ALC', 3, 'Hurdis', 'Winckle', '10:39 PM'),
(41, 68091, 'CEBU', 'ALC', 719, 'Ancliffe', 'Messom', '6:51 PM'),
(42, 2804, 'DAAN BANTAYAN', 'DLX', 649, 'Doyley', 'Josowitz', '9:21 AM'),
(43, 1, 'CEBU', 'ALC', 1, 'Balser', 'Ramsbottom', '7:19 PM'),
(44, 58718, 'DANAO', 'DLX', 6, 'Moreside', 'Hurran', '7:24 PM'),
(45, 5377, 'BOGO', 'ALC', 4468, 'McFarlan', 'Macguire', '8:21 AM'),
(46, 15, 'DANAO', 'ALC', 3138, 'Saltmarsh', 'Havesides', '8:31 AM'),
(47, 534, 'BOGO', 'ALC', 2, 'Killick', 'Margram', '3:47 AM'),
(48, 9, 'DAAN BANTAYAN', 'ALC', 9, 'Garbutt', 'Lowy', '7:23 AM'),
(49, 647, 'BOGO', 'ALC', 5422, 'Yes', 'Morrott', '4:57 AM'),
(50, 366, 'DANAO', 'DLX', 5698, 'Valdes', 'Eddow', '7:46 PM'),
(51, 53, 'DANAO', 'DLX', 3, 'O\'Donnelly', 'Enderwick', '9:27 PM'),
(52, 40242, 'BOGO', 'DLX', 34838, 'Owbridge', 'Caroll', '1:03 AM'),
(53, 7730, 'DAAN BANTAYAN', 'DLX', 78940, 'Giamo', 'Doig', '1:05 AM'),
(54, 3445, 'BOGO', 'ALC', 3, 'Macy', 'Egginton', '5:32 PM'),
(55, 90, 'BOGO', 'DLX', 9, 'Boston', 'Pittet', '11:45 AM'),
(56, 995, 'CEBU', 'ALC', 7312, 'Meriott', 'Matula', '10:45 AM'),
(57, 5, 'DAAN BANTAYAN', 'ALC', 6420, 'Skune', 'Pinwill', '3:01 AM'),
(58, 6862, 'DANAO', 'ALC', 120, 'Dast', 'Nijssen', '2:18 AM'),
(59, 53, 'DANAO', 'DLX', 4917, 'Cockerton', 'Thistleton', '7:35 AM'),
(60, 5, 'DAAN BANTAYAN', 'DLX', 999, 'Meineck', 'Skippen', '5:59 PM'),
(61, 1587, 'DAAN BANTAYAN', 'ALC', 33763, 'Slocom', 'Frossell', '11:20 AM'),
(62, 6, 'CEBU', 'DLX', 45, 'Greensmith', 'Thewles', '11:44 AM'),
(63, 58777, 'BOGO', 'DLX', 3, 'Mundall', 'Tarrier', '11:17 PM'),
(64, 1, 'DAAN BANTAYAN', 'DLX', 65713, 'Cresar', 'Blench', '11:16 AM'),
(65, 73, 'DAAN BANTAYAN', 'ALC', 93, 'Middlemist', 'Petrenko', '9:07 PM'),
(66, 3943, 'DAAN BANTAYAN', 'DLX', 24, 'Le Barr', 'Tenniswood', '12:02 PM'),
(67, 85, 'DANAO', 'DLX', 69582, 'Roycroft', 'Saffer', '8:24 PM'),
(68, 48, 'DAAN BANTAYAN', 'DLX', 12, 'McCoughan', 'Cummungs', '5:51 AM'),
(69, 1398, 'CEBU', 'DLX', 2, 'Dow', 'Parfett', '7:11 AM'),
(70, 36186, 'CEBU', 'ALC', 68509, 'Attlee', 'Moule', '2:09 AM'),
(71, 12, 'DAAN BANTAYAN', 'DLX', 14, 'Ringwood', 'Harses', '11:47 AM'),
(72, 54863, 'BOGO', 'ALC', 7, 'Fortnon', 'Leber', '9:38 AM'),
(73, 4323, 'DAAN BANTAYAN', 'ALC', 4506, 'Verdey', 'Seilmann', '6:47 PM'),
(74, 346, 'CEBU', 'DLX', 91529, 'Lindenblatt', 'Drissell', '4:39 PM'),
(75, 7, 'BOGO', 'DLX', 85685, 'Duns', 'Cardello', '5:50 PM'),
(76, 42, 'CEBU', 'ALC', 93, 'Giovannardi', 'Rizzo', '2:28 AM'),
(77, 78, 'BOGO', 'DLX', 9709, 'Codrington', 'Braben', '1:45 PM'),
(78, 61, 'DANAO', 'ALC', 2, 'Forcer', 'Laight', '3:24 PM'),
(79, 180, 'DANAO', 'ALC', 8368, 'Bernardes', 'Gallemore', '6:29 AM'),
(80, 26799, 'BOGO', 'ALC', 692, 'Dutson', 'Chadney', '11:58 PM'),
(81, 6942, 'BOGO', 'DLX', 787, 'Monckton', 'Colegrove', '8:00 PM'),
(82, 453, 'DANAO', 'ALC', 262, 'Ferrino', 'Hughlock', '8:46 AM'),
(83, 62713, 'DANAO', 'ALC', 1847, 'Enders', 'Cox', '8:37 PM'),
(84, 21, 'DANAO', 'ALC', 75185, 'Hennemann', 'Ludlamme', '2:34 AM'),
(85, 7672, 'CEBU', 'ALC', 1669, 'Hellwich', 'Jonuzi', '7:24 AM'),
(86, 32, 'CEBU', 'DLX', 59, 'Brierly', 'Jenteau', '12:16 AM'),
(87, 4137, 'DANAO', 'DLX', 7525, 'Erbe', 'Trewinnard', '12:54 PM'),
(88, 74, 'DAAN BANTAYAN', 'DLX', 4629, 'Stirgess', 'MacGuigan', '5:39 PM'),
(89, 1244, 'BOGO', 'ALC', 942, 'Yakovitch', 'Habin', '4:49 AM'),
(90, 517, 'DAAN BANTAYAN', 'DLX', 48821, 'Wiszniewski', 'Fruin', '2:32 AM'),
(91, 69293, 'CEBU', 'ALC', 55, 'Garratty', 'De Angelo', '4:04 AM'),
(92, 5437, 'DAAN BANTAYAN', 'DLX', 84656, 'Staten', 'Borsay', '1:31 AM'),
(93, 8, 'DANAO', 'ALC', 4, 'Pattesall', 'Fernie', '9:22 PM'),
(94, 41308, 'BOGO', 'ALC', 387, 'Abercromby', 'Braitling', '10:10 PM'),
(95, 358, 'DANAO', 'ALC', 298, 'Seebright', 'Perrin', '8:10 AM'),
(96, 214, 'DANAO', 'ALC', 12952, 'Shingfield', 'McDowall', '8:33 AM'),
(97, 60, 'BOGO', 'DLX', 47, 'Uff', 'Merigon', '8:56 AM'),
(98, 132, 'DAAN BANTAYAN', 'ALC', 86, 'Glanders', 'Schimmang', '10:45 PM'),
(99, 254, 'CEBU', 'ALC', 963, 'Rasch', 'McGaugie', '8:47 PM'),
(100, 3430, 'BOGO', 'DLX', 630, 'Tobias', 'Ormonde', '1:57 AM'),
(101, 695, 'DAAN BANTAYAN', 'DLX', 8406, 'Wallworth', 'Fulle', '1:20 PM'),
(102, 196, 'CEBU', 'DLX', 6, 'Daton', 'Keoghane', '3:25 AM'),
(103, 761, 'DAAN BANTAYAN', 'ALC', 801, 'Skaif', 'Blatchford', '1:09 AM'),
(104, 52, 'CEBU', 'DLX', 1, 'Parlett', 'Tellenbrok', '2:10 AM'),
(105, 40697, 'DANAO', 'ALC', 3, 'Ghest', 'Driffield', '11:06 AM'),
(106, 30, 'DAAN BANTAYAN', 'DLX', 4, 'Keam', 'Verbeke', '3:25 AM'),
(107, 59810, 'CEBU', 'ALC', 20890, 'Vacher', 'Lockhurst', '10:41 PM'),
(108, 4074, 'BOGO', 'DLX', 39, 'Wotherspoon', 'Swaffer', '8:23 AM'),
(109, 35, 'DAAN BANTAYAN', 'ALC', 5090, 'Lippiett', 'Eccleston', '10:58 PM'),
(110, 1, 'CEBU', 'DLX', 60, 'Tamas', 'Riches', '5:45 AM'),
(111, 833, 'BOGO', 'DLX', 849, 'Etheredge', 'Beccera', '2:23 AM'),
(112, 46, 'DAAN BANTAYAN', 'DLX', 79, 'Ferrelli', 'Janusik', '5:23 AM'),
(113, 44133, 'BOGO', 'DLX', 5873, 'Bransby', 'Lewendon', '8:43 AM'),
(114, 839, 'BOGO', 'ALC', 678, 'Kynan', 'Weald', '5:58 AM'),
(115, 57, 'DANAO', 'DLX', 768, 'Mehew', 'Morad', '2:39 PM'),
(116, 505, 'DANAO', 'ALC', 29, 'Hegden', 'Lewty', '5:09 AM'),
(117, 5170, 'DANAO', 'ALC', 63902, 'Javes', 'Silly', '11:39 PM'),
(118, 39538, 'DAAN BANTAYAN', 'DLX', 92193, 'Clissell', 'Devenny', '3:08 PM'),
(119, 511, 'BOGO', 'DLX', 41, 'O\'Rudden', 'Chiommienti', '11:11 PM'),
(120, 499, 'DANAO', 'ALC', 2427, 'Dunk', 'Everal', '3:18 PM'),
(121, 82, 'DAAN BANTAYAN', 'ALC', 9245, 'Nealy', 'Capstaff', '2:38 PM'),
(122, 57, 'DAAN BANTAYAN', 'ALC', 63519, 'Swire', 'Enden', '6:29 AM'),
(123, 31, 'DANAO', 'DLX', 45801, 'Meiklejohn', 'Colman', '5:35 PM'),
(124, 3748, 'CEBU', 'DLX', 878, 'Androletti', 'Simoni', '8:56 AM'),
(125, 4, 'BOGO', 'DLX', 57, 'Forsdicke', 'Shurmer', '7:05 PM'),
(126, 7918, 'BOGO', 'DLX', 923, 'Magnar', 'Stickings', '11:57 PM'),
(127, 7897, 'DANAO', 'ALC', 27, 'Adkin', 'Gylle', '10:50 PM'),
(128, 914, 'CEBU', 'ALC', 7994, 'Shallcroff', 'Gerardin', '9:15 PM'),
(129, 7695, 'DAAN BANTAYAN', 'DLX', 19604, 'Winkless', 'Durand', '2:17 PM'),
(130, 53055, 'DANAO', 'ALC', 96, 'Pennington', 'Morrieson', '4:06 AM'),
(131, 9, 'CEBU', 'ALC', 45, 'Gault', 'Bayne', '2:25 AM'),
(132, 9, 'CEBU', 'ALC', 25, 'Kainz', 'Pude', '11:23 AM'),
(133, 2891, 'DAAN BANTAYAN', 'DLX', 51422, 'Larcombe', 'Satch', '8:17 AM'),
(134, 798, 'BOGO', 'ALC', 210, 'Duddell', 'Lehemann', '4:38 PM'),
(135, 5905, 'BOGO', 'DLX', 902, 'Dies', 'Vere', '3:14 AM'),
(136, 51, 'BOGO', 'DLX', 2, 'Spraberry', 'Dolligon', '2:47 AM'),
(137, 23, 'BOGO', 'DLX', 67732, 'Purseglove', 'Gerretsen', '5:13 AM'),
(138, 8, 'DAAN BANTAYAN', 'DLX', 9, 'Crossfeld', 'Tipping', '1:48 AM'),
(139, 71, 'CEBU', 'ALC', 999, 'Selman', 'Hartnell', '7:35 PM'),
(140, 9066, 'BOGO', 'DLX', 8586, 'Itzhayek', 'Todman', '8:44 PM'),
(141, 7613, 'CEBU', 'DLX', 1, 'Cotterel', 'Crannage', '10:38 AM'),
(142, 352, 'DAAN BANTAYAN', 'DLX', 75020, 'Caizley', 'Smethurst', '8:50 PM'),
(143, 44, 'DAAN BANTAYAN', 'ALC', 21, 'Dytham', 'Newing', '10:37 PM'),
(144, 422, 'DANAO', 'ALC', 42570, 'Gierok', 'Compson', '6:38 PM'),
(145, 663, 'BOGO', 'ALC', 33, 'Manuaud', 'Shovelbottom', '10:05 PM'),
(146, 5, 'DAAN BANTAYAN', 'DLX', 98636, 'Laurenceau', 'Agates', '2:57 PM'),
(147, 3, 'DAAN BANTAYAN', 'DLX', 31, 'Yakunin', 'Reader', '8:52 PM'),
(148, 4824, 'DANAO', 'DLX', 63, 'McNabb', 'Sander', '3:32 PM'),
(149, 697, 'DAAN BANTAYAN', 'ALC', 65270, 'de Nore', 'Prestner', '12:49 PM'),
(150, 99, 'BOGO', 'ALC', 6681, 'Coudray', 'Bazley', '5:39 AM'),
(151, 9546, 'CEBU', 'ALC', 44, 'Stagg', 'Cato', '7:50 AM'),
(152, 8, 'CEBU', 'DLX', 69654, 'Aspinell', 'Antoszczyk', '4:03 PM'),
(153, 783, 'DANAO', 'DLX', 586, 'Humbell', 'Janczak', '5:15 PM'),
(154, 35, 'CEBU', 'ALC', 9, 'Juorio', 'Bertot', '9:50 PM'),
(155, 66111, 'BOGO', 'DLX', 18, 'Leeder', 'Salomon', '2:15 AM'),
(156, 62, 'DAAN BANTAYAN', 'ALC', 3741, 'Boulton', 'Stockings', '12:02 PM'),
(157, 5, 'DAAN BANTAYAN', 'DLX', 2118, 'Von Brook', 'Davidowich', '2:48 AM'),
(158, 0, 'BOGO', 'ALC', 344, 'Marrable', 'Capehorn', '9:48 AM'),
(159, 3180, 'DANAO', 'ALC', 2961, 'Yetts', 'Thurlby', '3:42 PM'),
(160, 59, 'BOGO', 'ALC', 7745, 'Mayho', 'Sreenan', '11:44 AM'),
(161, 1, 'BOGO', 'ALC', 3, 'Gauge', 'Maundrell', '11:50 AM'),
(162, 27977, 'DAAN BANTAYAN', 'DLX', 69, 'Pettengell', 'Robens', '3:47 PM'),
(163, 41, 'DAAN BANTAYAN', 'DLX', 3, 'Pedycan', 'Josskovitz', '1:04 PM'),
(164, 810, 'BOGO', 'DLX', 7, 'McElhinney', 'Sallarie', '7:12 PM'),
(165, 268, 'DAAN BANTAYAN', 'ALC', 82021, 'Mourton', 'Tuerena', '9:21 AM'),
(166, 9908, 'BOGO', 'DLX', 81514, 'Aldington', 'Colquete', '2:48 PM'),
(167, 1, 'BOGO', 'ALC', 550, 'Greger', 'Brunel', '6:30 PM'),
(168, 9, 'CEBU', 'DLX', 987, 'Rontsch', 'Essam', '9:24 PM'),
(169, 8, 'CEBU', 'ALC', 2, 'Lutas', 'Gepp', '2:31 PM'),
(170, 2, 'CEBU', 'ALC', 420, 'Elegood', 'Gorce', '7:29 PM'),
(171, 1178, 'CEBU', 'ALC', 257, 'Duding', 'Gallo', '11:19 AM'),
(172, 98041, 'BOGO', 'DLX', 5166, 'Carryer', 'Chrippes', '6:14 PM'),
(173, 9615, 'DAAN BANTAYAN', 'DLX', 501, 'Rishbrook', 'Sharer', '7:19 PM'),
(174, 180, 'BOGO', 'ALC', 2, 'Caro', 'Thornton', '10:34 AM'),
(175, 2924, 'CEBU', 'DLX', 59603, 'Bissill', 'Girk', '9:13 AM'),
(176, 13, 'BOGO', 'DLX', 31, 'Imlin', 'Piburn', '3:38 PM'),
(177, 8, 'BOGO', 'ALC', 83, 'Oseland', 'Pridden', '9:26 PM'),
(178, 3, 'DANAO', 'DLX', 1, 'Wissbey', 'Nijssen', '9:21 AM'),
(179, 9399, 'BOGO', 'DLX', 33061, 'Beagley', 'Martensen', '3:29 AM'),
(180, 0, 'DAAN BANTAYAN', 'ALC', 50, 'Yewen', 'Solomon', '1:16 AM'),
(181, 17, 'BOGO', 'DLX', 8, 'Beller', 'Aiston', '6:26 PM'),
(182, 71, 'CEBU', 'ALC', 1544, 'Mabey', 'Radbone', '4:57 AM'),
(183, 37, 'CEBU', 'DLX', 98, 'Mawne', 'Gocke', '10:02 PM'),
(184, 37723, 'DAAN BANTAYAN', 'ALC', 740, 'Malling', 'Guille', '6:40 AM'),
(185, 5350, 'DAAN BANTAYAN', 'DLX', 8094, 'Bissett', 'Viney', '5:40 AM'),
(186, 75, 'DANAO', 'DLX', 759, 'Tomczak', 'Beaushaw', '4:39 PM'),
(187, 8294, 'CEBU', 'ALC', 82842, 'Blayd', 'Sadd', '11:45 AM'),
(188, 8331, 'BOGO', 'DLX', 1912, 'Murkus', 'Fassbender', '11:18 AM'),
(189, 2852, 'DANAO', 'ALC', 58, 'De Bischop', 'Raistrick', '7:18 PM'),
(190, 596, 'DAAN BANTAYAN', 'ALC', 196, 'Kiss', 'Cogar', '8:10 PM'),
(191, 22, 'BOGO', 'ALC', 8728, 'Rowlin', 'Muzzullo', '11:13 AM'),
(192, 6236, 'CEBU', 'DLX', 0, 'McPaike', 'Gebbie', '10:06 AM'),
(193, 513, 'DAAN BANTAYAN', 'ALC', 7929, 'Davidof', 'Colquit', '5:55 PM'),
(194, 59, 'DAAN BANTAYAN', 'ALC', 24, 'McGeechan', 'Halksworth', '6:42 AM'),
(195, 571, 'DAAN BANTAYAN', 'DLX', 70, 'Scrimshaw', 'Laughlan', '11:40 PM'),
(196, 518, 'DANAO', 'DLX', 90138, 'Samsonsen', 'Noice', '4:19 AM'),
(197, 21910, 'CEBU', 'ALC', 9619, 'Baumford', 'Farmery', '12:14 AM'),
(198, 3, 'DAAN BANTAYAN', 'ALC', 85, 'Trasler', 'Aluard', '7:50 AM'),
(199, 21251, 'BOGO', 'DLX', 30495, 'Flode', 'German', '11:41 PM'),
(200, 1, 'DAAN BANTAYAN', 'ALC', 3, 'Worthy', 'Buckerfield', '3:39 AM'),
(201, 9, 'DAAN BANTAYAN', 'ALC', 6628, 'Withey', 'Pache', '10:00 PM'),
(202, 7, 'CEBU', 'DLX', 42, 'Ebbin', 'Comelini', '4:08 PM'),
(203, 3, 'BOGO', 'DLX', 7, 'Hartzenberg', 'Storrah', '3:18 AM'),
(204, 7, 'DANAO', 'DLX', 1, 'Rodge', 'Turpin', '2:17 AM'),
(205, 2, 'BOGO', 'ALC', 968, 'Deans', 'Pretley', '11:04 AM'),
(206, 8412, 'DAAN BANTAYAN', 'DLX', 461, 'Medgwick', 'Parkin', '5:24 PM'),
(207, 3, 'DANAO', 'DLX', 47, 'Olenchikov', 'Easterby', '8:13 AM'),
(208, 63097, 'BOGO', 'ALC', 6822, 'Swanson', 'Raitie', '3:35 AM'),
(209, 9, 'CEBU', 'DLX', 97, 'Berardt', 'Paszak', '12:21 PM'),
(210, 78961, 'BOGO', 'ALC', 37, 'Cullingford', 'Donn', '2:05 AM'),
(211, 84, 'CEBU', 'ALC', 142, 'Bolderoe', 'Pelcheur', '12:10 AM'),
(212, 9165, 'DAAN BANTAYAN', 'ALC', 844, 'Willstrop', 'Sawtell', '12:34 AM'),
(213, 3, 'DAAN BANTAYAN', 'ALC', 1834, 'Polk', 'Sirmond', '1:09 PM'),
(214, 5, 'CEBU', 'ALC', 0, 'Cowdroy', 'Rhymer', '7:24 AM'),
(215, 1, 'DANAO', 'ALC', 1317, 'Welberry', 'Couronne', '12:40 PM'),
(216, 531, 'DAAN BANTAYAN', 'ALC', 6, 'Pritty', 'Swede', '12:37 AM'),
(217, 4, 'BOGO', 'DLX', 196, 'Matiewe', 'Rival', '10:29 AM'),
(218, 65, 'DANAO', 'DLX', 943, 'Blainey', 'Burwell', '4:42 AM'),
(219, 93, 'DAAN BANTAYAN', 'ALC', 1688, 'Itchingham', 'Whitton', '12:59 AM'),
(220, 13, 'CEBU', 'ALC', 26022, 'Doogue', 'Pebworth', '6:14 PM'),
(221, 515, 'CEBU', 'DLX', 2, 'Shobbrook', 'Brecken', '12:26 AM'),
(222, 6192, 'DAAN BANTAYAN', 'DLX', 603, 'Springford', 'Fleckno', '6:31 AM'),
(223, 3603, 'CEBU', 'DLX', 261, 'Mein', 'Kempson', '7:40 AM'),
(224, 55, 'CEBU', 'ALC', 625, 'Kuhndel', 'Nellen', '10:43 AM'),
(225, 31, 'CEBU', 'DLX', 26198, 'Assante', 'Huddy', '2:23 AM'),
(226, 429, 'BOGO', 'ALC', 97, 'Tomisch', 'Runge', '11:05 AM'),
(227, 346, 'BOGO', 'DLX', 71, 'Woodyear', 'Thurstan', '4:16 AM'),
(228, 27000, 'DANAO', 'DLX', 65085, 'Kirstein', 'Bossingham', '11:45 PM'),
(229, 2, 'BOGO', 'ALC', 671, 'Pickford', 'Marven', '5:55 AM'),
(230, 8861, 'DAAN BANTAYAN', 'ALC', 7983, 'Conyard', 'Antos', '1:36 AM'),
(231, 559, 'CEBU', 'DLX', 7, 'Salan', 'La Croce', '6:17 PM'),
(232, 8, 'BOGO', 'DLX', 10, 'Hunnawill', 'Teodorski', '12:38 AM'),
(233, 11271, 'DANAO', 'ALC', 7721, 'Camp', 'Sigert', '5:18 AM'),
(234, 5, 'CEBU', 'ALC', 3, 'Handrick', 'McConigal', '7:48 PM'),
(235, 0, 'DAAN BANTAYAN', 'ALC', 19706, 'Garstan', 'Varns', '11:25 PM'),
(236, 55, 'CEBU', 'ALC', 0, 'Cornes', 'Wombwell', '12:18 PM'),
(237, 57622, 'DAAN BANTAYAN', 'DLX', 909, 'Vegas', 'Dank', '5:13 PM'),
(238, 243, 'BOGO', 'ALC', 7, 'Succamore', 'Haig', '11:17 PM'),
(239, 99, 'DAAN BANTAYAN', 'DLX', 230, 'Perle', 'Skittles', '11:47 PM'),
(240, 43692, 'DANAO', 'ALC', 157, 'Annetts', 'McCartney', '5:13 PM'),
(241, 6, 'DANAO', 'DLX', 1, 'Northin', 'Yablsley', '5:03 AM'),
(242, 7, 'DAAN BANTAYAN', 'DLX', 43292, 'Purdie', 'Surgen', '1:10 PM'),
(243, 209, 'DANAO', 'DLX', 77, 'Ilyunin', 'Ridgway', '6:43 AM'),
(244, 7751, 'DANAO', 'DLX', 86, 'Yetts', 'Stenners', '1:17 AM'),
(245, 27, 'DANAO', 'DLX', 75, 'Beldom', 'Wrankling', '7:49 PM'),
(246, 13314, 'DAAN BANTAYAN', 'DLX', 10864, 'Boys', 'Goodhall', '5:25 AM'),
(247, 1444, 'DAAN BANTAYAN', 'ALC', 2931, 'Haselwood', 'Hardaker', '1:08 AM'),
(248, 0, 'DANAO', 'ALC', 866, 'Brachell', 'Castellucci', '2:47 AM'),
(249, 433, 'DAAN BANTAYAN', 'DLX', 2, 'Smail', 'Penning', '8:26 PM'),
(250, 38452, 'CEBU', 'DLX', 34, 'Moehle', 'Treske', '3:50 AM'),
(251, 30846, 'CEBU', 'ALC', 5, 'Esselen', 'Sweedy', '7:49 AM'),
(252, 81, 'CEBU', 'DLX', 8034, 'Blees', 'Torns', '1:13 AM'),
(253, 54933, 'BOGO', 'ALC', 83, 'Rowlands', 'Ewington', '8:43 PM'),
(254, 9, 'BOGO', 'DLX', 2, 'Tyzack', 'Beharrell', '9:27 AM'),
(255, 69331, 'DAAN BANTAYAN', 'ALC', 70553, 'Klimowicz', 'Extance', '3:23 PM'),
(256, 600, 'DAAN BANTAYAN', 'DLX', 778, 'Hadeke', 'Matkovic', '10:16 AM'),
(257, 8, 'BOGO', 'ALC', 579, 'Cottu', 'Casella', '5:36 PM'),
(258, 1, 'BOGO', 'ALC', 99790, 'Fassman', 'Tonbye', '11:23 PM'),
(259, 41111, 'CEBU', 'ALC', 3517, 'Swenson', 'Adenet', '12:46 AM'),
(260, 914, 'CEBU', 'ALC', 6, 'Jerger', 'Tewkesbury', '2:00 AM'),
(261, 34, 'BOGO', 'DLX', 35788, 'Eaken', 'Predohl', '5:35 AM'),
(262, 161, 'DAAN BANTAYAN', 'DLX', 3883, 'Ellaman', 'Stockney', '12:31 AM'),
(263, 935, 'CEBU', 'DLX', 9210, 'Govier', 'Detoc', '7:27 PM'),
(264, 65, 'BOGO', 'ALC', 1078, 'Fritschel', 'Unwins', '4:18 PM'),
(265, 43410, 'BOGO', 'DLX', 36, 'Dene', 'Bewicke', '5:48 AM'),
(266, 8, 'DAAN BANTAYAN', 'ALC', 6, 'Else', 'Blackwood', '4:47 PM'),
(267, 6, 'DANAO', 'ALC', 285, 'Loache', 'Wash', '6:22 AM'),
(268, 232, 'BOGO', 'ALC', 35, 'Fernan', 'Jedrzaszkiewicz', '11:32 AM'),
(269, 2025, 'BOGO', 'DLX', 8, 'Cajkler', 'Austins', '9:36 PM'),
(270, 4811, 'DAAN BANTAYAN', 'ALC', 8074, 'Strettle', 'Gaitone', '5:20 AM'),
(271, 13, 'DAAN BANTAYAN', 'DLX', 4640, 'Symington', 'Cathel', '4:13 AM'),
(272, 9035, 'BOGO', 'ALC', 615, 'Brobak', 'Bettenay', '3:38 AM'),
(273, 12489, 'BOGO', 'DLX', 71, 'Blackshaw', 'Kindon', '7:02 PM'),
(274, 9519, 'DANAO', 'ALC', 40, 'Boldry', 'Skehan', '6:05 PM'),
(275, 52501, 'DAAN BANTAYAN', 'ALC', 34, 'Conneau', 'Esson', '3:29 AM'),
(276, 860, 'CEBU', 'DLX', 78168, 'Longstreeth', 'Costelloe', '11:14 PM'),
(277, 2002, 'DAAN BANTAYAN', 'DLX', 83, 'Jerrard', 'Tevlin', '3:03 AM'),
(278, 7498, 'DAAN BANTAYAN', 'ALC', 3, 'Hillatt', 'Crawforth', '12:29 PM'),
(279, 42, 'BOGO', 'DLX', 8, 'Merrin', 'von Grollmann', '10:31 AM'),
(280, 327, 'DAAN BANTAYAN', 'ALC', 2, 'Abernethy', 'Pudsey', '11:07 AM'),
(281, 8, 'CEBU', 'ALC', 458, 'Shipway', 'Cripwell', '9:36 AM'),
(282, 80674, 'BOGO', 'DLX', 15, 'Skein', 'Lowell', '4:07 AM'),
(283, 40838, 'DANAO', 'ALC', 1081, 'Kohter', 'Parnham', '12:21 AM'),
(284, 96478, 'DANAO', 'ALC', 85883, 'Glasscott', 'Marval', '7:45 AM'),
(285, 41144, 'DAAN BANTAYAN', 'ALC', 34729, 'Eyckelberg', 'Fazzioli', '5:28 PM'),
(286, 8523, 'DAAN BANTAYAN', 'DLX', 2229, 'McTurley', 'Markham', '8:29 PM'),
(287, 779, 'CEBU', 'DLX', 7, 'Bonfield', 'Gravenor', '3:04 PM'),
(288, 829, 'DAAN BANTAYAN', 'DLX', 6, 'Happert', 'Pail', '9:58 AM'),
(289, 363, 'DAAN BANTAYAN', 'DLX', 80138, 'Ducker', 'Allred', '5:27 PM'),
(290, 8, 'BOGO', 'DLX', 1, 'Bernade', 'Gatcliff', '8:10 PM'),
(291, 66, 'CEBU', 'DLX', 4, 'Kitchinham', 'Hully', '7:11 AM'),
(292, 83, 'BOGO', 'ALC', 7, 'Smetoun', 'Trownson', '3:12 AM'),
(293, 62, 'CEBU', 'DLX', 570, 'Phidgin', 'Hinemoor', '10:54 AM'),
(294, 306, 'CEBU', 'ALC', 754, 'Rittmeier', 'Berrick', '11:05 PM'),
(295, 61, 'DAAN BANTAYAN', 'ALC', 25, 'Rudgard', 'Enos', '4:44 PM'),
(296, 50838, 'BOGO', 'DLX', 21290, 'Morefield', 'Spickett', '12:57 PM'),
(297, 2, 'BOGO', 'DLX', 735, 'Aspey', 'Cadigan', '8:27 PM'),
(298, 1, 'DANAO', 'ALC', 667, 'Pye', 'Wethey', '5:53 AM'),
(299, 928, 'DAAN BANTAYAN', 'DLX', 5, 'Methven', 'Bleckly', '4:41 AM'),
(300, 629, 'DAAN BANTAYAN', 'DLX', 843, 'O\'Carrol', 'Grimble', '11:07 AM'),
(301, 72496, 'DANAO', 'ALC', 68977, 'Billyard', 'Larkcum', '11:42 AM'),
(302, 47, 'CEBU', 'ALC', 58255, 'Considine', 'Pensom', '11:38 PM'),
(303, 11564, 'CEBU', 'DLX', 239, 'Evesque', 'Monument', '8:26 AM'),
(304, 2035, 'DAAN BANTAYAN', 'ALC', 5573, 'Ferens', 'Richards', '8:22 PM'),
(305, 0, 'BOGO', 'ALC', 9632, 'Hanfrey', 'Blew', '9:22 AM'),
(306, 75, 'CEBU', 'DLX', 32829, 'Meekings', 'Childes', '12:47 AM'),
(307, 9, 'BOGO', 'DLX', 8691, 'Rollitt', 'Bolus', '1:05 PM'),
(308, 15566, 'DANAO', 'ALC', 4, 'Aven', 'Abels', '8:51 AM'),
(309, 38085, 'CEBU', 'DLX', 25, 'Foucher', 'MacEveley', '11:02 PM'),
(310, 13280, 'DANAO', 'ALC', 401, 'Bazeley', 'Jensen', '8:50 AM'),
(311, 2, 'DANAO', 'ALC', 5, 'Walczak', 'Boundey', '7:54 PM'),
(312, 3, 'DANAO', 'ALC', 70726, 'Pilsbury', 'Shakle', '3:05 PM'),
(313, 514, 'DAAN BANTAYAN', 'ALC', 3, 'Stanney', 'Munson', '9:03 AM'),
(314, 5, 'DAAN BANTAYAN', 'ALC', 556, 'Redit', 'Lapenna', '9:42 AM'),
(315, 1197, 'BOGO', 'ALC', 52315, 'Scutter', 'Smullen', '10:46 AM'),
(316, 76256, 'BOGO', 'ALC', 975, 'Hardstaff', 'Splevings', '4:12 AM'),
(317, 73, 'DANAO', 'DLX', 8476, 'Crome', 'Spritt', '3:49 AM'),
(318, 6, 'BOGO', 'DLX', 2, 'Cominello', 'Bracken', '8:54 PM'),
(319, 0, 'DANAO', 'ALC', 795, 'Eynald', 'Cattermole', '4:25 PM'),
(320, 740, 'BOGO', 'ALC', 1, 'Willman', 'Geraldez', '6:15 PM'),
(321, 51580, 'DANAO', 'DLX', 2, 'Lamming', 'Oxx', '8:48 AM'),
(322, 9, 'DAAN BANTAYAN', 'ALC', 3, 'Renwick', 'Mell', '11:17 PM'),
(323, 2769, 'DANAO', 'DLX', 37326, 'Eirwin', 'Stitch', '2:35 PM'),
(324, 2, 'DANAO', 'ALC', 54058, 'Collinge', 'Dietsche', '1:06 PM'),
(325, 54, 'CEBU', 'DLX', 2097, 'Oakey', 'Songust', '2:41 PM'),
(326, 9700, 'DAAN BANTAYAN', 'DLX', 34, 'Sleaford', 'McDavitt', '6:01 AM'),
(327, 85, 'CEBU', 'ALC', 68198, 'Lendrem', 'Parvin', '9:56 AM'),
(328, 500, 'DAAN BANTAYAN', 'DLX', 8, 'Boyle', 'Gemson', '6:44 PM'),
(329, 91, 'DAAN BANTAYAN', 'DLX', 2, 'Truter', 'Longworth', '4:12 AM'),
(330, 8, 'CEBU', 'ALC', 43356, 'Cersey', 'McKenny', '9:53 PM'),
(331, 11, 'BOGO', 'ALC', 92199, 'Neiland', 'Skitral', '12:54 PM'),
(332, 6016, 'DANAO', 'DLX', 25, 'Dickson', 'Sullly', '10:01 AM'),
(333, 1, 'DANAO', 'ALC', 6290, 'Rawsthorne', 'Lamba', '2:28 AM'),
(334, 429, 'BOGO', 'ALC', 2761, 'Seiffert', 'Stirling', '7:52 PM'),
(335, 45199, 'DAAN BANTAYAN', 'DLX', 4, 'Achromov', 'McCluin', '6:45 AM'),
(336, 6, 'DANAO', 'ALC', 8020, 'Jobern', 'Jerrim', '12:59 AM'),
(337, 36, 'BOGO', 'ALC', 5471, 'Brikner', 'Puleston', '8:04 PM'),
(338, 507, 'CEBU', 'DLX', 47, 'Burgoyne', 'Island', '2:29 PM'),
(339, 4, 'DANAO', 'ALC', 950, 'Steinson', 'Haith', '8:31 AM'),
(340, 61996, 'CEBU', 'ALC', 546, 'Steel', 'Bittany', '9:04 PM'),
(341, 2, 'BOGO', 'ALC', 5, 'Goter', 'Bodiam', '7:47 AM'),
(342, 4, 'DANAO', 'ALC', 54, 'Bysshe', 'Van der Velden', '3:24 AM'),
(343, 953, 'BOGO', 'DLX', 17780, 'Corlett', 'Barhams', '2:44 AM'),
(344, 981, 'DANAO', 'DLX', 45793, 'Elnaugh', 'MacDunleavy', '8:41 AM'),
(345, 49, 'BOGO', 'ALC', 1, 'O\'Dogherty', 'MacTurlough', '1:42 AM'),
(346, 74, 'BOGO', 'DLX', 20314, 'Topaz', 'Lister', '12:52 AM'),
(347, 626, 'DAAN BANTAYAN', 'ALC', 35, 'Anwell', 'Babcock', '11:26 AM'),
(348, 72, 'BOGO', 'ALC', 5064, 'Seth', 'Miguet', '8:00 PM'),
(349, 39502, 'DAAN BANTAYAN', 'DLX', 2, 'Bassick', 'Kieff', '6:56 PM'),
(350, 87, 'DAAN BANTAYAN', 'ALC', 8, 'Mowson', 'Stennard', '9:38 AM'),
(351, 5611, 'BOGO', 'ALC', 5585, 'Sute', 'Lazenby', '10:14 PM'),
(352, 9269, 'DAAN BANTAYAN', 'ALC', 99054, 'Pherps', 'McKeggie', '9:36 PM'),
(353, 923, 'DANAO', 'DLX', 1521, 'Brankley', 'Trowler', '7:13 AM'),
(354, 33370, 'CEBU', 'ALC', 26, 'Guyot', 'Pacheco', '4:22 AM'),
(355, 2020, 'CEBU', 'DLX', 8283, 'Brilleman', 'Belden', '5:46 PM'),
(356, 96, 'CEBU', 'ALC', 76835, 'Dearell', 'Hegerty', '10:39 PM'),
(357, 57048, 'DANAO', 'DLX', 48, 'Heinrici', 'Radish', '11:04 PM'),
(358, 1268, 'DANAO', 'ALC', 1739, 'Calderonello', 'Bras', '11:08 PM'),
(359, 1, 'DANAO', 'DLX', 0, 'Hefner', 'Leonarde', '6:17 PM'),
(360, 2, 'DAAN BANTAYAN', 'DLX', 11, 'Heighway', 'MacGregor', '3:00 AM'),
(361, 65108, 'CEBU', 'DLX', 94769, 'Andress', 'Bedham', '2:14 AM'),
(362, 16, 'DAAN BANTAYAN', 'ALC', 40687, 'McCusker', 'MacDermid', '6:12 AM'),
(363, 4186, 'BOGO', 'ALC', 36, 'Thompsett', 'Crier', '9:38 AM'),
(364, 537, 'BOGO', 'ALC', 168, 'Holstein', 'Tarbett', '12:16 PM'),
(365, 76940, 'DANAO', 'DLX', 7, 'Hamman', 'Aherne', '10:54 AM'),
(366, 81, 'DANAO', 'DLX', 43057, 'Beacon', 'Miettinen', '9:46 AM'),
(367, 5124, 'DAAN BANTAYAN', 'ALC', 25193, 'Hunnicot', 'Seeler', '3:56 AM'),
(368, 40, 'DAAN BANTAYAN', 'DLX', 9798, 'Fassum', 'Mackieson', '8:35 AM'),
(369, 91688, 'DAAN BANTAYAN', 'DLX', 5469, 'MacNess', 'O\' Clovan', '11:47 AM'),
(370, 975, 'DAAN BANTAYAN', 'DLX', 266, 'Leacock', 'Hilldrop', '9:18 PM'),
(371, 10, 'BOGO', 'ALC', 42414, 'Casbolt', 'Hanning', '10:43 PM'),
(372, 538, 'CEBU', 'ALC', 53, 'Teodorski', 'Nano', '9:17 AM'),
(373, 226, 'DANAO', 'DLX', 904, 'Rossiter', 'Samter', '3:15 AM'),
(374, 888, 'CEBU', 'DLX', 6029, 'Faber', 'Baumber', '5:33 AM'),
(375, 22, 'DAAN BANTAYAN', 'DLX', 3, 'Stuchberry', 'MacTrustie', '11:45 AM'),
(376, 8, 'DANAO', 'DLX', 5, 'Doyle', 'Truelock', '4:35 AM'),
(377, 596, 'CEBU', 'ALC', 88576, 'Othick', 'Burroughes', '5:00 PM'),
(378, 5664, 'DAAN BANTAYAN', 'ALC', 281, 'Isaacs', 'Children', '6:58 AM'),
(379, 29624, 'DAAN BANTAYAN', 'ALC', 27, 'Rutledge', 'Wychard', '12:48 AM'),
(380, 9, 'CEBU', 'DLX', 9, 'Tregea', 'Matchett', '1:20 AM'),
(381, 45, 'BOGO', 'DLX', 82660, 'Buckie', 'Offener', '9:52 PM'),
(382, 3016, 'DANAO', 'DLX', 4, 'Danihel', 'MacAndreis', '3:55 PM'),
(383, 911, 'BOGO', 'DLX', 8, 'Maria', 'Gorelli', '3:36 AM'),
(384, 7, 'DANAO', 'DLX', 83, 'Bronot', 'Cicci', '7:56 PM'),
(385, 2, 'BOGO', 'ALC', 8, 'Dabrowski', 'Franzelini', '8:33 AM'),
(386, 1, 'DAAN BANTAYAN', 'DLX', 1356, 'Coggeshall', 'Adran', '4:51 PM'),
(387, 7, 'DANAO', 'DLX', 2, 'Arnet', 'Hartly', '7:05 PM'),
(388, 4606, 'BOGO', 'ALC', 48477, 'Danielovitch', 'D\'Enrico', '1:05 AM'),
(389, 6, 'BOGO', 'DLX', 2997, 'Rumin', 'Ryott', '10:51 PM'),
(390, 98463, 'DAAN BANTAYAN', 'ALC', 938, 'Winn', 'Eouzan', '9:20 PM'),
(391, 5, 'BOGO', 'DLX', 61582, 'Studart', 'Gookey', '12:04 AM'),
(392, 7388, 'BOGO', 'ALC', 64288, 'Dowderswell', 'Adelman', '9:41 PM'),
(393, 241, 'BOGO', 'ALC', 67, 'McMillam', 'Powney', '8:12 AM'),
(394, 6, 'DANAO', 'ALC', 64, 'Emptage', 'Lofty', '1:13 PM'),
(395, 14, 'DANAO', 'ALC', 6568, 'Coveley', 'Andriuzzi', '6:46 AM'),
(396, 8, 'DANAO', 'DLX', 345, 'Buttriss', 'Lamble', '5:57 PM'),
(397, 5, 'DANAO', 'ALC', 8, 'Jertz', 'Elgar', '1:03 AM'),
(398, 4, 'DAAN BANTAYAN', 'DLX', 81916, 'Vlasyuk', 'Thayre', '6:53 PM'),
(399, 2, 'BOGO', 'ALC', 3171, 'Adolphine', 'Fazzioli', '8:34 PM'),
(400, 1, 'BOGO', 'DLX', 4767, 'Jumonet', 'Talby', '11:34 PM'),
(401, 5214, 'DAAN BANTAYAN', 'ALC', 17100, 'Stallybrass', 'Sarjent', '12:48 PM'),
(402, 763, 'BOGO', 'DLX', 3150, 'Rubinlicht', 'Dinkin', '2:35 AM'),
(403, 1, 'DANAO', 'DLX', 1, 'Songest', 'Clapham', '3:51 AM'),
(404, 6394, 'BOGO', 'ALC', 30762, 'Keoghan', 'Corkill', '10:24 PM'),
(405, 32, 'BOGO', 'DLX', 7, 'Kildea', 'Adamsky', '4:56 PM'),
(406, 6122, 'DAAN BANTAYAN', 'DLX', 5, 'Semper', 'Hinemoor', '12:53 PM'),
(407, 1617, 'DAAN BANTAYAN', 'DLX', 8, 'Lorek', 'Canape', '10:52 AM'),
(408, 4, 'DANAO', 'DLX', 7, 'Chawner', 'Longden', '7:52 PM'),
(409, 4, 'DANAO', 'ALC', 11, 'Simmen', 'Nagle', '3:39 AM'),
(410, 568, 'CEBU', 'DLX', 98536, 'Colcutt', 'Wagstaff', '6:25 PM'),
(411, 673, 'CEBU', 'ALC', 0, 'O\'Harney', 'Bungey', '3:01 PM'),
(412, 6098, 'DANAO', 'DLX', 4, 'Scarse', 'Glaisner', '1:18 AM'),
(413, 1669, 'CEBU', 'DLX', 89525, 'Sarfass', 'Nangle', '12:19 AM'),
(414, 83424, 'CEBU', 'DLX', 84292, 'Gooders', 'Bestman', '12:11 PM'),
(415, 94, 'DAAN BANTAYAN', 'ALC', 8, 'Gilfoyle', 'O\'Crotty', '8:59 PM'),
(416, 1273, 'CEBU', 'DLX', 365, 'Corteney', 'Luthwood', '10:18 AM'),
(417, 0, 'BOGO', 'ALC', 29651, 'Sommers', 'Bossom', '5:58 PM'),
(418, 54, 'CEBU', 'ALC', 15, 'Ziebart', 'Bettington', '10:53 AM'),
(419, 7098, 'DAAN BANTAYAN', 'ALC', 3506, 'Giorgetti', 'Landell', '11:53 PM'),
(420, 157, 'BOGO', 'ALC', 7380, 'Ebertz', 'Pietrusiak', '6:00 AM'),
(421, 99896, 'CEBU', 'ALC', 3861, 'Haswall', 'Klich', '6:15 PM'),
(422, 96092, 'DAAN BANTAYAN', 'ALC', 15, 'Coping', 'Bortoletti', '5:46 AM'),
(423, 99480, 'BOGO', 'DLX', 2, 'Djuricic', 'Giacobillo', '6:41 PM'),
(424, 55, 'BOGO', 'ALC', 987, 'Giron', 'Lutwidge', '2:35 PM'),
(425, 65, 'DAAN BANTAYAN', 'DLX', 39, 'Totton', 'Upward', '3:53 PM'),
(426, 8970, 'CEBU', 'ALC', 4000, 'Alliston', 'Deyes', '1:11 PM'),
(427, 9, 'DANAO', 'ALC', 9, 'Druitt', 'Rolfs', '9:43 PM'),
(428, 4077, 'CEBU', 'ALC', 86, 'MacAskie', 'Longmore', '2:06 PM'),
(429, 3, 'BOGO', 'DLX', 80, 'Pedel', 'Oddboy', '10:35 PM'),
(430, 8205, 'DANAO', 'ALC', 2961, 'Giacopetti', 'Allewell', '2:51 PM'),
(431, 53828, 'CEBU', 'DLX', 3899, 'Rubenov', 'Smee', '6:51 PM'),
(432, 95824, 'BOGO', 'ALC', 8, 'Tregido', 'Iuorio', '6:09 AM'),
(433, 69053, 'DANAO', 'ALC', 2, 'De la Eglise', 'Salleir', '6:01 PM'),
(434, 3033, 'BOGO', 'DLX', 2, 'Kubiczek', 'Ruddock', '10:10 PM'),
(435, 655, 'DAAN BANTAYAN', 'ALC', 92173, 'Sture', 'Reardon', '8:51 PM'),
(436, 59807, 'DAAN BANTAYAN', 'ALC', 5926, 'Chritchlow', 'Cork', '4:33 PM'),
(437, 8, 'DANAO', 'ALC', 25518, 'Scopes', 'Norris', '12:22 AM'),
(438, 27553, 'DANAO', 'ALC', 81527, 'Adolf', 'Woolmore', '3:13 PM'),
(439, 162, 'DANAO', 'ALC', 5, 'Gianulli', 'Champken', '6:47 AM'),
(440, 6894, 'DANAO', 'DLX', 56, 'M\'Chirrie', 'Hessenthaler', '3:01 AM'),
(441, 92285, 'DANAO', 'DLX', 3744, 'Fallow', 'Leijs', '4:07 PM'),
(442, 4, 'DAAN BANTAYAN', 'DLX', 7, 'Town', 'Seagrove', '6:07 AM'),
(443, 5, 'BOGO', 'DLX', 5, 'Chalfant', 'Trim', '11:10 PM'),
(444, 60557, 'DAAN BANTAYAN', 'ALC', 95, 'Esler', 'Gouley', '3:59 AM'),
(445, 731, 'DAAN BANTAYAN', 'ALC', 414, 'Waghorn', 'Clericoates', '12:35 PM'),
(446, 87401, 'DANAO', 'DLX', 46, 'Struther', 'Chown', '5:37 PM'),
(447, 8575, 'DANAO', 'DLX', 22, 'Cocklie', 'Iddins', '7:38 PM'),
(448, 5, 'DAAN BANTAYAN', 'DLX', 5809, 'Winridge', 'Hostan', '9:37 PM'),
(449, 99690, 'DANAO', 'DLX', 7254, 'Toffano', 'Sandon', '1:10 AM'),
(450, 3, 'CEBU', 'ALC', 504, 'McKernon', 'Battelle', '10:10 AM'),
(451, 7986, 'DANAO', 'ALC', 5612, 'Vigneron', 'Tedahl', '5:56 PM'),
(452, 702, 'BOGO', 'DLX', 582, 'Rosenfeld', 'Oselton', '9:35 AM'),
(453, 1120, 'BOGO', 'DLX', 715, 'Kerr', 'Bouller', '10:29 AM'),
(454, 45, 'DAAN BANTAYAN', 'DLX', 324, 'L\'Episcopio', 'Kelleher', '5:47 AM'),
(455, 28, 'DAAN BANTAYAN', 'ALC', 4, 'Mundle', 'Guilliatt', '11:49 PM'),
(456, 26, 'BOGO', 'ALC', 2581, 'Sarchwell', 'Forestall', '11:16 AM'),
(457, 19391, 'DAAN BANTAYAN', 'DLX', 1793, 'Glencrash', 'Moncrefe', '8:10 PM'),
(458, 5, 'DANAO', 'DLX', 247, 'Barnsley', 'Patek', '2:00 AM'),
(459, 296, 'DANAO', 'DLX', 3209, 'Cullinan', 'Rappport', '3:28 AM'),
(460, 328, 'DAAN BANTAYAN', 'ALC', 5, 'Robillart', 'Sheridan', '8:13 AM'),
(461, 33433, 'DANAO', 'DLX', 42, 'MacLeese', 'Larder', '5:25 AM'),
(462, 3205, 'CEBU', 'ALC', 3805, 'Barrott', 'Isakovic', '5:56 PM'),
(463, 668, 'DAAN BANTAYAN', 'DLX', 187, 'Haruard', 'Denham', '1:01 AM'),
(464, 19104, 'DANAO', 'DLX', 89732, 'Stack', 'Hardage', '8:43 PM'),
(465, 70940, 'DAAN BANTAYAN', 'ALC', 53, 'Lamlin', 'Gerin', '8:23 PM'),
(466, 1, 'BOGO', 'ALC', 92704, 'Hoggetts', 'MacCaig', '10:07 AM'),
(467, 185, 'DANAO', 'ALC', 86, 'Riddlesden', 'Edwins', '7:18 AM'),
(468, 59864, 'DANAO', 'ALC', 1463, 'Babbage', 'Becerra', '10:08 AM'),
(469, 0, 'DANAO', 'ALC', 68, 'Stobart', 'Bleasby', '3:26 AM'),
(470, 4190, 'BOGO', 'ALC', 86, 'Alabastar', 'Cregeen', '5:32 AM'),
(471, 16, 'CEBU', 'DLX', 2931, 'O\'Shields', 'Hunsworth', '1:20 PM'),
(472, 2036, 'DANAO', 'ALC', 7387, 'Aronstam', 'Chadbourne', '8:13 AM'),
(473, 3125, 'BOGO', 'DLX', 6, 'Blissitt', 'Ferne', '11:19 PM'),
(474, 88, 'CEBU', 'DLX', 3224, 'Stothard', 'Charlson', '5:00 AM'),
(475, 6, 'BOGO', 'ALC', 7, 'Gladbach', 'Kibard', '9:48 PM'),
(476, 5, 'BOGO', 'ALC', 8132, 'Redsall', 'Canniffe', '5:15 PM'),
(477, 5114, 'CEBU', 'DLX', 1994, 'Liver', 'Snipe', '8:59 PM'),
(478, 409, 'DANAO', 'ALC', 7414, 'Aloway', 'Bowdon', '9:14 PM'),
(479, 582, 'BOGO', 'DLX', 6886, 'Kilsby', 'Colwill', '1:46 AM'),
(480, 735, 'BOGO', 'DLX', 6457, 'Walkden', 'Bartolacci', '5:34 PM'),
(481, 9198, 'BOGO', 'ALC', 37, 'Simonin', 'Stealfox', '9:18 PM'),
(482, 74282, 'DANAO', 'DLX', 9947, 'Alennikov', 'Fuxman', '9:23 AM'),
(483, 6, 'DAAN BANTAYAN', 'DLX', 14, 'Beaumont', 'Leverson', '6:37 AM'),
(484, 79, 'DAAN BANTAYAN', 'ALC', 55, 'Rosier', 'Jenckes', '6:48 AM'),
(485, 9285, 'BOGO', 'ALC', 75, 'Otley', 'Whatford', '11:57 AM'),
(486, 32452, 'DAAN BANTAYAN', 'DLX', 2807, 'Downing', 'Campana', '6:51 AM'),
(487, 984, 'DAAN BANTAYAN', 'DLX', 1282, 'Lintill', 'Zecchii', '5:51 AM'),
(488, 873, 'DANAO', 'DLX', 36445, 'Hatwells', 'Baike', '7:26 PM'),
(489, 3, 'DAAN BANTAYAN', 'ALC', 176, 'Hedlestone', 'Dunlop', '5:11 PM'),
(490, 84, 'BOGO', 'ALC', 21, 'Janew', 'Eastham', '12:17 AM'),
(491, 9660, 'CEBU', 'DLX', 49, 'Croyser', 'Hencke', '12:33 AM'),
(492, 6, 'DAAN BANTAYAN', 'ALC', 14, 'Wheildon', 'Gradon', '1:52 PM'),
(493, 5386, 'BOGO', 'ALC', 8, 'Jasiak', 'Pechard', '10:22 AM'),
(494, 8659, 'DAAN BANTAYAN', 'DLX', 19644, 'Collip', 'MacKessock', '4:27 PM'),
(495, 592, 'DANAO', 'DLX', 7, 'Germon', 'Le Noire', '3:51 AM'),
(496, 18734, 'DAAN BANTAYAN', 'ALC', 88, 'Camosso', 'Pottery', '10:14 PM'),
(497, 508, 'BOGO', 'DLX', 43, 'Barney', 'Lasseter', '10:07 AM'),
(498, 47390, 'BOGO', 'ALC', 64146, 'Dorken', 'Biers', '4:21 AM'),
(499, 1993, 'CEBU', 'DLX', 682, 'Higgonet', 'Gethyn', '2:25 PM'),
(500, 95, 'CEBU', 'ALC', 263, 'Pickthorne', 'Paolucci', '12:20 PM');

-- --------------------------------------------------------

--
-- Table structure for table `departure_tb`
--

CREATE TABLE `departure_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `time_dept` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `passenger` int(50) NOT NULL,
  `drivers_name` varchar(50) NOT NULL,
  `conductors_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departure_tb`
--

INSERT INTO `departure_tb` (`id`, `bus_no`, `time_dept`, `route_destination`, `unit`, `passenger`, `drivers_name`, `conductors_name`) VALUES
(4, 0, '', '0', 'Air Condation', 0, 'dw', '12'),
(5, 41, '21:10', '0', 'ALC', 20, 'Stolberg', 'Maultby'),
(6, 39, '21:14', 'CEBU', 'DLX', 90, 'Gludor', 'Arnaldo');

-- --------------------------------------------------------

--
-- Table structure for table `lost_tb`
--

CREATE TABLE `lost_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost_tb`
--

INSERT INTO `lost_tb` (`id`, `bus_no`, `drivers_name`, `conductors_name`, `item`, `date`, `status`) VALUES
(2, 21821, 'Robert', 'Uwu', 'bag', '2023-11-17 12:33:01.981231', ''),
(3, 2121212, 'dwadaw', 'dawd', 'dawdwa', '0000-00-00 00:00:00.000000', 'claim');

-- --------------------------------------------------------

--
-- Table structure for table `main_tb`
--

CREATE TABLE `main_tb` (
  `id` int(100) NOT NULL,
  `bus_no` int(100) NOT NULL,
  `time_dept` varchar(100) NOT NULL,
  `route_destination` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `cor_number` int(100) NOT NULL,
  `pass_ticket` int(100) NOT NULL,
  `bagg_ticket` int(100) NOT NULL,
  `passenger` int(100) NOT NULL,
  `drivers_name` varchar(100) NOT NULL,
  `conductors_name` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_tb`
--

INSERT INTO `main_tb` (`id`, `bus_no`, `time_dept`, `route_destination`, `unit`, `cor_number`, `pass_ticket`, `bagg_ticket`, `passenger`, `drivers_name`, `conductors_name`, `date`) VALUES
(64, 39, '21:14', 'CEBU', 'DLX', 686, 4567, 9897, 90, 'Gludor', 'Arnaldo', '2023-11-15 21:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `management_tb`
--

CREATE TABLE `management_tb` (
  `id` int(50) NOT NULL,
  `bus_no` int(50) NOT NULL,
  `time_dept` varchar(50) NOT NULL,
  `route_destination` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `cor_number` int(50) NOT NULL,
  `pass_ticket` int(50) NOT NULL,
  `bagg_ticket` int(50) NOT NULL,
  `passenger` int(50) NOT NULL,
  `drivers_name` varchar(50) NOT NULL,
  `conductors_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce_tb`
--
ALTER TABLE `announce_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrival_tb`
--
ALTER TABLE `arrival_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_tb`
--
ALTER TABLE `book_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_stamby`
--
ALTER TABLE `bus_stamby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departure_tb`
--
ALTER TABLE `departure_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lost_tb`
--
ALTER TABLE `lost_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_tb`
--
ALTER TABLE `main_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_tb`
--
ALTER TABLE `management_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce_tb`
--
ALTER TABLE `announce_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrival_tb`
--
ALTER TABLE `arrival_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_tb`
--
ALTER TABLE `book_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus_stamby`
--
ALTER TABLE `bus_stamby`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `departure_tb`
--
ALTER TABLE `departure_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lost_tb`
--
ALTER TABLE `lost_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_tb`
--
ALTER TABLE `main_tb`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `management_tb`
--
ALTER TABLE `management_tb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
