-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2025 at 05:45 PM
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
-- Database: `nutri_track`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_name` varchar(20) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `user_name` varchar(10) NOT NULL,
  `password` varchar(8) NOT NULL,
  `Mobile_Number` varchar(11) NOT NULL,
  `admin_id` varchar(7) NOT NULL,
  `Permanent_Address` varchar(100) NOT NULL,
  `profile_photo` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_name`, `admin_email`, `user_name`, `password`, `Mobile_Number`, `admin_id`, `Permanent_Address`, `profile_photo`) VALUES
('Israk Bin Hakim', 'israkhakim@gmail.com', 'ibin1311', 'ntac@194', '01316228940', 'ADM001', 'Firingee Bazar, Chattogram', '67693fe18861c6.26559916.jpeg'),
('Jasmin Akhter', '', 'jas#29', 'ntac@194', '01711723457', 'ADM002', 'New Market, Chattogram', ''),
('Jannat Jahan (Faija)', 'janja1308@gmail.com', 'faija@8', 'ntac@194', '01795962226', 'ADM003', 'Chandanish , Chattogram', '678bb5be3577f4.61593360.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `breakfast`
--

CREATE TABLE `breakfast` (
  `serial_no.` int(11) NOT NULL,
  `item_id` varchar(3) NOT NULL,
  `item_name` varchar(15) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breakfast`
--

INSERT INTO `breakfast` (`serial_no.`, `item_id`, `item_name`, `item_price`) VALUES
(51, 'B00', 'Paratha', 10),
(52, 'B01', 'Khichuri', 50),
(53, 'B02', 'Bread', 15),
(54, 'B03', 'Roti', 7),
(55, 'B04', 'Jam', 15),
(69, 'B05', 'Veg Curry', 25),
(70, 'B06', 'Lentils Curry', 22);

-- --------------------------------------------------------

--
-- Table structure for table `drinks`
--

CREATE TABLE `drinks` (
  `serial_no` int(11) NOT NULL,
  `item_id` varchar(3) NOT NULL,
  `item_name` varchar(15) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drinks`
--

INSERT INTO `drinks` (`serial_no`, `item_id`, `item_name`, `item_price`) VALUES
(1, 'D01', 'Tea', 10),
(2, 'D02', 'Coffee', 15),
(4, 'D04', 'Fruit Slushies', 70),
(5, 'D05', 'Juice', 30),
(6, 'D06', 'Lassi', 60);

-- --------------------------------------------------------

--
-- Table structure for table `lunch`
--

CREATE TABLE `lunch` (
  `serial_no` int(11) NOT NULL,
  `item_id` varchar(3) NOT NULL,
  `item_name` varchar(25) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lunch`
--

INSERT INTO `lunch` (`serial_no`, `item_id`, `item_name`, `item_price`) VALUES
(1, 'L01', 'Fried Rice', 50),
(2, 'L02', 'Plain Rice', 25),
(13, 'L03', 'Beef Curry', 60),
(4, 'L04', 'Chicken Curry', 35),
(5, 'L05', 'Chicken Biryani', 60);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` varchar(10) NOT NULL,
  `item_id` varchar(3) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `item_id`, `item_name`, `item_price`, `quantity`, `id`) VALUES
('O150125854', 'D01', 'Tea', 10, 2, 27),
('O150125854', 'D04', 'Soft Drink', 25, 1, 28),
('O150125874', 'B00', 'Paratha', 10, 1, 29),
('O150125874', 'B02', 'Bread', 15, 3, 30),
('O150125645', 'S01', 'Fried Chicken', 50, 1, 31),
('O150125645', 'S04', 'Sandwich', 40, 1, 32),
('O150125645', 'S05', 'Daal Puri', 12, 3, 33),
('O150125065', 'D01', 'Tea', 10, 2, 34),
('O150125065', 'D04', 'Soft Drink', 25, 1, 35),
('O160125867', 'B02', 'Bread', 15, 1, 36),
('O160125867', 'B03', 'Roti', 7, 2, 37),
('O160125867', 'B04', 'Jam', 15, 1, 38),
('O160125867', 'B05', 'Veg Curry', 25, 1, 39),
('O160125899', 'D01', 'Tea', 10, 1, 40),
('O180125754', 'L01', 'Fried Rice', 50, 2, 41),
('O180125754', 'L03', 'Beef Curry', 60, 1, 42),
('O180125754', 'L05', 'Chicken Biryani', 60, 1, 43),
('O180125955', 'D01', 'Tea', 10, 3, 44),
('O180125955', 'D04', 'Soft Drink', 25, 2, 45),
('O180125973', 'L02', 'Plain Rice', 25, 1, 46),
('O180125973', 'L03', 'Beef Curry', 60, 2, 47),
('O180125635', 'S01', 'Fried Chicken', 50, 1, 48),
('O180125635', 'S04', 'Sandwich', 40, 2, 49),
('O180125648', 'D02', 'Coffee', 15, 2, 50),
('O180125398', 'S04', 'Sandwich', 40, 2, 51),
('O180125398', 'S06', 'Noodles', 30, 1, 52),
('O180125408', 'D01', 'Tea', 10, 2, 53),
('O180125548', 'S02', 'Shingara', 8, 2, 54),
('O180125548', 'S05', 'Pasta', 60, 1, 55),
('O180125557', 'D01', 'Tea', 10, 2, 56),
('O180125384', 'B03', 'Roti', 7, 2, 57),
('O180125384', 'B05', 'Veg Curry', 25, 3, 58),
('O180125401', 'D02', 'Coffee', 15, 1, 59),
('O180125401', 'D05', 'Juice', 30, 2, 60),
('O120225526', 'B02', 'Bread', 15, 1, 61),
('O120225526', 'B03', 'Roti', 7, 2, 62),
('O210525686', 'B00', 'Paratha', 10, 2, 63),
('O210525686', 'B01', 'Khichuri', 50, 2, 64);

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `meal_cn` varchar(8) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `order_date` date NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`meal_cn`, `order_id`, `order_date`, `total_price`) VALUES
('MC210010', 'O150125645', '2025-01-15', 126),
('MC202213', 'O180125754', '2025-01-18', 220),
('MC204211', 'O180125955', '2025-01-18', 80),
('MC204211', 'O180125973', '2025-01-18', 145),
('MC206113', 'O180125635', '2025-01-18', 130),
('MC206113', 'O180125648', '2025-01-18', 30),
('MC207601', 'O180125398', '2025-01-18', 110),
('MC207601', 'O180125408', '2025-01-18', 20),
('MC204211', 'O180125548', '2025-01-18', 76),
('MC204211', 'O180125557', '2025-01-18', 20),
('MC202213', 'O180125384', '2025-01-18', 89),
('MC202213', 'O180125401', '2025-01-18', 75),
('MC204211', 'O120225526', '2025-02-12', 29),
('MC204211', 'O210525686', '2025-05-21', 120);

-- --------------------------------------------------------

--
-- Table structure for table `snacks`
--

CREATE TABLE `snacks` (
  `serial_no` int(11) NOT NULL,
  `item_id` varchar(3) NOT NULL,
  `item_name` varchar(25) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `snacks`
--

INSERT INTO `snacks` (`serial_no`, `item_id`, `item_name`, `item_price`) VALUES
(1, 'S01', 'Fried Chicken', 60),
(2, 'S02', 'Shingara', 8),
(3, 'S03', 'Somusa', 7),
(4, 'S04', 'Sandwich', 40),
(13, 'S05', 'Pasta', 60),
(6, 'S06', 'Noodles', 30),
(7, 'S07', 'Burger', 60);

-- --------------------------------------------------------

--
-- Table structure for table `student_record`
--

CREATE TABLE `student_record` (
  `student_id` varchar(100) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `varsity_pin` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_record`
--

INSERT INTO `student_record` (`student_id`, `stu_name`, `email`, `department`, `semester`, `varsity_pin`) VALUES
('C223202', 'Akhi Moon Jahan', 'c223202@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP223213'),
('C223204', 'Ayesha Hasan', 'c223204@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP223211'),
('C223206', 'Fayeza Afrah', 'c223206@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP221113'),
('C223207', 'Zannatun Naima', 'c223207@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP222601'),
('C223210', 'Fahmida Yasmin', 'c223210@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP221010'),
('C223229', 'Israth Jahan Worthy', 'c223229@ugrad.iiuc.ac.bd', 'CSE', 5, 'VP223229');

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE `stu_info` (
  `student_id` varchar(100) NOT NULL,
  `stu_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department` varchar(100) NOT NULL,
  `semester` int(11) NOT NULL,
  `varsity_pin` varchar(12) NOT NULL,
  `meal_cn` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`student_id`, `stu_name`, `email`, `password`, `department`, `semester`, `varsity_pin`, `meal_cn`) VALUES
('C223202', 'Akhi Moon Jahan', 'c223202@ugrad.iiuc.ac.bd', '$2y$10$dizxREUqSDqWA1M4TdUhIuuhkw7YmOJ47bZFJxnk9uF5QvFfHiOz6', 'CSE', 5, 'VP223213', 'MC202213'),
('C223204', 'Ayesha Hasan', 'c223204@ugrad.iiuc.ac.bd', '$2y$10$mqz1ugA9551nZZmS3zzp4unE5sFJI02eCfcrL7MlDCL8KV9cf.UVC', 'CSE', 5, 'VP223211', 'MC204211'),
('C223206', 'Fayeza Afrah', 'c223206@ugrad.iiuc.ac.bd', '$2y$10$4EsU05CDmzzNalmuhT2kvuTk6DcBLQgAs2eevUoNk0q1ngoF/6ueK', 'CSE', 5, 'VP221113', 'MC206113'),
('C223207', 'Zannatun Naima', 'c223207@ugrad.iiuc.ac.bd', '$2y$10$8CHPhDPxwEC54bepsCylHetrtcAHza8kQDMUh4NrEV0iy1H.OCW3C', 'CSE', 5, 'VP222601', 'MC207601'),
('C223210', 'Fahmida Yasmin', 'c223210@ugrad.iiuc.ac.bd', '$2y$10$O8nwN7qjCeNkRMrUPc2TluLZt9buQQw5k9Oq7nUDZ.pwE192KLQZ.', 'CSE', 5, 'VP221010', 'MC210010'),
('C223229', 'Israth Jahan Worthy', 'c223229@ugrad.iiuc.ac.bd', '$2y$10$cAOIN44kX2jAw.H9LZWrveSKEp0tag6bBDqsjWdXTV0fg/f7wk5.e', 'CSE', 5, 'VP223229', 'MC229229');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `Mobile no.` (`Mobile_Number`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `breakfast`
--
ALTER TABLE `breakfast`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `serial_no.` (`serial_no.`);

--
-- Indexes for table `drinks`
--
ALTER TABLE `drinks`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `serial_no` (`serial_no`);

--
-- Indexes for table `lunch`
--
ALTER TABLE `lunch`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `serial_no` (`serial_no`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `snacks`
--
ALTER TABLE `snacks`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `serial_no` (`serial_no`);

--
-- Indexes for table `student_record`
--
ALTER TABLE `student_record`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `meal_cn` (`meal_cn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breakfast`
--
ALTER TABLE `breakfast`
  MODIFY `serial_no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `drinks`
--
ALTER TABLE `drinks`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lunch`
--
ALTER TABLE `lunch`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `snacks`
--
ALTER TABLE `snacks`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
