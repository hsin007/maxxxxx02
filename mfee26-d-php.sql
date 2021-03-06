-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2022 at 07:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfee26-d-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `act_order`
--

CREATE TABLE `act_order` (
  `act_order_sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `last_modified_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `act_order`
--

INSERT INTO `act_order` (`act_order_sid`, `member_sid`, `last_modified_at`) VALUES
(1, 11, '2022-06-10 16:39:11'),
(2, 11, '2022-06-10 16:40:13'),
(3, 52, '2022-06-10 16:44:00');

-- --------------------------------------------------------

--
-- Table structure for table `act_order_details`
--

CREATE TABLE `act_order_details` (
  `order_create_sid` int(11) NOT NULL,
  `order_sid` int(11) NOT NULL,
  `order_act_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `act_order_details`
--

INSERT INTO `act_order_details` (`order_create_sid`, `order_sid`, `order_act_sid`) VALUES
(1, 1, 23),
(2, 1, 24),
(3, 2, 98),
(4, 2, 21),
(5, 2, 75),
(6, 2, 22),
(7, 3, 98),
(8, 3, 21),
(9, 3, 75),
(10, 3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `body_parts`
--

CREATE TABLE `body_parts` (
  `parts_sid` int(11) NOT NULL,
  `part` varchar(255) NOT NULL,
  `part_id` int(11) NOT NULL,
  `part_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `city_type`
--

CREATE TABLE `city_type` (
  `city_sid` int(11) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area_sid` int(11) DEFAULT NULL,
  `area_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_type`
--

INSERT INTO `city_type` (`city_sid`, `city`, `area_sid`, `area_name`) VALUES
(1, '基隆市', 1, '北部'),
(2, '台北市', 1, '北部'),
(3, '新北市', 1, '北部'),
(4, '桃園市', 1, '北部'),
(5, '新竹縣', 2, '中部'),
(6, '新竹市', 2, '中部'),
(7, '苗栗縣', 2, '中部'),
(8, '台中市', 2, '中部'),
(9, '彰化縣', 2, '中部'),
(10, '南投縣', 2, '中部'),
(11, '雲林縣', 2, '中部'),
(12, '嘉義縣', 3, '南部'),
(13, '嘉義市', 3, '南部'),
(14, '台南市', 3, '南部'),
(15, '高雄市', 3, '南部'),
(16, '屏東縣', 3, '南部'),
(17, '花蓮縣', 4, '東部'),
(18, '台東縣', 4, '東部'),
(19, '宜蘭縣', 4, '東部'),
(20, '澎湖縣', 5, '離島'),
(21, '金門縣', 5, '離島'),
(22, '連江縣', 5, '離島');

-- --------------------------------------------------------

--
-- Table structure for table `cube`
--

CREATE TABLE `cube` (
  `member_sid` int(11) NOT NULL,
  `cube_sid` int(11) NOT NULL,
  `cube_text` varchar(255) DEFAULT NULL,
  `cube_style` varchar(255) NOT NULL,
  `cube_style_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cube`
--

INSERT INTO `cube` (`member_sid`, `cube_sid`, `cube_text`, `cube_style`, `cube_style_id`) VALUES
(11, 1, '我是誰？我在哪？', 'entertainment', 1),
(12, 2, 'PHP 和 MySQL 是好朋友！', 'art', 3),
(13, 3, 'jQuery 和 Bootstrap 是好朋友！', 'sports', 2),
(14, 4, '偶和二路大人是好朋友！', 'school', 3),
(15, 5, '喇叭和 Justin Bieber 是好朋友！', 'private', 1),
(16, 6, '我和 UI/UX 是好朋友！', 'business', 2),
(17, 7, '哇嘎怪奇素務所係好朋友', 'international', 2),
(18, 8, '我沒有朋友...', 'others', 1),
(41, 10, '下過雨的小魚更有活力，淋過雨的青草更顯翠綠。', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cube_category`
--

CREATE TABLE `cube_category` (
  `cube_style_sid` int(11) NOT NULL,
  `cube_img_a` varchar(255) NOT NULL,
  `cube_img_b` varchar(255) DEFAULT NULL,
  `cube_img_c` varchar(255) DEFAULT NULL,
  `cube_img_t` varchar(255) NOT NULL,
  `cube_color_1` varchar(255) DEFAULT NULL,
  `cube_color_2` varchar(255) DEFAULT NULL,
  `cube_color_font` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cube_category`
--

INSERT INTO `cube_category` (`cube_style_sid`, `cube_img_a`, `cube_img_b`, `cube_img_c`, `cube_img_t`, `cube_color_1`, `cube_color_2`, `cube_color_font`) VALUES
(2, '2_a', '2_b', '2_c', '2_t', '#ed1848', '#612680', '#612680'),
(3, '3_a', '3_b', '3_c', '3_t', '#612680', '#139dbf', '#ffc6d4'),
(4, '4_a', '4_b', '4_c', '4_t', '#e8b387', '#0f1746', '#e8b387'),
(5, '5_a', '5_b', '5_c', '5_t', '#e8b387', '#0f1746', '#0f1746'),
(7, '7_a', '7_b', '7_c', '7_t', '#ed1848', '#ffc6d4', '#eeeeee'),
(8, '8_a', '8_b', '8_c', '8_t', '#139dbf', '#0f1746', '#eeeeee'),
(9, '9_a', '9_b', '9_c', '9_t', '#006251', '#fdd31b', '#006251'),
(10, '10_a', '10_b', '10_c', '10_t', '#ed1848', '#612680', '#fdd31b'),
(11, '11_a', '11_b', '11_c', '11_t', '#ffc6d4', '#139dbf', '#139dbf'),
(12, '12_a', '12_b', '12_c', '12_t', '#ed1848', '#612680', '#006251'),
(13, '13_a', '13_b', '13_c', '13_t', '#fdd31b', '#612680', '#fdd31b'),
(14, '14_a', '14_b', '14_c', '14_t', '#006251', '#e8b387', '#006251'),
(16, '16_a', '16_b', '16_c', '16_t', '#139dbf', '#ffc6d4', '#139dbf'),
(17, '17_a', '17_b', '17_c', '17_t', '#0f1746', '#8890c1', '#0f1746'),
(18, '18_a', '18_b', '18_c', '18_t', '#006251', '#ffc6d4', '#e8b387'),
(19, '19_a', '19_b', '19_c', '19_t', '#139dbf', '#aee0d7', '#139dbf'),
(21, '21_a', '21_b', '21_c', '21_t', '#ffc6d4', '#139dbf', '#ffc6d4'),
(24, '24_a', '24_b', '24_c', '24_t', '#e8b387', '#006251', '#fdd31b'),
(28, '28_a', '28_b', '28_c', '28_t', '#fdd31b', '#006251', '#fdd31b'),
(30, '37_a', '37_b', '37_c', '37_t', '#ed1848', '#006251', '#e8b387'),
(31, '31_a', '31_b', '21_c', '31_t', '#ffc6d4', '#ed1848', '#eeeeee'),
(32, '32_a', '32_b', '32_c', '32_t', '#ffc6d4', '#ed1848', '#ed1848'),
(34, '34_a', '34_b', '34_c', '34_t', '#ffc6d4', '#139dbf', '#eeeeee'),
(35, '35_a', '35_b', '35_c', '35_t', '#ffc6d4', '#fdd31b', '#ed1848'),
(37, '37_a', '37_b', '37_c', '37_t', '#ed1848', '#006251', '#e8b387');

-- --------------------------------------------------------

--
-- Table structure for table `cube_music`
--

CREATE TABLE `cube_music` (
  `cube_music_sid` int(11) NOT NULL,
  `cube_music_type` varchar(255) NOT NULL,
  `cube_music_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cube_music`
--

INSERT INTO `cube_music` (`cube_music_sid`, `cube_music_type`, `cube_music_name`) VALUES
(1, 'happiness', 'synthetic.mp3'),
(2, 'meditation', 'discovery.mp3'),
(3, 'sadness', 'undertow.mp3'),
(4, 'meditation', 'spacerain.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `date_price`
--

CREATE TABLE `date_price` (
  `year` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `date_price`
--

INSERT INTO `date_price` (`year`, `price`) VALUES
(2022, 10),
(2023, 20),
(2025, 20),
(2030, 80);

-- --------------------------------------------------------

--
-- Table structure for table `good_deed_games`
--

CREATE TABLE `good_deed_games` (
  `sid` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `game_detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good_deed_games`
--

INSERT INTO `good_deed_games` (`sid`, `game_id`, `game_name`, `game_detail`) VALUES
(1, 1, '扶老奶奶過馬路遊戲', '在可怕的車流中 帶領老奶奶過馬路 實在是功德一件'),
(2, 2, '消業障遊戲', '透過小球碎掉業障');

-- --------------------------------------------------------

--
-- Table structure for table `good_deed_games_record`
--

CREATE TABLE `good_deed_games_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `member_account` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_birth` date NOT NULL,
  `member_death` date DEFAULT NULL,
  `play_date` datetime NOT NULL,
  `game_id` int(11) NOT NULL,
  `game_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good_deed_games_record`
--

INSERT INTO `good_deed_games_record` (`sid`, `member_sid`, `member_account`, `member_name`, `member_birth`, `member_death`, `play_date`, `game_id`, `game_score`) VALUES
(1, 1, 'snowvalley28', '蔣阿水', '1891-02-08', '1931-08-25', '2019-02-23 00:00:00', 1, 55),
(2, 2, 'showgi1103', '李秀枝', '1923-11-03', NULL, '2020-05-02 00:00:00', 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `good_deed_score`
--

CREATE TABLE `good_deed_score` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `member_account` varchar(255) NOT NULL,
  `member_password` int(255) NOT NULL,
  `member_name` int(255) NOT NULL,
  `member_birth` date NOT NULL,
  `member_death` date DEFAULT NULL,
  `test_score` int(11) DEFAULT NULL,
  `event_score` int(11) DEFAULT NULL,
  `charity_score` int(11) DEFAULT NULL,
  `game_score` int(11) DEFAULT NULL,
  `sum_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `good_deed_test`
--

CREATE TABLE `good_deed_test` (
  `sid` int(11) NOT NULL,
  `test_sid` varchar(255) NOT NULL,
  `test_content` varchar(255) NOT NULL,
  `op1_content` varchar(255) NOT NULL,
  `op1_score` int(11) NOT NULL,
  `op2_content` varchar(255) DEFAULT NULL,
  `op2_score` int(11) DEFAULT NULL,
  `op3_content` varchar(255) DEFAULT NULL,
  `op3_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `good_deed_test`
--

INSERT INTO `good_deed_test` (`sid`, `test_sid`, `test_content`, `op1_content`, `op1_score`, `op2_content`, `op2_score`, `op3_content`, `op3_score`) VALUES
(1, 'test_Q1', '你認為人性...?', '人性本善', 3, '人性本惡', 5, '有錢才會善良', 2),
(2, 'test_Q2', '你覺得人與人之間的相處應該?', '銀貨兩訖', 3, '不求回報', 5, '自私自利', 2),
(3, 'test_Q3', '你小時候最常玩什麼遊戲?', '閃電布丁', 3, '鬼抓人', 5, ' 躲貓貓', 4),
(4, 'test_Q4', '傷心的時候聽?', '哀傷的歌', 3, '佛經', 5, '歡樂的歌', 2),
(5, 'test_Q5', '你覺得人生像...?', '一場旅行', 5, '一場災難', 3, '一盒巧克力', 4);

-- --------------------------------------------------------

--
-- Table structure for table `good_deed_test_record`
--

CREATE TABLE `good_deed_test_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `member_account` varchar(255) NOT NULL,
  `member_password` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `member_birth` date NOT NULL,
  `member_death` date DEFAULT NULL,
  `test_Q1` int(11) DEFAULT NULL,
  `test_Q2` int(11) DEFAULT NULL,
  `test_Q3` int(11) DEFAULT NULL,
  `test_Q4` int(11) DEFAULT NULL,
  `test_Q5` int(11) DEFAULT NULL,
  `test_score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_sid` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_sid`, `location`) VALUES
(1, '全球'),
(2, '台灣'),
(3, '台北'),
(4, '桃園'),
(5, '新竹'),
(6, '苗栗'),
(7, '南投'),
(8, '台中'),
(9, '彰化'),
(10, '雲林'),
(11, '嘉義'),
(12, '台南'),
(13, '高雄'),
(14, '屏東'),
(15, '宜蘭'),
(16, '花蓮'),
(17, '台東');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `deathdate` date DEFAULT NULL,
  `isdead` varchar(255) DEFAULT 'false',
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `pass_hash` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sid`, `name`, `birthdate`, `deathdate`, `isdead`, `mobile`, `email`, `account`, `pass_hash`, `create_at`) VALUES
(1, 'the first cat', NULL, NULL, 'false', '', 'HappyCat01@gmail.com', 'HappyCat01', '$2y$10$AirwXJwahWxsQKJrrmlwE.nFkwin.K3ZR8qJE4HgYgqu4N0MIdb7C', '2022-06-09 05:52:24'),
(2, '貓貓貓', NULL, NULL, 'false', '', 'HappyCat02@gmail.com', 'HappyCat02', '$2y$10$NYuxH3UUfyHRr8yjeDo0Ou/zw83PT/hjbaAwWQ6u.MVlwhS2KMct6', '2022-06-09 05:52:51'),
(3, '', NULL, NULL, 'false', '0911-772-599', 'HappyCat03@gmail.com', 'HappyCat03', '$2y$10$QCyABgd5IjBYYmQhnK0bpeBjSOKzSjiPbyI8fFPpV.cBoclFe8f1.', '2022-06-09 05:53:34'),
(4, 'Bible Thumb', NULL, NULL, 'false', '', 'HappyCat04@gmail.com', 'HappyCat04', '$2y$10$xyN7xDkGJ5SustZEWCDyIuA/7RdTp0Y3yg4MhtFPFyzmnmayB9EZC', '2022-06-09 05:54:15'),
(5, '偷尼史塔克 Tony Stark ', '1990-06-14', '2022-06-02', 'false', '0977101050', 'HappyCat05@gmail.com', 'HappyCat05', '$2y$10$sFaM2bucSZ9h0bRb9vXYJuwSy1.YS7eHOutpxih.qfOieXQX1b6ze', '2022-06-09 05:54:42'),
(6, '怎一直下雨', '1990-03-05', '2022-05-31', 'false', '', 'HappyCat06@gmail.com', 'HappyCat06', '$2y$10$KQFhzDlfZFdk.stmlCA7U.il3fDWO2z0kkVzrHuF9SJPIgNXWKAp.', '2022-06-09 05:55:06'),
(7, '趕著投胎', NULL, NULL, 'false', '', 'HappyCat07@gmail.com', 'HappyCat07', '$2y$10$Wy1j.2RcH0cA565y0kP2I.yIGvH8rdoEFXhWRokuDHgOerj1NNG9u', '2022-06-09 05:55:27'),
(8, '咖啡因成癮重症患者', NULL, NULL, 'false', '', 'HappyCat08@gmail.com', 'HappyCat08', '$2y$10$hfdvXtFq2/leKrM2jLXxf.L1YiKAr5wMCq7.rp69fiSgoG3pnJlsK', '2022-06-09 05:55:47'),
(9, '陳怡君', NULL, NULL, 'false', '', 'HappyCat09@gmail.com', 'HappyCat09', '$2y$10$7zyt3mR2ghfGKn9xkEWgdeXlmxoRy4rm3DmrP/3kDFMXoIPPEj/wy', '2022-06-09 05:56:28'),
(10, '總有幾隻貓的', NULL, NULL, 'false', '', 'HappyCat10@gmail.com', 'HappyCat10', '$2y$10$n3p/32p42bi1QqX/U0KjBe4Yb0WdAI.8UaoZH3tiRR8NbBaxHGcOK', '2022-06-09 05:56:51'),
(11, 'unhappy cat', NULL, NULL, 'false', '', 'HappyCat11@gmail.com', 'HappyCat11', '$2y$10$JG.LjNM0flM7vAV8zkh6PO3Hb2bgA3c8xKW83W2qbgJgns/n/Hdoa', '2022-06-09 05:57:16'),
(12, '靈魂急轉彎', '1990-06-15', '2022-06-07', 'false', '', 'HappyCat12@gmail.com', 'HappyCat12', '$2y$10$7.aum6zzCAAX1XsrQyhOf.U8r5MrG586P2fdGiW27WfBOztqK4IHa', '2022-06-09 05:57:37'),
(13, '', NULL, NULL, 'false', '', 'admin@gmail.com', 'Admin', '$2a$10$nNPzjduZD4RGHVOpsS/qzOBeGJJcupv4KSZsAk1124dXPWU08MJ7G', '2022-06-09 17:51:04'),
(14, '', NULL, NULL, 'false', '', 'HappyCat13@gmail.com', 'HappyCat13', '$2y$10$HX8f.Hc7la1jgapWVPVjtuSJ.RTjTgK9ZohqVUX5ean5kn2.OZgzC', '2022-06-09 19:26:43'),
(15, '', NULL, NULL, 'false', '', 'HappyCat14@gmail.com', 'HappyCat14', '$2y$10$rMPZyA.6wVgZHh2tskYwSOsHd0AiFNAdAU0rD5qS3SM1nZ0NTlsQ6', '2022-06-09 19:27:35'),
(16, '', NULL, NULL, 'false', '', 'HappyCat15@gmail.com', 'HappyCat15', '$2y$10$dIWMYfd8WvjFaDuPfr5FF.gSfzczdVnmuy591Ku3fcPF64e8hbPOO', '2022-06-09 19:28:13'),
(17, '', NULL, NULL, 'false', '', 'HappyCat16@gmail.com', 'HappyCat16', '$2y$10$h6azphKhwhRq8BeaTzAHQeUlH3grQEuFordDuUw2aFIo.EXdKiGmS', '2022-06-09 19:28:38'),
(18, '', NULL, NULL, 'false', '', 'HappyCat17@gmail.com', 'HappyCat17', '$2y$10$Z6UOfMHaJr8dleAdAWixNu6BZNXKK1q6kJofTHiTtnRXJ3./1P5i.', '2022-06-09 19:28:56'),
(19, '', NULL, NULL, 'false', '', 'HappyCat18@gmail.com', 'HappyCat18', '$2y$10$Evne7/6E0Ryb.c.ywAlj/.0zXlPfpvjPIAeWn6WNsu/AweIKcTh9a', '2022-06-09 19:29:10'),
(20, '', NULL, NULL, 'false', '', 'HappyCat19@gmail.com', 'HappyCat19', '$2y$10$oa7Bc0HTZ9dCfoOWxYJNaOomtguDOXlUfwAAQ7n955AFju6ccOIum', '2022-06-09 19:30:27'),
(21, '', NULL, NULL, 'false', '', 'HappyCat20@gmail.com', 'HappyCat20', '$2y$10$dulMYVhaUT8iNiYoUF78Oufc13.1bV7zTcsBlHjH0dtqX2JW1U/yG', '2022-06-09 19:30:39'),
(22, '', NULL, NULL, 'false', '', 'HappyCat21@gmail.com', 'HappyCat21', '$2y$10$agYKF2IL4CKcqQg4MEBqd.Kij2eJYsI2.OVJqRUMzZmeXx2K569Xq', '2022-06-09 19:30:49'),
(23, '', NULL, NULL, 'false', '', 'HappyCat22@gmail.com', 'HappyCat22', '$2y$10$7nvQ.ncWWItOddNTGDUGVOKOOVkKZHcNCiAyk85CjxAyNr9rH6yKK', '2022-06-09 19:31:01'),
(24, '', NULL, NULL, 'false', '', 'HappyCat23@gmail.com', 'HappyCat23', '$2y$10$ZGAPY7FVslnPzu6x63ad9OuyQ0g7ej/g8PDgz/k3p5Kv.WgkTM2N2', '2022-06-09 19:31:12'),
(25, '', NULL, NULL, 'false', '', 'HappyCat24@gmail.com', 'HappyCat24', '$2y$10$BHZAB6wTXsyvQVKz1ggpAOKoyz2aCnF7/tzbaCeZ5xK7pgtKF5c96', '2022-06-09 19:31:23'),
(26, '', NULL, NULL, 'false', '', 'HappyCat25@gmail.com', 'HappyCat25', '$2y$10$KP/vubfTBUf65ziMvrDnTuMTe35AkW9qQ65c0dzGj0G0lr62hRnnW', '2022-06-09 19:31:56'),
(27, '', NULL, NULL, 'false', '', 'HappyCat26@gmail.com', 'HappyCat26', '$2y$10$RP5WMjnK0lRgl2Y84aaZn.Zr9I.fCf5HF8BN1iomUD7v9QB0hSy3u', '2022-06-09 19:32:15'),
(28, '', NULL, NULL, 'false', '', 'HappyCat27@gmail.com', 'HappyCat27', '$2y$10$5446DawwHc8AOJAP1lc2QexLF4y1VNA0F1RN4OM18JcMO3wq/mlqm', '2022-06-09 19:32:46'),
(29, '', NULL, NULL, 'false', '', 'HappyCat28@gmail.com', 'HappyCat28', '$2y$10$8FJiwaznH232h48wk7lHR.uyDJnthf3ADnYsERlTbefUzB.CpoWcu', '2022-06-09 19:32:58'),
(30, '', NULL, NULL, 'false', '', 'HappyCat29@gmail.com', 'HappyCat29', '$2y$10$gP3HIA0EXMDh9qvUJHPQSe/hp2U7qqgaCn9/szImsEsj3sAlwlaEu', '2022-06-09 19:33:10'),
(31, '', NULL, NULL, 'false', '', 'HappyCat30@gmail.com', 'HappyCat30', '$2y$10$OpLdm4HUzxpgmE2AO1.VGuT9LNha8Uf3u7HPr5irykac.IzHsy5oq', '2022-06-09 19:33:22'),
(32, '', NULL, NULL, 'false', '', 'HappyCat31@gmail.com', 'HappyCat31', '$2y$10$otVp1Ic9lSyMKkJPbwJM/ObXPky23VVmAx4UU/OIU9dtUQBYxPCga', '2022-06-09 19:33:35'),
(33, '我是快樂貓', NULL, NULL, 'false', '0917253465', 'HappyCat32@gmail.com', 'HappyCat32', '$2y$10$A4479RQRwSNLT5nSFUCFhecaDcEshF980fhqCE9HzuLjW83GWys1i', '2022-06-09 19:33:49'),
(34, '', NULL, NULL, 'false', '', 'HappyCat33@gmail.com', 'HappyCat33', '$2y$10$nCEH1Lpgv82C.T7HsVbOJOU7Lhhi1I4CAlICGS5NOf/HEyFeclOhm', '2022-06-09 19:34:02'),
(35, '', NULL, NULL, 'false', '', 'HappyCat34@gmail.com', 'HappyCat34', '$2y$10$b6qvb7RlxSExUOPcASuQD.toGgWKuTJlqUQd/fT6nyI3d7Y2km7Pm', '2022-06-09 19:34:29'),
(36, '', NULL, NULL, 'false', '', 'HappyCat35@gmail.com', 'HappyCat35', '$2y$10$vRoey8TpPXJuH5osqirV/OAYl2vtPUYjgpbpSdd4bUENbGHN1gsCK', '2022-06-09 19:34:44'),
(37, '', NULL, NULL, 'false', '', 'HappyCat36@gmail.com', 'HappyCat36', '$2y$10$pM5FXJZl6YpPh/rkP/QXme.4oJa9ZgVZyWeamYUSG1z2VjaUH8/OW', '2022-06-09 19:34:56'),
(38, '', NULL, NULL, 'false', '', 'HappyCat37@gmail.com', 'HappyCat37', '$2y$10$ipQo49pUVhT0sMsEGfn2T.AhffoofpElG.6MoBBnD9FfqkuxutEBa', '2022-06-09 19:35:09'),
(39, '', NULL, NULL, 'false', '', 'HappyCat38@gmail.com', 'HappyCat38', '$2y$10$FZlahkLFTItFsZcL7YEgJOk76E/p7ar4R6XiKBB78C6g3mHFzEevC', '2022-06-09 19:35:22'),
(40, '', NULL, NULL, 'false', '', 'HappyCat39@gmail.com', 'HappyCat39', '$2y$10$OY5sUwd9AsfDjjd1EceA0OFd.ZfEi.GN8jbfQo1Btgqzfeq3MpKSK', '2022-06-09 19:35:40'),
(41, '', NULL, NULL, 'false', '', 'HappyCat40@gmail.com', 'HappyCat40', '$2y$10$gd8dE6FN/DqwapbjZtEN3uu.mfPei6Y0n4g5nqivLFWL1Zw4EoCp.', '2022-06-09 19:35:53'),
(42, '', NULL, NULL, 'false', '', 'HappyCat41@gmail.com', 'HappyCat41', '$2y$10$bd.yjSGmWpAWEiLudnHeRuttOa6Sn54dqtjtDrrwjjxfvd39.zsUu', '2022-06-09 19:36:06'),
(43, '', NULL, NULL, 'false', '', 'HappyCat42@gmail.com', 'HappyCat42', '$2y$10$fEnbjF3O3xyfHQR8WhCgXei3P3CzEu4m/b3eH3L6l0DXqo.UF1E/e', '2022-06-09 19:36:21'),
(44, '', NULL, NULL, 'false', '', 'HappyCat43@gmail.com', 'HappyCat43', '$2y$10$8bM6.kEcw2Rt6yAeS3Tap.tAa/H4w.5lM0GBghC0wsOk11bqlC6tu', '2022-06-09 19:36:33'),
(45, '', NULL, NULL, 'false', '', 'HappyCat44@gmail.com', 'HappyCat44', '$2y$10$Ajm96pUGSvdNpaQWAPyRiuNTt2Xf6r2/Nmf9JgRu4lBTSly3BevE2', '2022-06-09 19:37:33'),
(46, '', NULL, NULL, 'false', '', 'HappyCat45@gmail.com', 'HappyCat45', '$2y$10$xxuG/2G2koeshecupsmbaO3Ro3qnxsACAvQsCQbeuO8wM7LuAJq8O', '2022-06-09 19:37:43'),
(47, '', NULL, NULL, 'false', '', 'HappyCat46@gmail.com', 'HappyCat46', '$2y$10$ij1SYBtEzFnUaJu93aWjhu9xhoEmKnjMwCgjt99VVhK5VHTqUfF/G', '2022-06-09 19:37:55'),
(48, '', NULL, NULL, 'false', '', 'HappyCat47@gmail.com', 'HappyCat47', '$2y$10$Fgw/ds47YItdV5MpXMobnuNGraiUdo7rzImZRYs/Rm42xcsASK2m6', '2022-06-09 19:38:07'),
(49, '', NULL, NULL, 'false', '', 'HappyCat48@gmail.com', 'HappyCat48', '$2y$10$.mrsX56BQMK/xqi2SR6xGOysfnyx0BRkjPaajY0X3AiEaSVW/kgsW', '2022-06-09 19:38:19'),
(50, '', NULL, NULL, 'false', '', 'HappyCat49@gmail.com', 'HappyCat49', '$2y$10$pdsmbCihG98YAGamMQS/F.VWC0ZqZqcStTPRKCX7QzENwNZqsxIlK', '2022-06-09 19:38:30'),
(51, '', NULL, NULL, 'false', '', 'HappyCat50@gmail.com', 'HappyCat50', '$2y$10$.9QHiWdOhPm/vwq2f/XlGOdu/5VSCEftWlxT7T.4D/Q3yv2yY6BYu', '2022-06-09 19:38:42'),
(52, '', NULL, NULL, 'false', '', 'HappyCat51@gmail.com', 'HappyCat51', '$2y$10$6A83d7hqQkRtgTbtiMrGqunUjsiUiHNFe5P/UVA04JXlmJMEtncd6', '2022-06-09 19:38:59'),
(53, '', NULL, NULL, 'false', '', 'HappyCat52@gmail.com', 'HappyCat52', '$2y$10$.9GoHgdzK96cbf3m8gqy1.K6TtepALCRehvCL8VAvYA6fccvs2DBi', '2022-06-09 19:39:10'),
(54, '', NULL, NULL, 'false', '', 'HappyCat53@gmail.com', 'HappyCat53', '$2y$10$SLP40Q0AJ7D4lIdb62sC5OuVQMiy3zqpMgn1ua/ltJ4Ssv5MuwmVa', '2022-06-09 19:39:22'),
(55, '', NULL, NULL, 'false', '', 'HappyCat54@gmail.com', 'HappyCat54', '$2y$10$BdICP6cq1mmSBq2kRKuppuyltkVHhbCtLhTID2rtpqtq6OI0Jf4um', '2022-06-09 19:39:39'),
(56, '', NULL, NULL, 'false', '', 'HappyCat55@gmail.com', 'HappyCat55', '$2y$10$0kU9UB.idFLLuXaoJFB14./NFJPEGlLjPcqqrrb68rC3uR9/zycDe', '2022-06-09 19:39:51'),
(57, '', NULL, NULL, 'false', '', 'HappyCat56@gmail.com', 'HappyCat56', '$2y$10$fYDIgfNbawaKuf.XHS9jae8zvNqG050SMoUv2hTz3Yo5dSV7zK646', '2022-06-09 19:40:13'),
(58, '', NULL, NULL, 'false', '', 'HappyCat57@gmail.com', 'HappyCat57', '$2y$10$8JZEm/4C3NE9nPUb4gC/AeYXmviYGHfIkGf9BkLRztOF4SsvpVA42', '2022-06-09 19:40:26'),
(59, '', NULL, NULL, 'false', '', 'HappyCat58@gmail.com', 'HappyCat58', '$2y$10$trfGqH3BxYf.5h6111Jngeg476d/wI/lFdQ2/OumhqJv8QVgsDHpu', '2022-06-09 19:40:39'),
(60, '', NULL, NULL, 'false', '', 'HappyCat59@gmail.com', 'HappyCat59', '$2y$10$Z8IDndgNS/kwSrNAHt1xd.X.3DL4jKZ28RUHylFiTFpWzRofjkrwO', '2022-06-09 19:40:50'),
(61, '', NULL, NULL, 'false', '', 'HappyCat60@gmail.com', 'HappyCat60', '$2y$10$SPM8Ftb51pzdpG3GJPoAjuqYPHztHo/uR2QpUFLgB/oUK2dDzSofe', '2022-06-09 19:41:03'),
(62, '', NULL, NULL, 'false', '', 'HappyCat61@gmail.com', 'HappyCat61', '$2y$10$k1H9MnKnudr76CJ/3Axlt.rHyDyNx1wgpll/lBOakJXNuamFeNoRi', '2022-06-09 19:41:14'),
(63, '', NULL, NULL, 'false', '', 'HappyCat62@gmail.com', 'HappyCat62', '$2y$10$hdqf0iZw9NSTAON89V6QCOtv7I7Q2QjvQKv9Sp6naHSfTNeeFSaiS', '2022-06-09 19:41:34'),
(64, '', NULL, NULL, 'false', '', 'HappyCat63@gmail.com', 'HappyCat63', '$2y$10$5oA0Xn9p6KzH1Zz0axO2ceUQjYUbsnsQaeZ.roI37dEw5xmGnwqMK', '2022-06-09 19:42:03'),
(65, '', NULL, NULL, 'false', '', 'HappyCat64@gmail.com', 'HappyCat64', '$2y$10$AFKm3fddtESWbIOJoHY5peSpHWOUBTHDG90HiR3/k2z/gj.KUaR7K', '2022-06-09 19:42:22'),
(66, '', NULL, NULL, 'false', '', 'HappyCat65@gmail.com', 'HappyCat65', '$2y$10$kBCZt1NkU3ESn9sLl.jjLuF7WvWnIgced4J6Pjqqc6Cnjq9TWypc.', '2022-06-09 19:42:33'),
(67, '', NULL, NULL, 'false', '', 'HappyCat66@gmail.com', 'HappyCat66', '$2y$10$juJHFomlxpWf4eLQXQNzLOMmYISl8e.XZuhhp9fSvw6jxJ9BV6KZ2', '2022-06-09 19:42:45'),
(68, '', NULL, NULL, 'false', '', 'HappyCat67@gmail.com', 'HappyCat67', '$2y$10$tzu3RhCxRXFl8fmQIafCD.XnW3tdZU/.T.RGyU5hnRjK0af.INstC', '2022-06-09 19:42:59'),
(69, '', NULL, NULL, 'false', '', 'HappyCat68@gmail.com', 'HappyCat68', '$2y$10$uqjh2NeH.cgF8GJwNr2dJecRZIt5Z6TsLOrqCwarcAOVqWO3XGwsu', '2022-06-09 19:43:29'),
(70, '', NULL, NULL, 'false', '', 'HappyCat69@gmail.com', 'HappyCat69', '$2y$10$.OSdRIt/R9NWruh3gIex8.BN3OcL65SIsUhaMLI86efaai5D.ZdEq', '2022-06-09 19:43:40'),
(71, '', NULL, NULL, 'false', '', 'HappyCat70@gmail.com', 'HappyCat70', '$2y$10$FvdIZpomJviDE.shvxSrBeiXhxVQs7pOg1Qf3SedRdzE1IqaYT4Em', '2022-06-09 19:43:56'),
(72, '', NULL, NULL, 'false', '', 'HappyCat71@gmail.com', 'HappyCat71', '$2y$10$49yU4rxHhgYbZGe1PH5Mbe31u9ydRwbsNnAdmplkl4bCpAaQ3MXh.', '2022-06-09 19:44:09'),
(73, '', NULL, NULL, 'false', '', 'HappyCat72@gmail.com', 'HappyCat72', '$2y$10$jF7H..8R7I4sx31c3hwjlOK710iPlPr5pd3WsQc5MC7PlllMU6/2O', '2022-06-09 19:44:18'),
(74, '', NULL, NULL, 'false', '', 'HappyCat73@gmail.com', 'HappyCat73', '$2y$10$G4L6kn4WcjefItdFz2KdpebL7WVJpbbOW/edLZ2v/zFXlbkjyxZoG', '2022-06-09 19:44:32'),
(75, '', NULL, NULL, 'false', '', 'HappyCat74@gmail.com', 'HappyCat74', '$2y$10$QKcXwYG1245itLJPsXeSTOqwtCXsaTiod0T4cXu84uGtQwdCVsFzW', '2022-06-09 19:44:43'),
(76, '', NULL, NULL, 'false', '', 'HappyCat75@gmail.com', 'HappyCat75', '$2y$10$duWwdsiBLafSbtntJcpnFO2ekTEr9cLRZ/IL1AK7inXXOEOpSWl5G', '2022-06-09 19:44:54'),
(77, '', NULL, NULL, 'false', '', 'HappyCat76@gmail.com', 'HappyCat76', '$2y$10$k2M5XoSSkzSR57r3zPeB/eQTe.1FxwU2fBD1gW0lAhmUl/CSNF..e', '2022-06-09 19:45:04'),
(78, '', NULL, NULL, 'false', '', 'HappyCat77@gmail.com', 'HappyCat77', '$2y$10$YQ4TK7JVPWOdMJOty61I8O172FYdC1WTI8xFRpUMrl.pzx8q5Rztu', '2022-06-09 19:45:15'),
(79, '', NULL, NULL, 'false', '', 'HappyCat78@gmail.com', 'HappyCat78', '$2y$10$6yKR6oZQ63JD3seB2YV5a.8l4EgYY8JeMAca/LF40it88ajGA0PTi', '2022-06-09 19:45:26'),
(80, '', NULL, NULL, 'false', '', 'HappyCat79@gmail.com', 'HappyCat79', '$2y$10$5J0OZ/SAdIT6xL3qRF1I2.KenZNjxaCUzmFTo.73JiYobvByemQ16', '2022-06-09 19:45:36'),
(81, '', NULL, NULL, 'false', '', 'HappyCat80@gmail.com', 'HappyCat80', '$2y$10$mC5PqOLTH2vBX.38RuB.5eg0PS1CGYmlAqJutcEKBq0sahcsZbJKK', '2022-06-09 19:45:48'),
(82, '', NULL, NULL, 'false', '', 'HappyCat81@gmail.com', 'HappyCat81', '$2y$10$xQNe9Q2hO5hkLZjL/JYKJelEW8yTtUipcJv5HnNLJk6UnXt.F5sp.', '2022-06-09 19:46:00'),
(83, '', NULL, NULL, 'false', '', 'HappyCat82@gmail.com', 'HappyCat82', '$2y$10$bGqXt7.kSjEPaW.W06CU4u492AQEZIXNyvTA7GXxuNP8p5jeW800G', '2022-06-09 19:46:10'),
(84, '', NULL, NULL, 'false', '', 'HappyCat83@gmail.com', 'HappyCat83', '$2y$10$rCgyBnD0GXEiI3FuedDzReGTeWgy6znclo7F9h6FYgJBiv/Z2w0E6', '2022-06-09 19:46:22'),
(85, '', NULL, NULL, 'false', '', 'HappyCat84@gmail.com', 'HappyCat84', '$2y$10$pPIOMPi3yXXgW.RrUDnlQOTbXTe2PQux64XTDJF5.w.ZTrn24i1Le', '2022-06-09 19:46:35'),
(86, '', NULL, NULL, 'false', '', 'HappyCat85@gmail.com', 'HappyCat85', '$2y$10$aq2q/rDhcAodrii0LuSyi..BzMdvf6BaqARpU1Ws5CSuQ53R6WHVC', '2022-06-09 19:46:45'),
(87, '', NULL, NULL, 'false', '', 'HappyCat86@gmail.com', 'HappyCat86', '$2y$10$Aw5ji0J7d2lwsfiPvtD2peiN972QtXx4xs1vkRWAX6xyNm8mYnIXG', '2022-06-09 19:47:16'),
(88, '', NULL, NULL, 'false', '', 'HappyCat87@gmail.com', 'HappyCat87', '$2y$10$xoIBgG/eLLQkT7gWnaPOieLStDlCdJLvsUbLoKR52PsV4sZydKtkC', '2022-06-09 19:47:30'),
(89, '', NULL, NULL, 'false', '', 'HappyCat88@gmail.com', 'HappyCat88', '$2y$10$VYbXm4J.SP3xwioUQY62JOu3R.q9AVuFBk3u7IDCrp5BV0U1BquBO', '2022-06-09 19:47:44'),
(90, '', NULL, NULL, 'false', '', 'HappyCat89@gmail.com', 'HappyCat89', '$2y$10$UfSIVdnMzRG/GIh0XZhvpO6BJ2k1GEF0IzbVP9pUdMpwwJHJlDaCe', '2022-06-09 19:47:59'),
(91, '', NULL, NULL, 'false', '', 'HappyCat90@gmail.com', 'HappyCat90', '$2y$10$PxsVj0OwAqHrZdmzgofzH.ubkfJEwr8rNHF.KMcY1JL1kKwnwa/4e', '2022-06-09 19:48:11'),
(92, '', NULL, NULL, 'false', '', 'HappyCat91@gmail.com', 'HappyCat91', '$2y$10$Pcj0QNHU6KzdATk1wXrVP.mLvs5Il/.Dh5Q2BcAsWsZFZJxxDH8VK', '2022-06-09 19:48:30'),
(93, '', NULL, NULL, 'false', '', 'HappyCat92@gmail.com', 'HappyCat92', '$2y$10$VP1S3X5Cs4y0nb1d7Dij6exD/6.GmlbrvxipVAfY9GvmdoycXp49C', '2022-06-09 19:48:42'),
(94, '', NULL, NULL, 'false', '', 'HappyCat93@gmail.com', 'HappyCat93', '$2y$10$vWd4ghdJ/uvgCItzwJT4muZzJwPpQdNgF79WgKdIPFYV9qOTbF15y', '2022-06-09 19:49:07'),
(95, '', NULL, NULL, 'false', '', 'HappyCat94@gmail.com', 'HappyCat94', '$2y$10$vW/zubmPsnn83grTYA63mOLLN0QMEZ9HVZ6ODp9Lgkp/VjyZZKoOC', '2022-06-09 19:49:23'),
(96, '', NULL, NULL, 'false', '', 'HappyCat95@gmail.com', 'HappyCat95', '$2y$10$6kY58NIrhoOMO44E4ESlsO.5Oc64Y1OYDZ4qXHKhlYTh1tO4Y.doa', '2022-06-09 19:49:37'),
(97, '', NULL, NULL, 'false', '', 'HappyCat96@gmail.com', 'HappyCat96', '$2y$10$I2JM6zs.tvk5CmaHCoIW.ei6Hi2ruz9TWydbeAN/6Mg9qSO8bC1J6', '2022-06-09 19:49:49'),
(98, '', NULL, NULL, 'false', '', 'HappyCat97@gmail.com', 'HappyCat97', '$2y$10$ioWw7u0Zk5l7C/1UDjQPt.01/3bOL5LPqIPVqYKLtWYuZ8H/0bTIq', '2022-06-09 19:49:59'),
(99, '', NULL, NULL, 'false', '', 'HappyCat98@gmail.com', 'HappyCat98', '$2y$10$.CdtzoocaY4YOYIxkxm6j.B5QeG01NbHPhwXkQrWB9L7NwUVjRG3S', '2022-06-09 19:50:09'),
(100, '', NULL, NULL, 'false', '', 'HappyCat99@gmail.com', 'HappyCat99', '$2y$10$Aaoh2lzg8fPn4Mb/ScmnEOhglXdwr8mLL0hf4CY3X4A.BC8tLIo3y', '2022-06-09 19:50:20'),
(101, '', NULL, NULL, 'false', '', 'HappyCat100@gmail.com', 'HappyCat100', '$2y$10$RscDUr0vT/ndUx9ndYpvNe49wvxixQYYBQmL7rUNP1frBs/Tc9FVG', '2022-06-09 19:51:04'),
(102, '涼枕', '1993-03-08', '2022-03-08', 'false', '0955667788', 'coolpilla@ggqq.com', 'coolpillow', '$2y$10$a11J3a0Jruj0y2dr3z2vYuYaqwMt4QB/puKbyQxphIJRc8t5tuZce', '2022-06-10 13:35:14'),
(103, '快樂貓', NULL, NULL, 'false', '', 'HappyCat101@gmail.com', 'HappyCat101', '$2y$10$WCESWjMOnfvy4z.D7ejUNORXsctSDrA0appKGPbhQ1/0F0umVxuI.', '2022-06-12 01:08:54'),
(104, '', NULL, NULL, 'false', '', 'HappyCat03@gmail.com', 'HappyCat102', '$2y$10$fmXcAvQf.yMPAC9h.pSPM.LTt8TtGkGmKB1RcwB8JVIZ.s7Ci6D.S', '2022-06-12 01:29:10'),
(105, '', NULL, NULL, 'false', '', 'HappyCat103@gmail.com', 'HappyCat103', '$2y$10$AfG86k1nHAZF5PFHsQHGteBVStu1/RfJ2QvKmpF3f7YwUfbdWQCtK', '2022-06-12 01:29:50'),
(106, '', NULL, NULL, 'false', '', 'HappyCat104@gmail.com', 'HappyCat104', '$2y$10$hVvGk5X8CKfqS1UR4ymzqOdEg8yHaa7NGo1z6/cPy6D6ONUif5drq', '2022-06-12 01:30:43'),
(107, '這裡是來生投放所', '1990-06-25', '2021-06-25', 'false', '0900100111', 'todayis0625@gmail.com', 'todayis0625', '$2y$10$3pud1aoTGiUaVzlkUxNgJe1aAMwjt9bML907ViLqPMMrfVWzqCPEy', '2022-06-25 07:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `music_category`
--

CREATE TABLE `music_category` (
  `music_type_sid` int(11) NOT NULL,
  `music_type_en` varchar(255) NOT NULL,
  `music_type_ch` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `music_category`
--

INSERT INTO `music_category` (`music_type_sid`, `music_type_en`, `music_type_ch`) VALUES
(1, 'happiness', '快樂'),
(2, 'meditation', '沉思'),
(3, 'sadness', '悲傷');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `sid` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `event_time` date DEFAULT NULL,
  `type_sid` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `location_sid` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `publish_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`sid`, `topic`, `event_time`, `type_sid`, `img`, `location_sid`, `content`, `publish_date`) VALUES
(1, '台灣出生率下降', '2019-06-07', 2, '8045d65e4d833e6fb6c56447a7ee9a4e.jpg', 1, '台灣內政部統計顯示，2020年台灣只有16萬5249名新生兒，創下新低點，死亡人數卻首次超越出生人數，人口首度出現負成長。', '2019-07-07'),
(2, '台灣最宜居、幸福感最高城市？', '2020-09-25', 3, '2fe1a74ee11608da158891dc4bcc3010.jpg', 8, '由台中市奪冠，擁有18.1%的支持度，其次是台北市16.7%，其餘縣市支持率都低於10%，第三名為台南僅有7.2%，六都之中以桃園市最低，僅4.9%。\r\n', '2020-10-20'),
(3, '想輕鬆上大學嗎?投胎吧！！', '2020-03-21', 2, '1ff123f659c37aecb87d07707b6d389b.jpg', 1, '2021新生兒不到16萬！「全入時代」來臨 今年高中畢業生都有大學讀 輕輕鬆鬆上大學\r\n', '2021-03-23'),
(5, '2023無性別新選擇', '2023-01-01', 1, '3b7fa3757454d35740f84d464909b6e7.jpg', 1, '台灣嬰兒「男多於女」數值偏高，重男輕女觀念未除？ 推出無性別選擇!無性別新時代來臨!\r\n', '2022-12-01'),
(7, '來生的命運沒辦法預知，但外表可以', '2022-03-03', 1, 'ee4367ef9abf0bd4ed848880fcf889b2.jpg', 1, '陰德值小遊戲上架，多做善事不保證有好報但可以有更酷的外表！', '2022-02-03'),
(9, '好想擁有貓貓肉球..喵喵喵', '2022-12-07', 1, 'd0d1059c115e6e981c8b75d427291e49.jpg', 2, '貓掌概念款新發表!發表會於5月31日晚間7點開始，請勿錯過，喵!喵喵！\r\n', '2022-11-01'),
(21, '胖寶寶最高！！', '2019-02-08', 2, '263e34486b4febadafc418da204331d9.jpg', 1, '新生兒越胖越好?擔心選擇重量級軀幹會有健康疑慮嗎?新產品移除糖寶寶基因~就要胖!胖的健康沒煩惱!\r\n', '2019-01-08'),
(24, '被鳥叫聲喚醒的每一天♥', '2018-03-23', 3, 'ff26c0974744293dba28506e719c0682.jpg', 10, '悠閒No.1！想逃離城市的吵鬧與喧囂，安靜的鄉村生活也是最近的熱門新選擇喔\r\n', '2019-02-20'),
(25, '狼的孩子', '2022-06-22', 1, 'e2114329b655c2bf1bb652300e2f0c87.jpg', 7, '特殊設定釋出，可以獲得與狼群溝通的技能（此設定有售命保證！不會被吃掉喔）\r\n', '2022-05-09'),
(26, '上班上到很生氣想揍老闆嗎？？？', '2023-06-12', 3, '6fcfafb207422b89a3aa94a69a871b06.jpg', 1, '無人島地點新開放！下輩子不必上班囉～\r\n生存極限挑戰！加油！努力活下去', '2022-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `news_tag`
--

CREATE TABLE `news_tag` (
  `nt_sid` int(11) NOT NULL,
  `news_sid` int(11) NOT NULL,
  `tag_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_tag`
--

INSERT INTO `news_tag` (`nt_sid`, `news_sid`, `tag_sid`) VALUES
(77, 21, 5),
(78, 21, 8),
(79, 21, 11),
(80, 21, 13),
(81, 21, 14),
(84, 2, 2),
(85, 2, 4),
(86, 2, 16),
(93, 7, 5),
(94, 7, 6),
(95, 7, 7),
(96, 7, 8),
(97, 7, 12),
(98, 7, 13),
(99, 7, 21),
(100, 9, 5),
(101, 9, 6),
(102, 9, 7),
(103, 9, 9),
(104, 9, 22),
(109, 22, 2),
(110, 22, 15),
(111, 22, 17),
(112, 22, 23),
(113, 23, 2),
(114, 23, 17),
(115, 23, 23),
(116, 24, 2),
(117, 24, 15),
(118, 24, 17),
(119, 24, 23),
(120, 25, 1),
(121, 25, 4),
(122, 25, 7),
(123, 25, 14),
(124, 25, 25),
(138, 1, 4),
(139, 1, 15),
(140, 3, 3),
(141, 3, 14),
(142, 3, 19),
(196, 5, 1),
(197, 5, 4),
(198, 5, 7),
(199, 5, 8),
(200, 5, 13),
(201, 5, 26),
(219, 26, 1),
(220, 26, 2),
(221, 26, 14),
(222, 26, 15),
(223, 26, 23),
(224, 26, 27),
(225, 26, 28);

-- --------------------------------------------------------

--
-- Table structure for table `npo_act`
--

CREATE TABLE `npo_act` (
  `sid` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type_sid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `npo_name` varchar(255) DEFAULT NULL,
  `act_title` varchar(255) DEFAULT NULL,
  `place_city` int(11) DEFAULT NULL,
  `place_other` varchar(255) DEFAULT NULL,
  `limit_num` int(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npo_act`
--

INSERT INTO `npo_act` (`sid`, `img`, `type_sid`, `price`, `value`, `start`, `end`, `npo_name`, `act_title`, `place_city`, `place_other`, `limit_num`, `intro`) VALUES
(20, 'f7613a3e2b8a411eb55e6bc3622f1d98.jpg', 5, 150, 50, '2022-06-22 21:02:00', '2022-07-22 22:52:00', '財團法人桃園市私立寶貝潛能發展中心', '(這是測試)幫浪浪找個家', 16, '新莊區動保處裕民分館', 60, '新北市政府動保處在植樹節當日在新莊裕民分館舉辦「浪浪愛心認養」活動，活動集結狗狗聯誼會、寵物下午茶、萌寵療癒書展、播放寵物電影及我的寵物情人拍照打卡等多元主題，民眾帶著家中毛寶貝一起到圖書館來同樂，當天許多民眾成功認養毛寶貝，不僅獲得動保處贈送寵物驚喜大禮包，作為毛寶貝嫁妝，並結合植樹節加碼贈送本市景觀處三峽苗圃所提供的大麥草盆栽。'),
(21, 'npo-04.jpg', 2, 1000, 50, '2022-07-16 21:02:00', '2022-08-18 22:52:00', '財團法人桃園市私立寶貝潛能發展中心', '浪貓中途送養', 15, '松山區動保處', 70, '設立多元認養機制，提供民眾便利的認養地點與管道，增加收容動物認養機會。'),
(22, 'npo-04.jpg', 3, 100, 50, '2022-07-28 21:02:00', '2022-07-21 22:52:00', '財團法人桃園市私立寶貝潛能發展中心', '一起幫助浪犬', 16, '八里動物之家', 3, '※因現場人員需處理照護動物工作，場地/導覽人員人力有限，本會將視天候狀況及人力狀況審核是否同意志工服務，若天候不佳或是已有團體預約，就需要另擇他日喔!'),
(23, 'npo-07.jpg', 3, 100, 50, '2022-06-11 21:02:00', '2022-07-22 22:52:41', '財團法人桃園市私立寶貝潛能發展中心', '家庭照顧者支持計畫', 2, '文山區萬和街6號4樓', 15, '1. 以弱勢社區及服務據點所提出的需求提供服務，並體驗當地生活和文化。\r\n2. 協助當地教學、活動帶領等為主，服務內容依實際狀況調整。'),
(24, '25c5a6fab35182c6c03ce95cd5429f96.jpg', 3, 200, 50, '2022-07-22 21:02:00', '2022-07-21 22:52:00', '財團法人桃園市私立寶貝潛能發展中心', 'for one挺好：「食物銀行。送愛」', 2, '拉拉拉', 10, '服務內容：\r\n1.關懷服務：電話問安、送餐服務及社區關懷活動。\r\n2.陪伴服務：陪同就醫、讀報、陪伴運動及陪伴至社區或據點參與活動等服務。'),
(25, 'npo-09.jpg', 3, 50, 50, '2022-07-15 21:02:00', '2022-07-23 22:52:49', '財團法人桃園市私立寶貝潛能發展中心', '高風險家庭照顧關懷計畫', 4, '蘆竹區文中路一段108號（國道2號南桃園交流道附近）', 20, '馨禾老人長期照顧中心招募社會團體、學生團體與慈善愛心團體至院區服務與訪視住民老人，適時提供住民身心靈之撫慰與支持，並為住民生活帶來調劑與休閒娛樂，藉此提升住民之生活品質，更適時幫助住民在疾病上之舒緩與慰藉，並藉社會資源之力量達成社區照護模式與社會互動。'),
(26, 'npo-10.jpg', 5, 100, 50, '2022-06-17 21:02:00', '2022-06-23 22:52:53', '財團法人桃園市私立寶貝潛能發展中心', '陪伴燒傷朋友勇敢重生', 2, '文山區萬和街6號4樓', 2, '哪裡有需要伊甸就在哪裡，每一個需要除了有員工，也需要熱心的志工夥伴協同，不論是櫃檯、文書等間接服務，或餵食、陪伴等直接服務，因為有志工的加入，服務的工作才能做得更好。'),
(28, 'npo-12.jpg', 5, 50, 50, '2022-07-13 21:02:00', '2022-06-22 22:53:01', '財團法人桃園市私立寶貝潛能發展中心', '「看不見，我努力」為視多障者加油！', 4, '大溪老街', 4, '今年度，中心想透過志工協同領導的模式，由一位志工搭配 4 名身障者組成小隊，活動期間陪伴身障者於大溪老街中完成任務，中心期待透過此模式，增加身障者與一般民眾的接觸，雙方能夠進行良性互動，進而提升一般民眾對於身障者的認知，亦透過數位遊戲作為媒介，促使身心障礙者能活用網路科技、學習團隊合作、培養社會參與意識。'),
(29, 'npo-13.jpg', 6, 200, 50, '2022-06-29 21:02:00', '2022-07-22 22:53:04', '財團法人桃園市私立寶貝潛能發展中心', 'i運動不設限-多元扶助計畫', 14, '關廟區北安一街146號', 5, '臺南市鳳梨好筍節、呼朋引伴來'),
(30, 'npo-14.jpg', 6, 50, 50, '2022-06-29 21:02:00', '2022-06-18 22:53:08', '財團法人桃園市私立寶貝潛能發展中心', '伴弱勢癌友翻轉抗癌路', 2, '大安區敦化南路一段233巷28號B1\r\n台北愛樂文教基金會', 40, 'TICF18台北國際合唱音樂節規模龐大，涵蓋20餘場大小音樂會、4項合唱專業課程及首屆台北國際合唱大賽。行政團隊計畫培養節慶活動之幕後籌備人才，歡迎熱愛藝文活動的你/妳，加入我們一起來完成今夏亞洲最具規模的合唱盛事！'),
(75, 'npo-01.jpg', 2, 50, 50, '2022-06-22 21:02:00', '2022-07-15 21:02:00', '財團法人桃園市私立寶貝潛能發展中心', '一起手護台灣', 16, '國聖燈塔', 100, '會提供手套和垃圾袋，保險自理、自行攜帶飲用水 (盡量避免保特瓶或手搖飲)\r\nP.S我們民眾自發性舉辦的活動，故無法提供志工時數或感謝狀唷'),
(84, '978dba48e1c404ef4680391da5f663fd.jpg', 2, 100, 200, '2022-06-23 14:57:00', '2022-06-24 14:57:00', '荒野保護協會', '活動名稱測試', 18, '中華路一段', 5, NULL),
(92, 'e8c8dc6d31f696cde5e671b39746dde7.jpg', 2, 100, 155, '2022-06-29 15:17:00', '2022-07-08 15:17:00', '荒野保護協會', '1111測試', 17, '中華路一段', 3, NULL),
(96, '8d8564599f37a08ca55474aeb970ade5.jpg', 2, 100, 200, '2022-06-28 14:16:00', '2022-06-30 14:17:00', '世界和平', '容瑄想睡覺', 18, '中華路一段', 3, NULL),
(97, '0f094835be9191a9f132d2dc6c49b622.jpg', 2, 100, 200, '2022-06-22 14:20:00', '2022-07-05 14:20:00', '荒野保護協會22222', '活動名稱測試', 17, '中華路一段', 3, NULL),
(98, 'd2734119754e8a036b6b6e85808b8cdc.jpg', 2, 100, 200, '2022-06-17 14:29:00', '2022-06-22 14:29:00', '陽光社會福利基金會', '這個活動類型是動保2', 16, '中華路一段', 3, NULL),
(99, '834cb6e4a3965a819650731e273461f3.jpg', 3, 100, 200, '2022-07-01 04:14:00', '2022-07-14 03:11:00', '荒野保護協會', '活動名稱測試', 14, '拉拉拉拉', 3, NULL),
(100, '0fc3cca5044c997c38d1afd3c6e0bade.jpg', 5, 100, 200, '2022-07-01 04:14:00', '2022-07-14 03:11:00', '荒野保護協會', '活動名稱測試', 14, '拉拉拉拉', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `npo_act_type`
--

CREATE TABLE `npo_act_type` (
  `typesid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npo_act_type`
--

INSERT INTO `npo_act_type` (`typesid`, `name`) VALUES
(1, '環境'),
(2, '動保'),
(3, '長照'),
(4, '兒少'),
(5, '身心障礙'),
(6, '其他');

-- --------------------------------------------------------

--
-- Table structure for table `npo_name`
--

CREATE TABLE `npo_name` (
  `npo_sid` int(11) NOT NULL,
  `npo_name` varchar(255) DEFAULT NULL,
  `npo_img` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `npo_intro` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `npo_name`
--

INSERT INTO `npo_name` (`npo_sid`, `npo_name`, `npo_img`, `email`, `phone`, `mobile`, `npo_intro`, `create_at`) VALUES
(3, '財團法人勵馨社會福利事業基金會', '44a7f93ed895d596168d1abe63fdc704.jpg', 'lknklnlkl@yahoo.com.tw', 29922310, '0966455233', 'kpkpk', '2022-08-15 21:02:00'),
(4, '陽光社會福利基金會', '3596682deda3ee7ac9a209bee24b5041.jpg', 'awslfkdnwqfkj@gmail.com', 25513456, '0966514852', 'popo', '2022-05-15 21:02:00'),
(67, '財團法人桃園市私立寶貝潛能發展中心', '', '123@yahoo.com.tw', 29901234, '0912095815', '2525', '2022-06-01 23:59:07'),
(76, '容瑄', '', 'as840922@yahoo.com.tw', 0, '0912098572', 'c8 c8 cc8 c8 ', '2022-06-09 17:45:33'),
(77, '容瑄', '8d8d74349fddbd121b2db74d10f3fe32.jpg', 'as840922@yahoo.com.tw', NULL, '0912098572', '', '2022-06-09 18:09:12'),
(78, '貓貓教', '198a091ddb93c5886a06d0aa0e288e38.jpg', '123@yahoo.com.tw', NULL, '0915345678', '瞇瞇瞇', '2022-06-09 18:12:16'),
(80, '0609 應該可以去睡覺了吧', 'fb70c3708d93ddebfca06224c3ae81ee.jpg', '12345@yahoo.com.tw', 0, '0911234567', '', '2022-06-09 19:53:13'),
(81, '0609 應該沒有問題吧', 'fb70c3708d93ddebfca06224c3ae81ee.jpg', '12345@yahoo.com.tw', NULL, '0911234567', '', '2022-06-09 19:53:23'),
(82, '希望可以成功desu', '60c5fb872602ba80683ddbf72eb70688.jpg', '123@yahoo.com.tw', NULL, '0988681621', '', '2022-06-09 19:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `sid` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `month` int(11) NOT NULL,
  `country` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `dist` varchar(225) NOT NULL,
  `quota` int(11) NOT NULL,
  `booked` int(11) NOT NULL,
  `place_price` int(11) NOT NULL DEFAULT 200
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`sid`, `year`, `month`, `country`, `city`, `dist`, `quota`, `booked`, `place_price`) VALUES
(2, 2025, 10, '美國', '紐約', '布魯克林', 2, 1, 200),
(4, 2032, 1, '台灣', '新北市', '三峽區', 5, 2, 200),
(5, 2072, 2, '台灣', '台南市', '安平區', 2, 2, 200),
(6, 2030, 5, '台灣', '台南市', '中西區', 5, 2, 200),
(7, 2055, 8, '台灣', '台北市', '大安區', 5, 3, 200),
(10, 2025, 12, '台灣', '台南市', '安平區', 4, 2, 200),
(12, 2025, 12, '台灣', '台北市', '大安區', 3, 2, 200),
(13, 2022, 12, '美國', '加州', '聖荷西', 2, 1, 200),
(14, 2027, 5, '台灣', '台北市', '大安區', 2, 1, 200),
(15, 2026, 10, '台灣', '台北市', '大安區', 3, 1, 200),
(16, 2030, 6, '台灣', '台北市', '內湖區', 1, 1, 200),
(17, 2029, 6, '台灣', '台南市', '中西區', 2, 1, 200),
(18, 2029, 5, '台灣', '桃園市', '蘆竹區', 3, 1, 200),
(19, 2027, 5, '美國', '紐約', '皇后區', 4, 2, 200),
(20, 2027, 12, '美國', '加州', '比佛利山莊', 1, 0, 200),
(21, 2023, 5, '台灣', '新竹縣', '竹北市', 2, 0, 200),
(22, 2025, 6, '台灣', '台北市', '大安區', 2, 1, 200),
(23, 2052, 2, '台灣', '台北市', '大安區', 1, 1, 200),
(24, 2045, 6, '台灣', '台北市', '大安區', 3, 1, 200),
(25, 2105, 10, '台灣', '台北市', '大安區', 2, 0, 200),
(27, 2065, 9, '台灣', '台北市', '大安區', 2, 0, 200),
(28, 2044, 2, '台灣', '新北市', '三峽區', 5, 1, 200),
(29, 2048, 12, '台灣', '新北市', '三峽區', 2, 1, 200),
(30, 2064, 4, '台灣', '新北市', '三峽區', 3, 2, 200),
(31, 2098, 10, '台灣', '新北市', '三峽區', 5, 2, 200),
(32, 2084, 2, '台灣', '新北市', '三峽區', 2, 0, 200),
(33, 2100, 7, '台灣', '新北市', '三峽區', 5, 2, 200),
(34, 2088, 12, '台灣', '台北市', '內湖區', 2, 1, 200),
(35, 2054, 4, '台灣', '台北市', '內湖區', 3, 2, 200),
(36, 2028, 10, '台灣', '台北市', '內湖區', 5, 2, 200),
(37, 2034, 2, '台灣', '台北市', '內湖區', 2, 0, 200),
(38, 2070, 7, '台灣', '台北市', '內湖區', 5, 2, 200),
(39, 2039, 3, '台灣', '桃園市', '中壢區', 4, 2, 200),
(40, 2069, 9, '台灣', '桃園市', '中壢區', 2, 1, 200),
(41, 2089, 3, '台灣', '桃園市', '中壢區', 2, 0, 200),
(42, 2027, 5, '台灣', '桃園市', '大園區', 3, 2, 200),
(43, 2039, 12, '台灣', '桃園市', '大園區', 2, 1, 200),
(44, 2039, 9, '台灣', '桃園市', '蘆竹區', 4, 2, 200),
(45, 2039, 11, '台灣', '桃園市', '蘆竹區', 2, 1, 200),
(46, 2052, 3, '台灣', '新北市', '三峽區', 4, 1, 200),
(47, 2077, 12, '台灣', '新北市', '三重區', 4, 2, 200),
(48, 2099, 7, '台灣', '新北市', '三重區', 2, 1, 200),
(49, 2054, 6, '台灣', '新北市', '三重區', 4, 0, 200),
(50, 2068, 8, '台灣', '新北市', '蘆洲區', 3, 2, 200),
(51, 2084, 2, '台灣', '新北市', '蘆洲區', 4, 2, 200),
(52, 2072, 3, '台灣', '台北市', '中山區', 4, 1, 200),
(53, 2077, 11, '台灣', '台北市', '中山區', 4, 2, 200),
(54, 2069, 7, '台灣', '台北市', '中山區', 3, 1, 200),
(55, 2074, 6, '台灣', '宜蘭縣', '宜蘭市', 4, 0, 200),
(56, 2038, 8, '台灣', '宜蘭縣', '宜蘭市', 3, 2, 200),
(57, 2094, 2, '台灣', '台中市', '烏日區', 4, 2, 200),
(58, 2040, 11, '台灣', '台北市', '北投區', 2, 0, 200),
(59, 2055, 12, '台灣', '高雄市', '左營區', 3, 1, 200),
(60, 2075, 2, '台灣', '高雄市', '左營區', 2, 1, 200),
(61, 2035, 8, '台灣', '高雄市', '三民區', 3, 1, 200),
(62, 2033, 4, '台灣', '台南市', '仁德區', 2, 0, 200),
(63, 2023, 1, '台灣', '台南市', '中西區', 2, 1, 200),
(64, 2041, 12, '台灣', '台南市', '中西區', 3, 1, 200),
(65, 2062, 7, '台灣', '台南市', '仁德區', 3, 2, 200),
(66, 2055, 9, '台灣', '台南市', '仁德區', 5, 2, 200),
(67, 2023, 3, '美國', '加州', '舊金山', 2, 0, 200),
(68, 2023, 12, '台灣', '宜蘭縣', '羅東鎮', 3, 1, 200),
(69, 2026, 8, '台灣', '台中市', '西區', 3, 1, 200),
(70, 2032, 7, '台灣', '新北市', '蘆洲區', 2, 0, 200),
(71, 2029, 5, '台灣', '高雄市', '左營區', 2, 0, 200);

-- --------------------------------------------------------

--
-- Table structure for table `place_city`
--

CREATE TABLE `place_city` (
  `country_id` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place_city`
--

INSERT INTO `place_city` (`country_id`, `city`) VALUES
('台灣', '南投縣'),
('台灣', '台中市'),
('台灣', '台北市'),
('台灣', '台南市'),
('台灣', '台東縣'),
('台灣', '基隆市'),
('台灣', '宜蘭縣'),
('台灣', '屏東縣'),
('台灣', '新北市'),
('台灣', '新竹市'),
('台灣', '新竹縣'),
('台灣', '桃園市'),
('台灣', '澎湖縣'),
('台灣', '花蓮縣'),
('台灣', '金門縣'),
('台灣', '高雄市'),
('美國', '加州'),
('美國', '夏威夷'),
('美國', '紐約');

-- --------------------------------------------------------

--
-- Table structure for table `place_country`
--

CREATE TABLE `place_country` (
  `country` varchar(225) NOT NULL,
  `country_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place_country`
--

INSERT INTO `place_country` (`country`, `country_price`) VALUES
('台灣', 100),
('美國', 500);

-- --------------------------------------------------------

--
-- Table structure for table `place_dist`
--

CREATE TABLE `place_dist` (
  `country_id` varchar(225) NOT NULL,
  `city_id` varchar(225) NOT NULL,
  `dist` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place_dist`
--

INSERT INTO `place_dist` (`country_id`, `city_id`, `dist`) VALUES
('台灣', '新北市', '三峽區'),
('台灣', '高雄市', '三民區'),
('台灣', '新北市', '三重區'),
('台灣', '桃園市', '中壢區'),
('台灣', '台北市', '中山區'),
('台灣', '台南市', '中西區'),
('台灣', '台南市', '仁德區'),
('台灣', '台北市', '內湖區'),
('台灣', '台北市', '北投區'),
('台灣', '桃園市', '大園區'),
('台灣', '台北市', '大安區'),
('台灣', '台南市', '安平區'),
('台灣', '宜蘭縣', '宜蘭市'),
('台灣', '高雄市', '左營區'),
('美國', '紐約', '布魯克林'),
('台灣', '台南市', '新化區'),
('台灣', '台南市', '歸仁區'),
('美國', '加州', '比佛利山莊'),
('台灣', '台中市', '烏日區'),
('美國', '紐約', '皇后區'),
('台灣', '新竹縣', '竹北市'),
('台灣', '新竹縣', '竹東鎮'),
('台灣', '宜蘭縣', '羅東鎮'),
('美國', '加州', '聖地牙哥'),
('美國', '加州', '聖荷西'),
('美國', '加州', '舊金山'),
('台灣', '新北市', '蘆洲區'),
('台灣', '桃園市', '蘆竹區'),
('台灣', '台中市', '西區'),
('台灣', '台中市', '豐原區'),
('台灣', '宜蘭縣', '頭城鄉');

-- --------------------------------------------------------

--
-- Table structure for table `place_order`
--

CREATE TABLE `place_order` (
  `sid` int(11) NOT NULL,
  `member_sid` varchar(225) CHARACTER SET utf8mb4 NOT NULL,
  `place_sid` int(225) NOT NULL,
  `date_price` int(11) NOT NULL,
  `place_price` int(11) NOT NULL,
  `created_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `place_order`
--

INSERT INTO `place_order` (`sid`, `member_sid`, `place_sid`, `date_price`, `place_price`, `created_date`) VALUES
(8, '11', 6, 50, 150, '2022-06-09'),
(10, '31', 2, 50, 150, '2022-06-09'),
(12, '15', 4, 50, 150, '2022-06-09'),
(15, '20', 5, 50, 150, '2022-06-09'),
(18, '12', 13, 50, 150, '2022-06-09'),
(19, '1', 66, 50, 150, '2022-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `reincarnation`
--

CREATE TABLE `reincarnation` (
  `member_sid` int(11) NOT NULL,
  `soul_id` int(11) NOT NULL,
  `generation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reincarnation`
--

INSERT INTO `reincarnation` (`member_sid`, `soul_id`, `generation`) VALUES
(11, 1, 1),
(12, 2, 1),
(13, 1, 2),
(14, 2, 2),
(15, 1, 3),
(16, 2, 3),
(17, 1, 4),
(18, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `reincarnation_order`
--

CREATE TABLE `reincarnation_order` (
  `reincarnation_order_sid` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `avatar_id` int(11) NOT NULL,
  `time_id` date DEFAULT NULL,
  `place_id` varchar(255) NOT NULL,
  `avatar_price` int(11) NOT NULL,
  `time_price` int(11) NOT NULL,
  `place_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `order_datetime` datetime NOT NULL,
  `order_last_modified_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `showcase`
--

CREATE TABLE `showcase` (
  `avatar_id` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `avatar_created_at` datetime NOT NULL,
  `combination` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`combination`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `showcase`
--

INSERT INTO `showcase` (`avatar_id`, `member_sid`, `avatar_created_at`, `combination`) VALUES
(9, 1, '2022-06-09 17:11:19', '{\"eyes\":\"0\",\"nose\":\"0\",\"mouth\":\"0\",\"ear\":\"0\",\"hair\":\"0\",\"noseColor\":\"0\",\"mouthColor\":\"0\",\"earColor\":\"0\",\"hairColor\":\"0\",\"eyesColor\":\"5\"}'),
(10, 1, '2022-06-09 17:17:46', '{\"eyes\":\"0\",\"nose\":\"0\",\"mouth\":\"0\",\"ear\":\"0\",\"hair\":\"0\",\"mouthColor\":\"0\",\"earColor\":\"0\",\"hairColor\":\"0\",\"eyesColor\":\"6\",\"noseColor\":\"5\"}'),
(11, 1, '2022-06-09 17:18:11', '{\"eyes\":\"0\",\"nose\":\"0\",\"mouth\":\"0\",\"ear\":\"0\",\"hair\":\"0\",\"earColor\":\"0\",\"eyesColor\":\"6\",\"noseColor\":\"5\",\"mouthColor\":\"5\",\"hairColor\":\"5\"}'),
(12, 1, '2022-06-09 17:18:18', '{\"eyes\":\"0\",\"nose\":\"0\",\"mouth\":\"0\",\"ear\":\"0\",\"hair\":\"0\",\"eyesColor\":\"6\",\"noseColor\":\"5\",\"mouthColor\":\"5\",\"earColor\":\"3\",\"hairColor\":\"5\"}'),
(13, 1, '2022-06-09 17:18:26', '{\"eyes\":\"0\",\"nose\":\"0\",\"mouth\":\"0\",\"ear\":\"0\",\"hair\":\"0\",\"eyesColor\":\"1\",\"noseColor\":\"5\",\"mouthColor\":\"5\",\"earColor\":\"3\",\"hairColor\":\"5\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tg_sid` int(11) NOT NULL,
  `tag_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tg_sid`, `tag_name`) VALUES
(1, '名額'),
(2, '地點'),
(3, '時間'),
(4, '投胎'),
(5, '陰德值'),
(6, '遊戲'),
(7, '我的衣櫥'),
(8, '可愛'),
(9, '貓貓'),
(10, '狗狗'),
(11, '胖寶寶'),
(12, '髮型'),
(13, '新造型'),
(14, '酷'),
(15, '新聞'),
(16, '城市'),
(17, '鄉村'),
(18, '飛機'),
(19, '大學'),
(21, '捲毛'),
(22, '猫の日'),
(23, '田園生活'),
(24, '機票'),
(25, '狼小孩'),
(26, '性別平等'),
(27, '無人島'),
(28, '生存挑戰');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `ty_sid` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`ty_sid`, `type_name`) VALUES
(1, '角色'),
(2, '新聞'),
(3, '地點'),
(4, '名額'),
(5, '陰德值'),
(6, '投胎');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act_order`
--
ALTER TABLE `act_order`
  ADD PRIMARY KEY (`act_order_sid`);

--
-- Indexes for table `act_order_details`
--
ALTER TABLE `act_order_details`
  ADD PRIMARY KEY (`order_create_sid`);

--
-- Indexes for table `body_parts`
--
ALTER TABLE `body_parts`
  ADD PRIMARY KEY (`parts_sid`);

--
-- Indexes for table `city_type`
--
ALTER TABLE `city_type`
  ADD PRIMARY KEY (`city_sid`);

--
-- Indexes for table `cube`
--
ALTER TABLE `cube`
  ADD PRIMARY KEY (`cube_sid`),
  ADD KEY `member_sid` (`member_sid`);

--
-- Indexes for table `cube_category`
--
ALTER TABLE `cube_category`
  ADD PRIMARY KEY (`cube_style_sid`);

--
-- Indexes for table `cube_music`
--
ALTER TABLE `cube_music`
  ADD PRIMARY KEY (`cube_music_sid`);

--
-- Indexes for table `date_price`
--
ALTER TABLE `date_price`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `good_deed_games`
--
ALTER TABLE `good_deed_games`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `good_deed_games_record`
--
ALTER TABLE `good_deed_games_record`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `good_deed_score`
--
ALTER TABLE `good_deed_score`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `good_deed_test`
--
ALTER TABLE `good_deed_test`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `good_deed_test_record`
--
ALTER TABLE `good_deed_test_record`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_sid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `music_category`
--
ALTER TABLE `music_category`
  ADD PRIMARY KEY (`music_type_sid`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `location_sid` (`location_sid`),
  ADD KEY `type_sid` (`type_sid`);

--
-- Indexes for table `news_tag`
--
ALTER TABLE `news_tag`
  ADD PRIMARY KEY (`nt_sid`),
  ADD KEY `news_sid` (`news_sid`),
  ADD KEY `tag_sid` (`tag_sid`);

--
-- Indexes for table `npo_act`
--
ALTER TABLE `npo_act`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `type_sid` (`type_sid`),
  ADD KEY `place_city` (`place_city`);

--
-- Indexes for table `npo_act_type`
--
ALTER TABLE `npo_act_type`
  ADD PRIMARY KEY (`typesid`);

--
-- Indexes for table `npo_name`
--
ALTER TABLE `npo_name`
  ADD PRIMARY KEY (`npo_sid`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `place_city`
--
ALTER TABLE `place_city`
  ADD PRIMARY KEY (`city`),
  ADD KEY `place_city_ibfk_1` (`country_id`);

--
-- Indexes for table `place_country`
--
ALTER TABLE `place_country`
  ADD PRIMARY KEY (`country`);

--
-- Indexes for table `place_dist`
--
ALTER TABLE `place_dist`
  ADD PRIMARY KEY (`dist`),
  ADD KEY `place_dist_ibfk_2` (`country_id`);

--
-- Indexes for table `place_order`
--
ALTER TABLE `place_order`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `reincarnation`
--
ALTER TABLE `reincarnation`
  ADD KEY `member_sid` (`member_sid`);

--
-- Indexes for table `reincarnation_order`
--
ALTER TABLE `reincarnation_order`
  ADD PRIMARY KEY (`reincarnation_order_sid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `showcase`
--
ALTER TABLE `showcase`
  ADD PRIMARY KEY (`avatar_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tg_sid`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ty_sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `act_order`
--
ALTER TABLE `act_order`
  MODIFY `act_order_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `act_order_details`
--
ALTER TABLE `act_order_details`
  MODIFY `order_create_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `body_parts`
--
ALTER TABLE `body_parts`
  MODIFY `parts_sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city_type`
--
ALTER TABLE `city_type`
  MODIFY `city_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cube`
--
ALTER TABLE `cube`
  MODIFY `cube_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cube_category`
--
ALTER TABLE `cube_category`
  MODIFY `cube_style_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cube_music`
--
ALTER TABLE `cube_music`
  MODIFY `cube_music_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `good_deed_games`
--
ALTER TABLE `good_deed_games`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `good_deed_games_record`
--
ALTER TABLE `good_deed_games_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `good_deed_score`
--
ALTER TABLE `good_deed_score`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `good_deed_test`
--
ALTER TABLE `good_deed_test`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `good_deed_test_record`
--
ALTER TABLE `good_deed_test_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `music_category`
--
ALTER TABLE `music_category`
  MODIFY `music_type_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `news_tag`
--
ALTER TABLE `news_tag`
  MODIFY `nt_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `npo_act`
--
ALTER TABLE `npo_act`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `npo_act_type`
--
ALTER TABLE `npo_act_type`
  MODIFY `typesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `npo_name`
--
ALTER TABLE `npo_name`
  MODIFY `npo_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `place_order`
--
ALTER TABLE `place_order`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `reincarnation_order`
--
ALTER TABLE `reincarnation_order`
  MODIFY `reincarnation_order_sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `showcase`
--
ALTER TABLE `showcase`
  MODIFY `avatar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tg_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `ty_sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`location_sid`) REFERENCES `location` (`l_sid`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`type_sid`) REFERENCES `type` (`ty_sid`);

--
-- Constraints for table `npo_act`
--
ALTER TABLE `npo_act`
  ADD CONSTRAINT `npo_act_ibfk_1` FOREIGN KEY (`type_sid`) REFERENCES `npo_act_type` (`typesid`),
  ADD CONSTRAINT `npo_act_ibfk_3` FOREIGN KEY (`place_city`) REFERENCES `city_type` (`city_sid`);

--
-- Constraints for table `place_city`
--
ALTER TABLE `place_city`
  ADD CONSTRAINT `place_city_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `place_country` (`country`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `place_dist`
--
ALTER TABLE `place_dist`
  ADD CONSTRAINT `place_dist_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `place_country` (`country`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
