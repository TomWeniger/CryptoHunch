-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2021 at 03:02 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cryptohunch`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `user_id`, `payment_type_id`, `balance`) VALUES
(11, 5, 1, 200),
(12, 4, 2, 300),
(13, 2, 4, 400),
(20, 1, 3, 80),
(22, 3, 5, 65);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `penalty_percentage` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `penalty_percentage`, `blog_id`) VALUES
(1, 2, 25),
(2, 3, 32),
(3, 2, 25),
(4, 3, 32);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blog` varchar(5000) NOT NULL,
  `coin_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog`, `coin_id`, `date`, `user_id`) VALUES
(25, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less ', 2, '2021-08-09', 3),
(32, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised ', 1, '2021-08-09', 4),
(300, 'packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 5, '2021-10-04', 2);

-- --------------------------------------------------------

--
-- Table structure for table `coin_category`
--

CREATE TABLE `coin_category` (
  `id` int(11) NOT NULL,
  `coin_data_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `coin_data`
--

CREATE TABLE `coin_data` (
  `id` int(11) NOT NULL,
  `symbol` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `poster` varchar(500) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coin_data`
--

INSERT INTO `coin_data` (`id`, `symbol`, `name`, `poster`, `description`, `category_id`) VALUES
(1, 'UNI', 'Uniswap', 'iiiipng', 'Uniswap is an automated ethereum-based crypto exchange with its own governance token, UNI.', 1),
(2, 'ADA', 'Cardano', 'jkas.png', 'Cardano or ADA not only is one of the top coins when it comes to trading, \r\nit is also one of the most energy efficient projects, developed by none other than the co-founder of Ethereum', 2),
(3, 'CHZ', 'Chiliz', 'czili.png', 'Chiliz developed the Socios.com sports fan engagement platform which \r\nis built on the Chiliz blockchain infrastructure & uses $CHZ as it’s exclusive on-platform currency.\r\n', 3),
(4, 'BTC', 'Bitcoin', 'dddd.png', 'Bitcoin is known as a type of cryptocurrency because it uses cryptography to keep it secure. There are no physical bitcoins, only balances kept on a public.', 4),
(5, 'SAND', 'Sandbox', 'oooo.jpg', 'The Sandbox is a virtual world where you can buy and sell virtual land and other assets using metaverse coins called SAND. You can create and transform anything you can imagine, monetizing your virtual experience through the power of SAND cryptocurrency.', 5);

-- --------------------------------------------------------

--
-- Table structure for table `historical_prices`
--

CREATE TABLE `historical_prices` (
  `id` int(11) NOT NULL,
  `currency1` varchar(6) NOT NULL,
  `date` date NOT NULL,
  `currency1_price` int(11) NOT NULL,
  `currency2` varchar(6) NOT NULL,
  `currency2_price` int(11) NOT NULL,
  `coin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `historical_prices`
--

INSERT INTO `historical_prices` (`id`, `currency1`, `date`, `currency1_price`, `currency2`, `currency2_price`, `coin_id`) VALUES
(1, 'EUR', '2021-12-01', 3, 'HUNCH', 2, 2),
(2, 'EUR', '2021-11-01', 4, 'HUNCH', 5, 1),
(3, 'EUR', '2021-12-01', 3, 'HUNCH', 8, 2),
(4, 'EUR', '2021-11-01', 4, 'HUNCH', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `my_tips`
--

CREATE TABLE `my_tips` (
  `tip_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `type` enum('CRYPTO:ETH','CRYPTO:BTC','VISA:USD','VISA:EUR') NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `type`, `description`) VALUES
(1, 'CRYPTO:ETH', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled'),
(2, 'CRYPTO:BTC', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing '),
(3, 'VISA:USD', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard Mc'),
(4, 'VISA:EUR', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believabl'),
(5, 'CRYPTO:BTC', 'look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in t');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `price_at_time_of_tip` int(11) NOT NULL,
  `tip_percentage` int(11) NOT NULL,
  `date` date NOT NULL,
  `tip_direction` enum('Up','Down') NOT NULL,
  `reason` enum('major roadmap releases','market events','influencers backing the project','money printing','instinct of the expert','other') NOT NULL,
  `reason_description` varchar(1000) NOT NULL,
  `calculated_tip_price` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `price_at_time_of_tip`, `tip_percentage`, `date`, `tip_direction`, `reason`, `reason_description`, `calculated_tip_price`, `user_id`, `coin_id`) VALUES
(1, 32, 10, '2021-11-07', 'Up', 'influencers backing the project', '\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of', 85, 5, 2),
(2, 77, 100, '2021-10-12', 'Down', 'market events', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words ', 65, 4, 5),
(3, 32, 10, '2021-11-07', 'Up', 'major roadmap releases', 'imply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of', 85, 5, 2),
(4, 77, 100, '2021-10-12', 'Down', 'instinct of the expert', 'but the majority have suffered alteration in some form, by injected humour, or randomised words ', 65, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `currency1` varchar(3) NOT NULL,
  `amount1` int(11) NOT NULL,
  `currency2` varchar(3) NOT NULL,
  `amount2` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treasury`
--

CREATE TABLE `treasury` (
  `id` int(11) NOT NULL,
  `hunch_reserve_pool` int(11) NOT NULL,
  `hunch_staked_pool` int(11) NOT NULL,
  `eur_balance` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treasury`
--

INSERT INTO `treasury` (`id`, `hunch_reserve_pool`, `hunch_staked_pool`, `eur_balance`, `date`) VALUES
(1, 200, 100, 500, '2021-12-08'),
(2, 100, 300, 900, '2021-12-08'),
(3, 69, 58, 944, '2021-12-08'),
(4, 999, 333, 222, '2021-12-08'),
(5, 777, 22, 111, '2021-12-08'),
(6, 200, 100, 500, '2021-12-08'),
(7, 100, 300, 900, '2021-12-08'),
(8, 69, 58, 944, '2021-12-08'),
(9, 999, 333, 222, '2021-12-08'),
(10, 777, 22, 111, '2021-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `tip_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `tip_count`) VALUES
(1, 'Paul', 'Rocha', 'paulrocha@gmail.com', 'paulrocha', 1),
(2, 'Teresa', 'Kline', 'teresa@gmail.com', 'tersa123', 3),
(3, 'Sydnee', 'Pennington', 'sydney78@gmail.com', 'pennin789', 12),
(4, 'Lisa', 'Meyer', 'lisa8@email.com', 'lisalisame', 4),
(5, 'Ean', 'Potter', 'eanpo@email.com', 'Potter785', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `card_number` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `payment_type_id` (`payment_type_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coin_id` (`coin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `coin_category`
--
ALTER TABLE `coin_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coin_data`
--
ALTER TABLE `coin_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_id` (`category_id`);

--
-- Indexes for table `historical_prices`
--
ALTER TABLE `historical_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coin_id` (`coin_id`);

--
-- Indexes for table `my_tips`
--
ALTER TABLE `my_tips`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `tip_id` (`tip_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coin_id` (`coin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `treasury`
--
ALTER TABLE `treasury`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `payment_method_id` (`payment_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `coin_category`
--
ALTER TABLE `coin_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coin_data`
--
ALTER TABLE `coin_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `historical_prices`
--
ALTER TABLE `historical_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `treasury`
--
ALTER TABLE `treasury`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`);

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`),
  ADD CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `historical_prices`
--
ALTER TABLE `historical_prices`
  ADD CONSTRAINT `historical_prices_ibfk_1` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`);

--
-- Constraints for table `my_tips`
--
ALTER TABLE `my_tips`
  ADD CONSTRAINT `my_tips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `my_tips_ibfk_2` FOREIGN KEY (`tip_id`) REFERENCES `tips` (`id`);

--
-- Constraints for table `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`coin_id`) REFERENCES `coin_data` (`id`),
  ADD CONSTRAINT `tips_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`),
  ADD CONSTRAINT `wallet_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
