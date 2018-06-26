-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 05:38 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_shop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblactivitylog`
--

CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL,
  `activity` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblactivitylog`
--

INSERT INTO `tblactivitylog` (`id`, `activity`, `created`) VALUES
(1, 'New Category Created. [ID:1]', '2016-07-21 14:31:28'),
(2, 'New Sub Category Created. [ID:1]', '2016-07-21 14:31:49'),
(3, 'Products Uploaded. [Count:993]', '2016-07-21 14:35:10'),
(4, 'Order Deleted. [ID:1]', '2016-07-21 23:02:44'),
(5, 'Order Deleted. [ID:favicon.ico]', '2016-07-21 23:02:46'),
(6, 'Order Marked as Completed. [ID:2]', '2016-07-21 23:36:17'),
(7, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-21 23:36:20'),
(8, 'Order Marked as Completed. [ID:2]', '2016-07-21 23:44:37'),
(9, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-21 23:44:40'),
(10, 'Order Unmarked as Completed. [ID:2]', '2016-07-21 23:44:52'),
(11, 'Order Unmarked as Completed. [ID:favicon.ico]', '2016-07-21 23:44:54'),
(12, 'Order Marked as Completed. [ID:2]', '2016-07-21 23:45:09'),
(13, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-21 23:45:11'),
(14, 'Order Marked as Completed. [ID:2]', '2016-07-21 23:46:01'),
(15, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-21 23:46:04'),
(16, 'Order Unmarked as Completed. [ID:2]', '2016-07-21 23:46:10'),
(17, 'Order Unmarked as Completed. [ID:favicon.ico]', '2016-07-21 23:46:13'),
(18, 'Order Marked as Completed. [ID:2]', '2016-07-22 00:01:09'),
(19, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-22 00:01:11'),
(20, 'Order Deleted. [ID:2]', '2016-07-22 00:02:31'),
(21, 'Order Deleted. [ID:favicon.ico]', '2016-07-22 00:02:33'),
(22, 'Login Attempt Failed. [admin@wetindey.com]', '2016-07-22 00:05:13'),
(23, 'Order Marked as Completed. [ID:3]', '2016-07-22 00:06:19'),
(24, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-22 00:06:21'),
(25, 'Order Deleted. [ID:3]', '2016-07-22 00:06:35'),
(26, 'Order Deleted. [ID:favicon.ico]', '2016-07-22 00:06:37'),
(27, 'Login Attempt Failed. [admin@wetindey.com]', '2016-07-23 13:54:20'),
(28, 'Order Marked as Completed. [ID:4]', '2016-07-23 13:56:35'),
(29, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-23 13:56:38'),
(30, 'Order Deleted. [ID:4]', '2016-07-23 13:57:03'),
(31, 'Order Deleted. [ID:favicon.ico]', '2016-07-23 13:57:07'),
(32, 'Order Deleted. [ID:4]', '2016-07-23 13:57:35'),
(33, 'Order Deleted. [ID:favicon.ico]', '2016-07-23 13:57:41'),
(34, 'New Pickup Station Created. [ID:1]', '2016-07-27 17:20:54'),
(35, 'New Pickup Station Created. [ID:2]', '2016-07-27 17:21:34'),
(36, 'Pickup Station Data Updated. [ID:2]', '2016-07-27 17:26:55'),
(37, 'Order Marked as Completed. [ID:11]', '2016-07-27 21:17:17'),
(38, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-27 21:17:20'),
(39, 'Order Marked as Completed. [ID:12]', '2016-07-27 21:43:16'),
(40, 'Order Marked as Completed. [ID:favicon.ico]', '2016-07-27 21:43:19'),
(41, 'Order Unmarked as Completed. [ID:12]', '2016-07-27 21:43:26'),
(42, 'Order Unmarked as Completed. [ID:favicon.ico]', '2016-07-27 21:43:30'),
(43, 'Order Deleted. [ID:12]', '2016-07-27 21:43:34'),
(44, 'Order Deleted. [ID:favicon.ico]', '2016-07-27 21:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmins`
--

CREATE TABLE `tbladmins` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `role` varchar(50) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `login_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmins`
--

INSERT INTO `tbladmins` (`id`, `fullname`, `email`, `password`, `image`, `phone`, `role`, `dept_id`, `created`, `status`, `last_login`, `login_count`) VALUES
(5, 'Tunde Adebola', 'funsho@gmail.com', '1d025d1d583d04373153422de59dd988', '', '2349057174934', 'Uniqe shit', 1, '2016-06-27 17:27:51', 1, '0000-00-00 00:00:00', 0),
(8, 'Super Administrator', 'admin@wetindey.com', '1d025d1d583d04373153422de59dd988', '', '2349057174935', 'Super Administrator', 1, '2016-06-28 00:43:02', 1, '2016-07-27 21:42:15', 45);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE `tblcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`id`, `name`, `image`, `slug`, `status`, `created`) VALUES
(1, 'All Items', '', 'all-items', 1, '2016-07-21 14:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcharges`
--

CREATE TABLE `tblcharges` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` float NOT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `phone_1` varchar(20) NOT NULL,
  `phone_2` varchar(20) NOT NULL,
  `how_you_heared` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`id`, `name`, `email`, `password`, `address`, `city`, `area`, `phone_1`, `phone_2`, `how_you_heared`, `created`, `status`) VALUES
(1, 'Olaiya Segun paul', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'This is my address', 'Gbagada', 'lagos', '98954858585', '494757585', 'friend', '2016-07-15 11:31:16', 1),
(2, 'yomi shit', 'yomi@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'contact address', 'city', 'lagos', '9445858', '858594', 'friend', '2016-07-15 11:34:10', 1),
(3, 'kindly', 'kindlyshit@gmail.com', 'bf74e5bad78cbe330591ab5af193cd1a', 'address', 'city', 'lagos', '94585858', '95495858', 'friend', '2016-07-15 11:35:35', 1),
(4, 'User Whatever', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', '15 Toye Olaiya Street\r\nAlagbado', 'City', 'whatever', '0458559590', '+2348175020329', 'friend', '2016-07-22 00:04:07', 1),
(5, 'olaiya segun paul', 'newuser@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', '115, This is the common address of everybody', 'lekki', 'lagos', '08175020329', '0908833775533', 'friend', '2016-07-27 18:26:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `name`, `created`, `status`) VALUES
(1, 'Administrators', '2016-06-26 23:08:54', 1),
(2, 'Marketing', '2016-06-26 23:09:09', 0),
(3, 'Utilities', '2016-06-26 23:09:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderdeliverydetails`
--

CREATE TABLE `tblorderdeliverydetails` (
  `order_id` int(11) NOT NULL,
  `delivery_option` varchar(20) DEFAULT NULL,
  `pickup_station` int(11) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `area` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `phone_1` varchar(50) NOT NULL,
  `phone_2` varchar(50) NOT NULL,
  `date_delivered` datetime NOT NULL,
  `delivery_status` enum('pending','delivered') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderdeliverydetails`
--

INSERT INTO `tblorderdeliverydetails` (`order_id`, `delivery_option`, `pickup_station`, `address`, `city`, `area`, `contact_person`, `phone_1`, `phone_2`, `date_delivered`, `delivery_status`) VALUES
(5, 'pick_up', 0, '15 Toye Olaiya Street\r\nAlagbado', 'Alagbado', 'lagos', 'olaiya segun paul', '+2348175020329', '+2348175020329', '0000-00-00 00:00:00', 'pending'),
(6, 'pick_up', 0, '15 Toye Olaiya Street\r\nAlagbado', 'Alagbado', 'lagos', 'olaiya segun paul', '+2348175020329', '+2348175020329', '0000-00-00 00:00:00', 'pending'),
(7, 'pick_up', 0, '', 'City', 'Area/Location', 'Full Name', 'Phone', 'Phone', '0000-00-00 00:00:00', 'pending'),
(8, 'pick_up', 1, '115, This is the common address of everybody', 'lekki', 'lagos', 'olaiya segun paul', '08175020329', '0908833775533', '0000-00-00 00:00:00', 'pending'),
(9, 'pick_up', 2, '', 'City', 'Area/Location', 'Olaiya segun paul', '09384848', '948484', '0000-00-00 00:00:00', 'pending'),
(10, 'address', 1, 'This is my address', 'Gbagada', 'lagos', 'Olaiya Segun paul', '98954858585', '494757585', '0000-00-00 00:00:00', 'pending'),
(11, 'pick_up', 1, '', 'City', 'Area/Location', 'Adetola Bunmi', '904858585', '948485848', '2016-07-27 21:17:17', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `product_total` float NOT NULL,
  `positive_charges` varchar(100) NOT NULL,
  `negative_charges` varchar(100) NOT NULL,
  `delivery_charge` float DEFAULT '0',
  `order_total` float NOT NULL,
  `customer_type` varchar(50) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `guest_email` varchar(50) DEFAULT NULL,
  `payment_method` enum('pay_on_delivery','online') DEFAULT NULL,
  `status` enum('pending','completed','cancelled') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`id`, `date`, `order_number`, `details`, `product_total`, `positive_charges`, `negative_charges`, `delivery_charge`, `order_total`, `customer_type`, `customer_id`, `guest_email`, `payment_method`, `status`) VALUES
(5, '2016-07-22 13:49:08', '385219874972301', '[{\"sku\":\"9685174320\",\"qty\":1,\"price\":100,\"name\":\"PEPSI LIGHT -50CL\",\"subtotal\":100},{\"sku\":\"2301946857\",\"qty\":1,\"price\":280,\"name\":\"JUMBO PLUSH TISSUE\",\"subtotal\":280},{\"sku\":\"2147089365\",\"qty\":1,\"price\":110,\"name\":\"OLYMPIC MILK\",\"subtotal\":110}]', 490, '[]', '[]', 0, 490, 'guest', 0, 'yomi@gmail.com', 'online', 'pending'),
(6, '2016-07-22 13:49:28', '464573320029911', '[{\"sku\":\"9685174320\",\"qty\":1,\"price\":100,\"name\":\"PEPSI LIGHT -50CL\",\"subtotal\":100},{\"sku\":\"2301946857\",\"qty\":1,\"price\":280,\"name\":\"JUMBO PLUSH TISSUE\",\"subtotal\":280},{\"sku\":\"2147089365\",\"qty\":1,\"price\":110,\"name\":\"OLYMPIC MILK\",\"subtotal\":110}]', 490, '[]', '[]', 0, 490, 'guest', 0, 'yomi@gmail.com', 'pay_on_delivery', 'pending'),
(7, '2016-07-26 23:52:32', '602173586542791', '[{\"sku\":\"6435279810\",\"qty\":1,\"price\":1200,\"name\":\"FRISO GOLD RICE 300GMS\",\"subtotal\":1200}]', 1200, '[]', '[]', 0, 1200, 'guest', 0, 'vadeshayo@gmail.com', 'pay_on_delivery', 'pending'),
(8, '2016-07-27 18:37:08', '186599267357800', '[{\"sku\":\"1384952760\",\"qty\":1,\"price\":120,\"name\":\"COCA-COLA ZERO PET (COKE ZERO PET)\",\"subtotal\":120},{\"sku\":\"9845037261\",\"qty\":1,\"price\":100,\"name\":\"CORNFLAKES ORIGINAL 50G\",\"subtotal\":100}]', 220, '[]', '[]', 0, 220, 'customer', 5, '--', 'pay_on_delivery', 'pending'),
(9, '2016-07-27 18:40:41', '997401423575368', '[{\"sku\":\"5386294107\",\"qty\":1,\"price\":50,\"name\":\"CANOE ACTIVE FRESH 140G\",\"subtotal\":50},{\"sku\":\"1853769204\",\"qty\":1,\"price\":30,\"name\":\"GAS LIGHTER\",\"subtotal\":30}]', 80, '[]', '[]', 0, 80, 'guest', 0, 'vadeshayo@gmail.com', 'pay_on_delivery', 'pending'),
(10, '2016-07-27 20:38:33', '517986563801322', '[{\"sku\":\"3891705426\",\"qty\":1,\"price\":370,\"name\":\"FAMILY GRANULATED SUGAR 1KG\",\"subtotal\":370}]', 370, '[]', '[]', 500, 870, 'customer', 1, '--', 'pay_on_delivery', 'pending'),
(11, '2016-07-27 21:16:21', '712639355946788', '[{\"sku\":\"7491058362\",\"qty\":1,\"price\":655,\"name\":\"COWBELL MILK REFILL - 400G\",\"subtotal\":655},{\"sku\":\"0461872593\",\"qty\":1,\"price\":300,\"name\":\"MCDOWELL\",\"subtotal\":300},{\"sku\":\"4017953862\",\"qty\":1,\"price\":150,\"name\":\"EVA SOAP (CLASSIC)\",\"subtotal\":150}]', 1105, '[]', '[]', 500, 1105, 'guest', 0, 'vadeshayo@gmail.com', 'pay_on_delivery', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblordertransactionslog`
--

CREATE TABLE `tblordertransactionslog` (
  `order_id` int(11) NOT NULL,
  `returned_transactionref` varchar(20) NOT NULL COMMENT 'this is expected to be the order_number corresponding to the order id of this record',
  `returned_status` varchar(20) NOT NULL,
  `returned_amount` float NOT NULL,
  `error_string` varchar(255) NOT NULL,
  `requery_count` int(5) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpickupstations`
--

CREATE TABLE `tblpickupstations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `contact_phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpickupstations`
--

INSERT INTO `tblpickupstations` (`id`, `name`, `address`, `contact_person`, `contact_phone`) VALUES
(1, 'Wetin dey corner shop', 'No. 1, Falilat Shomade Street, Beside Nicon Estate gate, Total/Salem Bus Stop, Jakande/Gokushu, Lekki - Epe Expressway, Lagos', 'Oluwatoyin Akintayo', '08060144654'),
(2, 'Wetindey Supermarket', '53, Derock Cadastral street, Opposite Vicotory Park Estate, Beside Mobi filling station,\r\nJakande/Osapa, Lekki - Epe expressway, lagos', 'Oluwatoyin Akintayo', '08060144654');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `id` int(11) NOT NULL,
  `sku` varchar(10) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `flat_discount` float NOT NULL,
  `percent_discount` varchar(10) NOT NULL,
  `selling_price` float NOT NULL,
  `cost_price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `barcode1` varchar(50) NOT NULL,
  `barcode2` varchar(50) NOT NULL,
  `barcode3` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`id`, `sku`, `category_id`, `subcategory_id`, `supplier_id`, `name`, `description`, `slug`, `flat_discount`, `percent_discount`, `selling_price`, `cost_price`, `image`, `barcode1`, `barcode2`, `barcode3`, `status`, `created`) VALUES
(1, '7163928504', 1, 1, 11, 'CASSA GARRI 1KG', 'CASSA GARRI 1KG', 'cassa-garri-1kg', 0, '', 200, 150, '', 'I000000421', '', '', 1, '2016-07-21 14:34:08'),
(2, '2874950163', 1, 1, 11, 'CHIN CHIN', 'CHIN CHIN', 'chin-chin', 0, '', 50, 38, '', '642782449686', '', '', 1, '2016-07-21 14:34:08'),
(3, '3695428017', 1, 1, 11, 'GOLDBERG CAN 50CL', 'GOLDBERG CAN 50CL', 'goldberg-can-50cl', 0, '', 200, 180, '', 'I000000387', '', '', 1, '2016-07-21 14:34:08'),
(4, '1578249306', 1, 1, 11, 'HOT CRUST BREAD (B)', 'HOT CRUST BREAD (B)', 'hot-crust-bread-(b)', 0, '', 250, 200, '', 'I000000511', '', '', 1, '2016-07-21 14:34:08'),
(5, '1294560738', 1, 1, 11, 'HOT CRUST BREAD (S)', 'HOT CRUST BREAD (S)', 'hot-crust-bread-(s)', 0, '', 100, 80, '', '', '', '', 1, '2016-07-21 14:34:08'),
(6, '4593601728', 1, 1, 11, 'LA ROSE POUR FEMME 85ML', 'LA ROSE POUR FEMME 85ML', 'la-rose-pour-femme-85ml', 0, '', 0, 0, '', '5060463480059', '', '', 1, '2016-07-21 14:34:08'),
(7, '7192604385', 1, 1, 11, 'ORIFLAME AIR SPRAY 30ML', 'ORIFLAME AIR SPRAY 30ML', 'oriflame-air-spray-30ml', 0, '', 0, 0, '', 'I000000496', '', '', 1, '2016-07-21 14:34:08'),
(8, '7265019348', 1, 1, 11, 'ORIFLAME ASCENDANT SPRAY 75ML', 'ORIFLAME ASCENDANT SPRAY 75ML', 'oriflame-ascendant-spray-75ml', 0, '', 7290, 6561, '', 'I000000504', '', '', 1, '2016-07-21 14:34:08'),
(9, '8162507493', 1, 1, 11, 'ORIFLAME BLEMISH SOLVER15ML CREAM 75ML', 'ORIFLAME BLEMISH SOLVER15ML CREAM 75ML', 'oriflame-blemish-solver15ml-cream-75ml', 0, '', 1690, 1521, '', 'I000000507', '', '', 1, '2016-07-21 14:34:08'),
(10, '8759203641', 1, 1, 11, 'ORIFLAME FACE TONER OILY SKIN150ML', 'ORIFLAME FACE TONER OILY SKIN150ML', 'oriflame-face-toner-oily-skin150ml', 0, '', 1890, 1701, '', 'I000000508', '', '', 1, '2016-07-21 14:34:08'),
(11, '2308156794', 1, 1, 11, 'ORIFLAME FEETUP FOOT POWDER 75G', 'ORIFLAME FEETUP FOOT POWDER 75G', 'oriflame-feetup-foot-powder-75g', 0, '', 0, 0, '', 'I000000498', '', '', 1, '2016-07-21 14:34:08'),
(12, '8390276514', 1, 1, 11, 'ORIFLAME FLAMBOYANT SPRAY 75ML', 'ORIFLAME FLAMBOYANT SPRAY 75ML', 'oriflame-flamboyant-spray-75ml', 0, '', 7290, 6561, '', 'I000000497', '', '', 1, '2016-07-21 14:34:08'),
(13, '1284357069', 1, 1, 11, 'ORIFLAME GIORDANI GOLD 25G', 'ORIFLAME GIORDANI GOLD 25G', 'oriflame-giordani-gold-25g', 0, '', 5990, 5391, '', 'I000000502', '', '', 1, '2016-07-21 14:34:08'),
(14, '6897354120', 1, 1, 11, 'ORIFLAME INCREDIBLE HAND CREAM 75ML', 'ORIFLAME INCREDIBLE HAND CREAM 75ML', 'oriflame-incredible-hand-cream-75ml', 0, '', 1190, 1071, '', 'I000000501', '', '', 1, '2016-07-21 14:34:08'),
(15, '3674508192', 1, 1, 11, 'ORIFLAME LOVE NATURE GEL MASK 50ML', 'ORIFLAME LOVE NATURE GEL MASK 50ML', 'oriflame-love-nature-gel-mask-50ml', 0, '', 0, 0, '', 'I000000500', '', '', 1, '2016-07-21 14:34:08'),
(16, '1274586039', 1, 1, 11, 'ORIFLAME NORTH FOR MEN 50ML', 'ORIFLAME NORTH FOR MEN 50ML', 'oriflame-north-for-men-50ml', 0, '', 690, 621, '', 'I000000499', '', '', 1, '2016-07-21 14:34:08'),
(17, '0893527641', 1, 1, 11, 'ORIFLAME PURE SKIN  SCRUB & MASK6ML', 'ORIFLAME PURE SKIN  SCRUB & MASK6ML', 'oriflame-pure-skin--scrub-&-mask6ml', 0, '', 490, 441, '', 'I000000505', '', '', 1, '2016-07-21 14:34:08'),
(18, '8437102695', 1, 1, 11, 'ORIFLAME SOFTCARESS OIL 100ML', 'ORIFLAME SOFTCARESS OIL 100ML', 'oriflame-softcaress-oil-100ml', 0, '', 1190, 1701, '', 'I000000503', '', '', 1, '2016-07-21 14:34:08'),
(19, '7634512980', 1, 1, 11, 'ORIFLAME TENDER CARE BALM 15ML', 'ORIFLAME TENDER CARE BALM 15ML', 'oriflame-tender-care-balm-15ml', 0, '', 1090, 981, '', 'I000000509', '', '', 1, '2016-07-21 14:34:08'),
(20, '7456038921', 1, 1, 11, 'ORIFLAME THE ONE EYE PENCIL', 'ORIFLAME THE ONE EYE PENCIL', 'oriflame-the-one-eye-pencil', 0, '', 1890, 1701, '', 'I000000510', '', '', 1, '2016-07-21 14:34:08'),
(21, '3059286417', 1, 1, 11, 'ORIFLAME VERY ME EYE PENCIL', 'ORIFLAME VERY ME EYE PENCIL', 'oriflame-very-me-eye-pencil', 0, '', 1690, 1521, '', 'I000000506', '', '', 1, '2016-07-21 14:34:08'),
(22, '0867542931', 1, 1, 11, 'ORIFLAME WONDERLASK MASCARA', 'ORIFLAME WONDERLASK MASCARA', 'oriflame-wonderlask-mascara', 0, '', 1790, 1610, '', 'I000000513', '', '', 1, '2016-07-21 14:34:09'),
(23, '1532648907', 1, 1, 11, 'ORIGIN ZERO CAN', 'ORIGIN ZERO CAN', 'origin-zero-can', 0, '', 100, 85, '', '5000213019825', '', '', 1, '2016-07-21 14:34:09'),
(24, '0578694213', 1, 1, 11, 'ORIGIN ZERO CAN (PACK)', 'ORIGIN ZERO CAN (PACK)', 'origin-zero-can-(pack)', 0, '', 2345, 2100, '', 'I000000606', '', '', 1, '2016-07-21 14:34:09'),
(25, '2685719304', 1, 1, 13, 'CHIVITA ACTIVE', 'CHIVITA ACTIVE', 'chivita-active', 0, '', 280, 230, '', 'I000000284', '', '', 1, '2016-07-21 14:34:09'),
(26, '8514732960', 1, 1, 13, 'CHIVITA FRUIT - REAL APPLE', 'CHIVITA FRUIT - REAL APPLE', 'chivita-fruit---real-apple', 0, '', 295, 250, '', '6151100050021', '', '', 1, '2016-07-21 14:34:09'),
(27, '5269817034', 1, 1, 13, 'CHIVITA FRUIT - REAL ORANGE', 'CHIVITA FRUIT - REAL ORANGE', 'chivita-fruit---real-orange', 0, '', 295, 250, '', '6151100050014', '', '', 1, '2016-07-21 14:34:09'),
(28, '1493702685', 1, 1, 13, 'FRESH YO (STRAWBERRY)', 'FRESH YO (STRAWBERRY)', 'fresh-yo-(strawberry)', 0, '', 225, 183, '', 'I000000153', '', '', 1, '2016-07-21 14:34:09'),
(29, '2671358940', 1, 1, 13, 'FRESH YO (YOGHURT)', 'FRESH YO (YOGHURT)', 'fresh-yo-(yoghurt)', 0, '', 225, 183, '', '6153400043413', '', '', 1, '2016-07-21 14:34:09'),
(30, '2197640538', 1, 1, 13, 'FRESH YO (YOGHURT) - 1L', 'FRESH YO (YOGHURT) - 1L', 'fresh-yo-(yoghurt)---1l', 0, '', 480, 300, '', '6153400043376', '', '', 1, '2016-07-21 14:34:09'),
(31, '0827653419', 1, 1, 13, 'PULPY ORANGE DRINK (FIVE ALIVE)', 'PULPY ORANGE DRINK (FIVE ALIVE)', 'pulpy-orange-drink-(five-alive)', 0, '', 150, 125, '', '5449000113443', '', '', 1, '2016-07-21 14:34:09'),
(32, '1562904738', 1, 1, 13, 'PULPY ORANGE DRINK (FIVE ALIVE) X6', 'PULPY ORANGE DRINK (FIVE ALIVE) X6', 'pulpy-orange-drink-(five-alive)-x6', 0, '', 850, 725, '', 'I000000607', '', '', 1, '2016-07-21 14:34:09'),
(33, '8954213760', 1, 1, 1, 'BIC SHAVING STICK', 'BIC SHAVING STICK', 'bic-shaving-stick', 0, '', 50, 30, '', '3086126606552', '', '', 1, '2016-07-21 14:34:09'),
(34, '1487632095', 1, 1, 1, 'ALOMO BITTERS', 'ALOMO BITTERS', 'alomo-bitters', 0, '', 250, 185, '', 'I000000176', '', '', 1, '2016-07-21 14:34:09'),
(35, '2710486593', 1, 1, 1, 'APRIL BATHING SOAP', 'APRIL BATHING SOAP', 'april-bathing-soap', 0, '', 50, 25, '', 'I000000075', '', '', 1, '2016-07-21 14:34:09'),
(36, '8654037912', 1, 1, 1, 'BAGCO SUPER SACK', 'BAGCO SUPER SACK', 'bagco-super-sack', 0, '', 50, 35, '', 'I000000068', '', '', 1, '2016-07-21 14:34:09'),
(37, '2016785934', 1, 1, 1, 'BATHROOM SLIPPERS', 'BATHROOM SLIPPERS', 'bathroom-slippers', 0, '', 150, 92, '', 'I000000027', '', '', 1, '2016-07-21 14:34:09'),
(38, '9561327408', 1, 1, 1, 'BIMBO BAR SOAP', 'BIMBO BAR SOAP', 'bimbo-bar-soap', 0, '', 60, 81.95, '', 'I000000013', '', '', 1, '2016-07-21 14:34:09'),
(39, '7109483625', 1, 1, 1, 'BIMBO DETERGENT', 'BIMBO DETERGENT', 'bimbo-detergent', 0, '', 20, 0.6, '', 'I000000012', '', '', 1, '2016-07-21 14:34:09'),
(40, '5916234780', 1, 1, 1, 'BIRO BLACK', 'BIRO BLACK', 'biro-black', 0, '', 20, 15, '', 'I000000155', '', '', 1, '2016-07-21 14:34:09'),
(41, '4857902136', 1, 1, 1, 'BOOSTER', 'BOOSTER', 'booster', 0, '', 150, 41.5, '', 'I000000093', '', '', 1, '2016-07-21 14:34:09'),
(42, '2450139687', 1, 1, 1, 'BOURNVITA 20G', 'BOURNVITA 20G', 'bournvita-20g', 0, '', 30, 0.85, '', '5000201801463', '', '', 1, '2016-07-21 14:34:09'),
(43, '3192804675', 1, 1, 1, 'BULL', 'BULL', 'bull', 0, '', 100, 50, '', 'I000000180', '', '', 1, '2016-07-21 14:34:09'),
(44, '8506379241', 1, 1, 1, 'BULLET (VODKA)', 'BULLET (VODKA)', 'bullet-(vodka)', 0, '', 250, 165, '', '5032619233543', '', '', 1, '2016-07-21 14:34:09'),
(45, '6918302457', 1, 1, 1, 'BUTTER MINT', 'BUTTER MINT', 'butter-mint', 0, '', 5, 4, '', '5000201000903', '', '', 1, '2016-07-21 14:34:10'),
(46, '1348675209', 1, 1, 1, 'BUTTER MINT - PKT', 'BUTTER MINT - PKT', 'butter-mint---pkt', 0, '', 250, 160, '', '7622210478320', '', '', 1, '2016-07-21 14:34:10'),
(47, '5769043821', 1, 1, 1, 'CALIDON BRANDY', 'CALIDON BRANDY', 'calidon-brandy', 0, '', 70, 42, '', '6152110053453', '', '', 1, '2016-07-21 14:34:10'),
(48, '5973102648', 1, 1, 1, 'CALIDON GIN', 'CALIDON GIN', 'calidon-gin', 0, '', 70, 42, '', '6152110053460', '', '', 1, '2016-07-21 14:34:10'),
(49, '9062534871', 1, 1, 1, 'CALIDON RUM', 'CALIDON RUM', 'calidon-rum', 0, '', 70, 42, '', 'I000000193', '', '', 1, '2016-07-21 14:34:10'),
(50, '8053126794', 1, 1, 1, 'CAN 7UP (FREE) - 33CL', 'CAN 7UP (FREE) - 33CL', 'can-7up-(free)---33cl', 0, '', 95, 75, '', '6034000005264', '', '', 1, '2016-07-21 14:34:10'),
(51, '4817529036', 1, 1, 1, 'CAN 7UP (FREE) X6 - 33CL', 'CAN 7UP (FREE) X6 - 33CL', 'can-7up-(free)-x6---33cl', 0, '', 550, 450, '', 'I000000605', '', '', 1, '2016-07-21 14:34:10'),
(52, '5821034679', 1, 1, 1, 'CAN MIRINDA (ORANGE) 33CL', 'CAN MIRINDA (ORANGE) 33CL', 'can-mirinda-(orange)-33cl', 0, '', 95, 75, '', '6034000005134', '', '', 1, '2016-07-21 14:34:10'),
(53, '2361495078', 1, 1, 1, 'CAN MIRINDA (ORANGE) X6 - 33CL', 'CAN MIRINDA (ORANGE) X6 - 33CL', 'can-mirinda-(orange)-x6---33cl', 0, '', 550, 450, '', 'I000000602', '', '', 1, '2016-07-21 14:34:10'),
(54, '3650248719', 1, 1, 1, 'CAN PEPSI (LIGHT) - 33CL', 'CAN PEPSI (LIGHT) - 33CL', 'can-pepsi-(light)---33cl', 0, '', 95, 75, '', '6034000005035', '', '', 1, '2016-07-21 14:34:10'),
(55, '3920154867', 1, 1, 1, 'CAN PEPSI (LIGHT) X6 - 33CL', 'CAN PEPSI (LIGHT) X6 - 33CL', 'can-pepsi-(light)-x6---33cl', 0, '', 550, 450, '', 'I000000604', '', '', 1, '2016-07-21 14:34:10'),
(56, '7561403298', 1, 1, 1, 'CAN PEPSI - 33CL', 'CAN PEPSI - 33CL', 'can-pepsi---33cl', 0, '', 95, 75, '', '6034000005028', '', '', 1, '2016-07-21 14:34:10'),
(57, '9274583061', 1, 1, 1, 'CAN PEPSI X6 - 33CL', 'CAN PEPSI X6 - 33CL', 'can-pepsi-x6---33cl', 0, '', 550, 450, '', 'I000000603', '', '', 1, '2016-07-21 14:34:10'),
(58, '6298457103', 1, 1, 1, 'CANDLE', 'CANDLE', 'candle', 0, '', 20, 11, '', 'I000000002', '', '', 1, '2016-07-21 14:34:10'),
(59, '9064813275', 1, 1, 1, 'CASCADE BOTTLE WATER (50cl)', 'CASCADE BOTTLE WATER (50cl)', 'cascade-bottle-water-(50cl)', 0, '', 50, 36, '', '6156000031644', '', '', 1, '2016-07-21 14:34:10'),
(60, '2586049173', 1, 1, 1, 'CASCADE BOTTLE WATER (50cl) - CARTON', 'CASCADE BOTTLE WATER (50cl) - CARTON', 'cascade-bottle-water-(50cl)---carton', 0, '', 550, 450, '', 'I000000042', '', '', 1, '2016-07-21 14:34:10'),
(61, '6579130482', 1, 1, 1, 'CASCADE DISPENSER WATER', 'CASCADE DISPENSER WATER', 'cascade-dispenser-water', 0, '', 450, 350, '', 'I000000629', '', '', 1, '2016-07-21 14:34:10'),
(62, '2613759804', 1, 1, 1, 'CASCADE DISPENSER WATER', 'CASCADE DISPENSER WATER', 'cascade-dispenser-water', 0, '', 1450, 1100, '', 'I000000630', '', '', 1, '2016-07-21 14:34:10'),
(63, '0576492138', 1, 1, 1, 'CHELSEA 150ML', 'CHELSEA 150ML', 'chelsea-150ml', 0, '', 180, 140, '', 'I000000175', '', '', 1, '2016-07-21 14:34:10'),
(64, '1402596378', 1, 1, 1, 'CHIKKI NOODLES CARTON', 'CHIKKI NOODLES CARTON', 'chikki-noodles-carton', 0, '', 1600, 1500, '', 'I000000189', '', '', 1, '2016-07-21 14:34:10'),
(65, '2987143065', 1, 1, 1, 'CHIKKI NOODLES8888327831130', 'CHIKKI NOODLES8888327831130', 'chikki-noodles8888327831130', 0, '', 50, 37.5, '', 'I000000061', '', '', 1, '2016-07-21 14:34:10'),
(66, '5046187932', 1, 1, 1, 'COWBELL CHOCOLATE 20G', 'COWBELL CHOCOLATE 20G', 'cowbell-chocolate-20g', 0, '', 30, 18, '', 'I000000146', '', '', 1, '2016-07-21 14:34:11'),
(67, '5642730189', 1, 1, 1, 'COWBELL MILK 10G', 'COWBELL MILK 10G', 'cowbell-milk-10g', 0, '', 10, 0, '', 'I000000086', '', '', 1, '2016-07-21 14:34:11'),
(68, '6502873491', 1, 1, 1, 'COWBELL MILK 20G', 'COWBELL MILK 20G', 'cowbell-milk-20g', 0, '', 20, 18, '', 'I000000067', '', '', 1, '2016-07-21 14:34:11'),
(69, '1302458769', 1, 1, 1, 'COWBELL MILK COFFEE 20G', 'COWBELL MILK COFFEE 20G', 'cowbell-milk-coffee-20g', 0, '', 20, 18, '', '6008155007442', '', '', 1, '2016-07-21 14:34:11'),
(70, '7491058362', 1, 1, 1, 'COWBELL MILK REFILL - 400G', 'COWBELL MILK REFILL - 400G', 'cowbell-milk-refill---400g', 0, '', 655, 497, '', '6008155000108', '', '', 1, '2016-07-21 14:34:11'),
(71, '6951724803', 1, 1, 1, 'CWAY DISPENSER WATER', 'CWAY DISPENSER WATER', 'cway-dispenser-water', 0, '', 450, 380, '', '6152110050032', '', '', 1, '2016-07-21 14:34:11'),
(72, '0927483516', 1, 1, 1, 'CWAY DISPENSER WATER + BOTTLE', 'CWAY DISPENSER WATER + BOTTLE', 'cway-dispenser-water-+-bottle', 0, '', 1550, 1400, '', 'I000000111', '', '', 1, '2016-07-21 14:34:11'),
(73, '8043152679', 1, 1, 1, 'DANGOTE SUGAR 1KG', 'DANGOTE SUGAR 1KG', 'dangote-sugar-1kg', 0, '', 355, 210, '', '6156000061023', '', '', 1, '2016-07-21 14:34:11'),
(74, '5436029817', 1, 1, 1, 'DELTA SOAP', 'DELTA SOAP', 'delta-soap', 0, '', 120, 93.8, '', '8886023310010', '', '', 1, '2016-07-21 14:34:11'),
(75, '1203697845', 1, 1, 1, 'DON SIMON', 'DON SIMON', 'don-simon', 0, '', 500, 292, '', '8410261271101', '', '', 1, '2016-07-21 14:34:11'),
(76, '4580792361', 1, 1, 1, 'DOUGHNUT', 'DOUGHNUT', 'doughnut', 0, '', 50, 40, '', 'I000000191', '', '', 1, '2016-07-21 14:34:11'),
(77, '2135978064', 1, 1, 1, 'EGG ROLL', 'EGG ROLL', 'egg-roll', 0, '', 70, 50, '', 'I000000190', '', '', 1, '2016-07-21 14:34:11'),
(78, '3410798652', 1, 1, 1, 'EVA SOAP (FOREVER)', 'EVA SOAP (FOREVER)', 'eva-soap-(forever)', 0, '', 120, 80, '', 'I000000005', '', '', 1, '2016-07-21 14:34:11'),
(79, '6341879250', 1, 1, 1, 'EVA SOAP (IVORY)', 'EVA SOAP (IVORY)', 'eva-soap-(ivory)', 0, '', 150, 120, '', '6154000005016', '', '', 1, '2016-07-21 14:34:11'),
(80, '9132568740', 1, 1, 1, 'EVA SOAP (PERIE)', 'EVA SOAP (PERIE)', 'eva-soap-(perie)', 0, '', 120, 177.78, '', 'I000000070', '', '', 1, '2016-07-21 14:34:11'),
(81, '3627148950', 1, 1, 1, 'EXERCISE BOOK 20 LEAVES', 'EXERCISE BOOK 20 LEAVES', 'exercise-book-20-leaves', 0, '', 30, 18.06, '', 'I000000415', '', '', 1, '2016-07-21 14:34:11'),
(82, '6059413827', 1, 1, 1, 'EXERCISE BOOK 40 LEAVES', 'EXERCISE BOOK 40 LEAVES', 'exercise-book-40-leaves', 0, '', 40, 29, '', 'I000000333', '', '', 1, '2016-07-21 14:34:11'),
(83, '5236784091', 1, 1, 1, 'EXERCISE BOOK 60 LEAVES', 'EXERCISE BOOK 60 LEAVES', 'exercise-book-60-leaves', 0, '', 60, 37.5, '', 'I000000152', '', '', 1, '2016-07-21 14:34:11'),
(84, '6138497520', 1, 1, 1, 'FAYROUZ CAN', 'FAYROUZ CAN', 'fayrouz-can', 0, '', 120, 91.3, '', 'I000000100', '', '', 1, '2016-07-21 14:34:11'),
(85, '1648250397', 1, 1, 1, 'FAYROUZ PET 50CL', 'FAYROUZ PET 50CL', 'fayrouz-pet-50cl', 0, '', 150, 106, '', '5025866000327', '', '', 1, '2016-07-21 14:34:11'),
(86, '5241378960', 1, 1, 1, 'FIVE ALIVE (APPLE)', 'FIVE ALIVE (APPLE)', 'five-alive-(apple)', 0, '', 280, 250, '', '5449000109491', '', '', 1, '2016-07-21 14:34:11'),
(87, '2701683495', 1, 1, 1, 'FIVE ALIVE (BERRY BLAST)', 'FIVE ALIVE (BERRY BLAST)', 'five-alive-(berry-blast)', 0, '', 280, 250, '', 'I000000130', '', '', 1, '2016-07-21 14:34:11'),
(88, '0714382956', 1, 1, 1, 'FIVE ALIVE (CITRUS)', 'FIVE ALIVE (CITRUS)', 'five-alive-(citrus)', 0, '', 280, 250, '', '5449000094001', '', '', 1, '2016-07-21 14:34:12'),
(89, '7029154368', 1, 1, 1, 'FIVE ALIVE (ORANGE)', 'FIVE ALIVE (ORANGE)', 'five-alive-(orange)', 0, '', 280, 250, '', '5449000169075', '', '', 1, '2016-07-21 14:34:12'),
(90, '4971386520', 1, 1, 1, 'GHANA MUST GO (MEDIUM)', 'GHANA MUST GO (MEDIUM)', 'ghana-must-go-(medium)', 0, '', 380, 194.28, '', 'I000000015', '', '', 1, '2016-07-21 14:34:12'),
(91, '3758210964', 1, 1, 1, 'GHANA MUST GO (SMALL)', 'GHANA MUST GO (SMALL)', 'ghana-must-go-(small)', 0, '', 260, 175, '', 'I000000016', '', '', 1, '2016-07-21 14:34:12'),
(92, '7921368045', 1, 1, 1, 'GIANT POLY BAG', 'GIANT POLY BAG', 'giant-poly-bag', 0, '', 50, 34, '', 'I000000371', '', '', 1, '2016-07-21 14:34:12'),
(93, '3519206874', 1, 1, 1, 'GLUCOSE D', 'GLUCOSE D', 'glucose-d', 0, '', 400, 400, '', 'I000000088', '', '', 1, '2016-07-21 14:34:12'),
(94, '2718930564', 1, 1, 1, 'GOLDEN PENNY MACARONI LARGE 500G', 'GOLDEN PENNY MACARONI LARGE 500G', 'golden-penny-macaroni-large-500g', 0, '', 165, 115, '', '6156000032283', '', '', 1, '2016-07-21 14:34:12'),
(95, '3915207486', 1, 1, 1, 'GOLDEN PENNY MARCARONI (TWIST)', 'GOLDEN PENNY MARCARONI (TWIST)', 'golden-penny-marcaroni-(twist)', 0, '', 165, 140, '', '6156000032290', '', '', 1, '2016-07-21 14:34:12'),
(96, '8064537192', 1, 1, 1, 'GOLDEN PENNY SPAGETTI', 'GOLDEN PENNY SPAGETTI', 'golden-penny-spagetti', 0, '', 180, 155, '', '6156000032207', '', '', 1, '2016-07-21 14:34:12'),
(97, '4062395718', 1, 1, 1, 'GOLDEN PENNY SPAGETTINI', 'GOLDEN PENNY SPAGETTINI', 'golden-penny-spagettini', 0, '', 180, 165, '', '6156000032214', '', '', 1, '2016-07-21 14:34:12'),
(98, '1536489702', 1, 1, 1, 'GUINNESS CAN (STOUT)', 'GUINNESS CAN (STOUT)', 'guinness-can-(stout)', 0, '', 200, 183, '', 'GSC001', '', '', 1, '2016-07-21 14:34:12'),
(99, '7619024583', 1, 1, 1, 'HANDKERCHIEF (COLOURED)', 'HANDKERCHIEF (COLOURED)', 'handkerchief-(coloured)', 0, '', 50, 31.62, '', 'I000000200', '', '', 1, '2016-07-21 14:34:12'),
(100, '6987324105', 1, 1, 1, 'HANDKERCHIEF (WHITE)', 'HANDKERCHIEF (WHITE)', 'handkerchief-(white)', 0, '', 60, 35, '', 'I000000023', '', '', 1, '2016-07-21 14:34:12'),
(101, '4685107932', 1, 1, 1, 'HANDKERCHIEF (WHITE) - PACK', 'HANDKERCHIEF (WHITE) - PACK', 'handkerchief-(white)---pack', 0, '', 550, 440, '', 'I000000488', '', '', 1, '2016-07-21 14:34:12'),
(102, '4368970521', 1, 1, 1, 'HARP CAN', 'HARP CAN', 'harp-can', 0, '', 150, 13, '', 'GHC001', '', '', 1, '2016-07-21 14:34:12'),
(103, '3650487921', 1, 1, 1, 'HEINEKEN (CAN)', 'HEINEKEN (CAN)', 'heineken-(can)', 0, '', 200, 150, '', 'HEI003', '', '', 1, '2016-07-21 14:34:12'),
(104, '4385710926', 1, 1, 1, 'IMPERIAL LEATHER SOAP', 'IMPERIAL LEATHER SOAP', 'imperial-leather-soap', 0, '', 60, 47, '', '5000101919732', '', '', 1, '2016-07-21 14:34:12'),
(105, '8607234159', 1, 1, 1, 'KOPIKO CANDY', 'KOPIKO CANDY', 'kopiko-candy', 0, '', 5, 0.07, '', 'I000000047', '', '', 1, '2016-07-21 14:34:12'),
(106, '7095842631', 1, 1, 1, 'LIFE BUOY SOAP', 'LIFE BUOY SOAP', 'life-buoy-soap', 0, '', 100, 67, '', 'I000000091', '', '', 1, '2016-07-21 14:34:12'),
(107, '8029746153', 1, 1, 1, 'LONDON BEST ENERGY DRINK', 'LONDON BEST ENERGY DRINK', 'london-best-energy-drink', 0, '', 150, 125, '', 'I000000092', '', '', 1, '2016-07-21 14:34:12'),
(108, '9401623875', 1, 1, 1, 'LOYA MILK 16G', 'LOYA MILK 16G', 'loya-milk-16g', 0, '', 40, 32, '', 'I000000066', '', '', 1, '2016-07-21 14:34:12'),
(109, '4715369820', 1, 1, 1, 'LOYA MILK REFILL 400G', 'LOYA MILK REFILL 400G', 'loya-milk-refill-400g', 0, '', 785, 625, '', '6008155005929', '', '', 1, '2016-07-21 14:34:12'),
(110, '9372064518', 1, 1, 1, 'MALTA GUINNESS CAN', 'MALTA GUINNESS CAN', 'malta-guinness-can', 0, '', 120, 96, '', '5010162000164', '', '', 1, '2016-07-21 14:34:13'),
(111, '6825940137', 1, 1, 1, 'MALTA GUINNESS CAN (CARTON)', 'MALTA GUINNESS CAN (CARTON)', 'malta-guinness-can-(carton)', 0, '', 2450, 2250, '', '5000213011355', '', '', 1, '2016-07-21 14:34:13'),
(112, '7804169325', 1, 1, 1, 'MILO SARDINE 125G', 'MILO SARDINE 125G', 'milo-sardine-125g', 0, '', 130, 20, '', 'I000000087', '', '', 1, '2016-07-21 14:34:13'),
(113, '4508231769', 1, 1, 1, 'MIRINDA ORANGE (PACK) PET 50cl', 'MIRINDA ORANGE (PACK) PET 50cl', 'mirinda-orange-(pack)-pet-50cl', 0, '', 960, 850, '', 'I000000479', '', '', 1, '2016-07-21 14:34:13'),
(114, '0359286174', 1, 1, 1, 'MIRINDA ORANGE PET 50cl', 'MIRINDA ORANGE PET 50cl', 'mirinda-orange-pet-50cl', 0, '', 100, 79, '', 'I000000060', '', '', 1, '2016-07-21 14:34:13'),
(115, '1928506734', 1, 1, 1, 'MIRINDA PINEAPPLE PET 50cl', 'MIRINDA PINEAPPLE PET 50cl', 'mirinda-pineapple-pet-50cl', 0, '', 100, 79, '', 'I000000059', '', '', 1, '2016-07-21 14:34:13'),
(116, '0813246795', 1, 1, 1, 'MOSQUITO COIL', 'MOSQUITO COIL', 'mosquito-coil', 0, '', 20, 10, '', '6920801800019', '', '', 1, '2016-07-21 14:34:13'),
(117, '8401637925', 1, 1, 1, 'MOSQUITO COIL - 1PACKET', 'MOSQUITO COIL - 1PACKET', 'mosquito-coil---1packet', 0, '', 80, 54, '', 'I000000039', '', '', 1, '2016-07-21 14:34:13'),
(118, '8206973415', 1, 1, 1, 'NACET BLADE', 'NACET BLADE', 'nacet-blade', 0, '', 20, 0.63, '', 'I000000083', '', '', 1, '2016-07-21 14:34:13'),
(119, '1734965082', 1, 1, 1, 'NACET BLADE - PKT', 'NACET BLADE - PKT', 'nacet-blade---pkt', 0, '', 80, 60, '', 'I000000270', '', '', 1, '2016-07-21 14:34:13'),
(120, '9432806517', 1, 1, 1, 'ORAL B TOOTHBRUSH  123', 'ORAL B TOOTHBRUSH  123', 'oral-b-toothbrush--123', 0, '', 150, 71, '', '3014260807214', '', '', 1, '2016-07-21 14:34:13'),
(121, '4792508613', 1, 1, 1, 'ORAL B TOOTHPASTE 95G IMPORTED', 'ORAL B TOOTHPASTE 95G IMPORTED', 'oral-b-toothpaste-95g-imported', 0, '', 420, 358.03, '', '5013965746574', '', '', 1, '2016-07-21 14:34:13'),
(122, '7569128430', 1, 1, 1, 'ORAL B TOOTHPASTE SMALL 40G', 'ORAL B TOOTHPASTE SMALL 40G', 'oral-b-toothpaste-small-40g', 0, '', 100, 72.33, '', '5013965698859', '', '', 1, '2016-07-21 14:34:13'),
(123, '6739851402', 1, 1, 1, 'ORAL VIP EXECUTIVE TOOTH BRUSH', 'ORAL VIP EXECUTIVE TOOTH BRUSH', 'oral-vip-executive-tooth-brush', 0, '', 120, 71, '', '8464566141348', '', '', 1, '2016-07-21 14:34:13'),
(124, '2536074981', 1, 1, 1, 'ORI MALU PET', 'ORI MALU PET', 'ori-malu-pet', 0, '', 100, 67, '', 'I000000198', '', '', 1, '2016-07-21 14:34:13'),
(125, '8635927104', 1, 1, 1, 'ORI MALU SACHET', 'ORI MALU SACHET', 'ori-malu-sachet', 0, '', 70, 40, '', 'I000000174', '', '', 1, '2016-07-21 14:34:13'),
(126, '8415932607', 1, 1, 1, 'OVALTINE 1200G', 'OVALTINE 1200G', 'ovaltine-1200g', 0, '', 2300, 2016, '', '6906791111014', '', '', 1, '2016-07-21 14:34:13'),
(127, '6904521873', 1, 1, 1, 'OVALTINE 800G TIN', 'OVALTINE 800G TIN', 'ovaltine-800g-tin', 0, '', 1750, 1433, '', '7612100062760', '', '', 1, '2016-07-21 14:34:13'),
(128, '6981752340', 1, 1, 1, 'OVALTINE REFILL 400G', 'OVALTINE REFILL 400G', 'ovaltine-refill-400g', 0, '', 785, 667, '', '761210006144', '', '', 1, '2016-07-21 14:34:13'),
(129, '9045732681', 1, 1, 1, 'OVALTINE SACHET 20G', 'OVALTINE SACHET 20G', 'ovaltine-sachet-20g', 0, '', 30, 0, '', 'I000000065', '', '', 1, '2016-07-21 14:34:13'),
(130, '1493280756', 1, 1, 1, 'OVALTINE TIN 400G', 'OVALTINE TIN 400G', 'ovaltine-tin-400g', 0, '', 885, 667, '', '6906791111038', '', '', 1, '2016-07-21 14:34:13'),
(131, '4806913725', 1, 1, 1, 'PANADOL', 'PANADOL', 'panadol', 0, '', 20, 27.27, '', '6161105660712', '', '', 1, '2016-07-21 14:34:13'),
(132, '8065324971', 1, 1, 1, 'PANADOL EXTRA (SACHET)', 'PANADOL EXTRA (SACHET)', 'panadol-extra-(sachet)', 0, '', 100, 75, '', '6161105660729', '', '', 1, '2016-07-21 14:34:14'),
(133, '0752861394', 1, 1, 1, 'PARACETAMOL SACHET', 'PARACETAMOL SACHET', 'paracetamol-sachet', 0, '', 30, 16, '', '6154000033002', '', '', 1, '2016-07-21 14:34:14'),
(134, '7408961352', 1, 1, 1, 'PASSION ENERGY DRINK', 'PASSION ENERGY DRINK', 'passion-energy-drink', 0, '', 50, 40, '', 'I000000267', '', '', 1, '2016-07-21 14:34:14'),
(135, '2503489167', 1, 1, 1, 'PASSION ENERGY DRINK - PKT', 'PASSION ENERGY DRINK - PKT', 'passion-energy-drink---pkt', 0, '', 220, 140, '', 'I000000292', '', '', 1, '2016-07-21 14:34:14'),
(136, '9685174320', 1, 1, 1, 'PEPSI LIGHT -50CL', 'PEPSI LIGHT -50CL', 'pepsi-light--50cl', 0, '', 100, 79, '', 'I000000384', '', '', 1, '2016-07-21 14:34:14'),
(137, '5748012369', 1, 1, 1, 'PEPSI PET (PACK) -50CL', 'PEPSI PET (PACK) -50CL', 'pepsi-pet-(pack)--50cl', 0, '', 960, 850, '', 'I000000480', '', '', 1, '2016-07-21 14:34:14'),
(138, '0945162738', 1, 1, 1, 'PEPSI PET -50CL', 'PEPSI PET -50CL', 'pepsi-pet--50cl', 0, '', 100, 79, '', '6151100150226', '', '', 1, '2016-07-21 14:34:14'),
(139, '9462837501', 1, 1, 1, 'PK GUM (MENTHOL)', 'PK GUM (MENTHOL)', 'pk-gum-(menthol)', 0, '', 50, 0, '', 'I000000085', '', '', 1, '2016-07-21 14:34:14'),
(140, '4159802673', 1, 1, 1, 'PK GUM (PEPPERMINT)', 'PK GUM (PEPPERMINT)', 'pk-gum-(peppermint)', 0, '', 50, 0, '', 'I000000084', '', '', 1, '2016-07-21 14:34:14'),
(141, '1680957324', 1, 1, 1, 'POLY BAG', 'POLY BAG', 'poly-bag', 0, '', 10, 5.5, '', 'I000000038', '', '', 1, '2016-07-21 14:34:14'),
(142, '7815362049', 1, 1, 1, 'PRINGLE 165 GMS (PAPRIKA)', 'PRINGLE 165 GMS (PAPRIKA)', 'pringle-165-gms-(paprika)', 0, '', 395, 320, '', '5053990106868', '', '', 1, '2016-07-21 14:34:14'),
(143, '5981602743', 1, 1, 1, 'PRINGLE 165 GMS (TEXAS BBQ SAUCE)', 'PRINGLE 165 GMS (TEXAS BBQ SAUCE)', 'pringle-165-gms-(texas-bbq-sauce)', 0, '', 395, 320, '', '5053990101528', '', '', 1, '2016-07-21 14:34:14'),
(144, '1684379205', 1, 1, 8, 'BABY OKU', 'BABY OKU', 'baby-oku', 0, '', 100, 80, '', 'I000000150', '', '', 1, '2016-07-21 14:34:14'),
(145, '8637420915', 1, 1, 8, 'CALYPSO PET', 'CALYPSO PET', 'calypso-pet', 0, '', 200, 140, '', 'I000000197', '', '', 1, '2016-07-21 14:34:14'),
(146, '1786940235', 1, 1, 8, 'ELDERS', 'ELDERS', 'elders', 0, '', 100, 60, '', 'I000000195', '', '', 1, '2016-07-21 14:34:14'),
(147, '9801243576', 1, 1, 8, 'OSOMO', 'OSOMO', 'osomo', 0, '', 250, 180, '', 'I000000196', '', '', 1, '2016-07-21 14:34:14'),
(148, '2193807564', 1, 1, 21, 'DENTAL FLOSS (TOOTHPICK)', 'DENTAL FLOSS (TOOTHPICK)', 'dental-floss-(toothpick)', 0, '', 195, 100, '', 'I000000532', '', '', 1, '2016-07-21 14:34:14'),
(149, '4293785601', 1, 1, 21, 'FOAM SPONGE (X10)', 'FOAM SPONGE (X10)', 'foam-sponge-(x10)', 0, '', 375, 210, '', '6922691705146', '', '', 1, '2016-07-21 14:34:14'),
(150, '1572680943', 1, 1, 21, 'IRON SPONGE (BIG)', 'IRON SPONGE (BIG)', 'iron-sponge-(big)', 0, '', 100, 37.5, '', 'I000000533', '', '', 1, '2016-07-21 14:34:14'),
(151, '1036892457', 1, 1, 21, 'NOVENA FOIL PAPER', 'NOVENA FOIL PAPER', 'novena-foil-paper', 0, '', 345, 208, '', '6953206100217', '', '', 1, '2016-07-21 14:34:14'),
(152, '1062849753', 1, 1, 23, 'PLANTAIN CHIPS', 'PLANTAIN CHIPS', 'plantain-chips', 0, '', 100, 80, '', 'I000000238', '', '', 1, '2016-07-21 14:34:14'),
(153, '5423691807', 1, 1, 3, 'DOVE  SOAP 100g', 'DOVE  SOAP 100g', 'dove--soap-100g', 0, '', 200, 138, '', 'I000000383', '', '', 1, '2016-07-21 14:34:14'),
(154, '5681390724', 1, 1, 3, 'DOVE BEAUTY CREAM BAR (4PCS) 100g', 'DOVE BEAUTY CREAM BAR (4PCS) 100g', 'dove-beauty-cream-bar-(4pcs)-100g', 0, '', 945, 700, '', '8000700000050', '', '', 1, '2016-07-21 14:34:14'),
(155, '6218037459', 1, 1, 3, 'DOVE BEAUTY CREAM BAR 100g', 'DOVE BEAUTY CREAM BAR 100g', 'dove-beauty-cream-bar-100g', 0, '', 250, 200, '', '8000700000005', '', '', 1, '2016-07-21 14:34:15'),
(156, '6204978531', 1, 1, 3, '33 CAN 33CL', '33 CAN 33CL', '33-can-33cl', 0, '', 150, 112.5, '', 'I000000385', '', '', 1, '2016-07-21 14:34:15'),
(157, '0947835162', 1, 1, 3, 'AFRO AMERICAN 125g', 'AFRO AMERICAN 125g', 'afro-american-125g', 0, '', 250, 183, '', 'I000000412', '', '', 1, '2016-07-21 14:34:15'),
(158, '7168509234', 1, 1, 3, 'ALDINE YOGHURT', 'ALDINE YOGHURT', 'aldine-yoghurt', 0, '', 120, 98, '', '6222050200078', '', '', 1, '2016-07-21 14:34:15'),
(159, '6273549018', 1, 1, 3, 'ALLINA  ORANGE CAKE 20GRM', 'ALLINA  ORANGE CAKE 20GRM', 'allina--orange-cake-20grm', 0, '', 720, 475, '', '6261149040010', '', '', 1, '2016-07-21 14:34:15'),
(160, '4759832061', 1, 1, 3, 'ALLINA  STRAWBERRY CAKE 20GRM', 'ALLINA  STRAWBERRY CAKE 20GRM', 'allina--strawberry-cake-20grm', 0, '', 720, 475, '', '6261149040041', '', '', 1, '2016-07-21 14:34:15'),
(161, '4780659312', 1, 1, 3, 'ALOMO BITTERS BOTTLE 750ML', 'ALOMO BITTERS BOTTLE 750ML', 'alomo-bitters-bottle-750ml', 0, '', 700, 600, '', '6034000083002', '', '', 1, '2016-07-21 14:34:15'),
(162, '1967485203', 1, 1, 3, 'AMPICILLIN 250g (2DOSE)', 'AMPICILLIN 250g (2DOSE)', 'ampicillin-250g-(2dose)', 0, '', 20, 10, '', '24659450', '', '', 1, '2016-07-21 14:34:15'),
(163, '1296345807', 1, 1, 3, 'ANDRE BRUT 750ML', 'ANDRE BRUT 750ML', 'andre-brut-750ml', 0, '', 2150, 1467, '', '85000007488', '', '', 1, '2016-07-21 14:34:15'),
(164, '5910673842', 1, 1, 3, 'ANDRE ROSE 750ML', 'ANDRE ROSE 750ML', 'andre-rose-750ml', 0, '', 2200, 1467, '', '85000007495', '', '', 1, '2016-07-21 14:34:15'),
(165, '9673012485', 1, 1, 3, 'APPLE HAIR FOOD - 100GMS', 'APPLE HAIR FOOD - 100GMS', 'apple-hair-food---100gms', 0, '', 200, 133, '', '6156000071565', '', '', 1, '2016-07-21 14:34:15'),
(166, '7154260398', 1, 1, 3, 'AQUAFINA BOTTLE WATER  1.5CL', 'AQUAFINA BOTTLE WATER  1.5CL', 'aquafina-bottle-water--1.5cl', 0, '', 100, 85, '', '6034000005417', '', '', 1, '2016-07-21 14:34:15'),
(167, '6984703152', 1, 1, 3, 'AQUAFINA BOTTLE WATER (PACK) 1.5CL', 'AQUAFINA BOTTLE WATER (PACK) 1.5CL', 'aquafina-bottle-water-(pack)-1.5cl', 0, '', 550, 500, '', 'I000000482', '', '', 1, '2016-07-21 14:34:15'),
(168, '4653098217', 1, 1, 3, 'AQUAFINA BOTTLE WATER (PACK) 75cl', 'AQUAFINA BOTTLE WATER (PACK) 75cl', 'aquafina-bottle-water-(pack)-75cl', 0, '', 550, 500, '', 'I000000475', '', '', 1, '2016-07-21 14:34:15'),
(169, '4819063527', 1, 1, 3, 'AQUAFINA BOTTLE WATER 75cl', 'AQUAFINA BOTTLE WATER 75cl', 'aquafina-bottle-water-75cl', 0, '', 50, 45, '', '6034000005424', '', '', 1, '2016-07-21 14:34:15'),
(170, '1407568329', 1, 1, 3, 'BARON ROMERO', 'BARON ROMERO', 'baron-romero', 0, '', 755, 516, '', 'I000000609', '', '', 1, '2016-07-21 14:34:15'),
(171, '4321685097', 1, 1, 3, 'BASMATI RICE (FOR DIABETICS) 5KG', 'BASMATI RICE (FOR DIABETICS) 5KG', 'basmati-rice-(for-diabetics)-5kg', 0, '', 4155, 3700, '', '8906000592052', '', '', 1, '2016-07-21 14:34:15'),
(172, '4392801765', 1, 1, 3, 'BASMATI RICE AEROPLANE 5KG', 'BASMATI RICE AEROPLANE 5KG', 'basmati-rice-aeroplane-5kg', 0, '', 3950, 3500, '', '8906004961984', '', '', 1, '2016-07-21 14:34:16'),
(173, '9025671348', 1, 1, 3, 'BASMATI RICE GOLDENSELLA  5KG', 'BASMATI RICE GOLDENSELLA  5KG', 'basmati-rice-goldensella--5kg', 0, '', 3950, 2925, '', '5029788164235', '', '', 1, '2016-07-21 14:34:16'),
(174, '4897120563', 1, 1, 3, 'BASMATI RICE PREMIUM 5KG', 'BASMATI RICE PREMIUM 5KG', 'basmati-rice-premium-5kg', 0, '', 3900, 3175, '', '5029788170793', '', '', 1, '2016-07-21 14:34:16'),
(175, '2750416398', 1, 1, 3, 'BEVA  RELAXER 250g', 'BEVA  RELAXER 250g', 'beva--relaxer-250g', 0, '', 250, 180, '', '6156000008493', '', '', 1, '2016-07-21 14:34:16'),
(176, '3206719458', 1, 1, 3, 'BIG PLASTIC CUPS (PACKX50)', 'BIG PLASTIC CUPS (PACKX50)', 'big-plastic-cups-(packx50)', 0, '', 1000, 300, '', 'I000000633', '', '', 1, '2016-07-21 14:34:16'),
(177, '5943687201', 1, 1, 3, 'BIG PLASTIC CUPS (PCS)', 'BIG PLASTIC CUPS (PCS)', 'big-plastic-cups-(pcs)', 0, '', 50, 6, '', 'I000000634', '', '', 1, '2016-07-21 14:34:16'),
(178, '2359841760', 1, 1, 3, 'BIG SODA', 'BIG SODA', 'big-soda', 0, '', 550, 335, '', '6926768519414', '', '', 1, '2016-07-21 14:34:16'),
(179, '5486013297', 1, 1, 3, 'BILLS GROUND RICE 1KG', 'BILLS GROUND RICE 1KG', 'bills-ground-rice-1kg', 0, '', 450, 320, '', 'I000000462', '', '', 1, '2016-07-21 14:34:16'),
(180, '4810293576', 1, 1, 3, 'BILLS GROUND RICE 2KG', 'BILLS GROUND RICE 2KG', 'bills-ground-rice-2kg', 0, '', 850, 720, '', 'I000000461', '', '', 1, '2016-07-21 14:34:16'),
(181, '5289430617', 1, 1, 3, 'BIRDS CUSTARD', 'BIRDS CUSTARD', 'birds-custard', 0, '', 1250, 600, '', '5000354701047', '', '', 1, '2016-07-21 14:34:16'),
(182, '7813502496', 1, 1, 3, 'BIRO BLUE', 'BIRO BLUE', 'biro-blue', 0, '', 20, 15.16, '', '6156000055541', '', '', 1, '2016-07-21 14:34:16'),
(183, '0314589762', 1, 1, 3, 'BLOSSOM WHITE SKIN LIGHTENING SOAP', 'BLOSSOM WHITE SKIN LIGHTENING SOAP', 'blossom-white-skin-lightening-soap', 0, '', 120, 83, '', '8994590000101', '', '', 1, '2016-07-21 14:34:16'),
(184, '3960185472', 1, 1, 3, 'BLUE BOAT FULL CREAM 1 LTR', 'BLUE BOAT FULL CREAM 1 LTR', 'blue-boat-full-cream-1-ltr', 0, '', 480, 360, '', '6153400043215', '', '', 1, '2016-07-21 14:34:16'),
(185, '8679453120', 1, 1, 3, 'BLUE DIAMOND CAMPHOR - 360G', 'BLUE DIAMOND CAMPHOR - 360G', 'blue-diamond-camphor---360g', 0, '', 315, 220, '', '6151100040664', '', '', 1, '2016-07-21 14:34:16'),
(186, '8035769412', 1, 1, 3, 'BLUE DIAMOND CAMPHOR - 500G', 'BLUE DIAMOND CAMPHOR - 500G', 'blue-diamond-camphor---500g', 0, '', 320, 220, '', '6151100040626', '', '', 1, '2016-07-21 14:34:16'),
(187, '3698107254', 1, 1, 3, 'BOUNTY CHOCOLATE 57G', 'BOUNTY CHOCOLATE 57G', 'bounty-chocolate-57g', 0, '', 150, 117, '', '40111216', '', '', 1, '2016-07-21 14:34:16'),
(188, '7153802964', 1, 1, 3, 'BOURNVITA TIN - 400G', 'BOURNVITA TIN - 400G', 'bournvita-tin---400g', 0, '', 840, 700, '', '7622210492081', '', '', 1, '2016-07-21 14:34:16'),
(189, '2379845160', 1, 1, 3, 'BOURNVITA TIN - 500G', 'BOURNVITA TIN - 500G', 'bournvita-tin---500g', 0, '', 800, 650, '', 'I000000302', '', '', 1, '2016-07-21 14:34:16'),
(190, '3167248095', 1, 1, 3, 'BOURNVITA TIN -OLD 900G', 'BOURNVITA TIN -OLD 900G', 'bournvita-tin--old-900g', 0, '', 1420, 1183, '', '5000201801418', '', '', 1, '2016-07-21 14:34:16'),
(191, '0986354172', 1, 1, 3, 'BOURNVITA TIN NEW- 900G', 'BOURNVITA TIN NEW- 900G', 'bournvita-tin-new--900g', 0, '', 1450, 1200, '', '7622210492135', '', '', 1, '2016-07-21 14:34:16'),
(192, '8245031796', 1, 1, 3, 'BUTTER SHORTBREAD', 'BUTTER SHORTBREAD', 'butter-shortbread', 0, '', 350, 185, '', '4892655905009', '', '', 1, '2016-07-21 14:34:16'),
(193, '1397485062', 1, 1, 3, 'CABIN BISCUIT', 'CABIN BISCUIT', 'cabin-biscuit', 0, '', 200, 170, '', '6156000106809', '', '', 1, '2016-07-21 14:34:17'),
(194, '4976182035', 1, 1, 3, 'CAKYLICIOUS BREAD BIG', 'CAKYLICIOUS BREAD BIG', 'cakylicious-bread-big', 0, '', 100, 80, '', 'I000000468', '', '', 1, '2016-07-21 14:34:17'),
(195, '0254693817', 1, 1, 3, 'CAKYLICIOUS BREAD SMALL', 'CAKYLICIOUS BREAD SMALL', 'cakylicious-bread-small', 0, '', 60, 50, '', 'I000000467', '', '', 1, '2016-07-21 14:34:17'),
(196, '0954371286', 1, 1, 3, 'CAMAY SOAP - 175G', 'CAMAY SOAP - 175G', 'camay-soap---175g', 0, '', 180, 150, '', '4015600698928', '', '', 1, '2016-07-21 14:34:17'),
(197, '4219806375', 1, 1, 3, 'CAR WASH', 'CAR WASH', 'car-wash', 0, '', 550, 430, '', 'I000000247', '', '', 1, '2016-07-21 14:34:17'),
(198, '4135286907', 1, 1, 3, 'CARETIMES RELAXER 250g', 'CARETIMES RELAXER 250g', 'caretimes-relaxer-250g', 0, '', 180, 140, '', '6156000030111', '', '', 1, '2016-07-21 14:34:17'),
(199, '5942031786', 1, 1, 3, 'CARO WHITE (CUP) - 120ML', 'CARO WHITE (CUP) - 120ML', 'caro-white-(cup)---120ml', 0, '', 250, 170, '', 'I000000223', '', '', 1, '2016-07-21 14:34:17'),
(200, '1925063478', 1, 1, 3, 'CARO WHITE (OIL) - 25ML', 'CARO WHITE (OIL) - 25ML', 'caro-white-(oil)---25ml', 0, '', 220, 170, '', 'I000000225', '', '', 1, '2016-07-21 14:34:17'),
(201, '6293178504', 1, 1, 3, 'CARO WHITE (TUBE) - 25G', 'CARO WHITE (TUBE) - 25G', 'caro-white-(tube)---25g', 0, '', 200, 127.5, '', 'I000000235', '', '', 1, '2016-07-21 14:34:17'),
(202, '1637958204', 1, 1, 3, 'CARO WHITE CUP B/S - 500ML', 'CARO WHITE CUP B/S - 500ML', 'caro-white-cup-b/s---500ml', 0, '', 700, 520, '', '6181100530049', '', '', 1, '2016-07-21 14:34:17'),
(203, '6814537902', 1, 1, 3, 'CARO WHITE CUP M/S - 300ML', 'CARO WHITE CUP M/S - 300ML', 'caro-white-cup-m/s---300ml', 0, '', 420, 350, '', '6181100530018', '', '', 1, '2016-07-21 14:34:17'),
(204, '1598726430', 1, 1, 3, 'CARO WHITE LOTION M/S - 300ML', 'CARO WHITE LOTION M/S - 300ML', 'caro-white-lotion-m/s---300ml', 0, '', 535, 450, '', '6181100530020', '', '', 1, '2016-07-21 14:34:17'),
(205, '4768592310', 1, 1, 3, 'CARO WHITE LOTION S/S - 200ML', 'CARO WHITE LOTION S/S - 200ML', 'caro-white-lotion-s/s---200ml', 0, '', 455, 350, '', '6181100530025', '', '', 1, '2016-07-21 14:34:17'),
(206, '0629374581', 1, 1, 3, 'CARO WHITE SOAP 180G', 'CARO WHITE SOAP 180G', 'caro-white-soap-180g', 0, '', 300, 233, '', '6181100530094', '', '', 1, '2016-07-21 14:34:17'),
(207, '6395420871', 1, 1, 3, 'CAROTONE CREAM', 'CAROTONE CREAM', 'carotone-cream', 0, '', 550, 400, '', 'I000000363', '', '', 1, '2016-07-21 14:34:17'),
(208, '8792463105', 1, 1, 3, 'CERELAC - HONEY & WHEAT WITH MILK (12 MONTHS) 400G', 'CERELAC - HONEY & WHEAT WITH MILK (12 MONTHS) 400G', 'cerelac---honey-&-wheat-with-milk-(12-months)-400g', 0, '', 1225, 1025, '', '7616100756865', '', '', 1, '2016-07-21 14:34:17'),
(209, '1804937625', 1, 1, 3, 'CERELAC - MIXED FRUIT & WHEAT WITH MILK (8-MONTHS) 400G', 'CERELAC - MIXED FRUIT & WHEAT WITH MILK (8-MONTHS) 400G', 'cerelac---mixed-fruit-&-wheat-with-milk-(8-months)', 0, '', 1225, 1025, '', '8410100181509', '', '', 1, '2016-07-21 14:34:17'),
(210, '0347251698', 1, 1, 3, 'CERELAC - RICE WITH MILK (6-MONTHS) 400G', 'CERELAC - RICE WITH MILK (6-MONTHS) 400G', 'cerelac---rice-with-milk-(6-months)-400g', 0, '', 1225, 1025, '', '7616100046539', '', '', 1, '2016-07-21 14:34:17'),
(211, '3928147506', 1, 1, 3, 'CERELAC 12 MONTH 1KG', 'CERELAC 12 MONTH 1KG', 'cerelac-12-month-1kg', 0, '', 2500, 2250, '', '7616100581535', '', '', 1, '2016-07-21 14:34:17'),
(212, '6905428173', 1, 1, 3, 'CERELAC MIXED FRUIT & WHEAT (8-MONTHS) 1KG', 'CERELAC MIXED FRUIT & WHEAT (8-MONTHS) 1KG', 'cerelac-mixed-fruit-&-wheat-(8-months)-1kg', 0, '', 2500, 2250, '', '8410100181523', '', '', 1, '2016-07-21 14:34:17'),
(213, '3927048561', 1, 1, 3, 'CERELAC RICE & MAIZE WITH MILK (6-MONTHS) 400G', 'CERELAC RICE & MAIZE WITH MILK (6-MONTHS) 400G', 'cerelac-rice-&-maize-with-milk-(6-months)-400g', 0, '', 1225, 1025, '', '7613031471898', '', '', 1, '2016-07-21 14:34:17'),
(214, '8039654172', 1, 1, 3, 'CERELAC WHEAT WITH MILK (6-MONTHS) 1KG', 'CERELAC WHEAT WITH MILK (6-MONTHS) 1KG', 'cerelac-wheat-with-milk-(6-months)-1kg', 0, '', 2500, 2250, '', '8410100099095', '', '', 1, '2016-07-21 14:34:17'),
(215, '3478269015', 1, 1, 3, 'CERES 255ML', 'CERES 255ML', 'ceres-255ml', 0, '', 350, 250, '', '6001240222737', '', '', 1, '2016-07-21 14:34:18'),
(216, '7319268405', 1, 1, 3, 'CHAMDOR 750ML', 'CHAMDOR 750ML', 'chamdor-750ml', 0, '', 1955, 1166, '', '6001495080106', '', '', 1, '2016-07-21 14:34:18'),
(217, '2360548971', 1, 1, 3, 'CHECKERS CUSTARD POWDER 400G', 'CHECKERS CUSTARD POWDER 400G', 'checkers-custard-powder-400g', 0, '', 415, 300, '', '6152110065975', '', '', 1, '2016-07-21 14:34:18'),
(218, '1652038974', 1, 1, 3, 'CHEERIOS', 'CHEERIOS', 'cheerios', 0, '', 1050, 980, '', '7613034160188', '', '', 1, '2016-07-21 14:34:18'),
(219, '1526734908', 1, 1, 3, 'CHEESE SPREAD', 'CHEESE SPREAD', 'cheese-spread', 0, '', 320, 250, '', '3073780886840', '', '', 1, '2016-07-21 14:34:18'),
(220, '4105938672', 1, 1, 3, 'CHERRY JAM 450G', 'CHERRY JAM 450G', 'cherry-jam-450g', 0, '', 595, 475, '', '8710812092422', '', '', 1, '2016-07-21 14:34:18'),
(221, '5732941806', 1, 1, 3, 'CHICHOC CHOCOLATE 25G', 'CHICHOC CHOCOLATE 25G', 'chichoc-chocolate-25g', 0, '', 100, 69, '', '6908004213027', '', '', 1, '2016-07-21 14:34:18'),
(222, '7916384250', 1, 1, 3, 'CHIN CHIN', 'CHIN CHIN', 'chin-chin', 0, '', 20, 15, '', '6156000099323', '', '', 1, '2016-07-21 14:34:18'),
(223, '1468392075', 1, 1, 3, 'CHOCO CAKE BISCUIT', 'CHOCO CAKE BISCUIT', 'choco-cake-biscuit', 0, '', 100, 105, '', '26261149137093', '', '', 1, '2016-07-21 14:34:18'),
(224, '1834706295', 1, 1, 3, 'CHOCOLATE COOKIES', 'CHOCOLATE COOKIES', 'chocolate-cookies', 0, '', 620, 467, '', '6008129009984', '', '', 1, '2016-07-21 14:34:18'),
(225, '2390687451', 1, 1, 3, 'CLAIRLISS', 'CLAIRLISS', 'clairliss', 0, '', 180, 140, '', 'I000000224', '', '', 1, '2016-07-21 14:34:18'),
(226, '8629735140', 1, 1, 3, 'CLAIRLISS CUP - 330ML', 'CLAIRLISS CUP - 330ML', 'clairliss-cup---330ml', 0, '', 350, 270, '', '6181100320305', '', '', 1, '2016-07-21 14:34:18'),
(227, '9172843056', 1, 1, 3, 'CLASSIC CAKE', 'CLASSIC CAKE', 'classic-cake', 0, '', 50, 40, '', '6151100058706', '', '', 1, '2016-07-21 14:34:18'),
(228, '2604179835', 1, 1, 3, 'CLASSIC WHITE SOAP', 'CLASSIC WHITE SOAP', 'classic-white-soap', 0, '', 100, 67, '', '8993286421206', '', '', 1, '2016-07-21 14:34:18'),
(229, '1358796204', 1, 1, 3, 'CLINIC CLEAR SOAP 225G', 'CLINIC CLEAR SOAP 225G', 'clinic-clear-soap-225g', 0, '', 350, 150, '', '6181100282801', '', '', 1, '2016-07-21 14:34:18'),
(230, '1427863590', 1, 1, 3, 'CLINIC CLEAR WHITENING BODY LOTION 500ML', 'CLINIC CLEAR WHITENING BODY LOTION 500ML', 'clinic-clear-whitening-body-lotion-500ml', 0, '', 800, 500, '', '6181100284225', '', '', 1, '2016-07-21 14:34:18'),
(231, '2973601458', 1, 1, 3, 'CLOSEUP RED HOT 60G', 'CLOSEUP RED HOT 60G', 'closeup-red-hot-60g', 0, '', 120, 95, '', '6151100130440', '', '', 1, '2016-07-21 14:34:18'),
(232, '5617908243', 1, 1, 3, 'COCONUT MILK 400ML', 'COCONUT MILK 400ML', 'coconut-milk-400ml', 0, '', 320, 225, '', '8858808981142', '', '', 1, '2016-07-21 14:34:18'),
(233, '8512796430', 1, 1, 3, 'COFFEE MATE NESTLE 400G', 'COFFEE MATE NESTLE 400G', 'coffee-mate-nestle-400g', 0, '', 850, 714, '', '8850124011053', '', '', 1, '2016-07-21 14:34:18'),
(234, '0619738452', 1, 1, 3, 'COLGATE TOOTH BRUSH', 'COLGATE TOOTH BRUSH', 'colgate-tooth-brush', 0, '', 150, 71, '', 'I000000288', '', '', 1, '2016-07-21 14:34:18'),
(235, '7046281395', 1, 1, 3, 'COLGATE TOOTH PASTE (HERBAL) 75ML', 'COLGATE TOOTH PASTE (HERBAL) 75ML', 'colgate-tooth-paste-(herbal)-75ml', 0, '', 280, 183.33, '', '6001067021452', '', '', 1, '2016-07-21 14:34:18'),
(236, '7562183409', 1, 1, 3, 'COLGATE TOOTH PASTE (MAX FRESH - COOLING CRYSTAL) 100ML', 'COLGATE TOOTH PASTE (MAX FRESH - COOLING CRYSTAL) 100ML', 'colgate-tooth-paste-(max-fresh---cooling-crystal)-', 0, '', 280, 183.33, '', '8901314115010', '', '', 1, '2016-07-21 14:34:19'),
(237, '8945736120', 1, 1, 3, 'COLGATE TOOTH PASTE (MAX FRESH) 100ML', 'COLGATE TOOTH PASTE (MAX FRESH) 100ML', 'colgate-tooth-paste-(max-fresh)-100ml', 0, '', 280, 208, '', '6920354813443', '', '', 1, '2016-07-21 14:34:19'),
(238, '1397546082', 1, 1, 3, 'COLGATE TOOTH PASTE (MAXIMUM CAVITY PROTECTION) 100ML', 'COLGATE TOOTH PASTE (MAXIMUM CAVITY PROTECTION) 100ML', 'colgate-tooth-paste-(maximum-cavity-protection)-10', 0, '', 280, 183.33, '', '6001067003472', '', '', 1, '2016-07-21 14:34:19'),
(239, '1654879203', 1, 1, 3, 'COLGATE TOOTH PASTE (SENSITIVE WHITENING) 75ML', 'COLGATE TOOTH PASTE (SENSITIVE WHITENING) 75ML', 'colgate-tooth-paste-(sensitive-whitening)-75ml', 0, '', 650, 487.5, '', '8850006340486', '', '', 1, '2016-07-21 14:34:19'),
(240, '5298407136', 1, 1, 3, 'COLGATE TOOTH PASTE (TOTAL) 75ML', 'COLGATE TOOTH PASTE (TOTAL) 75ML', 'colgate-tooth-paste-(total)-75ml', 0, '', 500, 358, '', '8850006326176', '', '', 1, '2016-07-21 14:34:19'),
(241, '0432956178', 1, 1, 3, 'COLGATE TOOTH PASTE 133g', 'COLGATE TOOTH PASTE 133g', 'colgate-tooth-paste-133g', 0, '', 220, 183.33, '', '69203548143', '', '', 1, '2016-07-21 14:34:19'),
(242, '2684537190', 1, 1, 3, 'COLOMBINA WAFER (CAPRI) 288G', 'COLOMBINA WAFER (CAPRI) 288G', 'colombina-wafer-(capri)-288g', 0, '', 400, 320, '', '7702011003607', '', '', 1, '2016-07-21 14:34:19'),
(243, '4291873065', 1, 1, 3, 'COLOMBINA WAFER 288G', 'COLOMBINA WAFER 288G', 'colombina-wafer-288g', 0, '', 400, 320, '', '7702011105769', '', '', 1, '2016-07-21 14:34:19'),
(244, '9162048753', 1, 1, 3, 'COLOURED SERVIETTE', 'COLOURED SERVIETTE', 'coloured-serviette', 0, '', 165, 81, '', '6153400210594', '', '', 1, '2016-07-21 14:34:19'),
(245, '2916780354', 1, 1, 3, 'COOKIES', 'COOKIES', 'cookies', 0, '', 50, 45, '', 'I000000380', '', '', 1, '2016-07-21 14:34:19'),
(246, '6834905172', 1, 1, 3, 'CORNED BEEF (ARGENTINA)', 'CORNED BEEF (ARGENTINA)', 'corned-beef-(argentina)', 0, '', 880, 500, '', '7790360967152', '', '', 1, '2016-07-21 14:34:19'),
(247, '6258493107', 1, 1, 3, 'CORNED BEEF (BRAZIL) 340G', 'CORNED BEEF (BRAZIL) 340G', 'corned-beef-(brazil)-340g', 0, '', 500, 350, '', 'I000000345', '', '', 1, '2016-07-21 14:34:19'),
(248, '0597348612', 1, 1, 3, 'CORNED BEEF (FRANCE) 200G', 'CORNED BEEF (FRANCE) 200G', 'corned-beef-(france)-200g', 0, '', 420, 350, '', '3173820003258', '', '', 1, '2016-07-21 14:34:19'),
(249, '4793581062', 1, 1, 3, 'CORONA WAVE TOOTH BRUSH', 'CORONA WAVE TOOTH BRUSH', 'corona-wave-tooth-brush', 0, '', 150, 71, '', '8998778241010', '', '', 1, '2016-07-21 14:34:19'),
(250, '6528174039', 1, 1, 3, 'COTTON BUD (DORIA)', 'COTTON BUD (DORIA)', 'cotton-bud-(doria)', 0, '', 100, 42, '', 'I000000473', '', '', 1, '2016-07-21 14:34:19'),
(251, '2387049561', 1, 1, 3, 'COTTON WOOL 100G', 'COTTON WOOL 100G', 'cotton-wool-100g', 0, '', 100, 60, '', 'I000000349', '', '', 1, '2016-07-21 14:34:19'),
(252, '8560192473', 1, 1, 3, 'COTTON WOOL 50G', 'COTTON WOOL 50G', 'cotton-wool-50g', 0, '', 50, 35, '', 'I000000466', '', '', 1, '2016-07-21 14:34:19'),
(253, '4520938671', 1, 1, 3, 'CURRY POWDER', 'CURRY POWDER', 'curry-powder', 0, '', 100, 75, '', '5010285115226', '', '', 1, '2016-07-21 14:34:19'),
(254, '1690423758', 1, 1, 3, 'CURRY POWDER', 'CURRY POWDER', 'curry-powder', 0, '', 125, 100, '', '3275920039165', '', '', 1, '2016-07-21 14:34:19'),
(255, '7153048926', 1, 1, 3, 'CUSTARD CREAM BISCUIT', 'CUSTARD CREAM BISCUIT', 'custard-cream-biscuit', 0, '', 30, 20, '', 'I000000329', '', '', 1, '2016-07-21 14:34:19'),
(256, '6012459738', 1, 1, 3, 'CWAY FRUIT DRINK - APPLE', 'CWAY FRUIT DRINK - APPLE', 'cway-fruit-drink---apple', 0, '', 150, 79, '', '6153400206023', '', '', 1, '2016-07-21 14:34:20'),
(257, '7213045698', 1, 1, 3, 'CWAY FRUIT DRINK - PEACH', 'CWAY FRUIT DRINK - PEACH', 'cway-fruit-drink---peach', 0, '', 100, 79, '', '6153400206030', '', '', 1, '2016-07-21 14:34:20'),
(258, '0863271549', 1, 1, 3, 'DAMATOL HAIR CREAM', 'DAMATOL HAIR CREAM', 'damatol-hair-cream', 0, '', 285, 216, '', '6156000118239', '', '', 1, '2016-07-21 14:34:20'),
(259, '9801257643', 1, 1, 3, 'DANGOTE SPAGETTI', 'DANGOTE SPAGETTI', 'dangote-spagetti', 0, '', 165, 140, '', '6009647790026', '', '', 1, '2016-07-21 14:34:20'),
(260, '2863401957', 1, 1, 3, 'DANGOTE SUGAR 250G', 'DANGOTE SUGAR 250G', 'dangote-sugar-250g', 0, '', 100, 53, '', '6156000061009', '', '', 1, '2016-07-21 14:34:20'),
(261, '8420369751', 1, 1, 3, 'DANGOTE SUGAR 500G', 'DANGOTE SUGAR 500G', 'dangote-sugar-500g', 0, '', 180, 100, '', '6156000061016', '', '', 1, '2016-07-21 14:34:20'),
(262, '5319428607', 1, 1, 3, 'DEEMAH BISCUIT', 'DEEMAH BISCUIT', 'deemah-biscuit', 0, '', 100, 90, '', '776992010159', '', '', 1, '2016-07-21 14:34:20'),
(263, '3617428950', 1, 1, 3, 'DETTOL SKIN JELLY - 80G', 'DETTOL SKIN JELLY - 80G', 'dettol-skin-jelly---80g', 0, '', 260, 225, '', 'I000000298', '', '', 1, '2016-07-21 14:34:20'),
(264, '6437105982', 1, 1, 3, 'DIGESTIVE BISCUIT 104G', 'DIGESTIVE BISCUIT 104G', 'digestive-biscuit-104g', 0, '', 125, 47, '', '5000396029727', '', '', 1, '2016-07-21 14:34:20'),
(265, '2749861305', 1, 1, 3, 'DIGESTIVE CHOCOLATE BISCUIT 200G', 'DIGESTIVE CHOCOLATE BISCUIT 200G', 'digestive-chocolate-biscuit-200g', 0, '', 620, 416, '', '5000396014822', '', '', 1, '2016-07-21 14:34:20'),
(266, '3867942015', 1, 1, 3, 'DIGESTIVE DEEMAH BISCUIT', 'DIGESTIVE DEEMAH BISCUIT', 'digestive-deemah-biscuit', 0, '', 300, 200, '', 'I000000417', '', '', 1, '2016-07-21 14:34:20'),
(267, '5208619347', 1, 1, 3, 'DODO WHITE UP LOTION 250ML', 'DODO WHITE UP LOTION 250ML', 'dodo-white-up-lotion-250ml', 0, '', 550, 300, '', '6181100283051', '', '', 1, '2016-07-21 14:34:20'),
(268, '5819307642', 1, 1, 3, 'DODO WHITE UP SOAP 250ML', 'DODO WHITE UP SOAP 250ML', 'dodo-white-up-soap-250ml', 0, '', 550, 300, '', '6181100283099', '', '', 1, '2016-07-21 14:34:20'),
(269, '9231457860', 1, 1, 3, 'DORCO SHAVING STICK', 'DORCO SHAVING STICK', 'dorco-shaving-stick', 0, '', 50, 40, '', '8801038567105', '', '', 1, '2016-07-21 14:34:20'),
(270, '0932451867', 1, 1, 3, 'DORCO SHAVING STICK 5IN1', 'DORCO SHAVING STICK 5IN1', 'dorco-shaving-stick-5in1', 0, '', 160, 80, '', '8801038562599', '', '', 1, '2016-07-21 14:34:20'),
(271, '0238761954', 1, 1, 3, 'DR MILK', 'DR MILK', 'dr-milk', 0, '', 5, 3.75, '', 'I000000334', '', '', 1, '2016-07-21 14:34:20'),
(272, '7962308451', 1, 1, 3, 'DRIED THYME', 'DRIED THYME', 'dried-thyme', 0, '', 100, 67, '', 'I000000262', '', '', 1, '2016-07-21 14:34:20'),
(273, '2845961370', 1, 1, 3, 'DRIED THYME', 'DRIED THYME', 'dried-thyme', 0, '', 125, 100, '', '3275920039158', '', '', 1, '2016-07-21 14:34:20'),
(274, '2184537906', 1, 1, 3, 'DRIED THYME', 'DRIED THYME', 'dried-thyme', 0, '', 100, 75, '', '5010285157394', '', '', 1, '2016-07-21 14:34:20'),
(275, '0385714962', 1, 1, 3, 'DUDU FRUITS DRINKS 500ML', 'DUDU FRUITS DRINKS 500ML', 'dudu-fruits-drinks-500ml', 0, '', 100, 62.05, '', '6034000108071', '', '', 1, '2016-07-21 14:34:20'),
(276, '5394087126', 1, 1, 3, 'DUDU OSUN', 'DUDU OSUN', 'dudu-osun', 0, '', 180, 141, '', '6156000043708', '', '', 1, '2016-07-21 14:34:20'),
(277, '7214693085', 1, 1, 3, 'DURACELL AA2', 'DURACELL AA2', 'duracell-aa2', 0, '', 175, 125, '', '5000394096004', '', '', 1, '2016-07-21 14:34:20'),
(278, '1297038456', 1, 1, 3, 'DURACELL AA4', 'DURACELL AA4', 'duracell-aa4', 0, '', 340, 230, '', '55000394096011', '', '', 1, '2016-07-21 14:34:21'),
(279, '9086534127', 1, 1, 3, 'DURACELL AAA2', 'DURACELL AAA2', 'duracell-aaa2', 0, '', 165, 130, '', '5000394096196', '', '', 1, '2016-07-21 14:34:21'),
(280, '7968351402', 1, 1, 3, 'DURACELL AAA4', 'DURACELL AAA4', 'duracell-aaa4', 0, '', 300, 230, '', '5000394097858', '', '', 1, '2016-07-21 14:34:21'),
(281, '3592874601', 1, 1, 3, 'DUREX CONDOM (EXTRA SAFE)', 'DUREX CONDOM (EXTRA SAFE)', 'durex-condom-(extra-safe)', 0, '', 300, 250, '', '5010232965096', '', '', 1, '2016-07-21 14:34:21'),
(282, '8321054679', 1, 1, 3, 'DUREX CONDOM (FETHERLITE ELITE)', 'DUREX CONDOM (FETHERLITE ELITE)', 'durex-condom-(fetherlite-elite)', 0, '', 300, 250, '', '5038483574447', '', '', 1, '2016-07-21 14:34:21'),
(283, '6419257083', 1, 1, 3, 'DUREX CONDOM (FETHERLITE)', 'DUREX CONDOM (FETHERLITE)', 'durex-condom-(fetherlite)', 0, '', 300, 250, '', '5010232953994', '', '', 1, '2016-07-21 14:34:21'),
(284, '2613085497', 1, 1, 3, 'DUREX CONDOM (SELECT FLAVORS)', 'DUREX CONDOM (SELECT FLAVORS)', 'durex-condom-(select-flavors)', 0, '', 300, 250, '', '5052197004281', '', '', 1, '2016-07-21 14:34:21'),
(285, '1634970285', 1, 1, 3, 'DUST BIN BAG', 'DUST BIN BAG', 'dust-bin-bag', 0, '', 350, 250, '', '6156000075211', '', '', 1, '2016-07-21 14:34:21'),
(286, '8592471630', 1, 1, 3, 'DUSTIN POWDER (BIG) 200G', 'DUSTIN POWDER (BIG) 200G', 'dustin-powder-(big)-200g', 0, '', 250, 160, '', 'I000000325', '', '', 1, '2016-07-21 14:34:21'),
(287, '9512836407', 1, 1, 3, 'DUSTIN POWDER (SMALL) 200G', 'DUSTIN POWDER (SMALL) 200G', 'dustin-powder-(small)-200g', 0, '', 150, 117, '', 'I000000491', '', '', 1, '2016-07-21 14:34:21');
INSERT INTO `tblproducts` (`id`, `sku`, `category_id`, `subcategory_id`, `supplier_id`, `name`, `description`, `slug`, `flat_discount`, `percent_discount`, `selling_price`, `cost_price`, `image`, `barcode1`, `barcode2`, `barcode3`, `status`, `created`) VALUES
(288, '2935176804', 1, 1, 3, 'EBONY RELAXER M/S', 'EBONY RELAXER M/S', 'ebony-relaxer-m/s', 0, '', 180, 140, '', 'I000000428', '', '', 1, '2016-07-21 14:34:21'),
(289, '7196832054', 1, 1, 3, 'EBONY RELAXER M/S', 'EBONY RELAXER M/S', 'ebony-relaxer-m/s', 0, '', 220, 170, '', 'I000000429', '', '', 1, '2016-07-21 14:34:21'),
(290, '6750932841', 1, 1, 3, 'EPIDERM CREAM 30g', 'EPIDERM CREAM 30g', 'epiderm-cream-30g', 0, '', 250, 230, '', '8902292002323', '', '', 1, '2016-07-21 14:34:21'),
(291, '8513297460', 1, 1, 3, 'ESSENTIAL BALM', 'ESSENTIAL BALM', 'essential-balm', 0, '', 30, 17, '', 'I000000390', '', '', 1, '2016-07-21 14:34:21'),
(292, '4017953862', 1, 1, 3, 'EVA SOAP (CLASSIC)', 'EVA SOAP (CLASSIC)', 'eva-soap-(classic)', 0, '', 150, 120, '', '6154000005009', '', '', 1, '2016-07-21 14:34:22'),
(293, '1803296457', 1, 1, 3, 'EVA SOAP (GOLD)', 'EVA SOAP (GOLD)', 'eva-soap-(gold)', 0, '', 150, 120, '', '6154000005047', '', '', 1, '2016-07-21 14:34:22'),
(294, '5602149378', 1, 1, 3, 'EVA WINE 750ML', 'EVA WINE 750ML', 'eva-wine-750ml', 0, '', 680, 559, '', '8410635024043', '', '', 1, '2016-07-21 14:34:22'),
(295, '6129547380', 1, 1, 3, 'EXTRA WAFER - BANANA', 'EXTRA WAFER - BANANA', 'extra-wafer---banana', 0, '', 380, 253, '', '6261149030172', '', '', 1, '2016-07-21 14:34:22'),
(296, '0268917534', 1, 1, 3, 'EXTRA WAFER - CHOCOLATE', 'EXTRA WAFER - CHOCOLATE', 'extra-wafer---chocolate', 0, '', 380, 253, '', '6261149030196', '', '', 1, '2016-07-21 14:34:22'),
(297, '4136275908', 1, 1, 3, 'EXTRA WAFER - ORANGE', 'EXTRA WAFER - ORANGE', 'extra-wafer---orange', 0, '', 380, 253, '', '6261149030165', '', '', 1, '2016-07-21 14:34:22'),
(298, '2673498051', 1, 1, 3, 'EXTRA WAFER - STRAWBERRY', 'EXTRA WAFER - STRAWBERRY', 'extra-wafer---strawberry', 0, '', 380, 253, '', '6261149030189', '', '', 1, '2016-07-21 14:34:22'),
(299, '8426510379', 1, 1, 3, 'EXTRACT SOAP 125g', 'EXTRACT SOAP 125g', 'extract-soap-125g', 0, '', 350, 300, '', 'I000000411', '', '', 1, '2016-07-21 14:34:22'),
(300, '2650831479', 1, 1, 3, 'EXTRAJOSS ENERGY DRINK', 'EXTRAJOSS ENERGY DRINK', 'extrajoss-energy-drink', 0, '', 50, 22, '', 'I000000347', '', '', 1, '2016-07-21 14:34:22'),
(301, '6537901248', 1, 1, 3, 'FACE CLEANSER BABYFACE', 'FACE CLEANSER BABYFACE', 'face-cleanser-babyface', 0, '', 350, 316, '', '4809010740816', '', '', 1, '2016-07-21 14:34:22'),
(302, '5910832746', 1, 1, 3, 'FACE CLEANSER BABYFACE', 'FACE CLEANSER BABYFACE', 'face-cleanser-babyface', 0, '', 350, 316, '', '4809010740076', '', '', 1, '2016-07-21 14:34:22'),
(303, '0316972854', 1, 1, 3, 'FINEST YOGHURT', 'FINEST YOGHURT', 'finest-yoghurt', 0, '', 120, 83, '', 'I000000418', '', '', 1, '2016-07-21 14:34:22'),
(304, '0485731269', 1, 1, 3, 'FLAKE TUNA FISH 170G', 'FLAKE TUNA FISH 170G', 'flake-tuna-fish-170g', 0, '', 0, 0, '', '50290833', '', '', 1, '2016-07-21 14:34:22'),
(305, '3789526410', 1, 1, 3, 'FOIL PAPER', 'FOIL PAPER', 'foil-paper', 0, '', 400, 250, '', 'I000000303', '', '', 1, '2016-07-21 14:34:22'),
(306, '6401293875', 1, 1, 3, 'FRESH CHEWING GUM', 'FRESH CHEWING GUM', 'fresh-chewing-gum', 0, '', 20, 7, '', 'I000000352', '', '', 1, '2016-07-21 14:34:22'),
(307, '4265980317', 1, 1, 3, 'FRESH SAFETY MATCHES', 'FRESH SAFETY MATCHES', 'fresh-safety-matches', 0, '', 100, 50, '', 'I000000540', '', '', 1, '2016-07-21 14:34:22'),
(308, '2918063574', 1, 1, 3, 'FRESH SAFETY MATCHES', 'FRESH SAFETY MATCHES', 'fresh-safety-matches', 0, '', 100, 50, '', '5050020001070', '', '', 1, '2016-07-21 14:34:22'),
(309, '1902783456', 1, 1, 3, 'FRUTTA ORANGE JUICE', 'FRUTTA ORANGE JUICE', 'frutta-orange-juice', 0, '', 280, 225, '', '6009822860032', '', '', 1, '2016-07-21 14:34:22'),
(310, '6105784293', 1, 1, 3, 'FUFU FLOUR', 'FUFU FLOUR', 'fufu-flour', 0, '', 400, 320, '', 'I000000451', '', '', 1, '2016-07-21 14:34:22'),
(311, '6528341097', 1, 1, 3, 'FUNBACT SOAP', 'FUNBACT SOAP', 'funbact-soap', 0, '', 250, 150, '', '8906009234085', '', '', 1, '2016-07-21 14:34:22'),
(312, '4680321597', 1, 1, 3, 'FUNBACT-A TRIPLE ACTION CREAM - 30G', 'FUNBACT-A TRIPLE ACTION CREAM - 30G', 'funbact-a-triple-action-cream---30g', 0, '', 200, 167, '', '8906009234083', '', '', 1, '2016-07-21 14:34:23'),
(313, '6490513278', 1, 1, 3, 'GEISHA', 'GEISHA', 'geisha', 0, '', 150, 136, '', '8852707200144', '', '', 1, '2016-07-21 14:34:23'),
(314, '5968403712', 1, 1, 3, 'GHANA MUST GO (BIG)', 'GHANA MUST GO (BIG)', 'ghana-must-go-(big)', 0, '', 450, 243.33, '', 'I000000014', '', '', 1, '2016-07-21 14:34:23'),
(315, '7956102834', 1, 1, 3, 'GOOD MORNING POWER BREAKFAST 60G', 'GOOD MORNING POWER BREAKFAST 60G', 'good-morning-power-breakfast-60g', 0, '', 150, 80, '', '6156000134420', '', '', 1, '2016-07-21 14:34:23'),
(316, '1984320756', 1, 1, 3, 'GOYA OIL', 'GOYA OIL', 'goya-oil', 0, '', 350, 230, '', '41331011037', '', '', 1, '2016-07-21 14:34:23'),
(317, '0742159638', 1, 1, 3, 'GRACE PERFUME VASELINE', 'GRACE PERFUME VASELINE', 'grace-perfume-vaseline', 0, '', 100, 45, '', 'I000000420', '', '', 1, '2016-07-21 14:34:23'),
(318, '2897435106', 1, 1, 3, 'GREEN GARDEN MUSHROOM 400G', 'GREEN GARDEN MUSHROOM 400G', 'green-garden-mushroom-400g', 0, '', 270, 210, '', '1884896190712', '', '', 1, '2016-07-21 14:34:23'),
(319, '3874915026', 1, 1, 3, 'GREEN TEA 50G', 'GREEN TEA 50G', 'green-tea-50g', 0, '', 650, 445, '', '4791014004950', '', '', 1, '2016-07-21 14:34:23'),
(320, '8670132495', 1, 1, 3, 'GROUNDNUT (BIG BOTTLE)', 'GROUNDNUT (BIG BOTTLE)', 'groundnut-(big-bottle)', 0, '', 500, 400, '', 'I000000628', '', '', 1, '2016-07-21 14:34:23'),
(321, '4368207159', 1, 1, 3, 'GUM (SUPER STAR)', 'GUM (SUPER STAR)', 'gum-(super-star)', 0, '', 20, 10, '', '6958116555645', '', '', 1, '2016-07-21 14:34:23'),
(322, '4519073628', 1, 1, 3, 'HAIR BRUSH (WHITE)', 'HAIR BRUSH (WHITE)', 'hair-brush-(white)', 0, '', 100, 50, '', 'I000000621', '', '', 1, '2016-07-21 14:34:23'),
(323, '3816479025', 1, 1, 3, 'HARPIC 450ML', 'HARPIC 450ML', 'harpic-450ml', 0, '', 465, 333, '', '6009695932621', '', '', 1, '2016-07-21 14:34:23'),
(324, '9738415062', 1, 1, 3, 'HARPIC 725ML', 'HARPIC 725ML', 'harpic-725ml', 0, '', 610, 483, '', '6009695933758', '', '', 1, '2016-07-21 14:34:23'),
(325, '3514960782', 1, 1, 3, 'HAVILAH YOGHURT 500ML', 'HAVILAH YOGHURT 500ML', 'havilah-yoghurt-500ml', 0, '', 120, 100, '', 'I000000434', '', '', 1, '2016-07-21 14:34:23'),
(326, '0467815932', 1, 1, 3, 'HEINZ BAKED BEANS 200G', 'HEINZ BAKED BEANS 200G', 'heinz-baked-beans-200g', 0, '', 280, 158, '', '6290090017000', '', '', 1, '2016-07-21 14:34:23'),
(327, '2913047568', 1, 1, 3, 'HEINZ BAKED BEANS 415G', 'HEINZ BAKED BEANS 415G', 'heinz-baked-beans-415g', 0, '', 550, 175, '', '5000157024671', '', '', 1, '2016-07-21 14:34:23'),
(328, '7962183450', 1, 1, 3, 'HILLWAY GREEN LABEL TEA 60G', 'HILLWAY GREEN LABEL TEA 60G', 'hillway-green-label-tea-60g', 0, '', 350, 250, '', '8886300990324', '', '', 1, '2016-07-21 14:34:23'),
(329, '8942167530', 1, 1, 3, 'HOBNOBS 100G', 'HOBNOBS 100G', 'hobnobs-100g', 0, '', 125, 91, '', '5000396029703', '', '', 1, '2016-07-21 14:34:23'),
(330, '5468290371', 1, 1, 3, 'HOBNOBS 125G', 'HOBNOBS 125G', 'hobnobs-125g', 0, '', 150, 90, '', '5000396024821', '', '', 1, '2016-07-21 14:34:23'),
(331, '2936570148', 1, 1, 3, 'HOBNOBS 50G', 'HOBNOBS 50G', 'hobnobs-50g', 0, '', 50, 42, '', '5000396026931', '', '', 1, '2016-07-21 14:34:23'),
(332, '7813462509', 1, 1, 3, 'HOBNOBS OAT BISCUIT', 'HOBNOBS OAT BISCUIT', 'hobnobs-oat-biscuit', 0, '', 620, 416, '', '59290500677', '', '', 1, '2016-07-21 14:34:24'),
(333, '2943107865', 1, 1, 3, 'HOLLANDIA CUSTARD', 'HOLLANDIA CUSTARD', 'hollandia-custard', 0, '', 50, 45, '', '6151100052470', '', '', 1, '2016-07-21 14:34:24'),
(334, '6508427319', 1, 1, 3, 'HONEYWELL WHOLE WHEAT MEAL 1KG', 'HONEYWELL WHOLE WHEAT MEAL 1KG', 'honeywell-whole-wheat-meal-1kg', 0, '', 450, 295, '', '6156000022529', '', '', 1, '2016-07-21 14:34:24'),
(335, '7403196582', 1, 1, 3, 'HONEYWELL WHOLE WHEAT MEAL 2KG', 'HONEYWELL WHOLE WHEAT MEAL 2KG', 'honeywell-whole-wheat-meal-2kg', 0, '', 800, 600, '', 'I000000471', '', '', 1, '2016-07-21 14:34:24'),
(336, '0628793451', 1, 1, 3, 'HOT DOG 400G', 'HOT DOG 400G', 'hot-dog-400g', 0, '', 350, 283.33, '', '5000232419408', '', '', 1, '2016-07-21 14:34:24'),
(337, '7315629480', 1, 1, 3, 'HUGGIES GOLD (50 PULL-UPS) 15+kg', 'HUGGIES GOLD (50 PULL-UPS) 15+kg', 'huggies-gold-(50-pull-ups)-15+kg', 0, '', 7500, 6700, '', '6001019907391', '', '', 1, '2016-07-21 14:34:24'),
(338, '1294670358', 1, 1, 3, 'HUGGIES SNUG & DRY (1x78 - SIZE 1) 4-6kg', 'HUGGIES SNUG & DRY (1x78 - SIZE 1) 4-6kg', 'huggies-snug-&-dry-(1x78---size-1)-4-6kg', 0, '', 6665, 6000, '', 'I000000516', '', '', 1, '2016-07-21 14:34:24'),
(339, '9740516382', 1, 1, 3, 'HUGGIES SNUG & DRY (2x78 - SIZE 1) 4-6kg', 'HUGGIES SNUG & DRY (2x78 - SIZE 1) 4-6kg', 'huggies-snug-&-dry-(2x78---size-1)-4-6kg', 0, '', 13300, 12000, '', '36000740493', '', '', 1, '2016-07-21 14:34:24'),
(340, '8103674925', 1, 1, 3, 'HWA TAI CREAM CRACKER 200G', 'HWA TAI CREAM CRACKER 200G', 'hwa-tai-cream-cracker-200g', 0, '', 420, 342, '', '9556167230114', '', '', 1, '2016-07-21 14:34:24'),
(341, '0421638795', 1, 1, 3, 'ICE MINT SWEET', 'ICE MINT SWEET', 'ice-mint-sweet', 0, '', 5, 3, '', 'I000000328', '', '', 1, '2016-07-21 14:34:24'),
(342, '1760952384', 1, 1, 3, 'ICE TEA 1LTR PEACH', 'ICE TEA 1LTR PEACH', 'ice-tea-1ltr-peach', 0, '', 250, 170, '', '6151100057105', '', '', 1, '2016-07-21 14:34:24'),
(343, '4382170965', 1, 1, 3, 'IDOLE LIGHTENING SOAP 200G', 'IDOLE LIGHTENING SOAP 200G', 'idole-lightening-soap-200g', 0, '', 350, 183, '', '674571000204', '', '', 1, '2016-07-21 14:34:24'),
(344, '3809276145', 1, 1, 3, 'INHALER MEKO BRAND', 'INHALER MEKO BRAND', 'inhaler-meko-brand', 0, '', 100, 75, '', 'I000000432', '', '', 1, '2016-07-21 14:34:24'),
(345, '1809324675', 1, 1, 3, 'INTESA PARFUM 125ML DEODORANT', 'INTESA PARFUM 125ML DEODORANT', 'intesa-parfum-125ml-deodorant', 0, '', 550, 463, '', '8003510004980', '', '', 1, '2016-07-21 14:34:24'),
(346, '5602741938', 1, 1, 3, 'INTESA PARFUM DEODORANT (BODY SPRAY) 150ML', 'INTESA PARFUM DEODORANT (BODY SPRAY) 150ML', 'intesa-parfum-deodorant-(body-spray)-150ml', 0, '', 550, 463, '', '8003510002733', '', '', 1, '2016-07-21 14:34:24'),
(347, '1976850423', 1, 1, 3, 'IRISH SPRING ALOE VERA (PACK) - 106.3G', 'IRISH SPRING ALOE VERA (PACK) - 106.3G', 'irish-spring-aloe-vera-(pack)---106.3g', 0, '', 505, 450, '', '6001067500063', '', '', 1, '2016-07-21 14:34:24'),
(348, '7304691528', 1, 1, 3, 'IRISH SPRING ALOE VERA - 106.3G', 'IRISH SPRING ALOE VERA - 106.3G', 'irish-spring-aloe-vera---106.3g', 0, '', 180, 150, '', '6001067000068', '', '', 1, '2016-07-21 14:34:24'),
(349, '4503768129', 1, 1, 3, 'IRISH SPRING ICY BLAST (PACK) 106.3G', 'IRISH SPRING ICY BLAST (PACK) 106.3G', 'irish-spring-icy-blast-(pack)-106.3g', 0, '', 505, 450, '', '6001067500070', '', '', 1, '2016-07-21 14:34:24'),
(350, '4082391756', 1, 1, 3, 'IRISH SPRING ICY BLAST - 106.3G', 'IRISH SPRING ICY BLAST - 106.3G', 'irish-spring-icy-blast---106.3g', 0, '', 180, 150, '', '6001067000075', '', '', 1, '2016-07-21 14:34:24'),
(351, '2019586473', 1, 1, 3, 'IRISH SPRING ORIGINAL (PACK) - 106.3G', 'IRISH SPRING ORIGINAL (PACK) - 106.3G', 'irish-spring-original-(pack)---106.3g', 0, '', 505, 450, '', '6001067500056', '', '', 1, '2016-07-21 14:34:24'),
(352, '0756134289', 1, 1, 3, 'IRISH SPRING ORIGINAL - 106.3G', 'IRISH SPRING ORIGINAL - 106.3G', 'irish-spring-original---106.3g', 0, '', 180, 150, '', '6001067000051', '', '', 1, '2016-07-21 14:34:24'),
(353, '5712469803', 1, 1, 3, 'IRON SPONGE (SMALL)', 'IRON SPONGE (SMALL)', 'iron-sponge-(small)', 0, '', 50, 20, '', 'I000000414', '', '', 1, '2016-07-21 14:34:25'),
(354, '1546702398', 1, 1, 3, 'IVORY SOAP (ALLURE)150G', 'IVORY SOAP (ALLURE)150G', 'ivory-soap-(allure)150g', 0, '', 120, 100, '', '6156000177212', '', '', 1, '2016-07-21 14:34:25'),
(355, '0641758329', 1, 1, 3, 'IVORY SOAP (CHIC)150G', 'IVORY SOAP (CHIC)150G', 'ivory-soap-(chic)150g', 0, '', 120, 100, '', '6156000177205', '', '', 1, '2016-07-21 14:34:25'),
(356, '1237046895', 1, 1, 3, 'IVORY SOAP (FASCINATING)150G', 'IVORY SOAP (FASCINATING)150G', 'ivory-soap-(fascinating)150g', 0, '', 120, 100, '', '6156000177243', '', '', 1, '2016-07-21 14:34:25'),
(357, '7480613295', 1, 1, 3, 'IZAL 140ML', 'IZAL 140ML', 'izal-140ml', 0, '', 200, 125, '', '5060148950952', '', '', 1, '2016-07-21 14:34:25'),
(358, '3527619480', 1, 1, 3, 'J&W WINE 750ML', 'J&W WINE 750ML', 'j&w-wine-750ml', 0, '', 980, 833, '', '8436015880238', '', '', 1, '2016-07-21 14:34:25'),
(359, '9013542786', 1, 1, 3, 'JACOBS CREAM CRACKERS 200G', 'JACOBS CREAM CRACKERS 200G', 'jacobs-cream-crackers-200g', 0, '', 400, 244, '', '5000137179612', '', '', 1, '2016-07-21 14:34:25'),
(360, '7834291560', 1, 1, 3, 'JACOBS CREAM CRACKERS 300G', 'JACOBS CREAM CRACKERS 300G', 'jacobs-cream-crackers-300g', 0, '', 500, 317, '', '5000396038590', '', '', 1, '2016-07-21 14:34:25'),
(361, '6457238091', 1, 1, 3, 'JANET (TUBE CREAM)', 'JANET (TUBE CREAM)', 'janet-(tube-cream)', 0, '', 230, 190, '', 'I000000234', '', '', 1, '2016-07-21 14:34:25'),
(362, '3596027184', 1, 1, 3, 'JIK - 1.5L', 'JIK - 1.5L', 'jik---1.5l', 0, '', 595, 490, '', '6009695930313', '', '', 1, '2016-07-21 14:34:25'),
(363, '2418903657', 1, 1, 3, 'JIK - 1L', 'JIK - 1L', 'jik---1l', 0, '', 455, 340, '', '6009695930306', '', '', 1, '2016-07-21 14:34:25'),
(364, '8725469013', 1, 1, 3, 'JOHNSON\'S BABY NOISTURISING LOTION 500ML', 'JOHNSON\'S BABY NOISTURISING LOTION 500ML', 'johnson\'s-baby-noisturising-lotion-500ml', 0, '', 855, 750, '', '6001011411353', '', '', 1, '2016-07-21 14:34:25'),
(365, '8493576021', 1, 1, 3, 'JOHNSON\'S BABY OIL 500ML', 'JOHNSON\'S BABY OIL 500ML', 'johnson\'s-baby-oil-500ml', 0, '', 855, 750, '', '6001011312001', '', '', 1, '2016-07-21 14:34:26'),
(366, '0718942356', 1, 1, 3, 'JOHNSON\'S BABY POWDER 500G', 'JOHNSON\'S BABY POWDER 500G', 'johnson\'s-baby-powder-500g', 0, '', 655, 550, '', '6001011801574', '', '', 1, '2016-07-21 14:34:26'),
(367, '7123085469', 1, 1, 3, 'JOHNSON\'S SOAP 125G', 'JOHNSON\'S SOAP 125G', 'johnson\'s-soap-125g', 0, '', 185, 133, '', '6291100763009', '', '', 1, '2016-07-21 14:34:26'),
(368, '3961528047', 1, 1, 3, 'JORDAN TOOTH BRUSH', 'JORDAN TOOTH BRUSH', 'jordan-tooth-brush', 0, '', 150, 79, '', '7038513893003', '', '', 1, '2016-07-21 14:34:26'),
(369, '1756923408', 1, 1, 3, 'JOVEN 750ML', 'JOVEN 750ML', 'joven-750ml', 0, '', 800, 667, '', '8427894014937', '', '', 1, '2016-07-21 14:34:26'),
(370, '7960348125', 1, 1, 3, 'JOY SOAP', 'JOY SOAP', 'joy-soap', 0, '', 60, 50, '', '5000101911828', '', '', 1, '2016-07-21 14:34:26'),
(371, '7943860215', 1, 1, 3, 'JUST MARGARINE - 250G', 'JUST MARGARINE - 250G', 'just-margarine---250g', 0, '', 340, 200, '', '6130788000122', '', '', 1, '2016-07-21 14:34:26'),
(372, '8391264750', 1, 1, 3, 'JUST MARGARINE - 500G', 'JUST MARGARINE - 500G', 'just-margarine---500g', 0, '', 650, 500, '', '6130788000139', '', '', 1, '2016-07-21 14:34:26'),
(373, '5604972183', 1, 1, 3, 'KARAOLE', 'KARAOLE', 'karaole', 0, '', 20, 11, '', 'I000000246', '', '', 1, '2016-07-21 14:34:26'),
(374, '4512086739', 1, 1, 3, 'KELLOGGS FRUIT N FIBRE', 'KELLOGGS FRUIT N FIBRE', 'kelloggs-fruit-n-fibre', 0, '', 1095, 900, '', '50127504', '', '', 1, '2016-07-21 14:34:26'),
(375, '1536847902', 1, 1, 3, 'KEMPS CRACKERS', 'KEMPS CRACKERS', 'kemps-crackers', 0, '', 15, 9, '', 'I000000242', '', '', 1, '2016-07-21 14:34:26'),
(376, '1594723806', 1, 1, 3, 'KERRYGOLD FULL  CREAM MILK 400G', 'KERRYGOLD FULL  CREAM MILK 400G', 'kerrygold-full--cream-milk-400g', 0, '', 850, 667, '', '5011038004002', '', '', 1, '2016-07-21 14:34:26'),
(377, '4695837120', 1, 1, 3, 'KINGS OIL - 1L', 'KINGS OIL - 1L', 'kings-oil---1l', 0, '', 550, 465.46, '', '6154000016678', '', '', 1, '2016-07-21 14:34:26'),
(378, '0268175349', 1, 1, 3, 'KOOL 2-GO (ORANGE)', 'KOOL 2-GO (ORANGE)', 'kool-2-go-(orange)', 0, '', 20, 8, '', 'I000000346', '', '', 1, '2016-07-21 14:34:26'),
(379, '3672089541', 1, 1, 3, 'KRAKJAK S', 'KRAKJAK S', 'krakjak-s', 0, '', 150, 90, '', '6152110056850', '', '', 1, '2016-07-21 14:34:26'),
(380, '9280351674', 1, 1, 3, 'KRAX SALTY CRACKER', 'KRAX SALTY CRACKER', 'krax-salty-cracker', 0, '', 250, 200, '', '6261149014929', '', '', 1, '2016-07-21 14:34:26'),
(381, '0215768349', 1, 1, 3, 'KRAX VEGETABLE AND CHEESE', 'KRAX VEGETABLE AND CHEESE', 'krax-vegetable-and-cheese', 0, '', 250, 200, '', '6261149014936', '', '', 1, '2016-07-21 14:34:26'),
(382, '8236514709', 1, 1, 3, 'LADY B CUSTARD - 2KG', 'LADY B CUSTARD - 2KG', 'lady-b-custard---2kg', 0, '', 900, 700, '', 'I000000353', '', '', 1, '2016-07-21 14:34:27'),
(383, '5321794860', 1, 1, 3, 'LADY B CUSTARD - 500G', 'LADY B CUSTARD - 500G', 'lady-b-custard---500g', 0, '', 250, 160, '', 'I000000283', '', '', 1, '2016-07-21 14:34:27'),
(384, '9083157426', 1, 1, 3, 'LADY CARE PREMIUM 28CM', 'LADY CARE PREMIUM 28CM', 'lady-care-premium-28cm', 0, '', 200, 166.66, '', '6951794143211', '', '', 1, '2016-07-21 14:34:27'),
(385, '0624391875', 1, 1, 3, 'LADY CARE REGULAR', 'LADY CARE REGULAR', 'lady-care-regular', 0, '', 200, 125, '', '6951794143234', '', '', 1, '2016-07-21 14:34:27'),
(386, '8207659341', 1, 1, 3, 'LAHDA GOLD MILK 400G', 'LAHDA GOLD MILK 400G', 'lahda-gold-milk-400g', 0, '', 620, 450, '', '6156000049380', '', '', 1, '2016-07-21 14:34:27'),
(387, '3702849651', 1, 1, 3, 'LASER HONEY 500G', 'LASER HONEY 500G', 'laser-honey-500g', 0, '', 1200, 900, '', '5032619320533', '', '', 1, '2016-07-21 14:34:27'),
(388, '8691075432', 1, 1, 3, 'LEMON TEA DRINK 360G', 'LEMON TEA DRINK 360G', 'lemon-tea-drink-360g', 0, '', 900, 750, '', 'AUTO', '', '', 1, '2016-07-21 14:34:27'),
(389, '4901582367', 1, 1, 3, 'LIMPO CLEAN ALL PURPOSE CLEANER (FLORAL) 1L', 'LIMPO CLEAN ALL PURPOSE CLEANER (FLORAL) 1L', 'limpo-clean-all-purpose-cleaner-(floral)-1l', 0, '', 395, 345, '', '6156000068800', '', '', 1, '2016-07-21 14:34:27'),
(390, '1547680932', 1, 1, 3, 'LIMPO CLEAN ALL PURPOSE CLEANER (GREEN) 1L', 'LIMPO CLEAN ALL PURPOSE CLEANER (GREEN) 1L', 'limpo-clean-all-purpose-cleaner-(green)-1l', 0, '', 395, 345, '', '6156000068817', '', '', 1, '2016-07-21 14:34:27'),
(391, '0896541732', 1, 1, 3, 'LIMPO CLEAN ALL PURPOSE CLEANER (LAVENDER) 1L', 'LIMPO CLEAN ALL PURPOSE CLEANER (LAVENDER) 1L', 'limpo-clean-all-purpose-cleaner-(lavender)-1l', 0, '', 395, 345, '', '6156000068824', '', '', 1, '2016-07-21 14:34:27'),
(392, '7390825164', 1, 1, 3, 'LIQUID STARCH', 'LIQUID STARCH', 'liquid-starch', 0, '', 365, 250, '', '6048814000056', '', '', 1, '2016-07-21 14:34:27'),
(393, '3745096821', 1, 1, 3, 'LONDON GOLD TOOTH BRUSH', 'LONDON GOLD TOOTH BRUSH', 'london-gold-tooth-brush', 0, '', 205, 75, '', '6930988800290', '', '', 1, '2016-07-21 14:34:27'),
(394, '2456307981', 1, 1, 3, 'MACCAW COCKTAIL FRUIT DRINK1LTR', 'MACCAW COCKTAIL FRUIT DRINK1LTR', 'maccaw-cocktail-fruit-drink1ltr', 0, '', 250, 190, '', '6009822860735', '', '', 1, '2016-07-21 14:34:27'),
(395, '3568791204', 1, 1, 3, 'MACCAW FRUIT DRINK CRANBERRY1LTR', 'MACCAW FRUIT DRINK CRANBERRY1LTR', 'maccaw-fruit-drink-cranberry1ltr', 0, '', 250, 190, '', '6009822860728', '', '', 1, '2016-07-21 14:34:27'),
(396, '4605382791', 1, 1, 3, 'MACCAW ORANGE DRINK 1LTR', 'MACCAW ORANGE DRINK 1LTR', 'maccaw-orange-drink-1ltr', 0, '', 250, 190, '', 'I000000641', '', '', 1, '2016-07-21 14:34:27'),
(397, '7396042815', 1, 1, 3, 'MACCAW STRAWBERRY AND BANANA 1LTR', 'MACCAW STRAWBERRY AND BANANA 1LTR', 'maccaw-strawberry-and-banana-1ltr', 0, '', 250, 190, '', '6009822860704', '', '', 1, '2016-07-21 14:34:28'),
(398, '1347928506', 1, 1, 3, 'MACLEANS (COMPLETE CARE) - 157.5G', 'MACLEANS (COMPLETE CARE) - 157.5G', 'macleans-(complete-care)---157.5g', 0, '', 200, 170, '', 'I000000366', '', '', 1, '2016-07-21 14:34:28'),
(399, '3408961275', 1, 1, 3, 'MAGIC MOMENTS (FLAVOURED VODKA) - 750ML', 'MAGIC MOMENTS (FLAVOURED VODKA) - 750ML', 'magic-moments-(flavoured-vodka)---750ml', 0, '', 1955, 1333, '', '8902147000511', '', '', 1, '2016-07-21 14:34:28'),
(400, '0892354716', 1, 1, 3, 'MAGIC SHAVING CREAM 170G', 'MAGIC SHAVING CREAM 170G', 'magic-shaving-cream-170g', 0, '', 780, 633, '', '72790000188', '', '', 1, '2016-07-21 14:34:28'),
(401, '8390617245', 1, 1, 3, 'MAGIC SHAVING POWDER - 142G', 'MAGIC SHAVING POWDER - 142G', 'magic-shaving-powder---142g', 0, '', 535, 433, '', '72790000164', '', '', 1, '2016-07-21 14:34:28'),
(402, '7082514396', 1, 1, 3, 'MALIZIA UOMO', 'MALIZIA UOMO', 'malizia-uomo', 0, '', 550, 463, '', '8003510001217', '', '', 1, '2016-07-21 14:34:28'),
(403, '1036248957', 1, 1, 3, 'MALT & MILK BISCUIT', 'MALT & MILK BISCUIT', 'malt-&-milk-biscuit', 0, '', 50, 30, '', 'I000000365', '', '', 1, '2016-07-21 14:34:29'),
(404, '1624083579', 1, 1, 3, 'MALTINA CLASSIC (PET) - 33CL', 'MALTINA CLASSIC (PET) - 33CL', 'maltina-classic-(pet)---33cl', 0, '', 150, 100, '', '5025866001096', '', '', 1, '2016-07-21 14:34:29'),
(405, '8350147269', 1, 1, 3, 'MALTINA CLASSIC (PET) - 50CL', 'MALTINA CLASSIC (PET) - 50CL', 'maltina-classic-(pet)---50cl', 0, '', 200, 142, '', '5025866000297', '', '', 1, '2016-07-21 14:34:29'),
(406, '2541093678', 1, 1, 3, 'MAMADOR OIL 2.8L', 'MAMADOR OIL 2.8L', 'mamador-oil-2.8l', 0, '', 1825, 1495, '', '6154000016012', '', '', 1, '2016-07-21 14:34:29'),
(407, '4025138697', 1, 1, 3, 'MARS CHOCOLATE 51G', 'MARS CHOCOLATE 51G', 'mars-chocolate-51g', 0, '', 150, 117, '', '5000159407236', '', '', 1, '2016-07-21 14:34:29'),
(408, '7851360942', 1, 1, 3, 'MARVEL DRIED SKIMMED MILK', 'MARVEL DRIED SKIMMED MILK', 'marvel-dried-skimmed-milk', 0, '', 1200, 867, '', '5000183932780', '', '', 1, '2016-07-21 14:34:30'),
(409, '6250978314', 1, 1, 3, 'MAYONNAISE', 'MAYONNAISE', 'mayonnaise', 0, '', 1250, 1000, '', '6290090009005', '', '', 1, '2016-07-21 14:34:30'),
(410, '0461872593', 1, 1, 3, 'MCDOWELL', 'MCDOWELL', 'mcdowell', 0, '', 300, 200, '', 'I000000331', '', '', 1, '2016-07-21 14:34:30'),
(411, '8053629417', 1, 1, 3, 'MEDISOFT MEDICATED SOAP', 'MEDISOFT MEDICATED SOAP', 'medisoft-medicated-soap', 0, '', 80, 50, '', '8992929130222', '', '', 1, '2016-07-21 14:34:31'),
(412, '2658970314', 1, 1, 3, 'MENTOS CHEWING GUM (ORANGE MINT)', 'MENTOS CHEWING GUM (ORANGE MINT)', 'mentos-chewing-gum-(orange-mint)', 0, '', 100, 80, '', '6154000043025', '', '', 1, '2016-07-21 14:34:31'),
(413, '6754209318', 1, 1, 3, 'MENTOS CHEWING GUM (PEPPERMINT)', 'MENTOS CHEWING GUM (PEPPERMINT)', 'mentos-chewing-gum-(peppermint)', 0, '', 100, 80, '', '6154000043001', '', '', 1, '2016-07-21 14:34:31'),
(414, '2901475836', 1, 1, 3, 'MENTOS FRUIT STICK 21.6G', 'MENTOS FRUIT STICK 21.6G', 'mentos-fruit-stick-21.6g', 0, '', 30, 25, '', '83154003', '', '', 1, '2016-07-21 14:34:31'),
(415, '4169723805', 1, 1, 3, 'MENTOS FRUIT STICK 37.8G', 'MENTOS FRUIT STICK 37.8G', 'mentos-fruit-stick-37.8g', 0, '', 50, 40, '', '83156007', '', '', 1, '2016-07-21 14:34:31'),
(416, '2715694038', 1, 1, 3, 'MENTOS MINT STICK 21.6G', 'MENTOS MINT STICK 21.6G', 'mentos-mint-stick-21.6g', 0, '', 30, 25, '', '83155000', '', '', 1, '2016-07-21 14:34:31'),
(417, '7925301486', 1, 1, 3, 'MENTOS MINT STICK 37.8G', 'MENTOS MINT STICK 37.8G', 'mentos-mint-stick-37.8g', 0, '', 50, 40, '', '83153006', '', '', 1, '2016-07-21 14:34:31'),
(418, '4152307689', 1, 1, 3, 'MIKSI REFILL 400G', 'MIKSI REFILL 400G', 'miksi-refill-400g', 0, '', 635, 475, '', '6008155008814', '', '', 1, '2016-07-21 14:34:31'),
(419, '6408519723', 1, 1, 3, 'MILK  SALT CRACKER 450G', 'MILK  SALT CRACKER 450G', 'milk--salt-cracker-450g', 0, '', 800, 175, '', '6926768517540', '', '', 1, '2016-07-21 14:34:32'),
(420, '6913584702', 1, 1, 3, 'MILK CREAM WAFERS', 'MILK CREAM WAFERS', 'milk-cream-wafers', 0, '', 50, 42, '', '6156000121192', '', '', 1, '2016-07-21 14:34:32'),
(421, '9057623418', 1, 1, 3, 'MILK RICH COOKIES (PACK) 90G', 'MILK RICH COOKIES (PACK) 90G', 'milk-rich-cookies-(pack)-90g', 0, '', 1550, 1050, '', '6152110064312', '', '', 1, '2016-07-21 14:34:32'),
(422, '9143670258', 1, 1, 3, 'MILK RICH COOKIES 90G', 'MILK RICH COOKIES 90G', 'milk-rich-cookies-90g', 0, '', 100, 43, '', '6152110063599', '', '', 1, '2016-07-21 14:34:32'),
(423, '0593184627', 1, 1, 3, 'MILK SODA CRACKER 248G', 'MILK SODA CRACKER 248G', 'milk-soda-cracker-248g', 0, '', 320, 250, '', '6943443500239', '', '', 1, '2016-07-21 14:34:32'),
(424, '0583267941', 1, 1, 3, 'MIXED VEGETABLE MACEDOINE400G', 'MIXED VEGETABLE MACEDOINE400G', 'mixed-vegetable-macedoine400g', 0, '', 380, 216.66, '', '3047205212019', '', '', 1, '2016-07-21 14:34:32'),
(425, '6312580479', 1, 1, 3, 'MOBILE INSECTICIDE 300ML', 'MOBILE INSECTICIDE 300ML', 'mobile-insecticide-300ml', 0, '', 550, 417, '', '6153400161018', '', '', 1, '2016-07-21 14:34:32'),
(426, '1492860573', 1, 1, 3, 'MOI MARGARINE', 'MOI MARGARINE', 'moi-margarine', 0, '', 650, 566, '', '9557803031751', '', '', 1, '2016-07-21 14:34:32'),
(427, '9143862570', 1, 1, 3, 'MR.MUSCLE 500ML', 'MR.MUSCLE 500ML', 'mr.muscle-500ml', 0, '', 450, 320, '', '5010182975220', '', '', 1, '2016-07-21 14:34:32'),
(428, '4356907182', 1, 1, 3, 'MY BOY (INSTANT FORMULA)', 'MY BOY (INSTANT FORMULA)', 'my-boy-(instant-formula)', 0, '', 1150, 950, '', '8716200648349', '', '', 1, '2016-07-21 14:34:32'),
(429, '9026537148', 1, 1, 3, 'NADIS CASHEW NUTS(SPICY)', 'NADIS CASHEW NUTS(SPICY)', 'nadis-cashew-nuts(spicy)', 0, '', 700, 600, '', 'I000000443', '', '', 1, '2016-07-21 14:34:32'),
(430, '4197635820', 1, 1, 3, 'NANI CARAMEL', 'NANI CARAMEL', 'nani-caramel', 0, '', 880, 750, '', '6261149056479', '', '', 1, '2016-07-21 14:34:32'),
(431, '4961825730', 1, 1, 3, 'NANI CARAMEL', 'NANI CARAMEL', 'nani-caramel', 0, '', 50, 29, '', '6261149052471', '', '', 1, '2016-07-21 14:34:32'),
(432, '3928564170', 1, 1, 3, 'NAPA LUNCHEON MEAT 340G', 'NAPA LUNCHEON MEAT 340G', 'napa-luncheon-meat-340g', 0, '', 450, 350, '', '5060178692983', '', '', 1, '2016-07-21 14:34:32'),
(433, '9286154730', 1, 1, 3, 'NAPA SARDINE', 'NAPA SARDINE', 'napa-sardine', 0, '', 150, 100, '', '96018750', '', '', 1, '2016-07-21 14:34:32'),
(434, '3649285701', 1, 1, 3, 'NASCO CORNFLAKES BANANA 350G', 'NASCO CORNFLAKES BANANA 350G', 'nasco-cornflakes-banana-350g', 0, '', 450, 360, '', '6301102020304', '', '', 1, '2016-07-21 14:34:32'),
(435, '0263917458', 1, 1, 3, 'NASCO CORNFLAKES STRAWBERRY350G', 'NASCO CORNFLAKES STRAWBERRY350G', 'nasco-cornflakes-strawberry350g', 0, '', 550, 380, '', '6301102020250', '', '', 1, '2016-07-21 14:34:32'),
(436, '4301769582', 1, 1, 3, 'NASCO CORNFLAKES VANILLA 350G', 'NASCO CORNFLAKES VANILLA 350G', 'nasco-cornflakes-vanilla-350g', 0, '', 550, 350, '', '6301102020359', '', '', 1, '2016-07-21 14:34:32'),
(437, '7436019285', 1, 1, 3, 'NASCO CREAM BISCUIT B', 'NASCO CREAM BISCUIT B', 'nasco-cream-biscuit-b', 0, '', 120, 80, '', 'aaaa444', '', '', 1, '2016-07-21 14:34:32'),
(438, '4923765081', 1, 1, 3, 'NASCO SHORTCAKE 150G', 'NASCO SHORTCAKE 150G', 'nasco-shortcake-150g', 0, '', 100, 70, '', '6301102010602', '', '', 1, '2016-07-21 14:34:32'),
(439, '6359417082', 1, 1, 3, 'NASCO SHORTCAKE 75g', 'NASCO SHORTCAKE 75g', 'nasco-shortcake-75g', 0, '', 50, 32, '', '6301102010619', '', '', 1, '2016-07-21 14:34:33'),
(440, '2946503871', 1, 1, 3, 'NICE COCONUT BISCUIT 80G', 'NICE COCONUT BISCUIT 80G', 'nice-coconut-biscuit-80g', 0, '', 50, 27, '', '6153400170041', '', '', 1, '2016-07-21 14:34:33'),
(441, '0691583427', 1, 1, 3, 'NIKITA PERFUME', 'NIKITA PERFUME', 'nikita-perfume', 0, '', 350, 220, '', 'I000000240', '', '', 1, '2016-07-21 14:34:33'),
(442, '7903564821', 1, 1, 3, 'NIVEA COCOA BUTTER (WHITE) - 250ML', 'NIVEA COCOA BUTTER (WHITE) - 250ML', 'nivea-cocoa-butter-(white)---250ml', 0, '', 650, 550, '', 'I000000232', '', '', 1, '2016-07-21 14:34:33'),
(443, '0467852913', 1, 1, 3, 'NIVEA DEODERANT (ENERGY FRESH) - 150ML', 'NIVEA DEODERANT (ENERGY FRESH) - 150ML', 'nivea-deoderant-(energy-fresh)---150ml', 0, '', 905, 633, '', '4005900098238', '', '', 1, '2016-07-21 14:34:33'),
(444, '3916085247', 1, 1, 3, 'NIVEA DEODERANT (INVISIBLE) - 150ML', 'NIVEA DEODERANT (INVISIBLE) - 150ML', 'nivea-deoderant-(invisible)---150ml', 0, '', 905, 633, '', '4005900034816', '', '', 1, '2016-07-21 14:34:33'),
(445, '2405798316', 1, 1, 3, 'NIVEA DEODERANT (STRESS PROTECT) - 150ML', 'NIVEA DEODERANT (STRESS PROTECT) - 150ML', 'nivea-deoderant-(stress-protect)---150ml', 0, '', 905, 633, '', '4005900088154', '', '', 1, '2016-07-21 14:34:33'),
(446, '3408196257', 1, 1, 3, 'NIVEA MEN DEODERANT (FRESH ACTIVE) - 150ML', 'NIVEA MEN DEODERANT (FRESH ACTIVE) - 150ML', 'nivea-men-deoderant-(fresh-active)---150ml', 0, '', 905, 633, '', '4005808816002', '', '', 1, '2016-07-21 14:34:33'),
(447, '1275438069', 1, 1, 3, 'NIVEA MEN DEODERANT (INVISIBLE) - 150ML', 'NIVEA MEN DEODERANT (INVISIBLE) - 150ML', 'nivea-men-deoderant-(invisible)---150ml', 0, '', 905, 633, '', '4005900035653', '', '', 1, '2016-07-21 14:34:33'),
(448, '7241568093', 1, 1, 3, 'NIVEA MEN DEODERANT (STRESS PROTECT) - 150ML', 'NIVEA MEN DEODERANT (STRESS PROTECT) - 150ML', 'nivea-men-deoderant-(stress-protect)---150ml', 0, '', 905, 633, '', '4005900088093', '', '', 1, '2016-07-21 14:34:33'),
(449, '2539078146', 1, 1, 3, 'NIVEA MEN ROLL-ON (DRY IMPACT)', 'NIVEA MEN ROLL-ON (DRY IMPACT)', 'nivea-men-roll-on-(dry-impact)', 0, '', 500, 333.25, '', '4005900088413', '', '', 1, '2016-07-21 14:34:33'),
(450, '8952763410', 1, 1, 3, 'NIVEA MEN ROLL-ON (FRESH ACTIVE)', 'NIVEA MEN ROLL-ON (FRESH ACTIVE)', 'nivea-men-roll-on-(fresh-active)', 0, '', 500, 433, '', '4005900088062', '', '', 1, '2016-07-21 14:34:33'),
(451, '8052641793', 1, 1, 3, 'NIVEA ROLL-ON (PEARL & BEAUTY)', 'NIVEA ROLL-ON (PEARL & BEAUTY)', 'nivea-roll-on-(pearl-&-beauty)', 0, '', 500, 433, '', '4005900098177', '', '', 1, '2016-07-21 14:34:33'),
(452, '1863092547', 1, 1, 3, 'NIXODERM - 17.7G', 'NIXODERM - 17.7G', 'nixoderm---17.7g', 0, '', 120, 100, '', '5010182974438', '', '', 1, '2016-07-21 14:34:33'),
(453, '6427519308', 1, 1, 3, 'NIXODERM TUBE - 15G', 'NIXODERM TUBE - 15G', 'nixoderm-tube---15g', 0, '', 120, 108.03, '', 'I000000431', '', '', 1, '2016-07-21 14:34:33'),
(454, '8341025697', 1, 1, 3, 'NO.1 FAMILY SOAP 70G', 'NO.1 FAMILY SOAP 70G', 'no.1-family-soap-70g', 0, '', 130, 100, '', '6009826820575', '', '', 1, '2016-07-21 14:34:33'),
(455, '2837609451', 1, 1, 3, 'NOMI ENERGY SAVER BULB - 150W', 'NOMI ENERGY SAVER BULB - 150W', 'nomi-energy-saver-bulb---150w', 0, '', 350, 31.43, '', 'I000000136', '', '', 1, '2016-07-21 14:34:33'),
(456, '7650184392', 1, 1, 3, 'NON DIARY CREAMER RICH & CREAMY 1.7KG MILLVILLE', 'NON DIARY CREAMER RICH & CREAMY 1.7KG MILLVILLE', 'non-diary-creamer-rich-&-creamy-1.7kg-millville', 0, '', 2580, 2200, '', '78742007410', '', '', 1, '2016-07-21 14:34:33'),
(457, '3082157496', 1, 1, 3, 'NOREOS WAFER STIX', 'NOREOS WAFER STIX', 'noreos-wafer-stix', 0, '', 70, 42, '', '6152110059035', '', '', 1, '2016-07-21 14:34:33'),
(458, '2089136457', 1, 1, 3, 'NUTELLA 400G', 'NUTELLA 400G', 'nutella-400g', 0, '', 985, 820, '', '5020411119479', '', '', 1, '2016-07-21 14:34:33'),
(459, '2431869705', 1, 1, 3, 'NUTRI-C ORANGE - (PACK) 11G', 'NUTRI-C ORANGE - (PACK) 11G', 'nutri-c-orange---(pack)-11g', 0, '', 400, 316, '', '749921105950', '', '', 1, '2016-07-21 14:34:34'),
(460, '3145027968', 1, 1, 3, 'NUTRI-C ORANGE - PCS 11G', 'NUTRI-C ORANGE - PCS 11G', 'nutri-c-orange---pcs-11g', 0, '', 50, 36, '', '749921105943', '', '', 1, '2016-07-21 14:34:34'),
(461, '4735692810', 1, 1, 3, 'NUTRI-C ORANGE 1LTR (PCS)', 'NUTRI-C ORANGE 1LTR (PCS)', 'nutri-c-orange-1ltr-(pcs)', 0, '', 80, 76, '', '749921107145', '', '', 1, '2016-07-21 14:34:34'),
(462, '7596401238', 1, 1, 3, 'NUTRI-C PINEAPPLE - (PACK) 11G', 'NUTRI-C PINEAPPLE - (PACK) 11G', 'nutri-c-pineapple---(pack)-11g', 0, '', 400, 316, '', '749921106926', '', '', 1, '2016-07-21 14:34:34'),
(463, '0824675913', 1, 1, 3, 'NUTRI-C PINEAPPLE - PCS 11G', 'NUTRI-C PINEAPPLE - PCS 11G', 'nutri-c-pineapple---pcs-11g', 0, '', 30, 14.6, '', '749921106902', '', '', 1, '2016-07-21 14:34:34'),
(464, '4931508627', 1, 1, 3, 'NYLON B/S', 'NYLON B/S', 'nylon-b/s', 0, '', 140, 59, '', 'I000000404', '', '', 1, '2016-07-21 14:34:34'),
(465, '0796821354', 1, 1, 3, 'NYLON S/S', 'NYLON S/S', 'nylon-s/s', 0, '', 70, 59, '', 'I000000403', '', '', 1, '2016-07-21 14:34:34'),
(466, '3106485729', 1, 1, 3, 'OFADA RICE 2KG', 'OFADA RICE 2KG', 'ofada-rice-2kg', 0, '', 1500, 1200, '', '6009824750034', '', '', 1, '2016-07-21 14:34:34'),
(467, '6235148097', 1, 1, 3, 'OFADA RICE 500 G', 'OFADA RICE 500 G', 'ofada-rice-500-g', 0, '', 1500, 1150, '', '6009824750010', '', '', 1, '2016-07-21 14:34:34'),
(468, '3590426178', 1, 1, 3, 'OLDENBURGER 1LTR', 'OLDENBURGER 1LTR', 'oldenburger-1ltr', 0, '', 680, 633, '', '4007929450479', '', '', 1, '2016-07-21 14:34:34'),
(469, '6054728139', 1, 1, 3, 'OLIVE POMACE OIL - 4L', 'OLIVE POMACE OIL - 4L', 'olive-pomace-oil---4l', 0, '', 4550, 3925, '', '5032619123592', '', '', 1, '2016-07-21 14:34:34'),
(470, '2361948507', 1, 1, 3, 'OPTIMA KIDS BRUSH', 'OPTIMA KIDS BRUSH', 'optima-kids-brush', 0, '', 50, 33.33, '', '6945898821167', '', '', 1, '2016-07-21 14:34:34'),
(471, '1806947235', 1, 1, 3, 'ORAL B TOOTHPASTE (HERBAL MINT GEL) 140G', 'ORAL B TOOTHPASTE (HERBAL MINT GEL) 140G', 'oral-b-toothpaste-(herbal-mint-gel)-140g', 0, '', 200, 167, '', '4015600635206', '', '', 1, '2016-07-21 14:34:34'),
(472, '0973125684', 1, 1, 3, 'ORAL B TOOTHPASTE (PRO-HEALTH) 125ML/158G IMPORTED', 'ORAL B TOOTHPASTE (PRO-HEALTH) 125ML/158G IMPORTED', 'oral-b-toothpaste-(pro-health)-125ml/158g-imported', 0, '', 550, 358.03, '', '4015600546281', '', '', 1, '2016-07-21 14:34:34'),
(473, '0375261498', 1, 1, 3, 'ORAL B TOOTHPASTE 140G', 'ORAL B TOOTHPASTE 140G', 'oral-b-toothpaste-140g', 0, '', 200, 175, '', '5013965698811', '', '', 1, '2016-07-21 14:34:34'),
(474, '3157046982', 1, 1, 3, 'ORALWISE ECODENT TOOTH BRUSH', 'ORALWISE ECODENT TOOTH BRUSH', 'oralwise-ecodent-tooth-brush', 0, '', 120, 71, '', '8124512151028', '', '', 1, '2016-07-21 14:34:34'),
(475, '2569813047', 1, 1, 3, 'ORALWISE FANTASTIC PACK TOOTH BRUSH', 'ORALWISE FANTASTIC PACK TOOTH BRUSH', 'oralwise-fantastic-pack-tooth-brush', 0, '', 150, 71, '', '8464566142062', '', '', 1, '2016-07-21 14:34:34'),
(476, '7683012954', 1, 1, 3, 'ORANGE MARMALADE JAM 450G', 'ORANGE MARMALADE JAM 450G', 'orange-marmalade-jam-450g', 0, '', 595, 475, '', '8710812500095', '', '', 1, '2016-07-21 14:34:34'),
(477, '8176503942', 1, 1, 3, 'ORBIT GUM (BIG)', 'ORBIT GUM (BIG)', 'orbit-gum-(big)', 0, '', 200, 133, '', 'I000000348', '', '', 1, '2016-07-21 14:34:34'),
(478, '8041796352', 1, 1, 3, 'ORBIT GUM (SMALL)', 'ORBIT GUM (SMALL)', 'orbit-gum-(small)', 0, '', 100, 40, '', '40099705', '', '', 1, '2016-07-21 14:34:34'),
(479, '0195834762', 1, 1, 3, 'OZONE RELAXER B/S - 400G', 'OZONE RELAXER B/S - 400G', 'ozone-relaxer-b/s---400g', 0, '', 300, 220, '', '6156000071503', '', '', 1, '2016-07-21 14:34:34'),
(480, '8674501392', 1, 1, 3, 'PEANUT (BURGER)', 'PEANUT (BURGER)', 'peanut-(burger)', 0, '', 50, 42, '', '6034000004007', '', '', 1, '2016-07-21 14:34:34'),
(481, '6378012945', 1, 1, 3, 'PEARS BABY CREAM - 325G', 'PEARS BABY CREAM - 325G', 'pears-baby-cream---325g', 0, '', 360, 280, '', '6001085002969', '', '', 1, '2016-07-21 14:34:35'),
(482, '4127089536', 1, 1, 3, 'PEARS BABY LOTION - 225ML', 'PEARS BABY LOTION - 225ML', 'pears-baby-lotion---225ml', 0, '', 270, 200, '', 'I000000228', '', '', 1, '2016-07-21 14:34:35'),
(483, '4305981672', 1, 1, 3, 'PEARS BABY OIL - 225ML', 'PEARS BABY OIL - 225ML', 'pears-baby-oil---225ml', 0, '', 320, 270, '', '6001085003010', '', '', 1, '2016-07-21 14:34:35'),
(484, '1240397685', 1, 1, 3, 'PEARS BABY VASLINE - 325G', 'PEARS BABY VASLINE - 325G', 'pears-baby-vasline---325g', 0, '', 410, 350, '', 'I000000306', '', '', 1, '2016-07-21 14:34:35'),
(485, '9413650827', 1, 1, 3, 'PEARS TRANSPARENT SOAP', 'PEARS TRANSPARENT SOAP', 'pears-transparent-soap', 0, '', 250, 167, '', '5017306008321', '', '', 1, '2016-07-21 14:34:35'),
(486, '1629853470', 1, 1, 3, 'PENCIL', 'PENCIL', 'pencil', 0, '', 10, 0.08, '', 'I000000391', '', '', 1, '2016-07-21 14:34:35'),
(487, '5406792813', 1, 1, 3, 'PEPSODENT  140g', 'PEPSODENT  140g', 'pepsodent--140g', 0, '', 200, 185, '', 'I000000410', '', '', 1, '2016-07-21 14:34:35'),
(488, '4213965087', 1, 1, 3, 'PERFECT LINE PERFUME', 'PERFECT LINE PERFUME', 'perfect-line-perfume', 0, '', 350, 220, '', 'I000000239', '', '', 1, '2016-07-21 14:34:35'),
(489, '9065417382', 1, 1, 3, 'PERFECT WHITE (CUP) - 150ML', 'PERFECT WHITE (CUP) - 150ML', 'perfect-white-(cup)---150ml', 0, '', 330, 270, '', '6181100530407', '', '', 1, '2016-07-21 14:34:35'),
(490, '7301584926', 1, 1, 3, 'PERFECT WHITE (TUBE) - 30ML', 'PERFECT WHITE (TUBE) - 30ML', 'perfect-white-(tube)---30ml', 0, '', 250, 170, '', '6181100532777', '', '', 1, '2016-07-21 14:34:35'),
(491, '2783614059', 1, 1, 3, 'PERFECT WHITE LOTION', 'PERFECT WHITE LOTION', 'perfect-white-lotion', 0, '', 500, 420, '', 'I000000226', '', '', 1, '2016-07-21 14:34:35'),
(492, '6940813527', 1, 1, 3, 'PERFECT WHITE SOAP 180G', 'PERFECT WHITE SOAP 180G', 'perfect-white-soap-180g', 0, '', 480, 275, '', '6181100530414', '', '', 1, '2016-07-21 14:34:35'),
(493, '9045386721', 1, 1, 3, 'PG DECAFE 40G', 'PG DECAFE 40G', 'pg-decafe-40g', 0, '', 950, 800, '', '5000118082467', '', '', 1, '2016-07-21 14:34:35'),
(494, '8270164539', 1, 1, 3, 'PG ORIGINAL 40G', 'PG ORIGINAL 40G', 'pg-original-40g', 0, '', 1050, 933, '', '8712100711985', '', '', 1, '2016-07-21 14:34:35'),
(495, '8507421936', 1, 1, 3, 'PIN POP (LOLLY POP)', 'PIN POP (LOLLY POP)', 'pin-pop-(lolly-pop)', 0, '', 30, 18, '', 'I000000249', '', '', 1, '2016-07-21 14:34:35'),
(496, '2173940658', 1, 1, 3, 'PINEAPPLE JAM 450G', 'PINEAPPLE JAM 450G', 'pineapple-jam-450g', 0, '', 595, 475, '', '8710812092248', '', '', 1, '2016-07-21 14:34:35'),
(497, '2390548617', 1, 1, 3, 'PLANTAIN CHIPS', 'PLANTAIN CHIPS', 'plantain-chips', 0, '', 50, 40, '', 'I000000438', '', '', 1, '2016-07-21 14:34:35'),
(498, '2087654931', 1, 1, 3, 'PLANTAIN FLOUR - 0.9KG', 'PLANTAIN FLOUR - 0.9KG', 'plantain-flour---0.9kg', 0, '', 750, 500, '', '6151100001399', '', '', 1, '2016-07-21 14:34:35'),
(499, '1972805346', 1, 1, 3, 'PLANTAIN FLOUR - 1.8KG', 'PLANTAIN FLOUR - 1.8KG', 'plantain-flour---1.8kg', 0, '', 1350, 1000, '', '6151100001405', '', '', 1, '2016-07-21 14:34:35'),
(500, '6120943758', 1, 1, 3, 'POUNDED YAM FLOUR - 0.9KG', 'POUNDED YAM FLOUR - 0.9KG', 'pounded-yam-flour---0.9kg', 0, '', 880, 795, '', '650655244825', '', '', 1, '2016-07-21 14:34:35'),
(501, '0951684732', 1, 1, 3, 'POUNDED YAM FLOUR - 2KG', 'POUNDED YAM FLOUR - 2KG', 'pounded-yam-flour---2kg', 0, '', 2050, 1775, '', '650655244856', '', '', 1, '2016-07-21 14:34:36'),
(502, '2986351407', 1, 1, 3, 'POUNDED YAM FLOUR - 4.5KG', 'POUNDED YAM FLOUR - 4.5KG', 'pounded-yam-flour---4.5kg', 0, '', 4200, 3550, '', '650655244702', '', '', 1, '2016-07-21 14:34:36'),
(503, '9240568317', 1, 1, 3, 'PRAWN CRACKERS', 'PRAWN CRACKERS', 'prawn-crackers', 0, '', 500, 570, '', '8934746053148', '', '', 1, '2016-07-21 14:34:36'),
(504, '4375286901', 1, 1, 3, 'PRAWN CRACKERS', 'PRAWN CRACKERS', 'prawn-crackers', 0, '', 325, 250, '', 'I000000639', '', '', 1, '2016-07-21 14:34:36'),
(505, '6190452378', 1, 1, 10, 'BRAVO POCKET SPRAY', 'BRAVO POCKET SPRAY', 'bravo-pocket-spray', 0, '', 450, 292, '', '678045725198', '', '', 1, '2016-07-21 14:34:36'),
(506, '2903517648', 1, 1, 10, 'BRUT DEODORANT (MUSK) - 200ML', 'BRUT DEODORANT (MUSK) - 200ML', 'brut-deodorant-(musk)---200ml', 0, '', 675, 383, '', '3014230022401', '', '', 1, '2016-07-21 14:34:36'),
(507, '6187439520', 1, 1, 10, 'BRUT DEODORANT (OCEANS) - 200ML', 'BRUT DEODORANT (OCEANS) - 200ML', 'brut-deodorant-(oceans)---200ml', 0, '', 675, 383, '', '8717163961988', '', '', 1, '2016-07-21 14:34:36'),
(508, '3249078165', 1, 1, 10, 'BRUT DEODORANT (ORIGINAL) - 200ML', 'BRUT DEODORANT (ORIGINAL) - 200ML', 'brut-deodorant-(original)---200ml', 0, '', 675, 383, '', '3014230021404', '', '', 1, '2016-07-21 14:34:36'),
(509, '4631598027', 1, 1, 10, 'ESKODA PINK POCKET SPRAY', 'ESKODA PINK POCKET SPRAY', 'eskoda-pink-pocket-spray', 0, '', 450, 292, '', '678045725259', '', '', 1, '2016-07-21 14:34:36'),
(510, '1382674950', 1, 1, 10, 'EXPLORE GOLD SPRAY', 'EXPLORE GOLD SPRAY', 'explore-gold-spray', 0, '', 745, 500, '', '6987241393426', '', '', 1, '2016-07-21 14:34:36'),
(511, '8039725614', 1, 1, 10, 'EXPLORE POCKET SPRAY', 'EXPLORE POCKET SPRAY', 'explore-pocket-spray', 0, '', 450, 292, '', '678045725297', '', '', 1, '2016-07-21 14:34:36'),
(512, '3197256804', 1, 1, 10, 'EXPLORE SPRAY', 'EXPLORE SPRAY', 'explore-spray', 0, '', 745, 500, '', '698724139153', '', '', 1, '2016-07-21 14:34:36'),
(513, '9548103762', 1, 1, 10, 'EXPLORE WOMAN SPRAY', 'EXPLORE WOMAN SPRAY', 'explore-woman-spray', 0, '', 765, 500, '', '698724139160', '', '', 1, '2016-07-21 14:34:36'),
(514, '7568091234', 1, 1, 10, 'PONDS MAGIC POWDER', 'PONDS MAGIC POWDER', 'ponds-magic-powder', 0, '', 245, 167, '', '8851932111805', '', '', 1, '2016-07-21 14:34:36'),
(515, '1783024569', 1, 1, 10, 'PONDS OIL CONTROL', 'PONDS OIL CONTROL', 'ponds-oil-control', 0, '', 400, 300, '', '8901030323874', '', '', 1, '2016-07-21 14:34:36'),
(516, '0486593217', 1, 1, 10, 'PURE LOVE POCKET SPRAY', 'PURE LOVE POCKET SPRAY', 'pure-love-pocket-spray', 0, '', 450, 292, '', '678045725242', '', '', 1, '2016-07-21 14:34:36'),
(517, '9605132874', 1, 1, 4, 'ACTION BITTERS', 'ACTION BITTERS', 'action-bitters', 0, '', 100, 80, '', 'I000000209', '', '', 1, '2016-07-21 14:34:36'),
(518, '8931240567', 1, 1, 4, 'ACTION BITTERS B', 'ACTION BITTERS B', 'action-bitters-b', 0, '', 250, 220, '', 'I000000406', '', '', 1, '2016-07-21 14:34:36'),
(519, '0138975624', 1, 1, 4, 'BREAD (100)', 'BREAD (100)', 'bread-(100)', 0, '', 100, 0, '', 'I000000134', '', '', 1, '2016-07-21 14:34:37'),
(520, '0725849136', 1, 1, 4, 'KEREWA', 'KEREWA', 'kerewa', 0, '', 100, 80, '', 'I000000210', '', '', 1, '2016-07-21 14:34:37'),
(521, '8936014257', 1, 1, 18, 'INFINITY COCO BALLS - 350G', 'INFINITY COCO BALLS - 350G', 'infinity-coco-balls---350g', 0, '', 430, 350, '', '6156000042466', '', '', 1, '2016-07-21 14:34:37'),
(522, '6314590278', 1, 1, 18, 'INFINITY CORNFLAKES - 1KG', 'INFINITY CORNFLAKES - 1KG', 'infinity-cornflakes---1kg', 0, '', 955, 897, '', '6156000057781', '', '', 1, '2016-07-21 14:34:37'),
(523, '3489726051', 1, 1, 18, 'INFINITY CORNFLAKES - 350G', 'INFINITY CORNFLAKES - 350G', 'infinity-cornflakes---350g', 0, '', 400, 340, '', '6156000057354', '', '', 1, '2016-07-21 14:34:37'),
(524, '3258416970', 1, 1, 18, 'INFINITY CORNFLAKES - 500G', 'INFINITY CORNFLAKES - 500G', 'infinity-cornflakes---500g', 0, '', 550, 468, '', '6156000057774', '', '', 1, '2016-07-21 14:34:37'),
(525, '9823175460', 1, 1, 18, 'INFINITY FRUIT CRUNCHIES - 350G', 'INFINITY FRUIT CRUNCHIES - 350G', 'infinity-fruit-crunchies---350g', 0, '', 430, 350, '', '6156000042398', '', '', 1, '2016-07-21 14:34:37'),
(526, '9758106324', 1, 1, 18, 'INFINITY MAGIC CRUNCH - 350G', 'INFINITY MAGIC CRUNCH - 350G', 'infinity-magic-crunch---350g', 0, '', 495, 410, '', '6156000042176', '', '', 1, '2016-07-21 14:34:37'),
(527, '9543217806', 1, 1, 23, 'CAREX HAND SANITIZER', 'CAREX HAND SANITIZER', 'carex-hand-sanitizer', 0, '', 450, 375, '', '8998103012001', '', '', 1, '2016-07-21 14:34:37'),
(528, '0859364172', 1, 1, 17, 'GULDER', 'GULDER', 'gulder', 0, '', 150, 109.45, '', '5025866000259', '', '', 1, '2016-07-21 14:34:37'),
(529, '2586473019', 1, 1, 17, 'MAMA LEMON (BIG)', 'MAMA LEMON (BIG)', 'mama-lemon-(big)', 0, '', 450, 325, '', '9259932005329', '', '', 1, '2016-07-21 14:34:37'),
(530, '0291458736', 1, 1, 17, 'MAMA LEMON (MEDIUM)', 'MAMA LEMON (MEDIUM)', 'mama-lemon-(medium)', 0, '', 265, 178, '', '9259932002328', '', '', 1, '2016-07-21 14:34:37'),
(531, '0862917543', 1, 1, 17, 'MAMA LEMON (SMALL)', 'MAMA LEMON (SMALL)', 'mama-lemon-(small)', 0, '', 150, 73, '', '9259932001239', '', '', 1, '2016-07-21 14:34:37'),
(532, '5841796032', 1, 1, 24, 'MAMA GOLD RICE 10KG', 'MAMA GOLD RICE 10KG', 'mama-gold-rice-10kg', 0, '', 2945, 2400, '', 'I000000559', '', '', 1, '2016-07-21 14:34:37'),
(533, '2076891453', 1, 1, 24, 'MAMA GOLD RICE 5KG', 'MAMA GOLD RICE 5KG', 'mama-gold-rice-5kg', 0, '', 1505, 1200, '', 'I000000563', '', '', 1, '2016-07-21 14:34:37'),
(534, '5943621780', 1, 1, 5, '3 BALLERINA HERBAL TEA', '3 BALLERINA HERBAL TEA', '3-ballerina-herbal-tea', 0, '', 825, 700, '', '781308001288', '', '', 1, '2016-07-21 14:34:37'),
(535, '4158069237', 1, 1, 5, 'ACTIVE MAN 37.5G', 'ACTIVE MAN 37.5G', 'active-man-37.5g', 0, '', 755, 600, '', '4796006751119', '', '', 1, '2016-07-21 14:34:38'),
(536, '5034296781', 1, 1, 5, 'BABY CHERIE COTTON BUD (BIG)', 'BABY CHERIE COTTON BUD (BIG)', 'baby-cherie-cotton-bud-(big)', 0, '', 200, 100, '', '8850014421153', '', '', 1, '2016-07-21 14:34:38'),
(537, '4903625817', 1, 1, 5, 'BABY CHERIE COTTON BUD (SMALL)', 'BABY CHERIE COTTON BUD (SMALL)', 'baby-cherie-cotton-bud-(small)', 0, '', 120, 63, '', '8850014429876', '', '', 1, '2016-07-21 14:34:38'),
(538, '1932506487', 1, 1, 5, 'CALIFORNIA SCENT (CAR) - 42G', 'CALIFORNIA SCENT (CAR) - 42G', 'california-scent-(car)---42g', 0, '', 650, 467, '', '91400000059', '', '', 1, '2016-07-21 14:34:38'),
(539, '6758940132', 1, 1, 5, 'CALIFORNIA SCENT CAR SLIDERS (CAPISTRANO COCONUT) - 28G', 'CALIFORNIA SCENT CAR SLIDERS (CAPISTRANO COCONUT) - 28G', 'california-scent-car-sliders-(capistrano-coconut)-', 0, '', 650, 467, '', '91400023522', '', '', 1, '2016-07-21 14:34:38'),
(540, '1983467250', 1, 1, 5, 'CALIFORNIA SCENT CAR SLIDERS (CORONADO CHERRY) - 28G', 'CALIFORNIA SCENT CAR SLIDERS (CORONADO CHERRY) - 28G', 'california-scent-car-sliders-(coronado-cherry)---2', 0, '', 650, 467, '', '91400023508', '', '', 1, '2016-07-21 14:34:38'),
(541, '8056972431', 1, 1, 5, 'CALIFORNIA SCENT CAR SLIDERS (GOLDEN STATE DELIGHT) - 28G', 'CALIFORNIA SCENT CAR SLIDERS (GOLDEN STATE DELIGHT) - 28G', 'california-scent-car-sliders-(golden-state-delight', 0, '', 650, 467, '', '91400023539', '', '', 1, '2016-07-21 14:34:38'),
(542, '8617459032', 1, 1, 5, 'CALIFORNIA SCENT CAR SLIDERS (LAGUNA BREEZE) - 28G', 'CALIFORNIA SCENT CAR SLIDERS (LAGUNA BREEZE) - 28G', 'california-scent-car-sliders-(laguna-breeze)---28g', 0, '', 650, 467, '', '91400023485', '', '', 1, '2016-07-21 14:34:38'),
(543, '9702561384', 1, 1, 5, 'CALIFORNIA SCENT CAR SLIDERS (SHASTA STRAWBERRY) - 28G', 'CALIFORNIA SCENT CAR SLIDERS (SHASTA STRAWBERRY) - 28G', 'california-scent-car-sliders-(shasta-strawberry)--', 0, '', 650, 467, '', '91400023515', '', '', 1, '2016-07-21 14:34:38'),
(544, '7458302961', 1, 1, 5, 'FAT BURNER 60G', 'FAT BURNER 60G', 'fat-burner-60g', 0, '', 715, 600, '', 'I000000586', '', '', 1, '2016-07-21 14:34:38'),
(545, '6792540138', 1, 1, 5, 'HAND WASH (ALOE VERA & LOTUS) - 500ML', 'HAND WASH (ALOE VERA & LOTUS) - 500ML', 'hand-wash-(aloe-vera-&-lotus)---500ml', 0, '', 450, 366, '', '5060060210486', '', '', 1, '2016-07-21 14:34:39'),
(546, '6945082137', 1, 1, 5, 'HAND WASH (CHOCOLATE ORANGE) - 500ML', 'HAND WASH (CHOCOLATE ORANGE) - 500ML', 'hand-wash-(chocolate-orange)---500ml', 0, '', 450, 366, '', '5060060210387', '', '', 1, '2016-07-21 14:34:39'),
(547, '4591037286', 1, 1, 5, 'HAND WASH (CLEAN & PROTECT) - 500ML', 'HAND WASH (CLEAN & PROTECT) - 500ML', 'hand-wash-(clean-&-protect)---500ml', 0, '', 450, 366, '', '5060060210646', '', '', 1, '2016-07-21 14:34:39'),
(548, '0863475192', 1, 1, 5, 'HAND WASH (MILK & HONEY) - 500ML', 'HAND WASH (MILK & HONEY) - 500ML', 'hand-wash-(milk-&-honey)---500ml', 0, '', 450, 366, '', '48256245509', '', '', 1, '2016-07-21 14:34:39'),
(549, '3812759460', 1, 1, 5, 'HAND WASH (SILKE SOFT) - 500ML', 'HAND WASH (SILKE SOFT) - 500ML', 'hand-wash-(silke-soft)---500ml', 0, '', 450, 366, '', '5060060210080', '', '', 1, '2016-07-21 14:34:39'),
(550, '1596803247', 1, 1, 5, 'LU BLUE TOILET FLUSH (BLUE) - 50G', 'LU BLUE TOILET FLUSH (BLUE) - 50G', 'lu-blue-toilet-flush-(blue)---50g', 0, '', 130, 67, '', '5011136700172', '', '', 1, '2016-07-21 14:34:39'),
(551, '7382609154', 1, 1, 5, 'MORINGA HERBAL INFUSION', 'MORINGA HERBAL INFUSION', 'moringa-herbal-infusion', 0, '', 715, 600, '', '4796006752079', '', '', 1, '2016-07-21 14:34:39'),
(552, '3217905468', 1, 1, 5, 'PUNCH & JUDY (ORANGEY) - 50ML', 'PUNCH & JUDY (ORANGEY) - 50ML', 'punch-&-judy-(orangey)---50ml', 0, '', 450, 350, '', '0', '', '', 1, '2016-07-21 14:34:39'),
(553, '4893612750', 1, 1, 5, 'PUNCH & JUDY (TUTTI FRUTTI) - 50ML', 'PUNCH & JUDY (TUTTI FRUTTI) - 50ML', 'punch-&-judy-(tutti-frutti)---50ml', 0, '', 450, 350, '', '5031676004110', '', '', 1, '2016-07-21 14:34:39'),
(554, '5679803214', 1, 1, 5, 'PUNCH & JUDY (VERY BERRY) - 50ML', 'PUNCH & JUDY (VERY BERRY) - 50ML', 'punch-&-judy-(very-berry)---50ml', 0, '', 450, 350, '', '0', '', '', 1, '2016-07-21 14:34:39'),
(555, '0149563872', 1, 1, 6, 'ABONIKI', 'ABONIKI', 'aboniki', 0, '', 150, 112.5, '', '6156000046105', '', '', 1, '2016-07-21 14:34:39'),
(556, '3752048916', 1, 1, 6, 'ALABUKUN', 'ALABUKUN', 'alabukun', 0, '', 50, 30, '', 'I000000115', '', '', 1, '2016-07-21 14:34:39'),
(557, '2369157048', 1, 1, 6, 'ANDREW LIVER SALT', 'ANDREW LIVER SALT', 'andrew-liver-salt', 0, '', 50, 32, '', '6161105660293', '', '', 1, '2016-07-21 14:34:40'),
(558, '7256198403', 1, 1, 6, 'B29', 'B29', 'b29', 0, '', 80, 68, '', '8992929150169', '', '', 1, '2016-07-21 14:34:40'),
(559, '5924387106', 1, 1, 6, 'BAKED BEANS S/S', 'BAKED BEANS S/S', 'baked-beans-s/s', 0, '', 190, 175, '', 'I000000369', '', '', 1, '2016-07-21 14:34:40'),
(560, '4953260871', 1, 1, 6, 'BEST CREAM', 'BEST CREAM', 'best-cream', 0, '', 70, 32, '', 'I000000173', '', '', 1, '2016-07-21 14:34:40'),
(561, '5382967140', 1, 1, 6, 'BROWN ENVELOPE (OFFICE)', 'BROWN ENVELOPE (OFFICE)', 'brown-envelope-(office)', 0, '', 10, 63.16, '', 'I000000139', '', '', 1, '2016-07-21 14:34:40'),
(562, '4915380726', 1, 1, 6, 'BUTTER BREAD', 'BUTTER BREAD', 'butter-bread', 0, '', 10, 9.3, '', 'I000000244', '', '', 1, '2016-07-21 14:34:40'),
(563, '0736412589', 1, 1, 6, 'CABIN BISCUIT', 'CABIN BISCUIT', 'cabin-biscuit', 0, '', 200, 170, '', '6156000048086', '', '', 1, '2016-07-21 14:34:40'),
(564, '7630421589', 1, 1, 6, 'CEDAA YOGHURT', 'CEDAA YOGHURT', 'cedaa-yoghurt', 0, '', 120, 83, '', 'I000000264', '', '', 1, '2016-07-21 14:34:40'),
(565, '8159637024', 1, 1, 6, 'CONDENSED MILK', 'CONDENSED MILK', 'condensed-milk', 0, '', 120, 108, '', '87162318', '', '', 1, '2016-07-21 14:34:40');
INSERT INTO `tblproducts` (`id`, `sku`, `category_id`, `subcategory_id`, `supplier_id`, `name`, `description`, `slug`, `flat_discount`, `percent_discount`, `selling_price`, `cost_price`, `image`, `barcode1`, `barcode2`, `barcode3`, `status`, `created`) VALUES
(566, '4617320958', 1, 1, 6, 'CONDOM (GOLD CIRCLE)', 'CONDOM (GOLD CIRCLE)', 'condom-(gold-circle)', 0, '', 50, 17, '', 'I000000118', '', '', 1, '2016-07-21 14:34:40'),
(567, '6024935187', 1, 1, 6, 'COTTON BUD', 'COTTON BUD', 'cotton-bud', 0, '', 20, 15, '', '8938505873046', '', '', 1, '2016-07-21 14:34:40'),
(568, '4718235096', 1, 1, 6, 'DALLAS HAIR CREAM', 'DALLAS HAIR CREAM', 'dallas-hair-cream', 0, '', 200, 100, '', 'I000000185', '', '', 1, '2016-07-21 14:34:41'),
(569, '8201643975', 1, 1, 6, 'DE-BEST INSECTICIDE', 'DE-BEST INSECTICIDE', 'de-best-insecticide', 0, '', 100, 79, '', 'I000000145', '', '', 1, '2016-07-21 14:34:41'),
(570, '8936417520', 1, 1, 6, 'DIGESTIVE GOLD', 'DIGESTIVE GOLD', 'digestive-gold', 0, '', 50, 40, '', 'I000000324', '', '', 1, '2016-07-21 14:34:41'),
(571, '6075149382', 1, 1, 6, 'DIGESTIVE PLUS', 'DIGESTIVE PLUS', 'digestive-plus', 0, '', 30, 20, '', '6156000006307', '', '', 1, '2016-07-21 14:34:41'),
(572, '1467208539', 1, 1, 6, 'DONS HAIR CREAM', 'DONS HAIR CREAM', 'dons-hair-cream', 0, '', 100, 50, '', 'I000000183', '', '', 1, '2016-07-21 14:34:41'),
(573, '1549726083', 1, 1, 6, 'DR NICE TOOTH BRUSH', 'DR NICE TOOTH BRUSH', 'dr-nice-tooth-brush', 0, '', 50, 30, '', 'I000000307', '', '', 1, '2016-07-21 14:34:41'),
(574, '7514396208', 1, 1, 6, 'EGG (BIG)', 'EGG (BIG)', 'egg-(big)', 0, '', 40, 25, '', 'I000000311', '', '', 1, '2016-07-21 14:34:41'),
(575, '9856247013', 1, 1, 6, 'EGG (SMALL)', 'EGG (SMALL)', 'egg-(small)', 0, '', 30, 25, '', 'I000000597', '', '', 1, '2016-07-21 14:34:41'),
(576, '8069735421', 1, 1, 6, 'EGG CRATE (BIG)', 'EGG CRATE (BIG)', 'egg-crate-(big)', 0, '', 1050, 870, '', 'I000000314', '', '', 1, '2016-07-21 14:34:41'),
(577, '5870926143', 1, 1, 6, 'EGG CRATE (SMALL)', 'EGG CRATE (SMALL)', 'egg-crate-(small)', 0, '', 800, 600, '', 'I000000582', '', '', 1, '2016-07-21 14:34:41'),
(578, '5082467913', 1, 1, 6, 'EGG HALF CRATE (BIG)', 'EGG HALF CRATE (BIG)', 'egg-half-crate-(big)', 0, '', 550, 400, '', 'I000000514', '', '', 1, '2016-07-21 14:34:41'),
(579, '8095273641', 1, 1, 6, 'EGG HALF CRATE (SMALL)', 'EGG HALF CRATE (SMALL)', 'egg-half-crate-(small)', 0, '', 450, 250, '', 'I000000596', '', '', 1, '2016-07-21 14:34:41'),
(580, '8546170392', 1, 1, 6, 'FAMILY JELLY', 'FAMILY JELLY', 'family-jelly', 0, '', 70, 47, '', 'I000000168', '', '', 1, '2016-07-21 14:34:41'),
(581, '3249068715', 1, 1, 6, 'FORMULA TOOTH BRUSH', 'FORMULA TOOTH BRUSH', 'formula-tooth-brush', 0, '', 100, 79, '', '8991102022422', '', '', 1, '2016-07-21 14:34:41'),
(582, '0946735812', 1, 1, 6, 'FORMULA TOOTH BRUSH (SYSTEM)', 'FORMULA TOOTH BRUSH (SYSTEM)', 'formula-tooth-brush-(system)', 0, '', 100, 79, '', '8991102021210', '', '', 1, '2016-07-21 14:34:41'),
(583, '4072615893', 1, 1, 6, 'GALACTIC SWEET', 'GALACTIC SWEET', 'galactic-sweet', 0, '', 5, 3, '', 'I000000308', '', '', 1, '2016-07-21 14:34:41'),
(584, '1853769204', 1, 1, 6, 'GAS LIGHTER', 'GAS LIGHTER', 'gas-lighter', 0, '', 30, 20, '', '6939009687988', '', '', 1, '2016-07-21 14:34:41'),
(585, '6754109382', 1, 1, 6, 'GAS LIGHTER (TORCH)', 'GAS LIGHTER (TORCH)', 'gas-lighter-(torch)', 0, '', 50, 40, '', 'I000000126', '', '', 1, '2016-07-21 14:34:41'),
(586, '1982067534', 1, 1, 6, 'GIV SOAP', 'GIV SOAP', 'giv-soap', 0, '', 70, 50, '', 'I000000241', '', '', 1, '2016-07-21 14:34:41'),
(587, '0147693852', 1, 1, 6, 'GREEN PEAS', 'GREEN PEAS', 'green-peas', 0, '', 270, 0, '', 'I000000277', '', '', 1, '2016-07-21 14:34:41'),
(588, '4951082637', 1, 1, 6, 'GUM (FRESH OLIVE)', 'GUM (FRESH OLIVE)', 'gum-(fresh-olive)', 0, '', 5, 3.7, '', 'I000000119', '', '', 1, '2016-07-21 14:34:42'),
(589, '7621308495', 1, 1, 6, 'HAND WASH', 'HAND WASH', 'hand-wash', 0, '', 400, 300, '', '5021156170190', '', '', 1, '2016-07-21 14:34:42'),
(590, '4827930156', 1, 1, 6, 'HAND WASH', 'HAND WASH', 'hand-wash', 0, '', 400, 300, '', '8714789795652', '', '', 1, '2016-07-21 14:34:42'),
(591, '2764089135', 1, 1, 6, 'HEINZ KETCHUP 300g', 'HEINZ KETCHUP 300g', 'heinz-ketchup-300g', 0, '', 350, 284, '', 'I000000435', '', '', 1, '2016-07-21 14:34:42'),
(592, '5691842073', 1, 1, 6, 'JACK \'N\'  JILL BISCUIT', 'JACK \'N\'  JILL BISCUIT', 'jack-\'n\'--jill-biscuit', 0, '', 70, 58, '', '8850309011205', '', '', 1, '2016-07-21 14:34:42'),
(593, '5640378129', 1, 1, 6, 'JACK \'N\'  JILL BISCUIT (PACK)', 'JACK \'N\'  JILL BISCUIT (PACK)', 'jack-\'n\'--jill-biscuit-(pack)', 0, '', 785, 700, '', '8850309011236', '', '', 1, '2016-07-21 14:34:42'),
(594, '6571204389', 1, 1, 6, 'KONACAFE CANDY', 'KONACAFE CANDY', 'konacafe-candy', 0, '', 5, 3.25, '', 'I000000161', '', '', 1, '2016-07-21 14:34:42'),
(595, '9487210563', 1, 1, 6, 'LUNA EVAP MILK 170G', 'LUNA EVAP MILK 170G', 'luna-evap-milk-170g', 0, '', 140, 112.5, '', '6281020051515', '', '', 1, '2016-07-21 14:34:42'),
(596, '1569872430', 1, 1, 6, 'MILKOSE', 'MILKOSE', 'milkose', 0, '', 5, 5.85, '', 'I000000162', '', '', 1, '2016-07-21 14:34:42'),
(597, '5046718923', 1, 1, 6, 'NOREOS', 'NOREOS', 'noreos', 0, '', 10, 9.3, '', 'I000000143', '', '', 1, '2016-07-21 14:34:42'),
(598, '8273045619', 1, 1, 6, 'NUTRI MILK (APPLE) - 210ML', 'NUTRI MILK (APPLE) - 210ML', 'nutri-milk-(apple)---210ml', 0, '', 50, 37.5, '', '6152110057840', '', '', 1, '2016-07-21 14:34:42'),
(599, '1902364785', 1, 1, 6, 'NUTRI MILK (APPLE) - 520ML', 'NUTRI MILK (APPLE) - 520ML', 'nutri-milk-(apple)---520ml', 0, '', 120, 82, '', '6156000010687', '', '', 1, '2016-07-21 14:34:42'),
(600, '5670123894', 1, 1, 6, 'NUTRI MILK (ORANGE)', 'NUTRI MILK (ORANGE)', 'nutri-milk-(orange)', 0, '', 120, 82, '', 'I000000107', '', '', 1, '2016-07-21 14:34:42'),
(601, '4973605182', 1, 1, 6, 'NUTRI MILK (PEAR) 520ML', 'NUTRI MILK (PEAR) 520ML', 'nutri-milk-(pear)-520ml', 0, '', 120, 82, '', '6154000006938', '', '', 1, '2016-07-21 14:34:42'),
(602, '9108653247', 1, 1, 6, 'NUTRI MILK (PINEAPPLE) - 210ML', 'NUTRI MILK (PINEAPPLE) - 210ML', 'nutri-milk-(pineapple)---210ml', 0, '', 50, 37.5, '', '6152110057857', '', '', 1, '2016-07-21 14:34:43'),
(603, '2486930571', 1, 1, 6, 'NUTRI MILK (PINEAPPLE) - 520ML', 'NUTRI MILK (PINEAPPLE) - 520ML', 'nutri-milk-(pineapple)---520ml', 0, '', 120, 82, '', '6154000006976', '', '', 1, '2016-07-21 14:34:43'),
(604, '5279684301', 1, 1, 6, 'OKIN SOAP', 'OKIN SOAP', 'okin-soap', 0, '', 50, 25, '', 'I000000206', '', '', 1, '2016-07-21 14:34:43'),
(605, '2147089365', 1, 1, 6, 'OLYMPIC MILK', 'OLYMPIC MILK', 'olympic-milk', 0, '', 110, 92, '', '6033000101150', '', '', 1, '2016-07-21 14:34:43'),
(606, '9617243058', 1, 1, 6, 'ONWARD NOTE BOOK (LONG)', 'ONWARD NOTE BOOK (LONG)', 'onward-note-book-(long)', 0, '', 100, 90, '', 'I000000116', '', '', 1, '2016-07-21 14:34:43'),
(607, '7548092361', 1, 1, 6, 'OZONE RELAXER M/S', 'OZONE RELAXER M/S', 'ozone-relaxer-m/s', 0, '', 220, 140, '', 'I000000355', '', '', 1, '2016-07-21 14:34:43'),
(608, '1082476395', 1, 1, 6, 'OZONE RELAXER S/S', 'OZONE RELAXER S/S', 'ozone-relaxer-s/s', 0, '', 180, 110, '', 'I000000245', '', '', 1, '2016-07-21 14:34:43'),
(609, '4362058197', 1, 1, 6, 'PLASTER', 'PLASTER', 'plaster', 0, '', 20, 4.5, '', 'I000000125', '', '', 1, '2016-07-21 14:34:43'),
(610, '8641259073', 1, 1, 6, 'PROCOLD', 'PROCOLD', 'procold', 0, '', 50, 40, '', 'I000000274', '', '', 1, '2016-07-21 14:34:43'),
(611, '8396170245', 1, 1, 14, 'CHICKEN SEASONING 184G', 'CHICKEN SEASONING 184G', 'chicken-seasoning-184g', 0, '', 395, 325, '', '76114307700', '', '', 1, '2016-07-21 14:34:43'),
(612, '3496287015', 1, 1, 14, 'CURRY POWDER 71G', 'CURRY POWDER 71G', 'curry-powder-71g', 0, '', 395, 325, '', '76114307557', '', '', 1, '2016-07-21 14:34:43'),
(613, '6905134278', 1, 1, 14, 'FISH SEASONING 198G', 'FISH SEASONING 198G', 'fish-seasoning-198g', 0, '', 395, 325, '', '76114307601', '', '', 1, '2016-07-21 14:34:43'),
(614, '7921538460', 1, 1, 14, 'FRIED RICE SPICE (WITH HERBS) 121G', 'FRIED RICE SPICE (WITH HERBS) 121G', 'fried-rice-spice-(with-herbs)-121g', 0, '', 395, 325, '', '76114305140', '', '', 1, '2016-07-21 14:34:43'),
(615, '3065792841', 1, 1, 14, 'GARLIC POWDER 71G', 'GARLIC POWDER 71G', 'garlic-powder-71g', 0, '', 395, 325, '', '76114303405', '', '', 1, '2016-07-21 14:34:43'),
(616, '8065372914', 1, 1, 14, 'JOLLOF RICE SPICE (GENNA STYLE) 156G', 'JOLLOF RICE SPICE (GENNA STYLE) 156G', 'jollof-rice-spice-(genna-style)-156g', 0, '', 395, 325, '', '76114305263', '', '', 1, '2016-07-21 14:34:43'),
(617, '1089245763', 1, 1, 14, 'JOLLOF RICE SPICE (SOMA STYLE) 156G', 'JOLLOF RICE SPICE (SOMA STYLE) 156G', 'jollof-rice-spice-(soma-style)-156g', 0, '', 395, 325, '', '76114305270', '', '', 1, '2016-07-21 14:34:43'),
(618, '9420716358', 1, 1, 14, 'MEAT TENDERIZER (SEASONED) 227G', 'MEAT TENDERIZER (SEASONED) 227G', 'meat-tenderizer-(seasoned)-227g', 0, '', 395, 325, '', '76114305300', '', '', 1, '2016-07-21 14:34:44'),
(619, '3487096251', 1, 1, 7, 'ADJELE PALM OIL 1L', 'ADJELE PALM OIL 1L', 'adjele-palm-oil-1l', 0, '', 825, 750, '', 'I000000627', '', '', 1, '2016-07-21 14:34:44'),
(620, '5679083241', 1, 1, 7, 'ADJELE UNPOLISHED WHOLE GRAIN RICE', 'ADJELE UNPOLISHED WHOLE GRAIN RICE', 'adjele-unpolished-whole-grain-rice', 0, '', 850, 750, '', 'I000000625', '', '', 1, '2016-07-21 14:34:44'),
(621, '3024875691', 1, 1, 7, 'ADJELE UNPOLISHED WHOLE GRAIN RICE 10KG', 'ADJELE UNPOLISHED WHOLE GRAIN RICE 10KG', 'adjele-unpolished-whole-grain-rice-10kg', 0, '', 5250, 4800, '', 'I000000626', '', '', 1, '2016-07-21 14:34:44'),
(622, '8962457013', 1, 1, 25, 'PEDIGREE CHICKEN (DOG FOOD) 400G', 'PEDIGREE CHICKEN (DOG FOOD) 400G', 'pedigree-chicken-(dog-food)-400g', 0, '', 385, 292, '', 'I000000624', '', '', 1, '2016-07-21 14:34:44'),
(623, '9835604712', 1, 1, 26, 'MRCREAM - 450ML', 'MRCREAM - 450ML', 'mrcream---450ml', 0, '', 175, 150, '', '6156000053127', '', '', 1, '2016-07-21 14:34:44'),
(624, '7061293458', 1, 1, 27, 'PERFORMA INSANT CONDITIONER 500ML', 'PERFORMA INSANT CONDITIONER 500ML', 'performa-insant-conditioner-500ml', 0, '', 150, 75, '', 'I000000591', '', '', 1, '2016-07-21 14:34:44'),
(625, '2986415037', 1, 1, 27, 'PERFORMA SHAMPOO 500ML', 'PERFORMA SHAMPOO 500ML', 'performa-shampoo-500ml', 0, '', 150, 75, '', 'I000000592', '', '', 1, '2016-07-21 14:34:44'),
(626, '8342079156', 1, 1, 16, 'DUBIC MALT', 'DUBIC MALT', 'dubic-malt', 0, '', 120, 31.02, '', '5000213018255', '', '', 1, '2016-07-21 14:34:44'),
(627, '7935102486', 1, 1, 16, 'MONTANA BOTTLE WATER - CARTON', 'MONTANA BOTTLE WATER - CARTON', 'montana-bottle-water---carton', 0, '', 450, 350, '', 'I000000338', '', '', 1, '2016-07-21 14:34:44'),
(628, '1094832765', 1, 1, 16, 'MONTANA BOTTLE WATER 75CL', 'MONTANA BOTTLE WATER 75CL', 'montana-bottle-water-75cl', 0, '', 50, 34, '', 'I000000255', '', '', 1, '2016-07-21 14:34:44'),
(629, '2938470561', 1, 1, 16, 'MONTANA BOTTLE WATER 75CL HALF', 'MONTANA BOTTLE WATER 75CL HALF', 'montana-bottle-water-75cl-half', 0, '', 230, 34, '', 'I000000396', '', '', 1, '2016-07-21 14:34:44'),
(630, '0359187264', 1, 1, 12, 'CENTER FILLED GUM', 'CENTER FILLED GUM', 'center-filled-gum', 0, '', 5, 4, '', 'I000000425', '', '', 1, '2016-07-21 14:34:44'),
(631, '0984576321', 1, 1, 12, 'POWER HORSE', 'POWER HORSE', 'power-horse', 0, '', 300, 242, '', '9008442000177', '', '', 1, '2016-07-21 14:34:44'),
(632, '6827941305', 1, 1, 19, 'NESTLE BOTTLE WATER', 'NESTLE BOTTLE WATER', 'nestle-bottle-water', 0, '', 70, 45, '', '6151100031426', '', '', 1, '2016-07-21 14:34:44'),
(633, '6819502437', 1, 1, 19, 'NESTLE BOTTLE WATER (ZINC) - CARTON', 'NESTLE BOTTLE WATER (ZINC) - CARTON', 'nestle-bottle-water-(zinc)---carton', 0, '', 1300, 1100, '', 'I000000356', '', '', 1, '2016-07-21 14:34:45'),
(634, '3024689157', 1, 1, 19, 'NESTLE BOTTLE WATER - CARTON', 'NESTLE BOTTLE WATER - CARTON', 'nestle-bottle-water---carton', 0, '', 1200, 1020, '', '6151100030108', '', '', 1, '2016-07-21 14:34:45'),
(635, '6731428509', 1, 1, 20, 'ORIGIN BITTERS BOTTLE 75CL', 'ORIGIN BITTERS BOTTLE 75CL', 'origin-bitters-bottle-75cl', 0, '', 695, 533, '', '5010103933582', '', '', 1, '2016-07-21 14:34:45'),
(636, '0826139457', 1, 1, 20, 'ORIGIN CAN', 'ORIGIN CAN', 'origin-can', 0, '', 200, 137.5, '', '5010103935630', '', '', 1, '2016-07-21 14:34:45'),
(637, '4873216905', 1, 1, 20, 'ORIGIN PET 20CL', 'ORIGIN PET 20CL', 'origin-pet-20cl', 0, '', 350, 280, '', '5010103933599', '', '', 1, '2016-07-21 14:34:45'),
(638, '7263945801', 1, 1, 15, 'DSTV', 'DSTV', 'dstv', 0, '', 0, 0, '', 'I000000528', '', '', 1, '2016-07-21 14:34:45'),
(639, '2318049657', 1, 1, 15, 'GOTV', 'GOTV', 'gotv', 0, '', 0, 0, '', 'I000000529', '', '', 1, '2016-07-21 14:34:45'),
(640, '6721950483', 1, 1, 15, 'Money Transfer', 'Money Transfer', 'money-transfer', 0, '', 0, 0, '', 'I000000631', '', '', 1, '2016-07-21 14:34:45'),
(641, '2873416059', 1, 1, 15, 'PHCN units', 'PHCN units', 'phcn-units', 0, '', 0, 0, '', 'I000000524', '', '', 1, '2016-07-21 14:34:45'),
(642, '5682941037', 1, 1, 9, 'BREAD - SLICED', 'BREAD - SLICED', 'bread---sliced', 0, '', 220, 180, '', 'I000000337', '', '', 1, '2016-07-21 14:34:45'),
(643, '3805216497', 1, 1, 9, 'BREAD LONG (100)', 'BREAD LONG (100)', 'bread-long-(100)', 0, '', 100, 80, '', 'I000000158', '', '', 1, '2016-07-21 14:34:45'),
(644, '9546317082', 1, 1, 9, 'BREAD LONG (150)', 'BREAD LONG (150)', 'bread-long-(150)', 0, '', 150, 120, '', 'I000000315', '', '', 1, '2016-07-21 14:34:45'),
(645, '4251967380', 1, 1, 9, 'BREAD LONG (150)', 'BREAD LONG (150)', 'bread-long-(150)', 0, '', 150, 120, '', 'I000000316', '', '', 1, '2016-07-21 14:34:45'),
(646, '4796350812', 1, 1, 9, 'BREAD LONG (70)', 'BREAD LONG (70)', 'bread-long-(70)', 0, '', 70, 50, '', 'I000000309', '', '', 1, '2016-07-21 14:34:45'),
(647, '1653982407', 1, 1, 9, 'BREAD ROUND (100)', 'BREAD ROUND (100)', 'bread-round-(100)', 0, '', 100, 80, '', 'I000000121', '', '', 1, '2016-07-21 14:34:45'),
(648, '3725496018', 1, 1, 9, 'BREAD SMALL (50)', 'BREAD SMALL (50)', 'bread-small-(50)', 0, '', 50, 40, '', 'I000000122', '', '', 1, '2016-07-21 14:34:45'),
(649, '2560489173', 2, 2, 1, '7UP FREE PET -50cl', '7UP FREE PET -50cl', '7up-free-pet--50cl', 0, '', 90, 90, '', '7UP006', '', '', 1, '2016-07-21 14:34:46'),
(650, '7123680495', 2, 2, 1, '7UP PET -50CL', '7UP PET -50CL', '7up-pet--50cl', 0, '', 100, 90, '', '6034000005202', '', '', 1, '2016-07-21 14:34:46'),
(651, '5231794608', 2, 2, 1, '7UP RGB -35CL', '7UP RGB -35CL', '7up-rgb--35cl', 0, '', 45, 45, '', '7UP002', '', '', 1, '2016-07-21 14:34:46'),
(652, '0758462139', 2, 2, 1, 'AIR WICK AIR FRESHNER (CITRUS)', 'AIR WICK AIR FRESHNER (CITRUS)', 'air-wick-air-freshner-(citrus)', 0, '', 360, 340, '', '6009695931167', '', '', 1, '2016-07-21 14:34:46'),
(653, '5039248716', 2, 2, 1, 'AIR WICK AIR FRESHNER (FRESH WATER)', 'AIR WICK AIR FRESHNER (FRESH WATER)', 'air-wick-air-freshner-(fresh-water)', 0, '', 360, 340, '', 'AIR001', '', '', 1, '2016-07-21 14:34:46'),
(654, '6018795243', 2, 2, 1, 'AIR WICK AIR FRESHNER (GREEN APPLE)', 'AIR WICK AIR FRESHNER (GREEN APPLE)', 'air-wick-air-freshner-(green-apple)', 0, '', 360, 340, '', '6001106113902', '', '', 1, '2016-07-21 14:34:46'),
(655, '0713496528', 2, 2, 1, 'AIR WICK AIR FRESHNER (PEACH & JASMINE)', 'AIR WICK AIR FRESHNER (PEACH & JASMINE)', 'air-wick-air-freshner-(peach-&-jasmine)', 0, '', 360, 340, '', 'REC007', '', '', 1, '2016-07-21 14:34:46'),
(656, '0615427938', 2, 2, 1, 'AIRTEL N100', 'AIRTEL N100', 'airtel-n100', 0, '', 100, 95, '', 'RCH010', '', '', 1, '2016-07-21 14:34:46'),
(657, '0632159874', 2, 2, 1, 'AIRTEL N1000', 'AIRTEL N1000', 'airtel-n1000', 0, '', 1000, 0, '', 'RCH013', '', '', 1, '2016-07-21 14:34:46'),
(658, '6958241307', 2, 2, 1, 'AIRTEL N200', 'AIRTEL N200', 'airtel-n200', 0, '', 200, 190, '', 'RCH011', '', '', 1, '2016-07-21 14:34:46'),
(659, '5017946238', 2, 2, 1, 'AIRTEL N500', 'AIRTEL N500', 'airtel-n500', 0, '', 500, 500, '', 'RCH012', '', '', 1, '2016-07-21 14:34:46'),
(660, '3562081974', 2, 2, 1, 'AIRTEL VTU', 'AIRTEL VTU', 'airtel-vtu', 0, '', 0, 0, '', 'I000000392', '', '', 1, '2016-07-21 14:34:46'),
(661, '9385120647', 2, 2, 1, 'ALWAYS 7 EXTRA LONG (BLUE SMALL)', 'ALWAYS 7 EXTRA LONG (BLUE SMALL)', 'always-7-extra-long-(blue-small)', 0, '', 250, 185, '', '4015400074397', '', '', 1, '2016-07-21 14:34:46'),
(662, '8594726103', 2, 2, 1, 'ALWAYS 8 LONG (PINK SMALL)', 'ALWAYS 8 LONG (PINK SMALL)', 'always-8-long-(pink-small)', 0, '', 250, 190, '', '4015400074366', '', '', 1, '2016-07-21 14:34:46'),
(663, '0153624987', 2, 2, 1, 'ALWAYS CLASSIC THICK', 'ALWAYS CLASSIC THICK', 'always-classic-thick', 0, '', 125, 125, '', 'AUS003', '', '', 1, '2016-07-21 14:34:46'),
(664, '5860297431', 2, 2, 1, 'ALWAYS DUOPACKS (BLUE BIG)', 'ALWAYS DUOPACKS (BLUE BIG)', 'always-duopacks-(blue-big)', 0, '', 460, 315, '', 'AUS002', '', '', 1, '2016-07-21 14:34:46'),
(665, '5324708691', 2, 2, 1, 'ALWAYS DUOPACKS (PINK BIG)', 'ALWAYS DUOPACKS (PINK BIG)', 'always-duopacks-(pink-big)', 0, '', 460, 315, '', 'AUN002', '', '', 1, '2016-07-21 14:34:46'),
(666, '5602798341', 2, 2, 1, 'AMSTEL MALTA', 'AMSTEL MALTA', 'amstel-malta', 0, '', 120, 92, '', '5025866000082', '', '', 1, '2016-07-21 14:34:47'),
(667, '8172403596', 2, 2, 1, 'AMSTEL MALTA - CARTON', 'AMSTEL MALTA - CARTON', 'amstel-malta---carton', 0, '', 2450, 2250, '', 'I000000522', '', '', 1, '2016-07-21 14:34:47'),
(668, '5742913806', 2, 2, 1, 'AMSTEL MALTA RGB 33CL', 'AMSTEL MALTA RGB 33CL', 'amstel-malta-rgb-33cl', 0, '', 100, 100, '', 'MCX004', '', '', 1, '2016-07-21 14:34:47'),
(669, '3607129854', 2, 2, 1, 'APPLE JUICE 1L', 'APPLE JUICE 1L', 'apple-juice-1l', 0, '', 270, 250, '', 'CHI001', '', '', 1, '2016-07-21 14:34:47'),
(670, '0257916438', 2, 2, 1, 'APPLE JUICE 250ML', 'APPLE JUICE 250ML', 'apple-juice-250ml', 0, '', 75, 75, '', 'CHI004', '', '', 1, '2016-07-21 14:34:47'),
(671, '4091256783', 2, 2, 1, 'ARIEL DET POWDER (BAG) 90 GM', 'ARIEL DET POWDER (BAG) 90 GM', 'ariel-det-powder-(bag)-90-gm', 0, '', 3100, 3000, '', '5410076898893', '', '', 1, '2016-07-21 14:34:47'),
(672, '6597238104', 2, 2, 1, 'ARIEL DET POWDER 1KG', 'ARIEL DET POWDER 1KG', 'ariel-det-powder-1kg', 0, '', 545, 470, '', '5410076507986', '', '', 1, '2016-07-21 14:34:47'),
(673, '3980426571', 2, 2, 1, 'ARIEL DET POWDER 250 GM', 'ARIEL DET POWDER 250 GM', 'ariel-det-powder-250-gm', 0, '', 150, 130, '', '5410076325474', '', '', 1, '2016-07-21 14:34:47'),
(674, '7041298365', 2, 2, 1, 'ARIEL DET POWDER 30 GM', 'ARIEL DET POWDER 30 GM', 'ariel-det-powder-30-gm', 0, '', 20, 15, '', 'ARL005', '', '', 1, '2016-07-21 14:34:47'),
(675, '2376041859', 2, 2, 1, 'ARIEL DET POWDER 90 GM', 'ARIEL DET POWDER 90 GM', 'ariel-det-powder-90-gm', 0, '', 50, 45, '', '5410076898909', '', '', 1, '2016-07-21 14:34:47'),
(676, '4012876953', 2, 2, 1, 'AYOOLA POUND-O-YAM 0.9 KG', 'AYOOLA POUND-O-YAM 0.9 KG', 'ayoola-pound-o-yam-0.9-kg', 0, '', 650, 425, '', '6151100001023', '', '', 1, '2016-07-21 14:34:47'),
(677, '6502987431', 2, 2, 1, 'AYOOLA POUND-O-YAM 1.8 KG', 'AYOOLA POUND-O-YAM 1.8 KG', 'ayoola-pound-o-yam-1.8-kg', 0, '', 1200, 850, '', '6151100001061', '', '', 1, '2016-07-21 14:34:47'),
(678, '9520846137', 2, 2, 1, 'BAMA - MAYO 16 OZ - USA', 'BAMA - MAYO 16 OZ - USA', 'bama---mayo-16-oz---usa', 0, '', 830, 400, '', '52500058616', '', '', 1, '2016-07-21 14:34:47'),
(679, '0751964382', 2, 2, 1, 'BAMA - MAYO 32 OZ - USA', 'BAMA - MAYO 32 OZ - USA', 'bama---mayo-32-oz---usa', 0, '', 1500, 1100, '', '52500058609', '', '', 1, '2016-07-21 14:34:47'),
(680, '3160492785', 2, 2, 1, 'BAMA - MAYO 8 OZ - USA', 'BAMA - MAYO 8 OZ - USA', 'bama---mayo-8-oz---usa', 0, '', 470, 417, '', '52500058611', '', '', 1, '2016-07-21 14:34:47'),
(681, '7290564831', 2, 2, 1, 'BAYGON B/S - 500ML', 'BAYGON B/S - 500ML', 'baygon-b/s---500ml', 0, '', 880, 700, '', '5010182974360', '', '', 1, '2016-07-21 14:34:47'),
(682, '8031259746', 2, 2, 1, 'BAYGON S/S 300ML', 'BAYGON S/S 300ML', 'baygon-s/s-300ml', 0, '', 580, 450, '', '5010182990193', '', '', 1, '2016-07-21 14:34:48'),
(683, '2680935174', 2, 2, 1, 'BEL SERVIETTE', 'BEL SERVIETTE', 'bel-serviette', 0, '', 100, 58, '', '5285001829002', '', '', 1, '2016-07-21 14:34:48'),
(684, '5984761320', 2, 2, 1, 'BELLE CAR SERVIETTE', 'BELLE CAR SERVIETTE', 'belle-car-serviette', 0, '', 250, 180, '', '5285001825028', '', '', 1, '2016-07-21 14:34:48'),
(685, '5136820749', 2, 2, 1, 'BELOXXI CREAM CRACKER', 'BELOXXI CREAM CRACKER', 'beloxxi-cream-cracker', 0, '', 15, 11, '', '6153400011405', '', '', 1, '2016-07-21 14:34:48'),
(686, '4158032967', 2, 2, 1, 'BELOXXI CREAM CRACKER (CARTON)', 'BELOXXI CREAM CRACKER (CARTON)', 'beloxxi-cream-cracker-(carton)', 0, '', 865, 800, '', '615340001141', '', '', 1, '2016-07-21 14:34:48'),
(687, '1058734962', 2, 2, 1, 'BIG LEMON 650CL PET', 'BIG LEMON 650CL PET', 'big-lemon-650cl-pet', 0, '', 120, 83, '', '6156000144290', '', '', 1, '2016-07-21 14:34:48'),
(688, '2467093581', 2, 2, 1, 'BIG ORANGE 650CL PET', 'BIG ORANGE 650CL PET', 'big-orange-650cl-pet', 0, '', 120, 83, '', '6156000144252', '', '', 1, '2016-07-21 14:34:48'),
(689, '1275038469', 2, 2, 1, 'BLUE BAND (DELI) 900GMS', 'BLUE BAND (DELI) 900GMS', 'blue-band-(deli)-900gms', 0, '', 820, 450, '', '6034000002072', '', '', 1, '2016-07-21 14:34:48'),
(690, '6095482731', 2, 2, 1, 'BLUE BAND (SACHET) 15GMS', 'BLUE BAND (SACHET) 15GMS', 'blue-band-(sachet)-15gms', 0, '', 20, 10, '', '6034000002096', '', '', 1, '2016-07-21 14:34:48'),
(691, '8540216739', 2, 2, 1, 'BLUE BAND 250G (CLASSIC)', 'BLUE BAND 250G (CLASSIC)', 'blue-band-250g-(classic)', 0, '', 200, 200, '', 'U1RB34', '', '', 1, '2016-07-21 14:34:48'),
(692, '6143920587', 2, 2, 1, 'BLUE BAND 250G (DELI)', 'BLUE BAND 250G (DELI)', 'blue-band-250g-(deli)', 0, '', 250, 150, '', '6034000002614', '', '', 1, '2016-07-21 14:34:48'),
(693, '4712089653', 2, 2, 1, 'BLUE BAND 450G (CLASSIC)', 'BLUE BAND 450G (CLASSIC)', 'blue-band-450g-(classic)', 0, '', 450, 280, '', '6001085002167', '', '', 1, '2016-07-21 14:34:48'),
(694, '9078641325', 2, 2, 1, 'BLUE BAND 450G (DELI)', 'BLUE BAND 450G (DELI)', 'blue-band-450g-(deli)', 0, '', 450, 250, '', '6034000002621', '', '', 1, '2016-07-21 14:34:48'),
(695, '9653784201', 2, 2, 1, 'BLUE BAND 75GMS', 'BLUE BAND 75GMS', 'blue-band-75gms', 0, '', 100, 60, '', '60340290', '', '', 1, '2016-07-21 14:34:48'),
(696, '3852479160', 2, 2, 1, 'BLUE BAND 900GMS', 'BLUE BAND 900GMS', 'blue-band-900gms', 0, '', 420, 420, '', 'U1RB37', '', '', 1, '2016-07-21 14:34:48'),
(697, '6152408793', 2, 2, 1, 'BOBO (ORANGE) - 200ML', 'BOBO (ORANGE) - 200ML', 'bobo-(orange)---200ml', 0, '', 50, 40, '', 'BBX002', '', '', 1, '2016-07-21 14:34:48'),
(698, '2187456039', 2, 2, 1, 'BOOST 150ML', 'BOOST 150ML', 'boost-150ml', 0, '', 50, 50, '', '6164003477031', '', '', 1, '2016-07-21 14:34:49'),
(699, '1845079362', 2, 2, 1, 'BOOST 150ML (PACKX16)', 'BOOST 150ML (PACKX16)', 'boost-150ml-(packx16)', 0, '', 780, 750, '', 'I000000484', '', '', 1, '2016-07-21 14:34:49'),
(700, '4657381920', 2, 2, 1, 'BOOST 150ML (PACKx32)', 'BOOST 150ML (PACKx32)', 'boost-150ml-(packx32)', 0, '', 1560, 1500, '', 'BST004', '', '', 1, '2016-07-21 14:34:49'),
(701, '6709234851', 2, 2, 1, 'BOOST 288 ML*27', 'BOOST 288 ML*27', 'boost-288-ml*27', 0, '', 100, 90, '', '6164003477017', '', '', 1, '2016-07-21 14:34:49'),
(702, '2476180359', 2, 2, 1, 'BOOST CAN 33CL', 'BOOST CAN 33CL', 'boost-can-33cl', 0, '', 110, 110, '', 'BST006', '', '', 1, '2016-07-21 14:34:49'),
(703, '4632801957', 2, 2, 1, 'BOOST PET 500ML', 'BOOST PET 500ML', 'boost-pet-500ml', 0, '', 200, 150, '', 'BST002', '', '', 1, '2016-07-21 14:34:49'),
(704, '7452836109', 2, 2, 1, 'CAN COKE - 33CL', 'CAN COKE - 33CL', 'can-coke---33cl', 0, '', 95, 82, '', '5449000000996', '', '', 1, '2016-07-21 14:34:49'),
(705, '4159687230', 2, 2, 1, 'CAN COKE X6 - 33CL', 'CAN COKE X6 - 33CL', 'can-coke-x6---33cl', 0, '', 550, 488, '', 'I000000601', '', '', 1, '2016-07-21 14:34:49'),
(706, '8427593106', 2, 2, 1, 'CAN FANTA (ORANGE) - 33CL', 'CAN FANTA (ORANGE) - 33CL', 'can-fanta-(orange)---33cl', 0, '', 95, 82, '', '5449000011527', '', '', 1, '2016-07-21 14:34:49'),
(707, '3250417869', 2, 2, 1, 'CAN FANTA (ORANGE) X6 - 33CL', 'CAN FANTA (ORANGE) X6 - 33CL', 'can-fanta-(orange)-x6---33cl', 0, '', 550, 488, '', 'I000000600', '', '', 1, '2016-07-21 14:34:49'),
(708, '5386294107', 2, 2, 1, 'CANOE ACTIVE FRESH 140G', 'CANOE ACTIVE FRESH 140G', 'canoe-active-fresh-140g', 0, '', 50, 50, '', 'PZC002', '', '', 1, '2016-07-21 14:34:49'),
(709, '0564728391', 2, 2, 1, 'CANOE ANKARA 140G', 'CANOE ANKARA 140G', 'canoe-ankara-140g', 0, '', 50, 50, '', 'PZC003', '', '', 1, '2016-07-21 14:34:49'),
(710, '1062389547', 2, 2, 1, 'CANOE EXTRA CARE 140G', 'CANOE EXTRA CARE 140G', 'canoe-extra-care-140g', 0, '', 50, 50, '', '6154000018801', '', '', 1, '2016-07-21 14:34:49'),
(711, '4503897216', 2, 2, 1, 'CHEESE BALLS', 'CHEESE BALLS', 'cheese-balls', 0, '', 10, 10, '', '4008569009300', '', '', 1, '2016-07-21 14:34:49'),
(712, '8471305296', 2, 2, 1, 'CHI FIT&SMART MILK DRINK', 'CHI FIT&SMART MILK DRINK', 'chi-fit&smart-milk-drink', 0, '', 50, 45, '', 'CHI021', '', '', 1, '2016-07-21 14:34:49'),
(713, '7954160328', 2, 2, 1, 'CHOCOMILO', 'CHOCOMILO', 'chocomilo', 0, '', 5, 4, '', 'NFC016', '', '', 1, '2016-07-21 14:34:50'),
(714, '8703495621', 2, 2, 1, 'CLOSEUP FIRE FREEZE 130G', 'CLOSEUP FIRE FREEZE 130G', 'closeup-fire-freeze-130g', 0, '', 200, 200, '', 'U1IB60', '', '', 1, '2016-07-21 14:34:50'),
(715, '6457281309', 2, 2, 1, 'CLOSEUP HERBAL 160G', 'CLOSEUP HERBAL 160G', 'closeup-herbal-160g', 0, '', 220, 200, '', '6001085003768', '', '', 1, '2016-07-21 14:34:50'),
(716, '4528139706', 2, 2, 1, 'CLOSEUP MENTHOL CHILL 125ML X 50PCS', 'CLOSEUP MENTHOL CHILL 125ML X 50PCS', 'closeup-menthol-chill-125ml-x-50pcs', 0, '', 175, 175, '', 'U1IB59', '', '', 1, '2016-07-21 14:34:50'),
(717, '0362458791', 2, 2, 1, 'CLOSEUP RED HOT 15G', 'CLOSEUP RED HOT 15G', 'closeup-red-hot-15g', 0, '', 20, 13, '', '6151100131355', '', '', 1, '2016-07-21 14:34:50'),
(718, '9324106875', 2, 2, 1, 'CLOSEUP RED HOT 30G', 'CLOSEUP RED HOT 30G', 'closeup-red-hot-30g', 0, '', 70, 50, '', 'U1IB62', '', '', 1, '2016-07-21 14:34:50'),
(719, '0871234956', 2, 2, 1, 'CLOSEUP RED HOT 50ML X 100PCS', 'CLOSEUP RED HOT 50ML X 100PCS', 'closeup-red-hot-50ml-x-100pcs', 0, '', 90, 90, '', 'U1IB54', '', '', 1, '2016-07-21 14:34:50'),
(720, '4256071938', 2, 2, 1, 'COASTER BISCUIT 20G', 'COASTER BISCUIT 20G', 'coaster-biscuit-20g', 0, '', 5, 5, '', 'BIS002', '', '', 1, '2016-07-21 14:34:50'),
(721, '9256713084', 2, 2, 1, 'COCA-COLA 1.5L PET (COKE PET BIG)', 'COCA-COLA 1.5L PET (COKE PET BIG)', 'coca-cola-1.5l-pet-(coke-pet-big)', 0, '', 250, 225, '', 'NBC056', '', '', 1, '2016-07-21 14:34:50'),
(722, '1384952760', 2, 2, 1, 'COCA-COLA ZERO PET (COKE ZERO PET)', 'COCA-COLA ZERO PET (COKE ZERO PET)', 'coca-cola-zero-pet-(coke-zero-pet)', 0, '', 120, 105, '', 'NBC057', '', '', 1, '2016-07-21 14:34:50'),
(723, '0638741259', 2, 2, 1, 'COKE PET (PACK) - 50CL', 'COKE PET (PACK) - 50CL', 'coke-pet-(pack)---50cl', 0, '', 1150, 1000, '', 'I000000477', '', '', 1, '2016-07-21 14:34:50'),
(724, '2675914083', 2, 2, 1, 'COKE PET - 50CL', 'COKE PET - 50CL', 'coke-pet---50cl', 0, '', 120, 83, '', '5449000002914', '', '', 1, '2016-07-21 14:34:50'),
(725, '9423608517', 2, 2, 1, 'COOL COW 7G (SACHET)', 'COOL COW 7G (SACHET)', 'cool-cow-7g-(sachet)', 0, '', 10, 10, '', 'DAN001', '', '', 1, '2016-07-21 14:34:50'),
(726, '5894763021', 2, 2, 1, 'CORNFLAKES ORIGINAL 350G', 'CORNFLAKES ORIGINAL 350G', 'cornflakes-original-350g', 0, '', 400, 360, '', 'NFO002', '', '', 1, '2016-07-21 14:34:50'),
(727, '9108276345', 2, 2, 1, 'DABUR HERBAL TOOTHPASTE (SMALL)', 'DABUR HERBAL TOOTHPASTE (SMALL)', 'dabur-herbal-toothpaste-(small)', 0, '', 80, 80, '', '6291069700152', '', '', 1, '2016-07-21 14:34:50'),
(728, '5476092183', 2, 2, 1, 'DANO COOL COW SACHET 15G', 'DANO COOL COW SACHET 15G', 'dano-cool-cow-sachet-15g', 0, '', 20, 16, '', 'DAN003', '', '', 1, '2016-07-21 14:34:50'),
(729, '3206941785', 2, 2, 1, 'DANO COOLCOW 180G', 'DANO COOLCOW 180G', 'dano-coolcow-180g', 0, '', 300, 230, '', 'I000000323', '', '', 1, '2016-07-21 14:34:50'),
(730, '6243857901', 2, 2, 1, 'DANO COOLCOW REFILL 400G', 'DANO COOLCOW REFILL 400G', 'dano-coolcow-refill-400g', 0, '', 620, 500, '', '5760466909143', '', '', 1, '2016-07-21 14:34:50'),
(731, '2579483106', 2, 2, 1, 'DANO FULL CREAM REFILL 400G', 'DANO FULL CREAM REFILL 400G', 'dano-full-cream-refill-400g', 0, '', 720, 600, '', '5760466755566', '', '', 1, '2016-07-21 14:34:50'),
(732, '3190856247', 2, 2, 1, 'DANO MILK POWDER COOL COW 11G X 240 (SACHET)', 'DANO MILK POWDER COOL COW 11G X 240 (SACHET)', 'dano-milk-powder-cool-cow-11g-x-240-(sachet)', 0, '', 15, 15, '', 'DAN002', '', '', 1, '2016-07-21 14:34:50'),
(733, '9215836407', 2, 2, 1, 'DANO SLIM REFILL 400G', 'DANO SLIM REFILL 400G', 'dano-slim-refill-400g', 0, '', 780, 658, '', '5704310105169', '', '', 1, '2016-07-21 14:34:51'),
(734, '7813260954', 2, 2, 1, 'DANO TIN 400G X 12', 'DANO TIN 400G X 12', 'dano-tin-400g-x-12', 0, '', 820, 700, '', 'DAN004', '', '', 1, '2016-07-21 14:34:51'),
(735, '3542198760', 2, 2, 1, 'DETTOL LIQUID ANTISEPTIC 165 ML', 'DETTOL LIQUID ANTISEPTIC 165 ML', 'dettol-liquid-antiseptic-165-ml', 0, '', 520, 350, '', '50158904', '', '', 1, '2016-07-21 14:34:51'),
(736, '5261704398', 2, 2, 1, 'DETTOL LIQUID ANTISEPTIC 50 ML', 'DETTOL LIQUID ANTISEPTIC 50 ML', 'dettol-liquid-antiseptic-50-ml', 0, '', 200, 150, '', '60050267', '', '', 1, '2016-07-21 14:34:51'),
(737, '5480731629', 2, 2, 1, 'DETTOL SOAP (100X COOL) 70 GM', 'DETTOL SOAP (100X COOL) 70 GM', 'dettol-soap-(100x-cool)-70-gm', 0, '', 120, 100, '', '6009695931044', '', '', 1, '2016-07-21 14:34:51'),
(738, '0953476821', 2, 2, 1, 'DETTOL SOAP (ORIGINAL) 70 GM', 'DETTOL SOAP (ORIGINAL) 70 GM', 'dettol-soap-(original)-70-gm', 0, '', 120, 100, '', '6009695931006', '', '', 1, '2016-07-21 14:34:51'),
(739, '9237046518', 2, 2, 1, 'DETTOL SOAP (SKIN CARE) 70 GM', 'DETTOL SOAP (SKIN CARE) 70 GM', 'dettol-soap-(skin-care)-70-gm', 0, '', 120, 100, '', '6009695931020', '', '', 1, '2016-07-21 14:34:51'),
(740, '9083671245', 2, 2, 1, 'DETTOL SOAP COOL 120 GM', 'DETTOL SOAP COOL 120 GM', 'dettol-soap-cool-120-gm', 0, '', 180, 180, '', '6009695931051', '', '', 1, '2016-07-21 14:34:51'),
(741, '6574891230', 2, 2, 1, 'ETISALAT N100', 'ETISALAT N100', 'etisalat-n100', 0, '', 100, 95, '', 'RCH014', '', '', 1, '2016-07-21 14:34:52'),
(742, '9478612350', 2, 2, 1, 'ETISALAT N1000', 'ETISALAT N1000', 'etisalat-n1000', 0, '', 1000, 0, '', 'RCH017', '', '', 1, '2016-07-21 14:34:52'),
(743, '6410253978', 2, 2, 1, 'ETISALAT N200', 'ETISALAT N200', 'etisalat-n200', 0, '', 200, 190, '', 'RCH015', '', '', 1, '2016-07-21 14:34:52'),
(744, '2058946731', 2, 2, 1, 'ETISALAT N500', 'ETISALAT N500', 'etisalat-n500', 0, '', 500, 500, '', 'RCH016', '', '', 1, '2016-07-21 14:34:52'),
(745, '3750816294', 2, 2, 1, 'ETISALAT VTU N2000', 'ETISALAT VTU N2000', 'etisalat-vtu-n2000', 0, '', 2000, 0, '', 'I000000395', '', '', 1, '2016-07-21 14:34:52'),
(746, '5163482079', 2, 2, 1, 'EVA WATER 1.5LTR', 'EVA WATER 1.5LTR', 'eva-water-1.5ltr', 0, '', 130, 83, '', 'NBC051', '', '', 1, '2016-07-21 14:34:52'),
(747, '8637190452', 2, 2, 1, 'EVA WATER 1.5LTR (CARTON)', 'EVA WATER 1.5LTR (CARTON)', 'eva-water-1.5ltr-(carton)', 0, '', 1200, 1000, '', 'I000000131', '', '', 1, '2016-07-21 14:34:52'),
(748, '1084362795', 2, 2, 1, 'EVA WATER 75CL', 'EVA WATER 75CL', 'eva-water-75cl', 0, '', 80, 53, '', 'NBC052', '', '', 1, '2016-07-21 14:34:52'),
(749, '8634027591', 2, 2, 1, 'EVA WATER 75CL (CARTON)', 'EVA WATER 75CL (CARTON)', 'eva-water-75cl-(carton)', 0, '', 800, 650, '', 'I000000133', '', '', 1, '2016-07-21 14:34:53'),
(750, '1340958276', 2, 2, 1, 'EXOTIC - ORANGE PEACH NECTAR 1L', 'EXOTIC - ORANGE PEACH NECTAR 1L', 'exotic---orange-peach-nectar-1l', 0, '', 305, 240, '', '6151100051448', '', '', 1, '2016-07-21 14:34:53'),
(751, '9462530178', 2, 2, 1, 'EXOTIC- MANGO NECTAR 1L', 'EXOTIC- MANGO NECTAR 1L', 'exotic--mango-nectar-1l', 0, '', 305, 240, '', '6151100054791', '', '', 1, '2016-07-21 14:34:53'),
(752, '5247018369', 2, 2, 1, 'EXOTIC- MULTIFRUITA NECTAR 1L', 'EXOTIC- MULTIFRUITA NECTAR 1L', 'exotic--multifruita-nectar-1l', 0, '', 305, 240, '', '6151100051431', '', '', 1, '2016-07-21 14:34:53'),
(753, '8102569347', 2, 2, 1, 'EXOTIC- ORANGE WITH PULP 250ML', 'EXOTIC- ORANGE WITH PULP 250ML', 'exotic--orange-with-pulp-250ml', 0, '', 75, 75, '', 'CHI010', '', '', 1, '2016-07-21 14:34:53'),
(754, '6435098172', 2, 2, 1, 'EXOTIC- PINEAPPLE COCONUT 1L', 'EXOTIC- PINEAPPLE COCONUT 1L', 'exotic--pineapple-coconut-1l', 0, '', 305, 240, '', '6151100051219', '', '', 1, '2016-07-21 14:34:54'),
(755, '3918406527', 2, 2, 1, 'EXOTIC- PINEAPPLE COCONUT 250ML', 'EXOTIC- PINEAPPLE COCONUT 250ML', 'exotic--pineapple-coconut-250ml', 0, '', 75, 75, '', 'CHI009', '', '', 1, '2016-07-21 14:34:54'),
(756, '2058491763', 2, 2, 1, 'FACIAL MIXED BOXES', 'FACIAL MIXED BOXES', 'facial-mixed-boxes', 0, '', 200, 200, '', 'BIL008', '', '', 1, '2016-07-21 14:34:54'),
(757, '6857412390', 2, 2, 1, 'FAMILY CUBE SUGAR 45 CUBES', 'FAMILY CUBE SUGAR 45 CUBES', 'family-cube-sugar-45-cubes', 0, '', 100, 100, '', 'FFC001', '', '', 1, '2016-07-21 14:34:54'),
(758, '8597364021', 2, 2, 1, 'FAMILY CUBE SUGAR 90 CUBES', 'FAMILY CUBE SUGAR 90 CUBES', 'family-cube-sugar-90-cubes', 0, '', 200, 200, '', 'FFC002', '', '', 1, '2016-07-21 14:34:55'),
(759, '3891705426', 2, 2, 1, 'FAMILY GRANULATED SUGAR 1KG', 'FAMILY GRANULATED SUGAR 1KG', 'family-granulated-sugar-1kg', 0, '', 370, 370, '', 'FFS002', '', '', 1, '2016-07-21 14:34:55'),
(760, '9756123480', 2, 2, 1, 'FANTA APPLE 50CL PET', 'FANTA APPLE 50CL PET', 'fanta-apple-50cl-pet', 0, '', 120, 83, '', '4444', '', '', 1, '2016-07-21 14:34:55'),
(761, '9034172685', 2, 2, 1, 'FANTA ORANGE (PACK) 50CL', 'FANTA ORANGE (PACK) 50CL', 'fanta-orange-(pack)-50cl', 0, '', 1100, 950, '', 'I000000478', '', '', 1, '2016-07-21 14:34:55'),
(762, '7830192456', 2, 2, 1, 'FANTA ORANGE 50CL', 'FANTA ORANGE 50CL', 'fanta-orange-50cl', 0, '', 120, 83, '', '5449000002938', '', '', 1, '2016-07-21 14:34:55'),
(763, '8263410579', 2, 2, 1, 'FANTA PINAPPLE 50CL PET', 'FANTA PINAPPLE 50CL PET', 'fanta-pinapple-50cl-pet', 0, '', 120, 83, '', 'NBC058', '', '', 1, '2016-07-21 14:34:55'),
(764, '6091352748', 2, 2, 1, 'FANTA PINAPPLE PET (PACK) 50CL', 'FANTA PINAPPLE PET (PACK) 50CL', 'fanta-pinapple-pet-(pack)-50cl', 0, '', 1100, 950, '', 'I000000489', '', '', 1, '2016-07-21 14:34:55'),
(765, '5901874263', 2, 2, 1, 'FRISO GOLD MUM 400GMS', 'FRISO GOLD MUM 400GMS', 'friso-gold-mum-400gms', 0, '', 0, 0, '', 'WPG004', '', '', 1, '2016-07-21 14:34:55'),
(766, '7940836152', 2, 2, 1, 'FROSTYZ 350G', 'FROSTYZ 350G', 'frostyz-350g', 0, '', 375, 360, '', '6301102020205', '', '', 1, '2016-07-21 14:34:55'),
(767, '7492368501', 2, 2, 1, 'GALA SAUSAGE', 'GALA SAUSAGE', 'gala-sausage', 0, '', 50, 40, '', '6151100023636', '', '', 1, '2016-07-21 14:34:55'),
(768, '8342057961', 2, 2, 1, 'GINGER BREAD', 'GINGER BREAD', 'ginger-bread', 0, '', 10, 10, '', 'MGB002', '', '', 1, '2016-07-21 14:34:55'),
(769, '1943862057', 2, 2, 1, 'GINO - BAKED BEANS - 425 G(ITALY)', 'GINO - BAKED BEANS - 425 G(ITALY)', 'gino---baked-beans---425-g(italy)', 0, '', 200, 125, '', 'GBBI01', '', '', 1, '2016-07-21 14:34:55'),
(770, '3978541620', 2, 2, 1, 'GINO - CURRY - 7G(S) - NIG', 'GINO - CURRY - 7G(S) - NIG', 'gino---curry---7g(s)---nig', 0, '', 10, 10, '', 'GGCN01', '', '', 1, '2016-07-21 14:34:55'),
(771, '8719452306', 2, 2, 1, 'GINO - MATCH BOX', 'GINO - MATCH BOX', 'gino---match-box', 0, '', 10, 4, '', 'I000000217', '', '', 1, '2016-07-21 14:34:55'),
(772, '0312954867', 2, 2, 1, 'GINO - MATCH BOX (10PCS)', 'GINO - MATCH BOX (10PCS)', 'gino---match-box-(10pcs)', 0, '', 70, 40, '', 'I000000218', '', '', 1, '2016-07-21 14:34:55'),
(773, '1826543907', 2, 2, 1, 'GINO - SWEETCORN -340G-FRANCE', 'GINO - SWEETCORN -340G-FRANCE', 'gino---sweetcorn--340g-france', 0, '', 220, 175, '', 'GSCF01', '', '', 1, '2016-07-21 14:34:55'),
(774, '3182709546', 2, 2, 1, 'GINO(TP)- 70 GMS (HO) - CHINA', 'GINO(TP)- 70 GMS (HO) - CHINA', 'gino(tp)--70-gms-(ho)---china', 0, '', 30, 30, '', 'GTHC01', '', '', 1, '2016-07-21 14:34:56'),
(775, '2850416379', 2, 2, 1, 'GINO(TP)- 70 GMS (SACHET) - NIG', 'GINO(TP)- 70 GMS (SACHET) - NIG', 'gino(tp)--70-gms-(sachet)---nig', 0, '', 80, 54, '', '4897052890163', '', '', 1, '2016-07-21 14:34:56'),
(776, '6125439870', 2, 2, 1, 'GINO(TP)- 800 GMS (EO) - CHINA', 'GINO(TP)- 800 GMS (EO) - CHINA', 'gino(tp)--800-gms-(eo)---china', 0, '', 420, 330, '', 'GTEC01', '', '', 1, '2016-07-21 14:34:56'),
(777, '5023467819', 2, 2, 1, 'GIRAFFE - MATCH BOX', 'GIRAFFE - MATCH BOX', 'giraffe---match-box', 0, '', 10, 10, '', 'I000000160', '', '', 1, '2016-07-21 14:34:56'),
(778, '9807416532', 2, 2, 1, 'GLO N100', 'GLO N100', 'glo-n100', 0, '', 100, 95, '', 'RCH006', '', '', 1, '2016-07-21 14:34:56'),
(779, '1087632495', 2, 2, 1, 'GLO N1000', 'GLO N1000', 'glo-n1000', 0, '', 1000, 0, '', 'RCH009', '', '', 1, '2016-07-21 14:34:56'),
(780, '5813496207', 2, 2, 1, 'GLO N200', 'GLO N200', 'glo-n200', 0, '', 200, 190, '', 'RCH007', '', '', 1, '2016-07-21 14:34:56'),
(781, '9807364251', 2, 2, 1, 'GLO N500', 'GLO N500', 'glo-n500', 0, '', 500, 500, '', 'RCH008', '', '', 1, '2016-07-21 14:34:56'),
(782, '5189374062', 2, 2, 1, 'GLO VTU', 'GLO VTU', 'glo-vtu', 0, '', 0, 0, '', 'I000000394', '', '', 1, '2016-07-21 14:34:56'),
(783, '7850126349', 2, 2, 1, 'GOLD\'S CUSTARD 2KG', 'GOLD\'S CUSTARD 2KG', 'gold\'s-custard-2kg', 0, '', 850, 850, '', 'GLD003', '', '', 1, '2016-07-21 14:34:56'),
(784, '0752913684', 2, 2, 1, 'GOLD\'S CUSTARD 500G (P)', 'GOLD\'S CUSTARD 500G (P)', 'gold\'s-custard-500g-(p)', 0, '', 250, 225, '', 'GLD002', '', '', 1, '2016-07-21 14:34:56'),
(785, '3801267549', 2, 2, 1, 'GOLD\'S CUSTARD 500G (S)', 'GOLD\'S CUSTARD 500G (S)', 'gold\'s-custard-500g-(s)', 0, '', 200, 200, '', 'GLD001', '', '', 1, '2016-07-21 14:34:56'),
(786, '1345820967', 2, 2, 1, 'GOLDEN MORN (MAIZE) 1KG', 'GOLDEN MORN (MAIZE) 1KG', 'golden-morn-(maize)-1kg', 0, '', 895, 805.65, '', '6151100030283', '', '', 1, '2016-07-21 14:34:56'),
(787, '5869310724', 2, 2, 1, 'GOLDEN MORN 50G', 'GOLDEN MORN 50G', 'golden-morn-50g', 0, '', 80, 60, '', '6151100030245', '', '', 1, '2016-07-21 14:34:56'),
(788, '9852614037', 2, 2, 1, 'GOLDEN MORN CHOCO 450G', 'GOLDEN MORN CHOCO 450G', 'golden-morn-choco-450g', 0, '', 450, 450, '', 'GMG004', '', '', 1, '2016-07-21 14:34:56'),
(789, '3758496021', 2, 2, 1, 'HAPPY HOUR (KIWI MINT LIME) 1L', 'HAPPY HOUR (KIWI MINT LIME) 1L', 'happy-hour-(kiwi-mint-lime)-1l', 0, '', 250, 170, '', '6151100051608', '', '', 1, '2016-07-21 14:34:56'),
(790, '6037984215', 2, 2, 1, 'HAPPY HOUR- PEACH 250ML', 'HAPPY HOUR- PEACH 250ML', 'happy-hour--peach-250ml', 0, '', 45, 45, '', 'CHI014', '', '', 1, '2016-07-21 14:34:56'),
(791, '0159326847', 2, 2, 1, 'HAPPY HOUR- PEACH 500ML', 'HAPPY HOUR- PEACH 500ML', 'happy-hour--peach-500ml', 0, '', 100, 100, '', 'CHI020', '', '', 1, '2016-07-21 14:34:56'),
(792, '9564173280', 2, 2, 1, 'HAPPY HOUR- TROPICAL (PACK) 200ML', 'HAPPY HOUR- TROPICAL (PACK) 200ML', 'happy-hour--tropical-(pack)-200ml', 0, '', 1065, 1000, '', '6151100056061', '', '', 1, '2016-07-21 14:34:56'),
(793, '7819065324', 2, 2, 1, 'HAPPY HOUR- TROPICAL 200ML', 'HAPPY HOUR- TROPICAL 200ML', 'happy-hour--tropical-200ml', 0, '', 50, 45, '', '6151100059765', '', '', 1, '2016-07-21 14:34:57'),
(794, '3947068215', 2, 2, 1, 'HAPPY HOUR- TROPICAL 500ML', 'HAPPY HOUR- TROPICAL 500ML', 'happy-hour--tropical-500ml', 0, '', 100, 100, '', 'CHI012', '', '', 1, '2016-07-21 14:34:57'),
(795, '4365729180', 2, 2, 1, 'HOLLANDIA EVAP CAP 215G', 'HOLLANDIA EVAP CAP 215G', 'hollandia-evap-cap-215g', 0, '', 170, 119.11, '', '6151100052476', '', '', 1, '2016-07-21 14:34:57'),
(796, '1486205793', 2, 2, 1, 'HOLLANDIA PLAIN-500ML', 'HOLLANDIA PLAIN-500ML', 'hollandia-plain-500ml', 0, '', 180, 180, '', 'CHYB006', '', '', 1, '2016-07-21 14:34:57'),
(797, '0243815976', 2, 2, 1, 'HOLLANDIA STRAWBERRY-500ML', 'HOLLANDIA STRAWBERRY-500ML', 'hollandia-strawberry-500ml', 0, '', 180, 180, '', 'CHYB005', '', '', 1, '2016-07-21 14:34:58'),
(798, '0675829134', 2, 2, 1, 'HOLLANDIA YOGHURT (PLAIN) -1L', 'HOLLANDIA YOGHURT (PLAIN) -1L', 'hollandia-yoghurt-(plain)--1l', 0, '', 395, 340, '', '6151100052186', '', '', 1, '2016-07-21 14:34:58'),
(799, '0659247381', 2, 2, 1, 'HYPO 1LTR BOTTLE', 'HYPO 1LTR BOTTLE', 'hypo-1ltr-bottle', 0, '', 260, 208, '', '6156000039626', '', '', 1, '2016-07-21 14:34:58'),
(800, '8246905137', 2, 2, 1, 'HYPO 500 ML BOTTLE', 'HYPO 500 ML BOTTLE', 'hypo-500-ml-bottle', 0, '', 140, 120, '', '6156000039619', '', '', 1, '2016-07-21 14:34:58'),
(801, '9147506823', 2, 2, 1, 'HYPO 75ML SACHET (ITALIAN)', 'HYPO 75ML SACHET (ITALIAN)', 'hypo-75ml-sachet-(italian)', 0, '', 20, 11, '', '6156000039602', '', '', 1, '2016-07-21 14:34:58'),
(802, '8074629513', 2, 2, 1, 'INDOMIE CHICKEN NOODLES 210G (HUNGRY MAN) - CARTON', 'INDOMIE CHICKEN NOODLES 210G (HUNGRY MAN) - CARTON', 'indomie-chicken-noodles-210g-(hungry-man)---carton', 0, '', 2500, 2350, '', 'I000000053', '', '', 1, '2016-07-21 14:34:59'),
(803, '7385460192', 2, 2, 1, 'INDOMIE FAMILY PACK 450g', 'INDOMIE FAMILY PACK 450g', 'indomie-family-pack-450g', 0, '', 200, 200, '', 'IFP001', '', '', 1, '2016-07-21 14:34:59'),
(804, '6892140573', 2, 2, 1, 'INDOMIE ONION CHICKEN 70G', 'INDOMIE ONION CHICKEN 70G', 'indomie-onion-chicken-70g', 0, '', 40, 30, '', '89686130195', '', '', 1, '2016-07-21 14:34:59'),
(805, '6957201483', 2, 2, 1, 'INDOMIE ONION CHICKEN 70G - 3PCS', 'INDOMIE ONION CHICKEN 70G - 3PCS', 'indomie-onion-chicken-70g---3pcs', 0, '', 120, 90, '', 'I000000280', '', '', 1, '2016-07-21 14:34:59'),
(806, '3940568127', 2, 2, 1, 'INDOMIE ONION CHICKEN 70G - CARTON', 'INDOMIE ONION CHICKEN 70G - CARTON', 'indomie-onion-chicken-70g---carton', 0, '', 1480, 1250, '', 'I000000341', '', '', 1, '2016-07-21 14:34:59'),
(807, '5310784629', 2, 2, 1, 'INDOMIE ORIENTAL FRIED NOODLES (70G) - 3PCS', 'INDOMIE ORIENTAL FRIED NOODLES (70G) - 3PCS', 'indomie-oriental-fried-noodles-(70g)---3pcs', 0, '', 100, 35, '', 'I000000044', '', '', 1, '2016-07-21 14:35:00'),
(808, '0478956312', 2, 2, 1, 'INDOMIE ORIENTAL FRIED NOODLES 120G', 'INDOMIE ORIENTAL FRIED NOODLES 120G', 'indomie-oriental-fried-noodles-120g', 0, '', 60, 60, '', 'INO003', '', '', 1, '2016-07-21 14:35:00'),
(809, '0534987612', 2, 2, 1, 'INDOMIE ORIENTAL FRIED NOODLES 70G', 'INDOMIE ORIENTAL FRIED NOODLES 70G', 'indomie-oriental-fried-noodles-70g', 0, '', 35, 35, '', 'INO001', '', '', 1, '2016-07-21 14:35:00'),
(810, '6310592478', 2, 2, 1, 'INDOMIE PEPPER CHICKEN 120G', 'INDOMIE PEPPER CHICKEN 120G', 'indomie-pepper-chicken-120g', 0, '', 60, 57.7, '', 'IPC003', '', '', 1, '2016-07-21 14:35:00'),
(811, '2517940386', 2, 2, 1, 'INDOMIE PEPPER CHICKEN 70G', 'INDOMIE PEPPER CHICKEN 70G', 'indomie-pepper-chicken-70g', 0, '', 35, 35, '', 'IPC001', '', '', 1, '2016-07-21 14:35:00'),
(812, '9820651734', 2, 2, 1, 'INDOMIE REGULAR CHICKEN', 'INDOMIE REGULAR CHICKEN', 'indomie-regular-chicken', 0, '', 40, 31.25, '', '89686130010', '', '', 1, '2016-07-21 14:35:00'),
(813, '0214857639', 2, 2, 1, 'INDOMIE REGULAR CHICKEN - 3PCS', 'INDOMIE REGULAR CHICKEN - 3PCS', 'indomie-regular-chicken---3pcs', 0, '', 120, 90, '', 'PSP004', '', '', 1, '2016-07-21 14:35:00'),
(814, '0769385241', 2, 2, 1, 'INDOMIE SUPER PACK CHICKEN', 'INDOMIE SUPER PACK CHICKEN', 'indomie-super-pack-chicken', 0, '', 60, 56, '', '89686130027', '', '', 1, '2016-07-21 14:35:00'),
(815, '7851260439', 2, 2, 1, 'INDOMIE SUPER PACK CHICKEN - CARTON', 'INDOMIE SUPER PACK CHICKEN - CARTON', 'indomie-super-pack-chicken---carton', 0, '', 2350, 2250, '', 'I000000055', '', '', 1, '2016-07-21 14:35:01'),
(816, '1875936402', 2, 2, 1, 'JAGO - MAYO 16 OZ - USA', 'JAGO - MAYO 16 OZ - USA', 'jago---mayo-16-oz---usa', 0, '', 325, 325, '', 'GJMU01', '', '', 1, '2016-07-21 14:35:01'),
(817, '1825403679', 2, 2, 1, 'KNORR BEEF CUBES', 'KNORR BEEF CUBES', 'knorr-beef-cubes', 0, '', 370, 320, '', '6154000012762', '', '', 1, '2016-07-21 14:35:01'),
(818, '2130864957', 2, 2, 1, 'KNORR CHICKEN CUBES', 'KNORR CHICKEN CUBES', 'knorr-chicken-cubes', 0, '', 450, 350, '', '6154000012809', '', '', 1, '2016-07-21 14:35:01'),
(819, '2578413960', 2, 2, 1, 'LACASERA 50CL', 'LACASERA 50CL', 'lacasera-50cl', 0, '', 100, 79, '', 'LAC001', '', '', 1, '2016-07-21 14:35:01'),
(820, '3027916584', 2, 2, 1, 'LACASERA 50CL - CARTON', 'LACASERA 50CL - CARTON', 'lacasera-50cl---carton', 0, '', 1100, 950, '', 'I000000261', '', '', 1, '2016-07-21 14:35:01'),
(821, '9376015482', 2, 2, 1, 'LISABI BEAN FLOUR 500G', 'LISABI BEAN FLOUR 500G', 'lisabi-bean-flour-500g', 0, '', 280, 280, '', 'LBF001', '', '', 1, '2016-07-21 14:35:01'),
(822, '9845613072', 2, 2, 1, 'LUCOZADE BOOST PACK - 1L', 'LUCOZADE BOOST PACK - 1L', 'lucozade-boost-pack---1l', 0, '', 350, 240, '', '6164003477024', '', '', 1, '2016-07-21 14:35:01'),
(823, '0498537216', 2, 2, 1, 'LUCOZADE BOOST PET 380ML', 'LUCOZADE BOOST PET 380ML', 'lucozade-boost-pet-380ml', 0, '', 320, 240, '', '6164003477123', '', '', 1, '2016-07-21 14:35:01'),
(824, '7084192365', 2, 2, 1, 'MAGGI RAMADAN PACK', 'MAGGI RAMADAN PACK', 'maggi-ramadan-pack', 0, '', 500, 500, '', '6151100039897', '', '', 1, '2016-07-21 14:35:01'),
(825, '4659713082', 2, 2, 1, 'MALTINA CAN', 'MALTINA CAN', 'maltina-can', 0, '', 110, 92, '', 'MCX001', '', '', 1, '2016-07-21 14:35:01'),
(826, '6152470938', 2, 2, 1, 'MALTINA CAN - CARTON', 'MALTINA CAN - CARTON', 'maltina-can---carton', 0, '', 2450, 2250, '', 'I000000521', '', '', 1, '2016-07-21 14:35:01'),
(827, '7359062841', 2, 2, 1, 'MALTINA RGB 33CL', 'MALTINA RGB 33CL', 'maltina-rgb-33cl', 0, '', 100, 100, '', 'MCX003', '', '', 1, '2016-07-21 14:35:01'),
(828, '7385640291', 2, 2, 1, 'MALTINA SIP-IT 250ML', 'MALTINA SIP-IT 250ML', 'maltina-sip-it-250ml', 0, '', 50, 50, '', 'CHI016', '', '', 1, '2016-07-21 14:35:01'),
(829, '1068547239', 2, 2, 1, 'MILK CUSTARD CUP - 500G', 'MILK CUSTARD CUP - 500G', 'milk-custard-cup---500g', 0, '', 325, 325, '', 'FMC002', '', '', 1, '2016-07-21 14:35:01'),
(830, '2856741390', 2, 2, 1, 'MILO CRUNCHY', 'MILO CRUNCHY', 'milo-crunchy', 0, '', 425, 425, '', 'NFC018', '', '', 1, '2016-07-21 14:35:01'),
(831, '5813462790', 2, 2, 1, 'MILO REFILL 500GMS', 'MILO REFILL 500GMS', 'milo-refill-500gms', 0, '', 765, 607.9, '', '6151100031518', '', '', 1, '2016-07-21 14:35:01'),
(832, '1647230598', 2, 2, 1, 'MILO SACHET 20GMS', 'MILO SACHET 20GMS', 'milo-sachet-20gms', 0, '', 40, 27, '', '6151100031464', '', '', 1, '2016-07-21 14:35:01'),
(833, '1376045928', 2, 2, 1, 'MILO SACHET1KG (MILO REFILL)', 'MILO SACHET1KG (MILO REFILL)', 'milo-sachet1kg-(milo-refill)', 0, '', 1400, 1040, '', '6151100031549', '', '', 1, '2016-07-21 14:35:01'),
(834, '4851263709', 2, 2, 1, 'MILO TIN 500GMS', 'MILO TIN 500GMS', 'milo-tin-500gms', 0, '', 850, 700, '', '6151100031488', '', '', 1, '2016-07-21 14:35:01'),
(835, '3842601597', 2, 2, 1, 'MILO TIN 900GMS', 'MILO TIN 900GMS', 'milo-tin-900gms', 0, '', 0, 1450, '', 'NFC015', '', '', 1, '2016-07-21 14:35:02'),
(836, '4960351872', 2, 2, 1, 'MORNING FRESH 250ML', 'MORNING FRESH 250ML', 'morning-fresh-250ml', 0, '', 170, 108, '', 'I000000149', '', '', 1, '2016-07-21 14:35:02'),
(837, '1340569728', 2, 2, 1, 'MORNING FRESH 475ML', 'MORNING FRESH 475ML', 'morning-fresh-475ml', 0, '', 295, 194, '', '6154000018085', '', '', 1, '2016-07-21 14:35:02'),
(838, '9237654081', 2, 2, 1, 'MORTEIN ALL PURPOSE 300 ML', 'MORTEIN ALL PURPOSE 300 ML', 'mortein-all-purpose-300-ml', 0, '', 545, 450, '', 'REC010', '', '', 1, '2016-07-21 14:35:02'),
(839, '2457136908', 2, 2, 1, 'MORTEIN ODOURLESS 300 ML', 'MORTEIN ODOURLESS 300 ML', 'mortein-odourless-300-ml', 0, '', 525, 417, '', '6009695930764', '', '', 1, '2016-07-21 14:35:02'),
(840, '7620495138', 2, 2, 1, 'MR CHEF-1KG', 'MR CHEF-1KG', 'mr-chef-1kg', 0, '', 155, 100, '', '6180200000124', '', '', 1, '2016-07-21 14:35:02'),
(841, '7938106254', 2, 2, 1, 'MR CHEF-250G', 'MR CHEF-250G', 'mr-chef-250g', 0, '', 50, 30, '', '6180200000100', '', '', 1, '2016-07-21 14:35:02'),
(842, '5618234907', 2, 2, 1, 'MR CHEF-500G', 'MR CHEF-500G', 'mr-chef-500g', 0, '', 80, 35, '', 'MRC002', '', '', 1, '2016-07-21 14:35:02'),
(843, '3728049156', 2, 2, 1, 'MTN N100', 'MTN N100', 'mtn-n100', 0, '', 100, 97, '', 'RCH001', '', '', 1, '2016-07-21 14:35:02'),
(844, '8753192064', 2, 2, 1, 'MTN N1500', 'MTN N1500', 'mtn-n1500', 0, '', 0, 0, '', 'RCH005', '', '', 1, '2016-07-21 14:35:02'),
(845, '2730984156', 2, 2, 1, 'MTN N200', 'MTN N200', 'mtn-n200', 0, '', 200, 194, '', 'RCH002', '', '', 1, '2016-07-21 14:35:02'),
(846, '7408295613', 2, 2, 1, 'MTN N400', 'MTN N400', 'mtn-n400', 0, '', 400, 400, '', 'RCH003', '', '', 1, '2016-07-21 14:35:02'),
(847, '0231568497', 2, 2, 1, 'MTN N750', 'MTN N750', 'mtn-n750', 0, '', 750, 750, '', 'RCH004', '', '', 1, '2016-07-21 14:35:02'),
(848, '2397861504', 2, 2, 1, 'MTN VTU', 'MTN VTU', 'mtn-vtu', 0, '', 0, 0, '', 'I000000393', '', '', 1, '2016-07-21 14:35:02'),
(849, '9137204658', 2, 2, 1, 'NESCAFE 3 IN 1 (SLIM)', 'NESCAFE 3 IN 1 (SLIM)', 'nescafe-3-in-1-(slim)', 0, '', 40, 25, '', 'NSF001', '', '', 1, '2016-07-21 14:35:03'),
(850, '9624571830', 2, 2, 1, 'NESCAFE BREAKFAST', 'NESCAFE BREAKFAST', 'nescafe-breakfast', 0, '', 70, 42, '', '6151100036360', '', '', 1, '2016-07-21 14:35:03'),
(851, '7538612094', 2, 2, 1, 'NESCAFE BREAKFAST (PACKX24)', 'NESCAFE BREAKFAST (PACKX24)', 'nescafe-breakfast-(packx24)', 0, '', 1455, 1150, '', 'I000000526', '', '', 1, '2016-07-21 14:35:03'),
(852, '5912870436', 2, 2, 1, 'NESCAFE CLASSIC 2G', 'NESCAFE CLASSIC 2G', 'nescafe-classic-2g', 0, '', 30, 30, '', 'I000000166', '', '', 1, '2016-07-21 14:35:03'),
(853, '3926458701', 2, 2, 1, 'NESCAFE CLASSIC TIN 335G', 'NESCAFE CLASSIC TIN 335G', 'nescafe-classic-tin-335g', 0, '', 360, 300, '', '6033000084033', '', '', 1, '2016-07-21 14:35:03'),
(854, '8562037194', 2, 2, 1, 'OK ANYTIME CRACKER', 'OK ANYTIME CRACKER', 'ok-anytime-cracker', 0, '', 10, 10, '', 'MAC001', '', '', 1, '2016-07-21 14:35:03'),
(855, '9472631805', 2, 2, 1, 'OK MILKO CANDY', 'OK MILKO CANDY', 'ok-milko-candy', 0, '', 5, 4, '', 'I000000098', '', '', 1, '2016-07-21 14:35:03'),
(856, '2758041693', 2, 2, 1, 'OK MILKO CANDY 50 PCS', 'OK MILKO CANDY 50 PCS', 'ok-milko-candy-50-pcs', 0, '', 70, 60, '', 'MML003', '', '', 1, '2016-07-21 14:35:03'),
(857, '1279635408', 2, 2, 1, 'OK POP GUM 50 PCS', 'OK POP GUM 50 PCS', 'ok-pop-gum-50-pcs', 0, '', 5, 5, '', 'MML002', '', '', 1, '2016-07-21 14:35:03');
INSERT INTO `tblproducts` (`id`, `sku`, `category_id`, `subcategory_id`, `supplier_id`, `name`, `description`, `slug`, `flat_discount`, `percent_discount`, `selling_price`, `cost_price`, `image`, `barcode1`, `barcode2`, `barcode3`, `status`, `created`) VALUES
(858, '2614378095', 2, 2, 1, 'OK POP RASPBERRY & CREAM', 'OK POP RASPBERRY & CREAM', 'ok-pop-raspberry-&-cream', 0, '', 5, 5, '', 'MML012', '', '', 1, '2016-07-21 14:35:03'),
(859, '6743189520', 2, 2, 1, 'OK POP TANGERINE', 'OK POP TANGERINE', 'ok-pop-tangerine', 0, '', 5, 5, '', 'MML011', '', '', 1, '2016-07-21 14:35:03'),
(860, '5602948173', 2, 2, 1, 'OK POP TROPICAL GREEN APPLE & GRAPE', 'OK POP TROPICAL GREEN APPLE & GRAPE', 'ok-pop-tropical-green-apple-&-grape', 0, '', 5, 5, '', 'MML013', '', '', 1, '2016-07-21 14:35:03'),
(861, '7389461520', 2, 2, 1, 'OK POP TROPICAL PINACOLADA & ORANGE', 'OK POP TROPICAL PINACOLADA & ORANGE', 'ok-pop-tropical-pinacolada-&-orange', 0, '', 5, 5, '', 'MML010', '', '', 1, '2016-07-21 14:35:03'),
(862, '3976824150', 2, 2, 1, 'OMO MULTIACTIVE SUPER 1KG', 'OMO MULTIACTIVE SUPER 1KG', 'omo-multiactive-super-1kg', 0, '', 600, 520, '', '6154000013271', '', '', 1, '2016-07-21 14:35:03'),
(863, '1076294358', 2, 2, 1, 'OMO MULTIACTIVE SUPER 30G', 'OMO MULTIACTIVE SUPER 30G', 'omo-multiactive-super-30g', 0, '', 15, 15, '', 'U1AA76', '', '', 1, '2016-07-21 14:35:03'),
(864, '7950638421', 2, 2, 1, 'OMO RELAUNCH TANG PLUS 100G', 'OMO RELAUNCH TANG PLUS 100G', 'omo-relaunch-tang-plus-100g', 0, '', 80, 50, '', '6151100132963', '', '', 1, '2016-07-21 14:35:03'),
(865, '8437590261', 2, 2, 1, 'OMO RELAUNCH TANG PLUS 80G', 'OMO RELAUNCH TANG PLUS 80G', 'omo-relaunch-tang-plus-80g', 0, '', 50, 40, '', 'U1AA77', '', '', 1, '2016-07-21 14:35:03'),
(866, '8027153469', 2, 2, 1, 'ORANGE JUICE 1L', 'ORANGE JUICE 1L', 'orange-juice-1l', 0, '', 260, 250, '', 'CHI002', '', '', 1, '2016-07-21 14:35:03'),
(867, '9423865071', 2, 2, 1, 'ORANGE JUICE 250ML', 'ORANGE JUICE 250ML', 'orange-juice-250ml', 0, '', 75, 75, '', 'CHI005', '', '', 1, '2016-07-21 14:35:04'),
(868, '0819732465', 2, 2, 1, 'PAMPERS ECO JUNIOR', 'PAMPERS ECO JUNIOR', 'pampers-eco-junior', 0, '', 0, 0, '', 'PME005', '', '', 1, '2016-07-21 14:35:04'),
(869, '9873645201', 2, 2, 1, 'PAMPERS JUNIOR X 9', 'PAMPERS JUNIOR X 9', 'pampers-junior-x-9', 0, '', 370, 370, '', 'PMI004', '', '', 1, '2016-07-21 14:35:04'),
(870, '7082156349', 2, 2, 1, 'PAMPERS MAXI', 'PAMPERS MAXI', 'pampers-maxi', 0, '', 380, 380, '', 'PMI003', '', '', 1, '2016-07-21 14:35:04'),
(871, '7805493216', 2, 2, 1, 'PAMPERS MAXI ECO', 'PAMPERS MAXI ECO', 'pampers-maxi-eco', 0, '', 0, 0, '', '4015400479000', '', '', 1, '2016-07-21 14:35:04'),
(872, '1579063248', 2, 2, 1, 'PAMPERS MIDI', 'PAMPERS MIDI', 'pampers-midi', 0, '', 380, 380, '', 'PMI002', '', '', 1, '2016-07-21 14:35:04'),
(873, '0982741635', 2, 2, 1, 'PAMPERS MIDI ECO', 'PAMPERS MIDI ECO', 'pampers-midi-eco', 0, '', 0, 0, '', 'PME004', '', '', 1, '2016-07-21 14:35:04'),
(874, '4382067591', 2, 2, 1, 'PAMPERS MINI', 'PAMPERS MINI', 'pampers-mini', 0, '', 380, 380, '', 'PMI001', '', '', 1, '2016-07-21 14:35:04'),
(875, '1980632754', 2, 2, 1, 'PAMPERS MINI ECO', 'PAMPERS MINI ECO', 'pampers-mini-eco', 0, '', 0, 0, '', 'PME001', '', '', 1, '2016-07-21 14:35:04'),
(876, '9370152468', 2, 2, 1, 'PEAK 123 (REFILL) 400G', 'PEAK 123 (REFILL) 400G', 'peak-123-(refill)-400g', 0, '', 895, 800, '', '8716200438131', '', '', 1, '2016-07-21 14:35:04'),
(877, '9870365412', 2, 2, 1, 'PEAK EVAP SACHET 35G', 'PEAK EVAP SACHET 35G', 'peak-evap-sachet-35g', 0, '', 20, 20, '', 'WPE002', '', '', 1, '2016-07-21 14:35:04'),
(878, '9623174850', 2, 2, 1, 'PEAK EVAP SACHET 35G', 'PEAK EVAP SACHET 35G', 'peak-evap-sachet-35g', 0, '', 50, 20, '', '6156000143569', '', '', 1, '2016-07-21 14:35:04'),
(879, '5861207394', 2, 2, 1, 'PEAK MILK CHOCO 25G', 'PEAK MILK CHOCO 25G', 'peak-milk-choco-25g', 0, '', 30, 30, '', 'WPM002', '', '', 1, '2016-07-21 14:35:04'),
(880, '9438562170', 2, 2, 1, 'PEAK MILK NIGERIA (EASY OPEN) 170G', 'PEAK MILK NIGERIA (EASY OPEN) 170G', 'peak-milk-nigeria-(easy-open)-170g', 0, '', 165, 120, '', '6156000143408', '', '', 1, '2016-07-21 14:35:04'),
(881, '7143280596', 2, 2, 1, 'PEAK MILK NIGERIA 170G', 'PEAK MILK NIGERIA 170G', 'peak-milk-nigeria-170g', 0, '', 150, 120, '', '87162240', '', '', 1, '2016-07-21 14:35:04'),
(882, '5026943187', 2, 2, 1, 'PEAK MILK NIGERIA 170G - CARTON', 'PEAK MILK NIGERIA 170G - CARTON', 'peak-milk-nigeria-170g---carton', 0, '', 6100, 120, '', 'I000000056', '', '', 1, '2016-07-21 14:35:04'),
(883, '9541203867', 2, 2, 1, 'PEAK MILK POWDER 20G (S)', 'PEAK MILK POWDER 20G (S)', 'peak-milk-powder-20g-(s)', 0, '', 50, 34, '', '8716200449304', '', '', 1, '2016-07-21 14:35:04'),
(884, '4258930761', 2, 2, 1, 'PEAK MILK POWDER 20G (S) - CARTON', 'PEAK MILK POWDER 20G (S) - CARTON', 'peak-milk-powder-20g-(s)---carton', 0, '', 7050, 30, '', 'I000000058', '', '', 1, '2016-07-21 14:35:04'),
(885, '7502684139', 2, 2, 1, 'PEAK MILK POWDER 400G - CARTON', 'PEAK MILK POWDER 400G - CARTON', 'peak-milk-powder-400g---carton', 0, '', 8000, 8700, '', 'I000000057', '', '', 1, '2016-07-21 14:35:04'),
(886, '4230617589', 2, 2, 1, 'PEAK THREE CROWN 170GMS', 'PEAK THREE CROWN 170GMS', 'peak-three-crown-170gms', 0, '', 130, 108, '', '8716200607544', '', '', 1, '2016-07-21 14:35:04'),
(887, '4976028531', 2, 2, 1, 'PEAK THREE CROWN EVAP (35g S)', 'PEAK THREE CROWN EVAP (35g S)', 'peak-three-crown-evap-(35g-s)', 0, '', 20, 20, '', 'WPT003', '', '', 1, '2016-07-21 14:35:04'),
(888, '9102367584', 2, 2, 1, 'PEAK THREE CROWN EVAP (35g S)', 'PEAK THREE CROWN EVAP (35g S)', 'peak-three-crown-evap-(35g-s)', 0, '', 50, 20, '', '6156000130309', '', '', 1, '2016-07-21 14:35:05'),
(889, '0351682794', 2, 2, 1, 'PEAK THREE CROWN MILK 24X170GMS', 'PEAK THREE CROWN MILK 24X170GMS', 'peak-three-crown-milk-24x170gms', 0, '', 95, 95, '', 'WPT006', '', '', 1, '2016-07-21 14:35:05'),
(890, '4182903765', 2, 2, 1, 'PEAK TIN MILK 900GMS', 'PEAK TIN MILK 900GMS', 'peak-tin-milk-900gms', 0, '', 2050, 1600, '', '8716200449250', '', '', 1, '2016-07-21 14:35:05'),
(891, '3729410658', 2, 2, 1, 'PINEAPPLE JUICE 1L', 'PINEAPPLE JUICE 1L', 'pineapple-juice-1l', 0, '', 250, 250, '', 'CHI003', '', '', 1, '2016-07-21 14:35:05'),
(892, '7846501239', 2, 2, 1, 'PINEAPPLE JUICE 250ML', 'PINEAPPLE JUICE 250ML', 'pineapple-juice-250ml', 0, '', 75, 75, '', 'CHI006', '', '', 1, '2016-07-21 14:35:05'),
(893, '7593182640', 2, 2, 1, 'POMO - MATCH BOX', 'POMO - MATCH BOX', 'pomo---match-box', 0, '', 10, 40, '', 'GPMD01', '', '', 1, '2016-07-21 14:35:05'),
(894, '4591876203', 2, 2, 1, 'POWER OIL 75CL', 'POWER OIL 75CL', 'power-oil-75cl', 0, '', 485, 415, '', '6156000100012', '', '', 1, '2016-07-21 14:35:05'),
(895, '2803761945', 2, 2, 1, 'POWER OIL SACHET 14CL', 'POWER OIL SACHET 14CL', 'power-oil-sachet-14cl', 0, '', 70, 56, '', '6156000100098', '', '', 1, '2016-07-21 14:35:05'),
(896, '4603172859', 2, 2, 1, 'POWER PASTA', 'POWER PASTA', 'power-pasta', 0, '', 160, 135, '', '6156000099309', '', '', 1, '2016-07-21 14:35:05'),
(897, '2765038194', 2, 2, 1, 'PREMIER ALOE VERA SOAP 190G', 'PREMIER ALOE VERA SOAP 190G', 'premier-aloe-vera-soap-190g', 0, '', 130, 100, '', '6033000102799', '', '', 1, '2016-07-21 14:35:05'),
(898, '8056972413', 2, 2, 1, 'PREMIER COOL BLAST DEO SOAP 70G', 'PREMIER COOL BLAST DEO SOAP 70G', 'premier-cool-blast-deo-soap-70g', 0, '', 65, 65, '', 'PRM03', '', '', 1, '2016-07-21 14:35:05'),
(899, '7583069214', 2, 2, 1, 'PREMIER COOL DEO SOAP 70G', 'PREMIER COOL DEO SOAP 70G', 'premier-cool-deo-soap-70g', 0, '', 70, 60, '', '6154000018887', '', '', 1, '2016-07-21 14:35:05'),
(900, '6157039842', 2, 2, 1, 'PREMIER LUXURIOUS MILK 65G', 'PREMIER LUXURIOUS MILK 65G', 'premier-luxurious-milk-65g', 0, '', 50, 33, '', '6033000102768', '', '', 1, '2016-07-21 14:35:05'),
(901, '2850769314', 2, 2, 1, 'PREMIER LUXURIOUS MILK SOAP 190G', 'PREMIER LUXURIOUS MILK SOAP 190G', 'premier-luxurious-milk-soap-190g', 0, '', 130, 100, '', '6033000102812', '', '', 1, '2016-07-21 14:35:05'),
(902, '2834596071', 2, 2, 1, 'PREMIER MILK DEO SOAP 200G *30', 'PREMIER MILK DEO SOAP 200G *30', 'premier-milk-deo-soap-200g-*30', 0, '', 130, 100, '', '6033000102805', '', '', 1, '2016-07-21 14:35:05'),
(903, '5081473962', 2, 2, 1, 'PREMIER SMALL', 'PREMIER SMALL', 'premier-small', 0, '', 50, 33, '', '6033000102744', '', '', 1, '2016-07-21 14:35:05'),
(904, '1839650742', 2, 2, 1, 'PRINGLE 165 GMS (ORIGINAL)', 'PRINGLE 165 GMS (ORIGINAL)', 'pringle-165-gms-(original)', 0, '', 395, 320, '', '5053990101573', '', '', 1, '2016-07-21 14:35:05'),
(905, '7523816094', 2, 2, 1, 'PRINGLE 190 GMS (ORIGINAL)', 'PRINGLE 190 GMS (ORIGINAL)', 'pringle-190-gms-(original)', 0, '', 450, 344, '', '5053990111503', '', '', 1, '2016-07-21 14:35:05'),
(906, '0492735618', 2, 2, 1, 'PRINGLE 190 GMS (PRAWN COCKTAIL FLAVOUR)', 'PRINGLE 190 GMS (PRAWN COCKTAIL FLAVOUR)', 'pringle-190-gms-(prawn-cocktail-flavour)', 0, '', 450, 344, '', '5053990112258', '', '', 1, '2016-07-21 14:35:05'),
(907, '9467518302', 2, 2, 1, 'PRINGLE 190 GMS (SALT & VINEGAR)', 'PRINGLE 190 GMS (SALT & VINEGAR)', 'pringle-190-gms-(salt-&-vinegar)', 0, '', 450, 344, '', '5053990112227', '', '', 1, '2016-07-21 14:35:05'),
(908, '1475082396', 2, 2, 1, 'PRINGLE 190 GMS (SOUR CREAM & ONION)', 'PRINGLE 190 GMS (SOUR CREAM & ONION)', 'pringle-190-gms-(sour-cream-&-onion)', 0, '', 450, 344, '', '5053990111510', '', '', 1, '2016-07-21 14:35:05'),
(909, '0923748516', 2, 2, 1, 'PRINGLE 190 GMS (TEXAS BBQ SAUCE)', 'PRINGLE 190 GMS (TEXAS BBQ SAUCE)', 'pringle-190-gms-(texas-bbq-sauce)', 0, '', 450, 344, '', '5053990112234', '', '', 1, '2016-07-21 14:35:05'),
(910, '5182463790', 2, 2, 1, 'PRINGLE 40 GMS(ORIGINAL)', 'PRINGLE 40 GMS(ORIGINAL)', 'pringle-40-gms(original)', 0, '', 175, 175, '', 'PPG006', '', '', 1, '2016-07-21 14:35:05'),
(911, '4679328150', 2, 2, 1, 'PRINGLES (CHEDDAR CHEESE) 21GMS', 'PRINGLES (CHEDDAR CHEESE) 21GMS', 'pringles-(cheddar-cheese)-21gms', 0, '', 150, 100, '', '3808500', '', '', 1, '2016-07-21 14:35:06'),
(912, '7612853049', 2, 2, 1, 'PRINGLES (ORIGINAL) 21GMS', 'PRINGLES (ORIGINAL) 21GMS', 'pringles-(original)-21gms', 0, '', 150, 100, '', '3808306', '', '', 1, '2016-07-21 14:35:06'),
(913, '2980576413', 2, 2, 1, 'PRINGLES (SOUR CREAM & ONION) 21GMS', 'PRINGLES (SOUR CREAM & ONION) 21GMS', 'pringles-(sour-cream-&-onion)-21gms', 0, '', 150, 100, '', '3808403', '', '', 1, '2016-07-21 14:35:06'),
(914, '2906715348', 2, 2, 1, 'PRINGLES 165 GMS (SOUR CREAM & ONION)', 'PRINGLES 165 GMS (SOUR CREAM & ONION)', 'pringles-165-gms-(sour-cream-&-onion)', 0, '', 395, 320, '', '5053990101597', '', '', 1, '2016-07-21 14:35:06'),
(915, '6823579410', 2, 2, 1, 'PRINGLES 21GMS - CARTON', 'PRINGLES 21GMS - CARTON', 'pringles-21gms---carton', 0, '', 4150, 3600, '', 'I000000547', '', '', 1, '2016-07-21 14:35:06'),
(916, '6123570489', 2, 2, 3, 'ARIEL DET POWDER 2 KG', 'ARIEL DET POWDER 2 KG', 'ariel-det-powder-2-kg', 0, '', 1055, 875, '', '5410076511204', '', '', 1, '2016-07-21 14:35:06'),
(917, '7963804215', 2, 2, 3, 'ARIEL DET POWDER 500 GM', 'ARIEL DET POWDER 500 GM', 'ariel-det-powder-500-gm', 0, '', 280, 240, '', '5410076202447', '', '', 1, '2016-07-21 14:35:06'),
(918, '9360518427', 2, 2, 3, 'AYOOLA POUND-O-YAM 4.5 KG', 'AYOOLA POUND-O-YAM 4.5 KG', 'ayoola-pound-o-yam-4.5-kg', 0, '', 3800, 3300, '', '6151100001191', '', '', 1, '2016-07-21 14:35:06'),
(919, '5943261807', 2, 2, 3, 'BELLE SUPERIOR (2PCS)', 'BELLE SUPERIOR (2PCS)', 'belle-superior-(2pcs)', 0, '', 150, 120, '', '5285001821259', '', '', 1, '2016-07-21 14:35:06'),
(920, '4695182730', 2, 2, 3, 'BOBO (APPLE) - 210ML', 'BOBO (APPLE) - 210ML', 'bobo-(apple)---210ml', 0, '', 50, 37.5, '', '6153400041761', '', '', 1, '2016-07-21 14:35:06'),
(921, '6509347128', 2, 2, 3, 'BOBO (PINEAPPLE) - 210ML', 'BOBO (PINEAPPLE) - 210ML', 'bobo-(pineapple)---210ml', 0, '', 50, 37.5, '', '6152110059028', '', '', 1, '2016-07-21 14:35:06'),
(922, '4705328169', 2, 2, 3, 'CAPRI SONNE (APPLE)', 'CAPRI SONNE (APPLE)', 'capri-sonne-(apple)', 0, '', 60, 49, '', '6151100051028', '', '', 1, '2016-07-21 14:35:06'),
(923, '0482673915', 2, 2, 3, 'CAPRI SONNE (ORANGE)', 'CAPRI SONNE (ORANGE)', 'capri-sonne-(orange)', 0, '', 60, 49, '', '6151100051011', '', '', 1, '2016-07-21 14:35:06'),
(924, '3842150679', 2, 2, 3, 'CAPRI SONNE (PINEAPPLE)', 'CAPRI SONNE (PINEAPPLE)', 'capri-sonne-(pineapple)', 0, '', 60, 44.77, '', '6151100051035', '', '', 1, '2016-07-21 14:35:06'),
(925, '4123658709', 2, 2, 3, 'CAPRI SONNE - CARTON', 'CAPRI SONNE - CARTON', 'capri-sonne---carton', 0, '', 2100, 1950, '', '6151100057082', '', '', 1, '2016-07-21 14:35:06'),
(926, '9276841530', 2, 2, 3, 'CARO WHITE LOTION B/S - 500ML', 'CARO WHITE LOTION B/S - 500ML', 'caro-white-lotion-b/s---500ml', 0, '', 845, 700, '', '6181100530001', '', '', 1, '2016-07-21 14:35:06'),
(927, '2849531670', 2, 2, 3, 'CLOSEUP RED HOT 140G', 'CLOSEUP RED HOT 140G', 'closeup-red-hot-140g', 0, '', 200, 180, '', '6151100130457', '', '', 1, '2016-07-21 14:35:06'),
(928, '9845037261', 2, 2, 3, 'CORNFLAKES ORIGINAL 50G', 'CORNFLAKES ORIGINAL 50G', 'cornflakes-original-50g', 0, '', 100, 80, '', 'I000000381', '', '', 1, '2016-07-21 14:35:06'),
(929, '1237048695', 2, 2, 3, 'CORNFLAKES ORIGINAL 50G', 'CORNFLAKES ORIGINAL 50G', 'cornflakes-original-50g', 0, '', 80, 70, '', 'I000000419', '', '', 1, '2016-07-21 14:35:06'),
(930, '3429086751', 2, 2, 3, 'DABUR HERBAL TOOTHPASTE CC 160G', 'DABUR HERBAL TOOTHPASTE CC 160G', 'dabur-herbal-toothpaste-cc-160g', 0, '', 200, 175, '', '5022496101370', '', '', 1, '2016-07-21 14:35:07'),
(931, '9280316475', 2, 2, 3, 'DANO COOL COW  TIN 900G', 'DANO COOL COW  TIN 900G', 'dano-cool-cow--tin-900g', 0, '', 1400, 1250, '', '5760466959261', '', '', 1, '2016-07-21 14:35:07'),
(932, '6492058713', 2, 2, 3, 'DANO COOL COW TIN 2.5G', 'DANO COOL COW TIN 2.5G', 'dano-cool-cow-tin-2.5g', 0, '', 3400, 3230, '', '5760466959285', '', '', 1, '2016-07-21 14:35:07'),
(933, '1032678495', 2, 2, 3, 'DANO COOLCOW TIN 400G', 'DANO COOLCOW TIN 400G', 'dano-coolcow-tin-400g', 0, '', 720, 600, '', '5760466959254', '', '', 1, '2016-07-21 14:35:07'),
(934, '3524906817', 2, 2, 3, 'DANO FULL CREAM TIN 2.5G', 'DANO FULL CREAM TIN 2.5G', 'dano-full-cream-tin-2.5g', 0, '', 4500, 4300, '', '5711953012617', '', '', 1, '2016-07-21 14:35:07'),
(935, '4396208157', 2, 2, 3, 'DANO FULL CREAM TIN 900G', 'DANO FULL CREAM TIN 900G', 'dano-full-cream-tin-900g', 0, '', 1850, 1400, '', '5711953012600', '', '', 1, '2016-07-21 14:35:07'),
(936, '5721048639', 2, 2, 3, 'DETTOL LIQUID ANTISEPTIC 1 L', 'DETTOL LIQUID ANTISEPTIC 1 L', 'dettol-liquid-antiseptic-1-l', 0, '', 4000, 3853, '', '6001106101800', '', '', 1, '2016-07-21 14:35:07'),
(937, '6279540183', 2, 2, 3, 'DETTOL LIQUID ANTISEPTIC 2K', 'DETTOL LIQUID ANTISEPTIC 2K', 'dettol-liquid-antiseptic-2k', 0, '', 3850, 1250, '', '6001106101541', '', '', 1, '2016-07-21 14:35:07'),
(938, '7146835209', 2, 2, 3, 'DETTOL LIQUID ANTISEPTIC 500 ML', 'DETTOL LIQUID ANTISEPTIC 500 ML', 'dettol-liquid-antiseptic-500-ml', 0, '', 750, 680, '', '50158928', '', '', 1, '2016-07-21 14:35:07'),
(939, '3042751698', 2, 2, 3, 'DETTOL SKIN CARE 120 GM', 'DETTOL SKIN CARE 120 GM', 'dettol-skin-care-120-gm', 0, '', 200, 180, '', '6009695931037', '', '', 1, '2016-07-21 14:35:07'),
(940, '0796321458', 2, 2, 3, 'DETTOL SOAP (ACTIVE) 70GM', 'DETTOL SOAP (ACTIVE) 70GM', 'dettol-soap-(active)-70gm', 0, '', 120, 100, '', '6009695931068', '', '', 1, '2016-07-21 14:35:07'),
(941, '0847126539', 2, 2, 3, 'DETTOL SOAP (EVEN TONE) 70 GM', 'DETTOL SOAP (EVEN TONE) 70 GM', 'dettol-soap-(even-tone)-70-gm', 0, '', 120, 100, '', '6009695933581', '', '', 1, '2016-07-21 14:35:07'),
(942, '8653170924', 2, 2, 3, 'DETTOL SOAP (HERBAL) 70GM', 'DETTOL SOAP (HERBAL) 70GM', 'dettol-soap-(herbal)-70gm', 0, '', 120, 100, '', '6009695931082', '', '', 1, '2016-07-21 14:35:07'),
(943, '9207843615', 2, 2, 3, 'DETTOL SOAP (RE-ENERGIZE) 70GM', 'DETTOL SOAP (RE-ENERGIZE) 70GM', 'dettol-soap-(re-energize)-70gm', 0, '', 120, 100, '', '6009695932065', '', '', 1, '2016-07-21 14:35:07'),
(944, '6948057213', 2, 2, 3, 'DETTOL SOAP COOL 175 GM', 'DETTOL SOAP COOL 175 GM', 'dettol-soap-cool-175-gm', 0, '', 250, 150, '', '6009695933659', '', '', 1, '2016-07-21 14:35:07'),
(945, '8546327109', 2, 2, 3, 'DETTOL SOAP ORIGINAL 120 GM', 'DETTOL SOAP ORIGINAL 120 GM', 'dettol-soap-original-120-gm', 0, '', 250, 100, '', '6009695931013', '', '', 1, '2016-07-21 14:35:07'),
(946, '4391506872', 2, 2, 3, 'DETTOL SOAP SKIN CARE 175 GM', 'DETTOL SOAP SKIN CARE 175 GM', 'dettol-soap-skin-care-175-gm', 0, '', 250, 150, '', '6009695932508', '', '', 1, '2016-07-21 14:35:07'),
(947, '6435279810', 2, 2, 3, 'FRISO GOLD RICE 300GMS', 'FRISO GOLD RICE 300GMS', 'friso-gold-rice-300gms', 0, '', 1200, 1033, '', '8716200705776', '', '', 1, '2016-07-21 14:35:07'),
(948, '9378615402', 2, 2, 3, 'FRISO GOLD WHEAT 300GMS', 'FRISO GOLD WHEAT 300GMS', 'friso-gold-wheat-300gms', 0, '', 1200, 1033, '', '8716200705790', '', '', 1, '2016-07-21 14:35:07'),
(949, '7546980231', 2, 2, 3, 'GINO -TP 400G (EO) -CHINA', 'GINO -TP 400G (EO) -CHINA', 'gino--tp-400g-(eo)--china', 0, '', 380, 250, '', '4897052890132', '', '', 1, '2016-07-21 14:35:08'),
(950, '5297138640', 2, 2, 3, 'GINO(TP)- 210 GMS (EO) - CHINA', 'GINO(TP)- 210 GMS (EO) - CHINA', 'gino(tp)--210-gms-(eo)---china', 0, '', 250, 150, '', '4897052890149', '', '', 1, '2016-07-21 14:35:08'),
(951, '6247058391', 2, 2, 3, 'GLADE AIR FRESHNER 300ML', 'GLADE AIR FRESHNER 300ML', 'glade-air-freshner-300ml', 0, '', 400, 350, '', '5010182974216', '', '', 1, '2016-07-21 14:35:08'),
(952, '2801537469', 2, 2, 3, 'GLADE AIR FRESHNER 300ML', 'GLADE AIR FRESHNER 300ML', 'glade-air-freshner-300ml', 0, '', 400, 350, '', '5010182974315', '', '', 1, '2016-07-21 14:35:08'),
(953, '6975138240', 2, 2, 3, 'GLADE AIR FRESHNER 300ML', 'GLADE AIR FRESHNER 300ML', 'glade-air-freshner-300ml', 0, '', 400, 350, '', '5010182974018', '', '', 1, '2016-07-21 14:35:08'),
(954, '2365801947', 2, 2, 3, 'GOLDEN CHEESE MATCH BOX', 'GOLDEN CHEESE MATCH BOX', 'golden-cheese-match-box', 0, '', 50, 35, '', 'I000000444', '', '', 1, '2016-07-21 14:35:08'),
(955, '7583962410', 2, 2, 3, 'GOLDEN MORN (MAIZE) 500G', 'GOLDEN MORN (MAIZE) 500G', 'golden-morn-(maize)-500g', 0, '', 475, 420, '', '6151100030269', '', '', 1, '2016-07-21 14:35:08'),
(956, '9416287503', 2, 2, 3, 'GOODMORNING CORNFLAKES 500G', 'GOODMORNING CORNFLAKES 500G', 'goodmorning-cornflakes-500g', 0, '', 550, 450, '', '4008569027403', '', '', 1, '2016-07-21 14:35:08'),
(957, '4532186907', 2, 2, 3, 'HAPPY HOUR- TROPICAL 1L', 'HAPPY HOUR- TROPICAL 1L', 'happy-hour--tropical-1l', 0, '', 250, 170, '', '6151100058065', '', '', 1, '2016-07-21 14:35:08'),
(958, '2678039451', 2, 2, 3, 'HOLLANDIA EVAP POP 70G', 'HOLLANDIA EVAP POP 70G', 'hollandia-evap-pop-70g', 0, '', 50, 40, '', '6151100052469', '', '', 1, '2016-07-21 14:35:08'),
(959, '5031268794', 2, 2, 3, 'HOLLANDIA MILK-1L', 'HOLLANDIA MILK-1L', 'hollandia-milk-1l', 0, '', 480, 380, '', '6151100055026', '', '', 1, '2016-07-21 14:35:08'),
(960, '4820537196', 2, 2, 3, 'HOLLANDIA STRAWBERRY -1L', 'HOLLANDIA STRAWBERRY -1L', 'hollandia-strawberry--1l', 0, '', 350, 265, '', '6151100052162', '', '', 1, '2016-07-21 14:35:08'),
(961, '2640798315', 2, 2, 3, 'INDOMIE CHICKEN NOODLES 210G (HUNGRY MAN)', 'INDOMIE CHICKEN NOODLES 210G (HUNGRY MAN)', 'indomie-chicken-noodles-210g-(hungry-man)', 0, '', 120, 98, '', 'INC001', '', '', 1, '2016-07-21 14:35:08'),
(962, '7041963582', 2, 2, 3, 'INDOMIE REGULAR CHICKEN - CARTON', 'INDOMIE REGULAR CHICKEN - CARTON', 'indomie-regular-chicken---carton', 0, '', 1480, 1450, '', 'I000000054', '', '', 1, '2016-07-21 14:35:08'),
(963, '9013267485', 2, 2, 3, 'JAGO REAL MAYONNAISE - MAYO 32 OZ - USA', 'JAGO REAL MAYONNAISE - MAYO 32 OZ - USA', 'jago-real-mayonnaise---mayo-32-oz---usa', 0, '', 1300, 1033, '', '8032479555325', '', '', 1, '2016-07-21 14:35:08'),
(964, '2301946857', 2, 2, 3, 'JUMBO PLUSH TISSUE', 'JUMBO PLUSH TISSUE', 'jumbo-plush-tissue', 0, '', 280, 166.66, '', '6156000166209', '', '', 1, '2016-07-21 14:35:08'),
(965, '0956172834', 2, 2, 3, 'KELLOGG\'S COCO POPS 550G', 'KELLOGG\'S COCO POPS 550G', 'kellogg\'s-coco-pops-550g', 0, '', 1200, 1100, '', '5050083545252', '', '', 1, '2016-07-21 14:35:08'),
(966, '8593107426', 2, 2, 3, 'KELLOGG\'S CORNFLAKES 375G', 'KELLOGG\'S CORNFLAKES 375G', 'kellogg\'s-cornflakes-375g', 0, '', 850, 669, '', '5000127011090', '', '', 1, '2016-07-21 14:35:09'),
(967, '0265943871', 2, 2, 3, 'KELLOGG\'S CORNFLAKES 500G', 'KELLOGG\'S CORNFLAKES 500G', 'kellogg\'s-cornflakes-500g', 0, '', 1050, 535, '', '5000127012097', '', '', 1, '2016-07-21 14:35:09'),
(968, '7832465910', 2, 2, 3, 'KELLOGYS CORNFLAKES 1KG', 'KELLOGYS CORNFLAKES 1KG', 'kellogys-cornflakes-1kg', 0, '', 1500, 975, '', '5000127014084', '', '', 1, '2016-07-21 14:35:09'),
(969, '1836594270', 2, 2, 3, 'KELLOGYS CORNFLAKES 750G', 'KELLOGYS CORNFLAKES 750G', 'kellogys-cornflakes-750g', 0, '', 1200, 4500, '', '5000127013094', '', '', 1, '2016-07-21 14:35:09'),
(970, '8962153074', 2, 2, 3, 'KNORR SOUP PACK', 'KNORR SOUP PACK', 'knorr-soup-pack', 0, '', 250, 200, '', '6001038001551', '', '', 1, '2016-07-21 14:35:09'),
(971, '9671425803', 2, 2, 3, 'LIPTON TEA BOX', 'LIPTON TEA BOX', 'lipton-tea-box', 0, '', 200, 140, '', '6001085003782', '', '', 1, '2016-07-21 14:35:09'),
(972, '0698745123', 2, 2, 3, 'LIPTON TEA SACHET', 'LIPTON TEA SACHET', 'lipton-tea-sachet', 0, '', 30, 22, '', '6154000011536', '', '', 1, '2016-07-21 14:35:09'),
(973, '3729658401', 2, 2, 3, 'LUCOZADE BOOST PET 1L', 'LUCOZADE BOOST PET 1L', 'lucozade-boost-pet-1l', 0, '', 600, 466.06, '', '6164003477116', '', '', 1, '2016-07-21 14:35:09'),
(974, '9065817432', 2, 2, 3, 'LUCOZADE SPORT PET 500ML', 'LUCOZADE SPORT PET 500ML', 'lucozade-sport-pet-500ml', 0, '', 200, 160, '', '6164003477062', '', '', 1, '2016-07-21 14:35:09'),
(975, '6157043298', 2, 2, 3, 'LUX WHITE 75 G', 'LUX WHITE 75 G', 'lux-white-75-g', 0, '', 70, 53, '', '6154000010065', '', '', 1, '2016-07-21 14:35:09'),
(976, '3246891750', 2, 2, 3, 'MATCHES x10', 'MATCHES x10', 'matches-x10', 0, '', 80, 55, '', 'I000000494', '', '', 1, '2016-07-21 14:35:09'),
(977, '9801467523', 2, 2, 3, 'MILO 200GMS', 'MILO 200GMS', 'milo-200gms', 0, '', 300, 262.86, '', '6151100031495', '', '', 1, '2016-07-21 14:35:09'),
(978, '4382596701', 2, 2, 3, 'MORNING FRESH (ANTI BACTERIAL) 950ML', 'MORNING FRESH (ANTI BACTERIAL) 950ML', 'morning-fresh-(anti-bacterial)-950ml', 0, '', 480, 375, '', '6154000018160', '', '', 1, '2016-07-21 14:35:09'),
(979, '7912648530', 2, 2, 3, 'MORNING FRESH (ZESTY LEMON) 100ML', 'MORNING FRESH (ZESTY LEMON) 100ML', 'morning-fresh-(zesty-lemon)-100ml', 0, '', 480, 375, '', '6154000018146', '', '', 1, '2016-07-21 14:35:09'),
(980, '5742613098', 2, 2, 3, 'MORNING FRESH 950ML', 'MORNING FRESH 950ML', 'morning-fresh-950ml', 0, '', 480, 400, '', '6154000018078', '', '', 1, '2016-07-21 14:35:09'),
(981, '6320849175', 2, 2, 3, 'MORTEIN ALL PURPOSE 600 ML', 'MORTEIN ALL PURPOSE 600 ML', 'mortein-all-purpose-600-ml', 0, '', 895, 765, '', '6009695930955', '', '', 1, '2016-07-21 14:35:09'),
(982, '8417029356', 2, 2, 3, 'NESCAFE GOLD BLEND DECAFF 100G', 'NESCAFE GOLD BLEND DECAFF 100G', 'nescafe-gold-blend-decaff-100g', 0, '', 1550, 1200, '', '7613033188282', '', '', 1, '2016-07-21 14:35:10'),
(983, '7142063895', 2, 2, 3, 'OMO FAST ACTION 500G', 'OMO FAST ACTION 500G', 'omo-fast-action-500g', 0, '', 310, 270, '', '6154000013264', '', '', 1, '2016-07-21 14:35:10'),
(984, '1390856472', 2, 2, 3, 'PAMPERS BABY WIPES', 'PAMPERS BABY WIPES', 'pampers-baby-wipes', 0, '', 400, 365, '', '4015400439110', '', '', 1, '2016-07-21 14:35:10'),
(985, '8435671902', 2, 2, 3, 'PEAK 123 MILK 400GMS (TIN)', 'PEAK 123 MILK 400GMS (TIN)', 'peak-123-milk-400gms-(tin)', 0, '', 995, 875, '', '8716200438155', '', '', 1, '2016-07-21 14:35:10'),
(986, '6254083719', 2, 2, 3, 'PEAK GOLD (HOLLAND) 170G', 'PEAK GOLD (HOLLAND) 170G', 'peak-gold-(holland)-170g', 0, '', 200, 150, '', '87162295', '', '', 1, '2016-07-21 14:35:10'),
(987, '0728693154', 2, 2, 3, 'PEAK MILK REFILL 400GMS', 'PEAK MILK REFILL 400GMS', 'peak-milk-refill-400gms', 0, '', 875, 750, '', '8716200449342', '', '', 1, '2016-07-21 14:35:10'),
(988, '4159638720', 2, 2, 3, 'PEAK POUCH MILK 850GMS', 'PEAK POUCH MILK 850GMS', 'peak-pouch-milk-850gms', 0, '', 1990, 1792, '', '6156000130323', '', '', 1, '2016-07-21 14:35:10'),
(989, '1795802643', 2, 2, 3, 'PEAK THREE CROWN MILK REFILL 380G', 'PEAK THREE CROWN MILK REFILL 380G', 'peak-three-crown-milk-refill-380g', 0, '', 700, 750, '', '6156000094465', '', '', 1, '2016-07-21 14:35:10'),
(990, '4082731956', 2, 2, 3, 'PEAK TIN MILK 2.500GMS', 'PEAK TIN MILK 2.500GMS', 'peak-tin-milk-2.500gms', 0, '', 4750, 4466, '', '8716200435918', '', '', 1, '2016-07-21 14:35:10'),
(991, '8301942657', 2, 2, 3, 'PEAK TIN MILK 400GMS', 'PEAK TIN MILK 400GMS', 'peak-tin-milk-400gms', 0, '', 975, 833, '', '8716200449274', '', '', 1, '2016-07-21 14:35:10'),
(992, '7823160495', 2, 2, 3, 'POWER OIL 3L', 'POWER OIL 3L', 'power-oil-3l', 0, '', 2050, 1650, '', '6156000100029', '', '', 1, '2016-07-21 14:35:10'),
(993, '9840257613', 2, 2, 3, 'PREMIER REFRESHING ORANGE 190G', 'PREMIER REFRESHING ORANGE 190G', 'premier-refreshing-orange-190g', 0, '', 130, 110, '', '6154000016296', '', '', 1, '2016-07-21 14:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0c88c7493afe82464a813c6557ae1d0f924dc91f', '::1', 1469636925, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633363732363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3232303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223965306336346339386136643338363232373233343462376537613537333734223b613a363a7b733a323a226964223b733a31303a2231333834393532373630223b733a333a22717479223b643a313b733a353a227072696365223b643a3132303b733a343a226e616d65223b733a33343a22434f43412d434f4c41205a45524f205045542028434f4b45205a45524f2050455429223b733a353a22726f776964223b733a33323a223965306336346339386136643338363232373233343462376537613537333734223b733a383a22737562746f74616c223b643a3132303b7d733a33323a226561393064383139616439363339366665396239373736653233316532313232223b613a363a7b733a323a226964223b733a31303a2239383435303337323631223b733a333a22717479223b643a313b733a353a227072696365223b643a3130303b733a343a226e616d65223b733a32333a22434f524e464c414b4553204f524947494e414c20353047223b733a353a22726f776964223b733a33323a226561393064383139616439363339366665396239373736653233316532313232223b733a383a22737562746f74616c223b643a3130303b7d7d6572726f727c733a32343a2257726f6e6720656d61696c206f722070617373776f72642e223b6d6573736167657c733a303a22223b637573746f6d65725f69647c733a313a2235223b656d61696c7c733a31373a226e65777573657240676d61696c2e636f6d223b70617373776f72647c733a343a2270617373223b616464726573737c733a34343a223131352c20546869732069732074686520636f6d6d6f6e2061646472657373206f66206576657279626f6479223b636974797c733a353a226c656b6b69223b617265617c733a353a226c61676f73223b636f6e746163745f706572736f6e7c733a31373a226f6c6169796120736567756e207061756c223b70686f6e655f317c733a31313a223038313735303230333239223b70686f6e655f327c733a31333a2230393038383333373735353333223b),
('0dc5b4c1636e11e5e7052d9f141e96bade69f887', '::1', 1469634394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633343339303b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a3737303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d733a33323a223161303533306433346637303530326234363333613834353438613632363234223b613a363a7b733a323a226964223b733a31303a2233323137393035343638223b733a333a22717479223b643a313b733a353a227072696365223b643a3435303b733a343a226e616d65223b733a32393a2250554e43482026204a55445920284f52414e47455929202d2035304d4c223b733a353a22726f776964223b733a33323a223161303533306433346637303530326234363333613834353438613632363234223b733a383a22737562746f74616c223b643a3435303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('2447e5c7665d4eaa75912456f831299bfee393b4', '::1', 1469632955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633323638333b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('2acef55dcb01e3fed721df2189fbd63b24bab248', '::1', 1469630214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393632393939363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('2b8072593b482f0baea54ca4bffa3c4110dd7622', '::1', 1469648491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634383439313b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a353030303030303038303b733a31313a22746f74616c5f6974656d73223b643a3130303030303030313b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b613a363a7b733a323a226964223b733a31303a2233323436383931373530223b733a333a22717479223b643a313b733a353a227072696365223b643a38303b733a343a226e616d65223b733a31313a224d41544348455320783130223b733a353a22726f776964223b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b733a383a22737562746f74616c223b643a38303b7d733a33323a226533383738343437333735363136643532636431326466316538346361363762223b613a363a7b733a323a226964223b733a31303a2239323331343537383630223b733a333a22717479223b643a3130303030303030303b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31393a22444f52434f2053484156494e4720535449434b223b733a353a22726f776964223b733a33323a226533383738343437333735363136643532636431326466316538346361363762223b733a383a22737562746f74616c223b643a353030303030303030303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('2dcbe6a510202a02d85084f0093bccd8e79dd411', '::1', 1469643861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634333636323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3337303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226565376539356535326537663565366438626363643631616532303161613065223b613a363a7b733a323a226964223b733a31303a2233383931373035343236223b733a333a22717479223b643a313b733a353a227072696365223b643a3337303b733a343a226e616d65223b733a32373a2246414d494c59204752414e554c4154454420535547415220314b47223b733a353a22726f776964223b733a33323a226565376539356535326537663565366438626363643631616532303161613065223b733a383a22737562746f74616c223b643a3337303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('3073e0cc1313e85e28da9365e3da5db2b95c9d39', '::1', 1469635282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633353131393b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3434353b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b613a363a7b733a323a226964223b733a31303a2239343632383337353031223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31363a22504b2047554d20284d454e54484f4c29223b733a353a22726f776964223b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b733a383a22737562746f74616c223b643a35303b7d733a33323a226332386531323863363239336265313331303364313533316564646161373030223b613a363a7b733a323a226964223b733a31303a2236393035313334323738223b733a333a22717479223b643a313b733a353a227072696365223b643a3339353b733a343a226e616d65223b733a31393a224649534820534541534f4e494e472031393847223b733a353a22726f776964223b733a33323a226332386531323863363239336265313331303364313533316564646161373030223b733a383a22737562746f74616c223b643a3339353b7d7d6572726f727c733a32343a2257726f6e6720656d61696c206f722070617373776f72642e223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b637573746f6d65725f747970657c733a383a22637573746f6d6572223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b),
('3158a5465ffa3aa172dad9a0db880131244e7ba8', '::1', 1525693001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639323730303b7469746c657c733a343a22486f6d65223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b613a363a7b733a323a226964223b733a31303a2231383036393437323335223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a34303a224f52414c204220544f4f54485041535445202848455242414c204d494e542047454c292031343047223b733a353a22726f776964223b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b733a383a22737562746f74616c223b643a3230303b7d7d),
('33793c7c24f251ecd4218292747cbb3e7c4c0a87', '::1', 1469134662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133343432323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('37ae59b69d1cc4be54249d9152e1a986516a86ba', '::1', 1469648477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634383133353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a343a2243617274223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a353030303030303038303b733a31313a22746f74616c5f6974656d73223b643a3130303030303030313b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b613a363a7b733a323a226964223b733a31303a2233323436383931373530223b733a333a22717479223b643a313b733a353a227072696365223b643a38303b733a343a226e616d65223b733a31313a224d41544348455320783130223b733a353a22726f776964223b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b733a383a22737562746f74616c223b643a38303b7d733a33323a226533383738343437333735363136643532636431326466316538346361363762223b613a363a7b733a323a226964223b733a31303a2239323331343537383630223b733a333a22717479223b643a3130303030303030303b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31393a22444f52434f2053484156494e4720535449434b223b733a353a22726f776964223b733a33323a226533383738343437333735363136643532636431326466316538346361363762223b733a383a22737562746f74616c223b643a353030303030303030303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('3a1bd6f6bc0772feadb7146d8a090d6e6c81694f', '::1', 1469568722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383537313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3a2574975c03d70d804b4a9abfe3282e6a6d35e2', '::1', 1469634154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633343038333b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a3737303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d733a33323a223161303533306433346637303530326234363333613834353438613632363234223b613a363a7b733a323a226964223b733a31303a2233323137393035343638223b733a333a22717479223b643a313b733a353a227072696365223b643a3435303b733a343a226e616d65223b733a32393a2250554e43482026204a55445920284f52414e47455929202d2035304d4c223b733a353a22726f776964223b733a33323a223161303533306433346637303530326234363333613834353438613632363234223b733a383a22737562746f74616c223b643a3435303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3ee2c9c4ba8f35845509c009b910cd63003ae79a', '::1', 1469570019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536393939363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3135303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223435373835366633656632313835396437353366303665343439393439313238223b613a363a7b733a323a226964223b733a31303a2233363938313037323534223b733a333a22717479223b643a313b733a353a227072696365223b643a3135303b733a343a226e616d65223b733a32303a22424f554e54592043484f434f4c41544520353747223b733a353a22726f776964223b733a33323a223435373835366633656632313835396437353366303665343439393439313238223b733a383a22737562746f74616c223b643a3135303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3ef7ff52b1953640b7c380298db82bdfb402b75a', '::1', 1469136288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133363238353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('3fbaa43a792986603a20c2a400b8fafb459b3443', '::1', 1469647040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634363939333b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226e6577223b7d737563636573737c733a33353a224f7264657220686173206265656e206d61726b656420617320636f6d706c657465642e223b),
('40876991708ae97521a382edd603eec9c77843c5', '::1', 1469274883, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393237343838313b7469746c657c733a343a22486f6d65223b),
('41e930c6aa400489c5a57dae6198ac02dbf5c11a', '::1', 1469187049, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393138373032323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('4a475d5232938cf5a071128ffd6c35809c8ed058', '::1', 1469138613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133383332343b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a343230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223166333637356439346538376332333132353064313637616136646434383362223b613a363a7b733a323a226964223b733a31303a2232373530343136333938223b733a333a22717479223b643a313b733a353a227072696365223b643a3235303b733a343a226e616d65223b733a31383a2242455641202052454c415845522032353067223b733a353a22726f776964223b733a33323a223166333637356439346538376332333132353064313637616136646434383362223b733a383a22737562746f74616c223b643a3235303b7d733a33323a226135646661393262363935313933653837653737616136386432653061343362223b613a363a7b733a323a226964223b733a31303a2234333932383031373635223b733a333a22717479223b643a313b733a353a227072696365223b643a333935303b733a343a226e616d65223b733a32363a224241534d4154492052494345204145524f504c414e4520354b47223b733a353a22726f776964223b733a33323a226135646661393262363935313933653837653737616136386432653061343362223b733a383a22737562746f74616c223b643a333935303b7d7d7469746c657c733a383a22436865636b6f7574223b),
('4bf920dac8ba3c73218394aa4cc179e948a657cd', '::1', 1469663292, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393636333239313b),
('4f46563807114d69fdebc3f829fad4bc50c1f67c', '::1', 1469643540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634333235343b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('50bb60f2e2f8f1231126c6a96cd2ded50637f2c6', '::1', 1469633407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633333330393b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a3737303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d733a33323a223161303533306433346637303530326234363333613834353438613632363234223b613a363a7b733a323a226964223b733a31303a2233323137393035343638223b733a333a22717479223b643a313b733a353a227072696365223b643a3435303b733a343a226e616d65223b733a32393a2250554e43482026204a55445920284f52414e47455929202d2035304d4c223b733a353a22726f776964223b733a33323a223161303533306433346637303530326234363333613834353438613632363234223b733a383a22737562746f74616c223b643a3435303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('54c448f51c35f2c664e4db6cc3a089f5364b9e44', '::1', 1469649348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634393334383b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('54cd6eb873a1734a1ebd481e53a26acc8ec65620', '::1', 1525693054, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639333030363b7469746c657c733a343a22486f6d65223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3430303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b613a363a7b733a323a226964223b733a31303a2231383036393437323335223b733a333a22717479223b643a323b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a34303a224f52414c204220544f4f54485041535445202848455242414c204d494e542047454c292031343047223b733a353a22726f776964223b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b733a383a22737562746f74616c223b643a3430303b7d7d),
('58b350327be612a3477c2738cdc6248954081993', '::1', 1469648730, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634383531353b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('595a079af43286e0548fcc9321908ec7bfc3ae0f', '::1', 1469633958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633333638393b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a3737303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d733a33323a223161303533306433346637303530326234363333613834353438613632363234223b613a363a7b733a323a226964223b733a31303a2233323137393035343638223b733a333a22717479223b643a313b733a353a227072696365223b643a3435303b733a343a226e616d65223b733a32393a2250554e43482026204a55445920284f52414e47455929202d2035304d4c223b733a353a22726f776964223b733a33323a223161303533306433346637303530326234363333613834353438613632363234223b733a383a22737562746f74616c223b643a3435303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('5bffad0c0fcfb501ec1459d0b9bc0269b0f44e1c', '::1', 1469633297, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633333030313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('68ea0135078ce0316b9d1bba3cf22e164763df2d', '::1', 1469569959, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536393635353b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a313230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b6f726465725f69647c693a373b),
('6eb02c70a05390d5baad62a6344a0bec2dc91052', '::1', 1469569611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536393239333b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a313230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('90b8d2ec955d9ab975d6bf8f2957b6e9b5a035e9', '::1', 1469188172, ''),
('9a8be119d45b4882feab667b8e1e5339bd1e4c6e', '::1', 1469135317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133353037313b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('9d328339af19773805aa9f10833e7b8161daa265', '::1', 1469134422, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133343432323b),
('abbcc7db117578806a8d38d090a4055427770822', '::1', 1469138802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133383730323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ae5962a9ed697be8530b274752aa0ba342a4e48c', '::1', 1469630810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633303533363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('b617793d20f043eb9cbd3af949fb9b4598c73364', '::1', 1469136089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133353834353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('b7905d778089348f3ed2719c416f248ab903838c', '::1', 1469307147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393330373036363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('b7e3676b7d5a6c5b289e2a409579d5d7cd4ff750', '::1', 1469631195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633313137343b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('bafe5d86462f9b6fdd28e5b95ecb40a93a7882ea', '::1', 1469637931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633373839333b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('c73ddd87a51fe0ccb6daa8d18742f9001b3f708d', '::1', 1469569179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383930353b7469746c657c733a343a2243617274223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a313230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('cd7fa414019ed117215b1d11de545a33e4c224c4', '::1', 1469568461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383139303b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('cec69481dbedc22d98d6a05b4b09b9b06f57dd2d', '::1', 1469630998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633303834353b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('d0fbd7fd241f5e71086d6a1fa00efcb6dfe04bec', '::1', 1469638376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633383333323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('dcb2e14e708730bc24f08231652597810a642671', '::1', 1469137624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133373437363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('df2a8cf8356342ac2a4413f3698a3a378c2c705b', '::1', 1469635783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633353736373b7469746c657c733a31343a2253656172636820526573756c7473223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3434353b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b613a363a7b733a323a226964223b733a31303a2239343632383337353031223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31363a22504b2047554d20284d454e54484f4c29223b733a353a22726f776964223b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b733a383a22737562746f74616c223b643a35303b7d733a33323a226332386531323863363239336265313331303364313533316564646161373030223b613a363a7b733a323a226964223b733a31303a2236393035313334323738223b733a333a22717479223b643a313b733a353a227072696365223b643a3339353b733a343a226e616d65223b733a31393a224649534820534541534f4e494e472031393847223b733a353a22726f776964223b733a33323a226332386531323863363239336265313331303364313533316564646161373030223b733a383a22737562746f74616c223b643a3339353b7d7d6572726f727c733a32343a2257726f6e6720656d61696c206f722070617373776f72642e223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b637573746f6d65725f747970657c733a383a22637573746f6d6572223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b7069636b75705f73746174696f6e7c733a313a2232223b),
('e6f5003a7a4de074aea34bc412cb7c70bb04c95d', '::1', 1469632340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633323332313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ecbf4211507a29b817f9d54bfd477dafce0df41c', '::1', 1469135647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133353431313b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('f0dbed9e59b6b85f9ff24b9c5c4cf8c3275e63f4', '::1', 1469638676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633383636363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('f2ed48a3224bcf1dc957b0ec08c17834b709b7e2', '::1', 1469629985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393632393639313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('f6b2cff28328379f84ec3a193561c96e756c77bb', '::1', 1469567958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536373737383b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('f94043fe002c54c58f8792cd4a5c69c82c7da82a', '::1', 1469136980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133363936383b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226e6577223b7d737563636573737c733a33353a224f7264657220686173206265656e206d61726b656420617320636f6d706c657465642e223b),
('fab84f8f3b8c8b4740cf8c1d8dd8e0385e1761bb', '::1', 1469275061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393237343930373b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('fb8920b1ab76dd57a22b793d0dd32ef69e14cfbc', '::1', 1469183288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393138333235383b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('fc1451527686004d34b89f959c7a144338523756', '::1', 1469274860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393237343832363b6572726f727c733a32303a22496e76616c69642043726564656e7469616c7321223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategories`
--

CREATE TABLE `tblsubcategories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategories`
--

INSERT INTO `tblsubcategories` (`id`, `category_id`, `name`, `slug`, `status`, `created`) VALUES
(1, 1, 'General', 'general', 1, '2016-07-21 14:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblsuppliers`
--

CREATE TABLE `tblsuppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsuppliers`
--

INSERT INTO `tblsuppliers` (`id`, `name`, `phone`, `email`, `address`, `status`, `created`) VALUES
(1, 'Best Choice', '', 'bestchoicenigeria@gmail.com', 'This is best choice\'s address.', 1, '2016-07-02 11:53:34'),
(3, 'Folake Stores', '', 'folakestores@gmail.com', 'This is folake\'s address', 1, '2016-07-05 22:28:30'),
(4, 'Green Virgin Enterprises', '', 'greenvirgin@gmail.com', 'this is Green Virgin Enterprises\' address', 1, '2016-07-05 22:29:32'),
(5, 'Kingcidel Global', '', 'kingcidelglobal@gmail.com', 'this is KINGCIDEL GLOBAL\' addresss', 1, '2016-07-05 22:30:18'),
(6, 'Kunfayakun Store', '', 'kunfayakun@gmail.com', 'this is the address', 1, '2016-07-05 22:31:00'),
(7, 'Magnolia \'n\' Cassia.', '', 'magnolia@gmail.com', 'This is the adddress', 1, '2016-07-05 22:31:56'),
(8, 'Bivy Resources.', '', 'bivvy@gmail.com', 'This is bivvy\'s address', 1, '2016-07-05 22:32:41'),
(9, 'Wale', '', 'wale@gmail.com', 'Address', 1, '2016-07-05 22:33:23'),
(10, 'Frank Jacobs', '', 'frank@gmail.com', 'frank\'s addresss', 1, '2016-07-05 22:34:03'),
(11, 'Self Production', '', 'self@gmail.com', 'addresss', 1, '2016-07-05 22:35:33'),
(12, 'Sargof Nigeria Limited', '', 'sargof@gmail.com', 'address', 1, '2016-07-05 22:35:58'),
(13, 'Anis &amp; Sons Enterprises', '', 'anis@gmail.com', 'address', 1, '2016-07-05 22:36:30'),
(14, 'maduike', '', 'maduike@gmail.com', 'address', 1, '2016-07-05 22:37:36'),
(15, 'Voucher Net Limited', '', 'voucher@gmail.com', 'address', 1, '2016-07-05 22:38:16'),
(16, 'Rock Forte Liquids', '', 'rock@gmail.com', 'address', 1, '2016-07-05 22:39:06'),
(17, 'Judy Candour (nig.) Ent.', '', 'judy@gmail.com', 'address', 1, '2016-07-05 22:39:53'),
(18, 'Infinity Snacks & Beverages limited', '', 'infinity@gmail.com', 'address', 1, '2016-07-05 22:40:55'),
(19, 'Sorted Water Company', '', 'sorted@gmail.com', 'address', 1, '2016-07-05 22:42:23'),
(20, 'Up Town Pure Water Ltd.', '', 'uptown@gmail.com', 'address', 1, '2016-07-05 22:42:57'),
(21, 'Chidozie Investiment Chidozie', '', 'Chidozie@gmail.com', 'Address', 1, '2016-07-05 23:03:09'),
(22, 'Chipsy', '', 'chipsy@gmail.com', 'address', 1, '2016-07-05 23:22:25'),
(23, 'Ikefe Store', '', 'ikefe@gmail.com', 'address', 1, '2016-07-05 23:25:16'),
(24, 'Keshinro', '', 'keshinro@gmail.com', 'addresss', 1, '2016-07-05 23:27:08'),
(25, 'Mallmart Hypermarket', '', 'mallmart@gmail.com', 'address', 1, '2016-07-05 23:29:55'),
(26, 'Nikky Ventures', '', 'nikky@gmail.com', 'address', 1, '2016-07-05 23:30:51'),
(27, 'Onyi Cosmetics', '08000000000', 'onyi@gmail.com', 'addresss', 1, '2016-07-05 23:31:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmins`
--
ALTER TABLE `tbladmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategories`
--
ALTER TABLE `tblcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcharges`
--
ALTER TABLE `tblcharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorderdeliverydetails`
--
ALTER TABLE `tblorderdeliverydetails`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblordertransactionslog`
--
ALTER TABLE `tblordertransactionslog`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tblpickupstations`
--
ALTER TABLE `tblpickupstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`,`ip_address`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblsubcategories`
--
ALTER TABLE `tblsubcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblactivitylog`
--
ALTER TABLE `tblactivitylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `tbladmins`
--
ALTER TABLE `tbladmins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblcategories`
--
ALTER TABLE `tblcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcharges`
--
ALTER TABLE `tblcharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblpickupstations`
--
ALTER TABLE `tblpickupstations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=994;
--
-- AUTO_INCREMENT for table `tblsubcategories`
--
ALTER TABLE `tblsubcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
