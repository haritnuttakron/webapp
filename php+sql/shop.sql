-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 10, 2022 at 02:30 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`detail_id`, `order_id`, `product_id`) VALUES
(48, 23, 37),
(49, 23, 42),
(50, 23, 5),
(51, 24, 37),
(52, 24, 42),
(53, 24, 5),
(54, 25, 37),
(55, 25, 42),
(56, 25, 5),
(57, 26, 37),
(58, 26, 42),
(59, 26, 5),
(60, 27, 5),
(61, 27, 2),
(62, 27, 46);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `fname` varchar(258) NOT NULL,
  `lname` varchar(258) NOT NULL,
  `address` text NOT NULL,
  `mobile` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `fname`, `lname`, `address`, `mobile`, `date_time`) VALUES
(23, 'Siam', 'Nuttakron', '18/4 หมู่6\r\nทาวเฮ้าส์', 822964914, '2022-10-10 21:17:46'),
(24, 'Siam', 'Nuttakron', '18/4 หมู่6\r\nทาวเฮ้าส์', 822964914, '2022-10-10 21:20:44'),
(25, 'Siam', 'Nuttakron', '18/4 หมู่6\r\nทาวเฮ้าส์', 822964914, '2022-10-10 21:21:08'),
(26, 'Siam', 'Nuttakron', '18/4 หมู่6\r\nทาวเฮ้าส์', 822964914, '2022-10-10 21:21:51'),
(27, 'Harit', 'Nuttakron', '117/72 mu4\r\nsoy muktrakarn', 822964914, '2022-10-10 21:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`) VALUES
(1, 'Miso Ramen', 'Miso-Flavored ramen', 89),
(2, 'Shio Ramen', 'Salt-Flavored Ramen', 89),
(3, 'Tonkotsu Ramen', 'pork-bone soup Ramen', 89),
(4, 'Shoyu Ramen', 'Soy sauce-Flavored Ramen', 89),
(5, 'Udon', 'Japenese thick noodle', 89),
(6, 'Tamago Kake Gohan', 'Japanese rice topped with raw egg and soy sauce', 75),
(7, 'KatsuDon', 'Japanese rice topped with a deep-fried breaded pork cutlet', 89),
(8, 'OyakoDon', 'Japanese rice topped with chicken, egg  kind of soup', 89),
(9, 'TeriyakiDon', 'Japanese rice topped with teriyaki ', 89),
(10, 'Salmon Sashimi with Ikura Don', 'Japanese rice topped with salmon and roe', 115),
(11, 'ChashuDon', 'Japanese rice topped with succulent simmered pork and soft boild egg', 79),
(12, 'GyuDon', 'Japanese rice topped with beef ', 99),
(13, 'Chicken Curry', 'Japanese chicken curry rice', 135),
(14, 'Katsu Curry', 'Japanese curry rice with a chicken cutlet on top', 155),
(15, 'prawn katsu curry', 'Japanese curry rice with Succulent prawns in a panko crumb  on top', 175),
(16, 'Ochazuke', 'Green Tea Over Rice', 69),
(17, 'Japanese Steamed Rice', 'Freshly cooked japanese rice', 35),
(18, 'Chahan', 'Japanese Fried Rice', 79),
(19, 'Set1', 'selectable don/ramen +karaage +drinks', 179),
(20, 'Set2', 'selectable don/ramen +Gyoza +Miso Soup', 179),
(21, 'Set3', 'selectable don/ramen+Tempura+drinks', 199),
(22, 'Set4', 'selectable don/ramen +Sanma Shio Yaki+ Kabayaki', 259),
(23, 'Set5', 'selectable don/ramen +Salad+Yaki tori', 179),
(24, 'Karaage', 'japanese deep fried chicken', 89),
(25, 'Gyoza', 'pan-fried dumplings', 89),
(26, 'Tempura', 'battered and deep fried shrimp', 119),
(27, 'Chashu', 'slow-braised pork belly ', 79),
(28, 'Takoyaki', 'ball-flour-shaped snack filled with diced octopus', 99),
(29, 'Yakisoba', 'stir-fried noodle', 79),
(30, 'Zarusoba', 'Cold Soba Noodles with dipping sauce', 79),
(31, 'Miso Soup', 'traditional Japanese soup', 49),
(32, 'YakiTori', 'skewered chicken', 69),
(33, 'Tonkatsu', 'deep-fried pork cutlet', 89),
(34, 'Kabayaki', 'unagi eel grilled with soy-sauce', 109),
(35, 'Okonomiyaki', 'savory pancake dish', 129),
(36, 'Yaki imo', 'baked Japanese sweet potato', 49),
(37, 'Sanma ShioYaki', 'saury sprinkled with salt and grilled', 199),
(38, 'Korokke', 'deep-fried seafood mixed with potatoes', 89),
(39, 'Kushikatsu set', 'deep-fried skewered meat and vegetables', 169),
(40, 'Teriyaki', 'grilled chicken with teriyaki sauce', 89),
(41, 'Salad', 'Traditional Japanese Salads', 129),
(42, 'Natto', 'Fermented soybeans', 69),
(43, 'Edamame', 'Immature soybeans in the pod', 59),
(44, 'Drinking water', '-', 15),
(45, 'Cola', '-', 30),
(46, 'Matcha', 'Traditional green tea', 30),
(47, 'Lemon Tea', '-', 30),
(48, 'Ice Cream', 'Selectable Ice cream flavor', 45),
(49, 'Mochi Ice Cream', 'Japanese mochi with an ice cream filling', 65),
(50, 'Soft Cream', 'Frozen dessert, similar to ice cream but softer and less dense', 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
