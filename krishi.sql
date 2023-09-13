-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2014 at 06:17 AM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ekrishi`
--
CREATE DATABASE `ekrishi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ekrishi`;

-- --------------------------------------------------------

--
-- Table structure for table `aprv_order`
--

CREATE TABLE IF NOT EXISTS `aprv_order` (
  `sl_no` int(200) NOT NULL AUTO_INCREMENT,
  `f_id` int(100) NOT NULL,
  `crop_t` varchar(15) NOT NULL,
  `crop_nm` varchar(20) NOT NULL,
  `sale_price` int(200) NOT NULL,
  `discount` int(2) NOT NULL,
  `w_id` int(100) NOT NULL,
  `w_nm` varchar(30) NOT NULL,
  `del_day` varchar(15) NOT NULL,
  `amount` int(100) NOT NULL,
  `dis_price` int(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `book_date` date NOT NULL,
  `apr_by_frmr` varchar(10) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `aprv_order`
--


-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `sl_no` int(200) NOT NULL AUTO_INCREMENT,
  `f_id` int(100) NOT NULL,
  `crop_t` varchar(15) NOT NULL,
  `crop_nm` varchar(20) NOT NULL,
  `sale_price` int(200) NOT NULL,
  `discount` int(2) NOT NULL,
  `w_id` int(100) NOT NULL,
  `w_nm` varchar(30) NOT NULL,
  `del_day` varchar(15) NOT NULL,
  `quantity` int(100) NOT NULL,
  `cprice` int(100) NOT NULL,
  `dis_price` int(100) NOT NULL,
  `total_price` int(100) NOT NULL,
  `book_date` date NOT NULL,
  `apr_by_frmr` varchar(10) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`sl_no`, `f_id`, `crop_t`, `crop_nm`, `sale_price`, `discount`, `w_id`, `w_nm`, `del_day`, `quantity`, `cprice`, `dis_price`, `total_price`, `book_date`, `apr_by_frmr`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `c_discount`
--

CREATE TABLE IF NOT EXISTS `c_discount` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `dis` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `c_discount`
--

INSERT INTO `c_discount` (`id`, `dis`) VALUES
(1, 10),
(2, 15),
(3, 20);

-- --------------------------------------------------------

--
-- Table structure for table `c_name`
--

CREATE TABLE IF NOT EXISTS `c_name` (
  `id` int(10) NOT NULL,
  `c_name1` varchar(20) NOT NULL,
  `c_name2` varchar(20) NOT NULL,
  `c_name3` varchar(20) NOT NULL,
  `c_name4` varchar(20) NOT NULL,
  `c_name5` varchar(20) NOT NULL,
  `c_name6` varchar(20) NOT NULL,
  `c_name7` varchar(20) NOT NULL,
  `c_name8` varchar(20) NOT NULL,
  `c_name9` varchar(20) NOT NULL,
  `c_name10` varchar(20) NOT NULL,
  `c_name11` varchar(20) NOT NULL,
  `c_name12` varchar(20) NOT NULL,
  `c_name13` varchar(20) NOT NULL,
  `c_name14` varchar(20) NOT NULL,
  `c_name15` varchar(15) NOT NULL,
  `c_name16` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_name`
--

INSERT INTO `c_name` (`id`, `c_name1`, `c_name2`, `c_name3`, `c_name4`, `c_name5`, `c_name6`, `c_name7`, `c_name8`, `c_name9`, `c_name10`, `c_name11`, `c_name12`, `c_name13`, `c_name14`, `c_name15`, `c_name16`) VALUES
(1, 'Wheat', 'Maize', 'Paddy', 'Mansur', 'Lucerne ', 'Cumin', 'Coriender', 'Fenugreek', 'Gram', 'Pea', 'Onion', 'Mustard', 'Tomato', 'Potato', 'Oat', 'Isabgol'),
(2, 'Paddy', 'Guar', 'Castor', 'Nagali', 'Hy Cotton', 'Cotton', 'Chilly', 'Jowar', 'Sesamum', 'Soyabean', 'Maize', 'Urid', 'Bajri', 'Arhar', 'Ground Nut', 'Fennel'),
(3, 'bittergourd', 'watermelon', 'turmeric', 'onion', 'garlic', 'chilly', 'mint', 'dhania', 'jeera', 'pepper', 'cucumber', 'muskmelon', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_ac`
--

CREATE TABLE IF NOT EXISTS `farmer_ac` (
  `reg_id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `block` varchar(100) NOT NULL,
  `vill` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `aadhar_no_2` (`aadhar_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `farmer_ac`
--

INSERT INTO `farmer_ac` (`reg_id`, `name`, `aadhar_no`, `photo`, `ph_no`, `block`, `vill`, `district`, `dob`) VALUES
(1, 'Kanchan Kumari', '200913694271', 'kishan9.jpg', '9308674320', 'Karama Nagar', 'Dhankunda', 'Palamu', '1989-09-06'),
(2, 'Sonali Suman', '349000451178', 'kishan2.jpg', '9835711738', 'Boarijore', 'Hijri', 'Godda', '1987-05-10'),
(3, 'Kavita Sah', '560001212453', 'kishan7.jpg', '9431442389', 'kirlum', 'Hoshiyarpur', 'Giridih', '1987-06-24'),
(4, 'Lalmani Dhan', '658810034824', 'kishan8.jpg', '9334214586', 'Anmiragarh', 'Govinpur', 'Dhanbad', '1978-05-15'),
(5, 'Shanti Visha', '890023874562', 'kishan1.jpg', '8804736508', 'Basant Nagar', 'Hiranpur', 'Pakur', '1972-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_auction`
--

CREATE TABLE IF NOT EXISTS `farmer_auction` (
  `sl_no` int(200) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(100) NOT NULL,
  `farmer_name` varchar(100) NOT NULL,
  `c_type` varchar(100) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `sale_price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `farmer_auction`
--

INSERT INTO `farmer_auction` (`sl_no`, `farmer_id`, `farmer_name`, `c_type`, `c_name`, `sale_price`, `quantity`, `discount`, `date`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `kharif`
--

CREATE TABLE IF NOT EXISTS `kharif` (
  `sl_no` int(200) NOT NULL AUTO_INCREMENT,
  `reg_id` int(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `crop_typ` varchar(20) NOT NULL,
  `crop_nm` varchar(30) NOT NULL,
  `quantity` int(100) NOT NULL,
  `sale_price` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `kharif`
--

INSERT INTO `kharif` (`sl_no`, `reg_id`, `aadhar_no`, `crop_typ`, `crop_nm`, `quantity`, `sale_price`, `discount`) VALUES
(1, 5, '560001212453', 'kharif', 'Jowar', 2, 26, 12),
(2, 5, '560001212453', 'kharif', 'Sesamum', 3, 42, 20),
(3, 5, '560001212453', 'kharif', 'Castor', 3, 80, 18),
(4, 7, '658810034824', 'kharif', 'Maize', 3, 28, 10),
(5, 4, '349000451178', 'kharif', 'Guar', 1, 18, 10),
(6, 4, '349000451178', 'kharif', 'Soyabean', 2, 58, 16);

-- --------------------------------------------------------

--
-- Table structure for table `log_in_detail`
--

CREATE TABLE IF NOT EXISTS `log_in_detail` (
  `sl_no` int(100) NOT NULL AUTO_INCREMENT,
  `reg_id` int(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `aadhar_no` varchar(100) NOT NULL,
  `login_date` date NOT NULL,
  `login_time` time NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `log_in_detail`
--

INSERT INTO `log_in_detail` (`sl_no`, `reg_id`, `pass`, `aadhar_no`, `login_date`, `login_time`) VALUES


-- --------------------------------------------------------

--
-- Table structure for table `log_in_verify`
--

CREATE TABLE IF NOT EXISTS `log_in_verify` (
  `reg_id` int(100) NOT NULL AUTO_INCREMENT,
  `pass` varchar(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `type_of_usr` varchar(10) NOT NULL,
  `ac_id` int(200) NOT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`),
  UNIQUE KEY `aadhar_no_2` (`aadhar_no`),
  UNIQUE KEY `aadhar_no_3` (`aadhar_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `log_in_verify`
--

INSERT INTO `log_in_verify` (`reg_id`, `pass`, `aadhar_no`, `type_of_usr`, `ac_id`) VALUES
(1, 'd1920287bb', '200913694271', '�Farmer�', 1),
(2, '01ac0d749c', '300984673892', '��Buyer��', 1),
(3, 'e613cc2c05', '668445423128', '���User���', 1),
(4, '75a3d677ed', '349000451178', '�Farmer�', 2),
(5, '940e0af485', '560001212453', '�Farmer�', 3),
(6, '5cb3895189', '238445423545', '��Buyer��', 2),
(7, 'd6cae55aec', '658810034824', '�Farmer�', 4),
(8, '723a938957', '890023874562', '�Farmer�', 5);

-- --------------------------------------------------------

--
-- Table structure for table `rabi`
--

CREATE TABLE IF NOT EXISTS `rabi` (
  `sl_no` int(100) NOT NULL AUTO_INCREMENT,
  `reg_id` int(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `crop_typ` varchar(20) NOT NULL,
  `crop_nm` varchar(30) NOT NULL,
  `quantity` int(100) NOT NULL,
  `sale_price` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `rabi`
--

INSERT INTO `rabi` (`sl_no`, `reg_id`, `aadhar_no`, `crop_typ`, `crop_nm`, `quantity`, `sale_price`, `discount`) VALUES
(1, 1, '200913694271', 'rabi', 'Wheat', 2, 20, 10),
(2, 4, '349000451178', 'rabi', 'Wheat', 3, 34, 15),
(3, 4, '349000451178', 'rabi', 'Gram', 2, 12, 10),
(4, 4, '349000451178', 'rabi', 'Pea', 2, 45, 12),
(5, 4, '349000451178', 'rabi', 'Potato', 2, 32, 14);

-- --------------------------------------------------------

--
-- Table structure for table `user_ac`
--

CREATE TABLE IF NOT EXISTS `user_ac` (
  `reg_id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `block` varchar(100) NOT NULL,
  `vill` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user_ac`
--

INSERT INTO `user_ac` (`reg_id`, `name`, `aadhar_no`, `photo`, `ph_no`, `block`, `vill`, `district`, `dob`) VALUES
(1, 'Ujjwal Kumar', '668445423128', 'kishan4.jpg', '9431662389', 'Karama Nagar', 'East Chainpur', 'Lohardaga', '1994-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `wholesaler_ac`
--

CREATE TABLE IF NOT EXISTS `wholesaler_ac` (
  `reg_id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `photo` varchar(500) NOT NULL,
  `ph_no` varchar(10) NOT NULL,
  `block` varchar(100) NOT NULL,
  `vill` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`reg_id`),
  UNIQUE KEY `aadhar_no` (`aadhar_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wholesaler_ac`
--

INSERT INTO `wholesaler_ac` (`reg_id`, `name`, `aadhar_no`, `photo`, `ph_no`, `block`, `vill`, `district`, `dob`) VALUES
(1, 'Nayan Deep', '300984673892', 'kishan5.jpg', '9082365432', 'Harihar Road', 'Bariatu', 'Ranchi', '1978-02-02'),
(2, 'Rohan Kumar', '238445423545', 'kishan6.jpg', '9308334320', 'Lalpur', 'Nagra Toli', 'Ranchi', '1984-08-17');

-- --------------------------------------------------------

--
-- Table structure for table `zaid`
--

CREATE TABLE IF NOT EXISTS `zaid` (
  `sl_no` int(200) NOT NULL AUTO_INCREMENT,
  `reg_id` int(100) NOT NULL,
  `aadhar_no` varchar(20) NOT NULL,
  `crop_typ` varchar(20) NOT NULL,
  `crop_nm` varchar(30) NOT NULL,
  `quantity` int(100) NOT NULL,
  `sale_price` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  PRIMARY KEY (`sl_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `zaid`
--

INSERT INTO `zaid` (`sl_no`, `reg_id`, `aadhar_no`, `crop_typ`, `crop_nm`, `quantity`, `sale_price`, `discount`) VALUES
(1, 5, '560001212453', 'zaid', 'bittergourd', 3, 28, 30),
(2, 7, '658810034824', 'zaid', 'onion', 3, 80, 12),
(3, 4, '349000451178', 'zaid', 'onion', 1, 16, 10);
