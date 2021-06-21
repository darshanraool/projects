-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 05:27 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Will Burke', 'will.burke@gmail.com', 94880),
(2, 'Wesley Warner', 'waslwy.warner@gmail.com', 200060),
(3, 'Alec Elliot', 'alec.elliot@gmail.com', 220000),
(4, 'Dwayne Mendez', 'dwayne.mendez@gmail.com', 250080),
(5, 'Alexis Pierce', 'alexis.pierce@gmail.com', 154400),
(6, 'Lesly Ruiz', 'lesly.ruiz@gmail.com', 150520),
(7, 'Charlie Tate', 'charlie.tate@gmail.com', 300060),
(8, 'Raymond Hart', 'raymond.hart@gmail.com', 250000),
(9, 'Spike Meyer', 'spike.meyer@gmail.com', 250000),
(10, 'Nigel Jacobs', 'nigel.jacobs@gmail.com', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `sno` int(20) NOT NULL,
  `Sender` varchar(30) NOT NULL,
  `Receiver` varchar(30) NOT NULL,
  `Amount` int(20) NOT NULL,
  `Date and Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`sno`, `Sender`, `Receiver`, `Amount`, `Date and Time`) VALUES
(1, 'Alec Elliot', 'Wesley Warner', 20, '2021-06-21 16:46:19'),
(2, 'Alexis Pierce', 'Alec Elliot', 20, '2021-06-21 18:22:38'),
(3, 'Will Burke', 'Alexis Pierce', 5000, '2021-06-21 20:12:41'),
(4, 'Will Burke', 'Dwayne Mendez', 20, '2021-06-21 20:14:25'),
(5, 'Will Burke', 'Dwayne Mendez', 20, '2021-06-21 20:17:55'),
(6, 'Alexis Pierce', 'Lesly Ruiz', 500, '2021-06-21 20:18:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `sno` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
