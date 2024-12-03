-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2024 at 03:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocerystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `branddb`
--

CREATE TABLE `branddb` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branddb`
--

INSERT INTO `branddb` (`id`, `brand`, `status`) VALUES
(13, ' solmux', 'Active'),
(14, ' rexidol', 'Active'),
(16, ' biogesic', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `categorydb`
--

CREATE TABLE `categorydb` (
  `ID` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorydb`
--

INSERT INTO `categorydb` (`ID`, `category`, `status`) VALUES
(16, ' syrup', 'Active'),
(17, 'capsule', 'Active'),
(18, ' tablet', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `costp` int(11) NOT NULL,
  `retailp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `expiration_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `costp`, `retailp`, `qty`, `barcode`, `status`, `expiration_date`) VALUES
(6, 'chips', 'chips hot', 1, 1, 10, 15, 166, 222, 'Active', NULL),
(11, 'Coke ', ' 255ml coke', 11, 8, 15, 20, 196, 2222, 'Active', NULL),
(13, 'roof', 'red, curve, strong', 13, 11, 120, 150, 96, 7777, 'Active', NULL),
(14, 'pencil', 'yellow pencil', 14, 12, 10, 12, 80, 909, 'Active', NULL),
(15, 'carbosisttine', '5mg', 16, 13, 50, 75, 9, 1000, 'Active', '2024-12-23'),
(16, 'nn', 'nn', 15, 13, 99, 120, 8, 1111, 'Active', '2024-12-04'),
(17, 'qq', 'qq', 15, 13, 1, 2, 2, 1, 'InActive', '2024-12-09'),
(18, 'carbosisttine', '5mg', 15, 13, 50, 75, 90, 1000, 'InActive', '2022-02-02'),
(19, 'neozep', '5mg ', 17, 14, 10, 15, 100, 456, 'Active', '2024-12-08'),
(20, 'paracetamol', '5mg', 18, 13, 9, 11, 100, 88, 'Active', '2024-12-05');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `ID` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`ID`, `date`, `subtotal`, `pay`, `balance`) VALUES
(18, '2024/05/15', 190, 1000, 810),
(19, '2024/05/16', 345, 4343, 3998),
(20, '2024/08/21', 300, 500, 200),
(21, '2024/10/11', 40, 100, 60),
(22, '2024/11/04', 120, 200, 80),
(23, '2024/11/04', 420, 500, 80),
(24, '2024/11/19', 750, 1000, 250),
(25, '2024/12/03', 240, 333, 93),
(26, '2024/12/03', 152, 200, 48),
(27, '2024/12/03', 420, 666, 246),
(28, '2024/12/03', 22, 33, 11),
(29, '2024/12/03', 240, 444, 204),
(30, '2024/12/03', 22, 33, 11),
(31, '2024/12/03', 11, 22, 11),
(32, '2024/12/03', 22, 44, 22);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `ID` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`ID`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(14, 18, 1111, 75, 2, 150),
(15, 18, 2222, 20, 2, 40),
(16, 19, 222, 15, 23, 345),
(17, 20, 7777, 150, 2, 300),
(18, 21, 2222, 20, 2, 40),
(19, 22, 909, 12, 10, 120),
(20, 23, 7777, 150, 2, 300),
(21, 23, 909, 12, 10, 120),
(22, 24, 1000, 75, 10, 750);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branddb`
--
ALTER TABLE `branddb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorydb`
--
ALTER TABLE `categorydb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branddb`
--
ALTER TABLE `branddb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categorydb`
--
ALTER TABLE `categorydb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
