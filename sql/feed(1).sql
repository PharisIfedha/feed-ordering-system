-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 11:42 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feed`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`) VALUES
(1, 'molcom', 30, 0),
(2, 'Rice jam', 15, 0),
(3, 'maize jam', 20, 0),
(4, 'wheat brand', 15, 0),
(5, 'cotton seed cake', 30, 0),
(6, 'Sunflower', 30, 0),
(7, 'Fish meal', 30, 0),
(8, 'lake shells', 45, 0),
(9, 'porland', 20, 0),
(10, 'Blood meal', 60, 0),
(11, 'Soya meal', 45, 0),
(12, 'Molcom barley', 60, 0),
(15, 'Premix', 25, 0),
(16, 'DCP/shells', 50, 0),
(17, 'Bone Meal', 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mixedfeed`
--

CREATE TABLE `mixedfeed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mixedfeed`
--

INSERT INTO `mixedfeed` (`id`, `name`, `price`, `deleted`, `description`) VALUES
(6, 'Cattle Feed', 2500, 0, 'Wheat-roughages(50kgs), Cotton-seed(15kgs), Sunflo'),
(8, 'Pig Feed', 2500, 0, 'Maize-meal(50Kgs), Polland(10Kgs), Fish-meal(15Kgs'),
(11, 'Dairy Feed', 2500, 0, 'Wheat-roughages(50kgs), Cotton-seed(15kgs), Sunflo'),
(12, 'Broiler Finnisher', 5495, 0, 'maize jam(100Kgs), Fish meal(25Kgs), cotton(30Kgs)'),
(14, 'Chick mash', 5565, 0, 'maize jam(100Kgs), Fish meal(14Kgs), cotton(14Kgs)'),
(16, 'Layers mash', 5880, 0, 'maize jam(100Kgs), Fish meal(18Kgs), cotton(18Kgs)');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 2, 'Address 2', 'Sample Description 1', '2017-03-28 17:32:41', 'Wallet', 150, 'Yet to be delivered', 0),
(2, 2, 'New address 2', '', '2017-03-28 17:43:05', 'Wallet', 130, 'Cancelled by Customer', 1),
(3, 3, 'Address 3', 'Sample Description 2', '2017-03-28 19:49:33', 'Cash On Delivery', 130, 'Yet to be delivered', 0),
(4, 3, 'Address 3', '', '2017-03-28 19:52:01', 'Cash On Delivery', 130, 'Cancelled by Customer', 1),
(5, 3, 'New Address 3', '', '2017-03-28 20:47:28', 'Wallet', 285, 'Paused', 0),
(6, 3, 'New Address 3', '', '2017-03-30 00:43:31', 'Wallet', 325, 'Cancelled by Customer', 1),
(7, 6, 'Webuye', '', '2019-11-16 00:44:41', 'Cash On Delivery', 420, 'Cancelled by Customer', 1),
(8, 6, 'Webuye', '', '2019-11-18 21:53:32', 'Wallet', 0, 'Yet to be delivered', 0),
(9, 6, 'Webuye', '', '2019-11-18 22:15:08', 'Wallet', 0, 'Yet to be delivered', 0),
(10, 6, 'weunyte', '', '2019-11-18 23:03:14', 'Wallet', 0, 'Yet to be delivered', 0),
(11, 6, 'Webuye', '', '2019-11-18 23:09:17', 'Wallet', 443610, 'Yet to be delivered', 0),
(12, 6, '', '', '2019-11-19 17:31:29', 'Wallet', 0, 'Yet to be delivered', 0),
(13, 6, '', '', '2019-11-19 17:32:20', 'Wallet', 0, 'Yet to be delivered', 0),
(14, 6, '', '', '2019-11-20 16:02:56', 'Wallet', 0, 'Yet to be delivered', 0),
(15, 6, '', '', '2019-11-20 16:33:07', 'Wallet', 443610, 'Yet to be delivered', 0),
(16, 6, '', '', '2019-11-20 22:24:13', 'Wallet', 428610, 'Yet to be delivered', 0),
(17, 6, '', '', '2019-11-20 22:31:06', 'Wallet', 443610, 'Yet to be delivered', 0),
(18, 6, '', '', '2019-11-20 22:38:39', 'Wallet', 983315, 'Yet to be delivered', 0),
(19, 6, '', '', '2019-11-20 22:40:43', 'Wallet', 983315, 'Yet to be delivered', 0),
(20, 6, '', '', '2019-11-21 05:52:06', 'Wallet', 0, 'Yet to be delivered', 0),
(21, 20, '', '', '2019-11-21 11:49:58', 'Wallet', 5520, 'Yet to be delivered', 0),
(22, 20, '', '', '2019-11-21 11:52:05', 'Wallet', 0, 'Yet to be delivered', 0),
(23, 20, '', '', '2019-11-21 11:53:20', 'Wallet', 0, 'Yet to be delivered', 0),
(24, 20, '', '', '2019-11-21 12:10:09', 'Wallet', 9420, 'Yet to be delivered', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `mixedfeed_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(1, 2, 'Subject 1', 'New Description for Subject 1', 'Answered', 'Support', '2017-03-30 18:08:51', 0),
(2, 6, 'Poultry', 'How can one feed poultry and also mix their feed', 'Answered', 'Complaint', '2019-11-16 02:12:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(1, 1, 2, 'New Description for Subject 1', '2017-03-30 18:08:51'),
(2, 1, 2, 'Reply-1 for Subject 1', '2017-03-30 19:59:09'),
(3, 1, 1, 'Reply-2 for Subject 1 from Administrator.', '2017-03-30 20:35:39'),
(4, 1, 1, 'Reply-3 for Subject 1 from Administrator.', '2017-03-30 20:49:35'),
(5, 2, 6, 'How can one feed poultry and also mix their feed', '2019-11-16 02:12:20'),
(6, 2, 1, 'We will get back to you soon', '2019-11-16 02:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 1, 0),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(3, 'Customer', 'Customer 2', 'user2', 'pass2', 'mail3@example.com', 'Address 3', 9898000002, 1, 0),
(4, 'Customer', 'Customer 3', 'user3', 'pass3', '', '', 9898000003, 0, 0),
(5, 'Customer', 'Customer 4', 'user4', 'pass4', '', '', 9898000004, 0, 1),
(6, 'Customer', 'Pharis Ifedha', 'Ifedha1', 'Ifedha123', NULL, NULL, 796656357, 1, 0),
(7, 'Customer', 'Milton Anyonge', 'Lumilu', '$2y$10$idic0rhtH', NULL, NULL, 796656357, 1, 0),
(8, 'Customer', 'Samvura Barasa', 'Samvura', '$2y$10$K1gKDaK1P', NULL, NULL, 723456765, 1, 0),
(9, 'Customer', 'Kenedy Wanyonyi', 'Ken Wanyon', '$2y$10$mXvDf6zGd', NULL, NULL, 796656357, 1, 0),
(10, 'Customer', 'Barasa Mafunga', 'Wanyonyi', '$2y$10$QvZfPsJNJ', NULL, NULL, 796656357, 1, 0),
(11, 'Customer', 'ronald mashombo', 'ronald ', '$2y$10$t60QzQNW/', 'ronaldmashombo@gmail.com', 'taita', 700599268, 0, 0),
(12, 'Customer', 'Pharis Ifedha', 'pharisifed', 'Ifedha123', NULL, NULL, 796656357, 0, 0),
(13, 'Customer', 'Kenedy Barasa', 'Kenedy ', '12345', NULL, NULL, 785949338, 0, 0),
(14, 'Customer', 'Boi Muliro', 'Boy123', '$2y$10$NSGHONllX', NULL, NULL, 789756453, 0, 0),
(16, 'Customer', 'Sirengo Sifuna', 'Sirengo ', '$2y$10$fAaVacpoG', NULL, NULL, 796656357, 0, 0),
(17, 'Customer', 'Timothy Sifuna', 'Timothy', '$2y$10$xNzX3wfmE', NULL, NULL, 987849847, 0, 0),
(18, 'Customer', 'Ken Walibora', 'Ken1234', '$2y$10$qhDT6ZSI2', 'ken@gmail.com', 'Webuye', 786574839, 0, 0),
(19, 'Customer', 'Nancy Wabwile', 'Nancy', '$2y$10$4tsSygKSE', 'nancy@gmail.com', 'taita', 796656357, 1, 0),
(20, 'Customer', 'Mary Wanjala', 'Miriam', 'Ifedha123', 'mary@gmail.com', 'taita', 976782130, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '2000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '6155247490533921', 983, 0),
(2, 2, '1887587142382050', 772, 1850),
(3, 3, '4595809639046830', 532, 1585),
(4, 4, '5475856443351234', 521, 0),
(5, 5, '9076633115663264', 229, 2000),
(6, 6, '7986431725910219', 67, 0),
(7, 7, '6202564754270420', 975, 2000),
(8, 8, '9179124595831725', 143, 2000),
(9, 9, '7397981297442659', 126, 2000),
(10, 10, '8817503939798225', 151, 2000),
(11, 12, '7497511692646413', 139, 2000),
(12, 13, '1213743557417292', 157, 2000),
(13, 14, '2677345605272389', 916, 2000),
(14, 15, '7514279778374055', 296, 2000),
(15, 16, '3575419801786470', 51, 2000),
(16, 17, '7859405305631790', 895, 2000),
(17, 18, '4139349657659502', 255, 2000),
(18, 19, '1879645024237632', 54, -12940);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `mixedfeed`
--
ALTER TABLE `mixedfeed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `mixedFeed_id` (`mixedfeed_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mixedfeed`
--
ALTER TABLE `mixedfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`mixedfeed_id`) REFERENCES `mixedfeed` (`id`),
  ADD CONSTRAINT `order_details_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
