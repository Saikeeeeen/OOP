-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2024 at 06:06 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `commtransaction`
--

CREATE TABLE `commtransaction` (
  `tranID` int(11) NOT NULL,
  `EmpID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `totalComm` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `commision` decimal(2,2) NOT NULL,
  `Position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `salary`, `commision`, `Position`) VALUES
(1, 'Ken', '64.00', '0.99', 'Manager'),
(2, 'Neil', '150.00', '0.99', 'SalesPerson');

-- --------------------------------------------------------

--
-- Table structure for table `furnituresample`
--

CREATE TABLE `furnituresample` (
  `furID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `furnituresample`
--

INSERT INTO `furnituresample` (`furID`, `Name`, `quantity`, `Price`) VALUES
(1, 'Sofa', 5, '10500.99'),
(2, 'Table', 20, '8999.50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `furnitureID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalCost` decimal(10,2) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `furnitureID`, `quantity`, `totalCost`, `status`) VALUES
(1, 1, 1, '10500.99', 0),
(2, 1, 2, '0.00', 0),
(3, 1, 45, '0.00', 0),
(4, 2, 5, '44997.50', 0),
(5, 5, 6, '0.00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commtransaction`
--
ALTER TABLE `commtransaction`
  ADD PRIMARY KEY (`tranID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `furnituresample`
--
ALTER TABLE `furnituresample`
  ADD PRIMARY KEY (`furID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `commtransaction`
--
ALTER TABLE `commtransaction`
  MODIFY `tranID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `furnituresample`
--
ALTER TABLE `furnituresample`
  MODIFY `furID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
