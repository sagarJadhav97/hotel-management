-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2021 at 08:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_info`
--

CREATE TABLE `booking_info` (
  `id` int(100) NOT NULL,
  `Booking_no` bigint(100) NOT NULL,
  `guest_name` varchar(100) NOT NULL,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_info`
--

INSERT INTO `booking_info` (`id`, `Booking_no`, `guest_name`, `booking_date`) VALUES
(1, 20, 'Shaline', '2021-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `book_rooms`
--

CREATE TABLE `book_rooms` (
  `id` int(100) NOT NULL,
  `Full_Name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Phone_No` varchar(100) NOT NULL,
  `email_id_set` varchar(100) NOT NULL,
  `Address_Proof` varchar(100) NOT NULL,
  `Room_Check_In` varchar(100) NOT NULL,
  `Room_Check_Out` varchar(100) NOT NULL,
  `Room_No` varchar(100) NOT NULL,
  `No_Of_Adult` varchar(100) NOT NULL,
  `No_Of_Childerns` varchar(100) NOT NULL,
  `purpose_of_Visit` varchar(100) NOT NULL,
  `Advance_Amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_rooms`
--

INSERT INTO `book_rooms` (`id`, `Full_Name`, `address`, `Country`, `Gender`, `Phone_No`, `email_id_set`, `Address_Proof`, `Room_Check_In`, `Room_Check_Out`, `Room_No`, `No_Of_Adult`, `No_Of_Childerns`, `purpose_of_Visit`, `Advance_Amount`) VALUES
(1, '', '', 'Select Country', '', '', '', 'Select', '39-11-2021', '39-05-2021', 'No', '0', '0', 'Select', ''),
(2, '', '', 'Select Country', '', '', '', 'Select', 'Mon Jul 19 23:43:29 PDT 2021', 'Sun Jul 11 23:43:33 PDT 2021', 'No', '0', '0', 'Select', ''),
(3, '', '', 'Select Country', '', '', '', 'Select', 'Thu Jul 22 23:46:53 PDT 2021', '22-46-2021', 'No', '0', '0', 'Select', ''),
(4, '', '', 'Select Country', '', '', '', 'Select', 'Mon Jul 12 00:04:33 PDT 2021', '2021-04-20', 'No', '0', '0', 'Select', ''),
(5, '', '', 'Select Country', '', '', '', 'Select', '2021-07-12', '2021-07-26', 'No', '0', '0', 'Select', ''),
(6, 'sagar Gautam Jadhav', 'cidco	', 'Select Country', 'Male', '9762631729', '', 'Aadhar Card', '2021-09-26', '2021-09-20', '20', '2', '1', 'Tourist', '2000'),
(7, 'sagar gutam jadhav', '', 'Select Country', '', '', '', 'Select', '2021-02-15', '2021-02-12', '', '0', '0', 'Select', ''),
(8, 'sagar jadhav', 'cidco', 'India', 'Male', '9762631729', 'sagar@gmail.com', 'Aadhar Card', '2021-13-13', '2021-13-12', '101', '3', '1', 'Other', '320'),
(9, 'sagar', 'cidco', 'Albania', 'Male', '54545', '@gmail', 'Select', '2021-28-13', '2021-28-11', '222', '1', '1', 'Tourist', '320'),
(10, 'sagar', 'cidco', 'India', 'Male', '1234567890', 'sss@gmail.com', 'Aadhar Card', '2021-38-08', '2021-38-09', '102', '1', '1', 'Goverment Work', '200'),
(11, 'demo', 'cidco', 'India', 'Male', '1313213131', '@gmail.com', 'Aadhar Card', '2021-08-08', '2021-08-10', '1', '1', '1', 'Tourist', '1230');

-- --------------------------------------------------------

--
-- Table structure for table `guest_info`
--

CREATE TABLE `guest_info` (
  `id` int(100) NOT NULL,
  `Room no` varchar(100) NOT NULL,
  `Roomtype` varchar(100) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `TotalAmount` varchar(100) NOT NULL,
  `outsandingamount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_info`
--

INSERT INTO `guest_info` (`id`, `Room no`, `Roomtype`, `Price`, `TotalAmount`, `outsandingamount`) VALUES
(1, '20', 'delux', '200', '2500', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `house_keeping`
--

CREATE TABLE `house_keeping` (
  `id` int(100) NOT NULL,
  `room_No` int(100) NOT NULL,
  `choose_cleaning` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `laundary_section`
--

CREATE TABLE `laundary_section` (
  `id` int(100) NOT NULL,
  `Room_no` int(11) NOT NULL,
  `cleaning_for_Room` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room-number`
--

CREATE TABLE `room-number` (
  `room_type` varchar(100) NOT NULL,
  `room_no_show` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room-number`
--

INSERT INTO `room-number` (`room_type`, `room_no_show`) VALUES
('delux', '101'),
('suit', '201'),
('classic', '301'),
('delux', '102');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE `staff_login` (
  `id` int(100) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `mobile_No` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`id`, `StaffName`, `uid`, `Password`, `Address`, `mobile_No`) VALUES
(3, 'Sagar JAdhav', 'sagar@123', '123456', 'cidco', 9762631729),
(4, 'demo', 'demo@123', '123456', 'aurangabad', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `table_data_bill`
--

CREATE TABLE `table_data_bill` (
  `id` int(100) NOT NULL,
  `guestName` varchar(100) NOT NULL,
  `laundry` varchar(100) NOT NULL,
  `food` varchar(100) NOT NULL,
  `C-Gst` varchar(100) NOT NULL,
  `S-Gst` varchar(100) NOT NULL,
  `total_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_data_bill`
--

INSERT INTO `table_data_bill` (`id`, `guestName`, `laundry`, `food`, `C-Gst`, `S-Gst`, `total_price`) VALUES
(1, 'staff', '100', '100', '5%', '6%', '500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_info`
--
ALTER TABLE `booking_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_rooms`
--
ALTER TABLE `book_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest_info`
--
ALTER TABLE `guest_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `house_keeping`
--
ALTER TABLE `house_keeping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laundary_section`
--
ALTER TABLE `laundary_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_data_bill`
--
ALTER TABLE `table_data_bill`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_info`
--
ALTER TABLE `booking_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_rooms`
--
ALTER TABLE `book_rooms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guest_info`
--
ALTER TABLE `guest_info`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `house_keeping`
--
ALTER TABLE `house_keeping`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laundary_section`
--
ALTER TABLE `laundary_section`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_login`
--
ALTER TABLE `staff_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table_data_bill`
--
ALTER TABLE `table_data_bill`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
