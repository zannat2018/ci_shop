-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2018 at 08:35 PM
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
(8, 'Super Administrator', 'admin@wetindey.com', '1d025d1d583d04373153422de59dd988', '', '2349057174935', 'Super Administrator', 1, '2016-06-28 00:43:02', 1, '2018-05-07 18:50:40', 46);

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
(5, '1294560738', 1, 1, 11, 'HOT CRUST BREAD (S)', 'HOT CRUST BREAD (S)', 'hot-crust-bread-(s)', 0, '', 100, 80, '1294560738.jpg', '', '', '', 1, '2016-07-21 14:34:08'),
(13, '1284357069', 1, 1, 11, 'ORIFLAME GIORDANI GOLD 25G', 'ORIFLAME GIORDANI GOLD 25G', 'oriflame-giordani-gold-25g', 0, '', 5990, 5391, '1284357069.jpg', 'I000000502', '', '', 1, '2016-07-21 14:34:08'),
(22, '0867542931', 1, 1, 11, 'ORIFLAME WONDERLASK MASCARA', 'ORIFLAME WONDERLASK MASCARA', 'oriflame-wonderlask-mascara', 0, '', 1790, 1610, '0867542931.jpg', 'I000000513', '', '', 1, '2016-07-21 14:34:09'),
(24, '0578694213', 1, 1, 11, 'ORIGIN ZERO CAN (PACK)', 'ORIGIN ZERO CAN (PACK)', 'origin-zero-can-(pack)', 0, '', 2345, 2100, '0578694213.jpg', 'I000000606', '', '', 1, '2016-07-21 14:34:09'),
(46, '1348675209', 1, 1, 1, 'BUTTER MINT - PKT', 'BUTTER MINT - PKT', 'butter-mint---pkt', 0, '', 250, 160, '1348675209.jpg', '7622210478320', '', '', 1, '2016-07-21 14:34:10'),
(63, '0576492138', 1, 1, 1, 'CHELSEA 150ML', 'CHELSEA 150ML', 'chelsea-150ml', 0, '', 180, 140, '0576492138.jpg', 'I000000175', '', '', 1, '2016-07-21 14:34:10'),
(64, '1402596378', 1, 1, 1, 'CHIKKI NOODLES CARTON', 'CHIKKI NOODLES CARTON', 'chikki-noodles-carton', 0, '', 1600, 1500, '1402596378.jpg', 'I000000189', '', '', 1, '2016-07-21 14:34:10'),
(75, '1203697845', 1, 1, 1, 'DON SIMON', 'DON SIMON', 'don-simon', 0, '', 500, 292, '1203697845.jpg', '8410261271101', '', '', 1, '2016-07-21 14:34:11'),
(88, '0714382956', 1, 1, 1, 'FIVE ALIVE (CITRUS)', 'FIVE ALIVE (CITRUS)', 'five-alive-(citrus)', 0, '', 280, 250, '0714382956.jpg', '5449000094001', '', '', 1, '2016-07-21 14:34:12'),
(116, '0813246795', 1, 1, 1, 'MOSQUITO COIL', 'MOSQUITO COIL', 'mosquito-coil', 0, '', 20, 10, '0813246795.jpg', '6920801800019', '', '', 1, '2016-07-21 14:34:13'),
(133, '0752861394', 1, 1, 1, 'PARACETAMOL SACHET', 'PARACETAMOL SACHET', 'paracetamol-sachet', 0, '', 30, 16, '0752861394.jpg', '6154000033002', '', '', 1, '2016-07-21 14:34:14'),
(151, '1036892457', 1, 1, 21, 'NOVENA FOIL PAPER', 'NOVENA FOIL PAPER', 'novena-foil-paper', 0, '', 345, 208, '1036892457.jpg', '6953206100217', '', '', 1, '2016-07-21 14:34:14'),
(152, '1062849753', 1, 1, 23, 'PLANTAIN CHIPS', 'PLANTAIN CHIPS', 'plantain-chips', 0, '', 100, 80, '1062849753.jpg', 'I000000238', '', '', 1, '2016-07-21 14:34:14'),
(157, '0947835162', 1, 1, 3, 'AFRO AMERICAN 125g', 'AFRO AMERICAN 125g', 'afro-american-125g', 0, '', 250, 183, '0947835162.jpg', 'I000000412', '', '', 1, '2016-07-21 14:34:15'),
(163, '1296345807', 1, 1, 3, 'ANDRE BRUT 750ML', 'ANDRE BRUT 750ML', 'andre-brut-750ml', 0, '', 2150, 1467, '1296345807.jpg', '85000007488', '', '', 1, '2016-07-21 14:34:15'),
(183, '0314589762', 1, 1, 3, 'BLOSSOM WHITE SKIN LIGHTENING SOAP', 'BLOSSOM WHITE SKIN LIGHTENING SOAP', 'blossom-white-skin-lightening-soap', 0, '', 120, 83, '0314589762.jpg', '8994590000101', '', '', 1, '2016-07-21 14:34:16'),
(191, '0986354172', 1, 1, 3, 'BOURNVITA TIN NEW- 900G', 'BOURNVITA TIN NEW- 900G', 'bournvita-tin-new--900g', 0, '', 1450, 1200, '0986354172.jpg', '7622210492135', '', '', 1, '2016-07-21 14:34:16'),
(193, '1397485062', 1, 1, 3, 'CABIN BISCUIT', 'CABIN BISCUIT', 'cabin-biscuit', 0, '', 200, 170, '1397485062.jpg', '6156000106809', '', '', 1, '2016-07-21 14:34:17'),
(195, '0254693817', 1, 1, 3, 'CAKYLICIOUS BREAD SMALL', 'CAKYLICIOUS BREAD SMALL', 'cakylicious-bread-small', 0, '', 60, 50, '0254693817.jpg', 'I000000467', '', '', 1, '2016-07-21 14:34:17'),
(196, '0954371286', 1, 1, 3, 'CAMAY SOAP - 175G', 'CAMAY SOAP - 175G', 'camay-soap---175g', 0, '', 180, 150, '0954371286.jpg', '4015600698928', '', '', 1, '2016-07-21 14:34:17'),
(206, '0629374581', 1, 1, 3, 'CARO WHITE SOAP 180G', 'CARO WHITE SOAP 180G', 'caro-white-soap-180g', 0, '', 300, 233, '0629374581.jpg', '6181100530094', '', '', 1, '2016-07-21 14:34:17'),
(210, '0347251698', 1, 1, 3, 'CERELAC - RICE WITH MILK (6-MONTHS) 400G', 'CERELAC - RICE WITH MILK (6-MONTHS) 400G', 'cerelac---rice-with-milk-(6-months)-400g', 0, '', 1225, 1025, '0347251698.jpg', '7616100046539', '', '', 1, '2016-07-21 14:34:17'),
(229, '1358796204', 1, 1, 3, 'CLINIC CLEAR SOAP 225G', 'CLINIC CLEAR SOAP 225G', 'clinic-clear-soap-225g', 0, '', 350, 150, '1358796204.jpg', '6181100282801', '', '', 1, '2016-07-21 14:34:18'),
(234, '0619738452', 1, 1, 3, 'COLGATE TOOTH BRUSH', 'COLGATE TOOTH BRUSH', 'colgate-tooth-brush', 0, '', 150, 71, '0619738452.jpg', 'I000000288', '', '', 1, '2016-07-21 14:34:18'),
(238, '1397546082', 1, 1, 3, 'COLGATE TOOTH PASTE (MAXIMUM CAVITY PROTECTION) 100ML', 'COLGATE TOOTH PASTE (MAXIMUM CAVITY PROTECTION) 100ML', 'colgate-tooth-paste-(maximum-cavity-protection)-10', 0, '', 280, 183.33, '1397546082.jpg', '6001067003472', '', '', 1, '2016-07-21 14:34:19'),
(241, '0432956178', 1, 1, 3, 'COLGATE TOOTH PASTE 133g', 'COLGATE TOOTH PASTE 133g', 'colgate-tooth-paste-133g', 0, '', 220, 183.33, '0432956178.jpg', '69203548143', '', '', 1, '2016-07-21 14:34:19'),
(248, '0597348612', 1, 1, 3, 'CORNED BEEF (FRANCE) 200G', 'CORNED BEEF (FRANCE) 200G', 'corned-beef-(france)-200g', 0, '', 420, 350, '0597348612.jpg', '3173820003258', '', '', 1, '2016-07-21 14:34:19'),
(258, '0863271549', 1, 1, 3, 'DAMATOL HAIR CREAM', 'DAMATOL HAIR CREAM', 'damatol-hair-cream', 0, '', 285, 216, '0863271549.jpg', '6156000118239', '', '', 1, '2016-07-21 14:34:20'),
(270, '0932451867', 1, 1, 3, 'DORCO SHAVING STICK 5IN1', 'DORCO SHAVING STICK 5IN1', 'dorco-shaving-stick-5in1', 0, '', 160, 80, '0932451867.jpg', '8801038562599', '', '', 1, '2016-07-21 14:34:20'),
(271, '0238761954', 1, 1, 3, 'DR MILK', 'DR MILK', 'dr-milk', 0, '', 5, 3.75, '0238761954.jpg', 'I000000334', '', '', 1, '2016-07-21 14:34:20'),
(275, '0385714962', 1, 1, 3, 'DUDU FRUITS DRINKS 500ML', 'DUDU FRUITS DRINKS 500ML', 'dudu-fruits-drinks-500ml', 0, '', 100, 62.05, '0385714962.jpg', '6034000108071', '', '', 1, '2016-07-21 14:34:20'),
(296, '0268917534', 1, 1, 3, 'EXTRA WAFER - CHOCOLATE', 'EXTRA WAFER - CHOCOLATE', 'extra-wafer---chocolate', 0, '', 380, 253, '0268917534.jpg', '6261149030196', '', '', 1, '2016-07-21 14:34:22'),
(303, '0316972854', 1, 1, 3, 'FINEST YOGHURT', 'FINEST YOGHURT', 'finest-yoghurt', 0, '', 120, 83, '0316972854.jpg', 'I000000418', '', '', 1, '2016-07-21 14:34:22'),
(304, '0485731269', 1, 1, 3, 'FLAKE TUNA FISH 170G', 'FLAKE TUNA FISH 170G', 'flake-tuna-fish-170g', 0, '', 0, 0, '0485731269.jpg', '50290833', '', '', 1, '2016-07-21 14:34:22'),
(317, '0742159638', 1, 1, 3, 'GRACE PERFUME VASELINE', 'GRACE PERFUME VASELINE', 'grace-perfume-vaseline', 0, '', 100, 45, '0742159638.jpg', 'I000000420', '', '', 1, '2016-07-21 14:34:23'),
(326, '0467815932', 1, 1, 3, 'HEINZ BAKED BEANS 200G', 'HEINZ BAKED BEANS 200G', 'heinz-baked-beans-200g', 0, '', 280, 158, '0467815932.jpg', '6290090017000', '', '', 1, '2016-07-21 14:34:23'),
(336, '0628793451', 1, 1, 3, 'HOT DOG 400G', 'HOT DOG 400G', 'hot-dog-400g', 0, '', 350, 283.33, '0628793451.jpg', '5000232419408', '', '', 1, '2016-07-21 14:34:24'),
(338, '1294670358', 1, 1, 3, 'HUGGIES SNUG & DRY (1x78 - SIZE 1) 4-6kg', 'HUGGIES SNUG & DRY (1x78 - SIZE 1) 4-6kg', 'huggies-snug-&-dry-(1x78---size-1)-4-6kg', 0, '', 6665, 6000, '1294670358.jpg', 'I000000516', '', '', 1, '2016-07-21 14:34:24'),
(341, '0421638795', 1, 1, 3, 'ICE MINT SWEET', 'ICE MINT SWEET', 'ice-mint-sweet', 0, '', 5, 3, '0421638795.jpg', 'I000000328', '', '', 1, '2016-07-21 14:34:24'),
(352, '0756134289', 1, 1, 3, 'IRISH SPRING ORIGINAL - 106.3G', 'IRISH SPRING ORIGINAL - 106.3G', 'irish-spring-original---106.3g', 0, '', 180, 150, '0756134289.jpg', '6001067000051', '', '', 1, '2016-07-21 14:34:24'),
(366, '0718942356', 1, 1, 3, 'JOHNSON\'S BABY POWDER 500G', 'JOHNSON\'S BABY POWDER 500G', 'johnson\'s-baby-powder-500g', 0, '', 655, 550, '0718942356.jpg', '6001011801574', '', '', 1, '2016-07-21 14:34:26'),
(378, '0268175349', 1, 1, 3, 'KOOL 2-GO (ORANGE)', 'KOOL 2-GO (ORANGE)', 'kool-2-go-(orange)', 0, '', 20, 8, '0268175349.jpg', 'I000000346', '', '', 1, '2016-07-21 14:34:26'),
(385, '0624391875', 1, 1, 3, 'LADY CARE REGULAR', 'LADY CARE REGULAR', 'lady-care-regular', 0, '', 200, 125, '0624391875.jpg', '6951794143234', '', '', 1, '2016-07-21 14:34:27'),
(391, '0896541732', 1, 1, 3, 'LIMPO CLEAN ALL PURPOSE CLEANER (LAVENDER) 1L', 'LIMPO CLEAN ALL PURPOSE CLEANER (LAVENDER) 1L', 'limpo-clean-all-purpose-cleaner-(lavender)-1l', 0, '', 395, 345, '0896541732.jpg', '6156000068824', '', '', 1, '2016-07-21 14:34:27'),
(398, '1347928506', 1, 1, 3, 'MACLEANS (COMPLETE CARE) - 157.5G', 'MACLEANS (COMPLETE CARE) - 157.5G', 'macleans-(complete-care)---157.5g', 0, '', 200, 170, '1347928506.jpg', 'I000000366', '', '', 1, '2016-07-21 14:34:28'),
(400, '0892354716', 1, 1, 3, 'MAGIC SHAVING CREAM 170G', 'MAGIC SHAVING CREAM 170G', 'magic-shaving-cream-170g', 0, '', 780, 633, '0892354716.jpg', '72790000188', '', '', 1, '2016-07-21 14:34:28'),
(403, '1036248957', 1, 1, 3, 'MALT & MILK BISCUIT', 'MALT & MILK BISCUIT', 'malt-&-milk-biscuit', 0, '', 50, 30, '1036248957.jpg', 'I000000365', '', '', 1, '2016-07-21 14:34:29'),
(410, '0461872593', 1, 1, 3, 'MCDOWELL', 'MCDOWELL', 'mcdowell', 0, '', 300, 200, '0461872593.jpg', 'I000000331', '', '', 1, '2016-07-21 14:34:30'),
(423, '0593184627', 1, 1, 3, 'MILK SODA CRACKER 248G', 'MILK SODA CRACKER 248G', 'milk-soda-cracker-248g', 0, '', 320, 250, '0593184627.jpg', '6943443500239', '', '', 1, '2016-07-21 14:34:32'),
(424, '0583267941', 1, 1, 3, 'MIXED VEGETABLE MACEDOINE400G', 'MIXED VEGETABLE MACEDOINE400G', 'mixed-vegetable-macedoine400g', 0, '', 380, 216.66, '0583267941.jpg', '3047205212019', '', '', 1, '2016-07-21 14:34:32'),
(435, '0263917458', 1, 1, 3, 'NASCO CORNFLAKES STRAWBERRY350G', 'NASCO CORNFLAKES STRAWBERRY350G', 'nasco-cornflakes-strawberry350g', 0, '', 550, 380, '0263917458.jpg', '6301102020250', '', '', 1, '2016-07-21 14:34:32'),
(441, '0691583427', 1, 1, 3, 'NIKITA PERFUME', 'NIKITA PERFUME', 'nikita-perfume', 0, '', 350, 220, '0691583427.jpg', 'I000000240', '', '', 1, '2016-07-21 14:34:33'),
(443, '0467852913', 1, 1, 3, 'NIVEA DEODERANT (ENERGY FRESH) - 150ML', 'NIVEA DEODERANT (ENERGY FRESH) - 150ML', 'nivea-deoderant-(energy-fresh)---150ml', 0, '', 905, 633, '0467852913.jpg', '4005900098238', '', '', 1, '2016-07-21 14:34:33'),
(447, '1275438069', 1, 1, 3, 'NIVEA MEN DEODERANT (INVISIBLE) - 150ML', 'NIVEA MEN DEODERANT (INVISIBLE) - 150ML', 'nivea-men-deoderant-(invisible)---150ml', 0, '', 905, 633, '1275438069.jpg', '4005900035653', '', '', 1, '2016-07-21 14:34:33'),
(463, '0824675913', 1, 1, 3, 'NUTRI-C PINEAPPLE - PCS 11G', 'NUTRI-C PINEAPPLE - PCS 11G', 'nutri-c-pineapple---pcs-11g', 0, '', 30, 14.6, '0824675913.jpg', '749921106902', '', '', 1, '2016-07-21 14:34:34'),
(465, '0796821354', 1, 1, 3, 'NYLON S/S', 'NYLON S/S', 'nylon-s/s', 0, '', 70, 59, '0796821354.jpg', 'I000000403', '', '', 1, '2016-07-21 14:34:34'),
(472, '0973125684', 1, 1, 3, 'ORAL B TOOTHPASTE (PRO-HEALTH) 125ML/158G IMPORTED', 'ORAL B TOOTHPASTE (PRO-HEALTH) 125ML/158G IMPORTED', 'oral-b-toothpaste-(pro-health)-125ml/158g-imported', 0, '', 550, 358.03, '0973125684.jpg', '4015600546281', '', '', 1, '2016-07-21 14:34:34'),
(479, '0195834762', 1, 1, 3, 'OZONE RELAXER B/S - 400G', 'OZONE RELAXER B/S - 400G', 'ozone-relaxer-b/s---400g', 0, '', 300, 220, '0195834762.jpg', '6156000071503', '', '', 1, '2016-07-21 14:34:34'),
(484, '1240397685', 1, 1, 3, 'PEARS BABY VASLINE - 325G', 'PEARS BABY VASLINE - 325G', 'pears-baby-vasline---325g', 0, '', 410, 350, '1240397685.jpg', 'I000000306', '', '', 1, '2016-07-21 14:34:35'),
(501, '0951684732', 1, 1, 3, 'POUNDED YAM FLOUR - 2KG', 'POUNDED YAM FLOUR - 2KG', 'pounded-yam-flour---2kg', 0, '', 2050, 1775, '0951684732.jpg', '650655244856', '', '', 1, '2016-07-21 14:34:36'),
(510, '1382674950', 1, 1, 10, 'EXPLORE GOLD SPRAY', 'EXPLORE GOLD SPRAY', 'explore-gold-spray', 0, '', 745, 500, '1382674950.jpg', '6987241393426', '', '', 1, '2016-07-21 14:34:36'),
(516, '0486593217', 1, 1, 10, 'PURE LOVE POCKET SPRAY', 'PURE LOVE POCKET SPRAY', 'pure-love-pocket-spray', 0, '', 450, 292, '0486593217.jpg', '678045725242', '', '', 1, '2016-07-21 14:34:36'),
(519, '0138975624', 1, 1, 4, 'BREAD (100)', 'BREAD (100)', 'bread-(100)', 0, '', 100, 0, '0138975624.jpg', 'I000000134', '', '', 1, '2016-07-21 14:34:37'),
(520, '0725849136', 1, 1, 4, 'KEREWA', 'KEREWA', 'kerewa', 0, '', 100, 80, '0725849136.jpg', 'I000000210', '', '', 1, '2016-07-21 14:34:37'),
(528, '0859364172', 1, 1, 17, 'GULDER', 'GULDER', 'gulder', 0, '', 150, 109.45, '0859364172.jpg', '5025866000259', '', '', 1, '2016-07-21 14:34:37'),
(530, '0291458736', 1, 1, 17, 'MAMA LEMON (MEDIUM)', 'MAMA LEMON (MEDIUM)', 'mama-lemon-(medium)', 0, '', 265, 178, '0291458736.jpg', '9259932002328', '', '', 1, '2016-07-21 14:34:37'),
(531, '0862917543', 1, 1, 17, 'MAMA LEMON (SMALL)', 'MAMA LEMON (SMALL)', 'mama-lemon-(small)', 0, '', 150, 73, '0862917543.jpg', '9259932001239', '', '', 1, '2016-07-21 14:34:37'),
(548, '0863475192', 1, 1, 5, 'HAND WASH (MILK & HONEY) - 500ML', 'HAND WASH (MILK & HONEY) - 500ML', 'hand-wash-(milk-&-honey)---500ml', 0, '', 450, 366, '0863475192.jpg', '48256245509', '', '', 1, '2016-07-21 14:34:39'),
(555, '0149563872', 1, 1, 6, 'ABONIKI', 'ABONIKI', 'aboniki', 0, '', 150, 112.5, '0149563872.jpg', '6156000046105', '', '', 1, '2016-07-21 14:34:39'),
(563, '0736412589', 1, 1, 6, 'CABIN BISCUIT', 'CABIN BISCUIT', 'cabin-biscuit', 0, '', 200, 170, '0736412589.jpg', '6156000048086', '', '', 1, '2016-07-21 14:34:40'),
(582, '0946735812', 1, 1, 6, 'FORMULA TOOTH BRUSH (SYSTEM)', 'FORMULA TOOTH BRUSH (SYSTEM)', 'formula-tooth-brush-(system)', 0, '', 100, 79, '0946735812.jpg', '8991102021210', '', '', 1, '2016-07-21 14:34:41'),
(608, '1082476395', 1, 1, 6, 'OZONE RELAXER S/S', 'OZONE RELAXER S/S', 'ozone-relaxer-s/s', 0, '', 180, 110, '1082476395.jpg', 'I000000245', '', '', 1, '2016-07-21 14:34:43'),
(617, '1089245763', 1, 1, 14, 'JOLLOF RICE SPICE (SOMA STYLE) 156G', 'JOLLOF RICE SPICE (SOMA STYLE) 156G', 'jollof-rice-spice-(soma-style)-156g', 0, '', 395, 325, '1089245763.jpg', '76114305270', '', '', 1, '2016-07-21 14:34:43'),
(628, '1094832765', 1, 1, 16, 'MONTANA BOTTLE WATER 75CL', 'MONTANA BOTTLE WATER 75CL', 'montana-bottle-water-75cl', 0, '', 50, 34, '1094832765.jpg', 'I000000255', '', '', 1, '2016-07-21 14:34:44'),
(631, '0984576321', 1, 1, 12, 'POWER HORSE', 'POWER HORSE', 'power-horse', 0, '', 300, 242, '0984576321.jpg', '9008442000177', '', '', 1, '2016-07-21 14:34:44'),
(636, '0826139457', 1, 1, 20, 'ORIGIN CAN', 'ORIGIN CAN', 'origin-can', 0, '', 200, 137.5, '0826139457.jpg', '5010103935630', '', '', 1, '2016-07-21 14:34:45');

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
('107f78e644f521b668b67f34d76f35321eb0a8d6', '::1', 1525698661, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639383337313b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('19ad7871b57c5c3c0a5379bbd76ef597e4a8c54a', '::1', 1525696936, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639363834363b7469746c657c733a343a22486f6d65223b),
('201b6a18f0a84bf1aa67593769391f4586dc4a5e', '::1', 1525697670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639373431353b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('2447e5c7665d4eaa75912456f831299bfee393b4', '::1', 1469632955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633323638333b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('2acef55dcb01e3fed721df2189fbd63b24bab248', '::1', 1469630214, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393632393939363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('2b8072593b482f0baea54ca4bffa3c4110dd7622', '::1', 1469648491, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634383439313b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a353030303030303038303b733a31313a22746f74616c5f6974656d73223b643a3130303030303030313b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b613a363a7b733a323a226964223b733a31303a2233323436383931373530223b733a333a22717479223b643a313b733a353a227072696365223b643a38303b733a343a226e616d65223b733a31313a224d41544348455320783130223b733a353a22726f776964223b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b733a383a22737562746f74616c223b643a38303b7d733a33323a226533383738343437333735363136643532636431326466316538346361363762223b613a363a7b733a323a226964223b733a31303a2239323331343537383630223b733a333a22717479223b643a3130303030303030303b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31393a22444f52434f2053484156494e4720535449434b223b733a353a22726f776964223b733a33323a226533383738343437333735363136643532636431326466316538346361363762223b733a383a22737562746f74616c223b643a353030303030303030303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('2dcbe6a510202a02d85084f0093bccd8e79dd411', '::1', 1469643861, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634333636323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3337303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226565376539356535326537663565366438626363643631616532303161613065223b613a363a7b733a323a226964223b733a31303a2233383931373035343236223b733a333a22717479223b643a313b733a353a227072696365223b643a3337303b733a343a226e616d65223b733a32373a2246414d494c59204752414e554c4154454420535547415220314b47223b733a353a22726f776964223b733a33323a226565376539356535326537663565366438626363643631616532303161613065223b733a383a22737562746f74616c223b643a3337303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('3073e0cc1313e85e28da9365e3da5db2b95c9d39', '::1', 1469635282, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633353131393b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3434353b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b613a363a7b733a323a226964223b733a31303a2239343632383337353031223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31363a22504b2047554d20284d454e54484f4c29223b733a353a22726f776964223b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b733a383a22737562746f74616c223b643a35303b7d733a33323a226332386531323863363239336265313331303364313533316564646161373030223b613a363a7b733a323a226964223b733a31303a2236393035313334323738223b733a333a22717479223b643a313b733a353a227072696365223b643a3339353b733a343a226e616d65223b733a31393a224649534820534541534f4e494e472031393847223b733a353a22726f776964223b733a33323a226332386531323863363239336265313331303364313533316564646161373030223b733a383a22737562746f74616c223b643a3339353b7d7d6572726f727c733a32343a2257726f6e6720656d61696c206f722070617373776f72642e223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b637573746f6d65725f747970657c733a383a22637573746f6d6572223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b),
('3158a5465ffa3aa172dad9a0db880131244e7ba8', '::1', 1525693001, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639323730303b7469746c657c733a343a22486f6d65223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b613a363a7b733a323a226964223b733a31303a2231383036393437323335223b733a333a22717479223b643a313b733a353a227072696365223b643a3230303b733a343a226e616d65223b733a34303a224f52414c204220544f4f54485041535445202848455242414c204d494e542047454c292031343047223b733a353a22726f776964223b733a33323a226639666430633864623138316565643965303661306430316132356365346536223b733a383a22737562746f74616c223b643a3230303b7d7d),
('33793c7c24f251ecd4218292747cbb3e7c4c0a87', '::1', 1469134662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133343432323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('37ae59b69d1cc4be54249d9152e1a986516a86ba', '::1', 1469648477, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393634383133353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b7469746c657c733a343a2243617274223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a353030303030303038303b733a31313a22746f74616c5f6974656d73223b643a3130303030303030313b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b613a363a7b733a323a226964223b733a31303a2233323436383931373530223b733a333a22717479223b643a313b733a353a227072696365223b643a38303b733a343a226e616d65223b733a31313a224d41544348455320783130223b733a353a22726f776964223b733a33323a223935646331336163363638373335343264323735613666663363656163313063223b733a383a22737562746f74616c223b643a38303b7d733a33323a226533383738343437333735363136643532636431326466316538346361363762223b613a363a7b733a323a226964223b733a31303a2239323331343537383630223b733a333a22717479223b643a3130303030303030303b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31393a22444f52434f2053484156494e4720535449434b223b733a353a22726f776964223b733a33323a226533383738343437333735363136643532636431326466316538346361363762223b733a383a22737562746f74616c223b643a353030303030303030303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('3833396d58a0e5c364bac396acff0cfc64e54b72', '::1', 1525699888, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639393539333b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('3a1bd6f6bc0772feadb7146d8a090d6e6c81694f', '::1', 1469568722, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383537313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3a2574975c03d70d804b4a9abfe3282e6a6d35e2', '::1', 1469634154, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633343038333b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a363a7b733a31303a22636172745f746f74616c223b643a3737303b733a31313a22746f74616c5f6974656d73223b643a343b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d733a33323a223161303533306433346637303530326234363333613834353438613632363234223b613a363a7b733a323a226964223b733a31303a2233323137393035343638223b733a333a22717479223b643a313b733a353a227072696365223b643a3435303b733a343a226e616d65223b733a32393a2250554e43482026204a55445920284f52414e47455929202d2035304d4c223b733a353a22726f776964223b733a33323a223161303533306433346637303530326234363333613834353438613632363234223b733a383a22737562746f74616c223b643a3435303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3ee2c9c4ba8f35845509c009b910cd63003ae79a', '::1', 1469570019, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536393939363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a3135303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223435373835366633656632313835396437353366303665343439393439313238223b613a363a7b733a323a226964223b733a31303a2233363938313037323534223b733a333a22717479223b643a313b733a353a227072696365223b643a3135303b733a343a226e616d65223b733a32303a22424f554e54592043484f434f4c41544520353747223b733a353a22726f776964223b733a33323a223435373835366633656632313835396437353366303665343439393439313238223b733a383a22737562746f74616c223b643a3135303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a2261646472657373223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('3ef7ff52b1953640b7c380298db82bdfb402b75a', '::1', 1469136288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133363238353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('3f12987685ff3b6d3d103ccc5e9a164c6e8e4abe', '::1', 1525698966, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639383638303b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
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
('9dd5dfde11e3a5e54f47dbbb665a3b726bf93026', '::1', 1525703576, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353730333334343b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('abbcc7db117578806a8d38d090a4055427770822', '::1', 1469138802, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133383730323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('adab3072112d0c4c084db62f3afa236920cd3a8e', '::1', 1525698008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639373731363b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ae5962a9ed697be8530b274752aa0ba342a4e48c', '::1', 1469630810, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633303533363b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('b5c6ad78d3b899c915c91107a9bef5ed2fa1c3a9', '::1', 1525700298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353730303232353b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('b617793d20f043eb9cbd3af949fb9b4598c73364', '::1', 1469136089, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133353834353b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('b7905d778089348f3ed2719c416f248ab903838c', '::1', 1469307147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393330373036363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('b7e3676b7d5a6c5b289e2a409579d5d7cd4ff750', '::1', 1469631195, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633313137343b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('bafe5d86462f9b6fdd28e5b95ecb40a93a7882ea', '::1', 1469637931, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633373839333b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('bdd32e3cc864f97711ff0b3f6b663e40c0bdfc7d', '::1', 1525698360, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639383037303b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('c73ddd87a51fe0ccb6daa8d18742f9001b3f708d', '::1', 1469569179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383930353b7469746c657c733a343a2243617274223b636172745f636f6e74656e74737c613a333a7b733a31303a22636172745f746f74616c223b643a313230303b733a31313a22746f74616c5f6974656d73223b643a313b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('cd7fa414019ed117215b1d11de545a33e4c224c4', '::1', 1469568461, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536383139303b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('cec69481dbedc22d98d6a05b4b09b9b06f57dd2d', '::1', 1469630998, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633303834353b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b),
('d0fbd7fd241f5e71086d6a1fa00efcb6dfe04bec', '::1', 1469638376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633383333323b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('dcb2e14e708730bc24f08231652597810a642671', '::1', 1469137624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133373437363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('df2a8cf8356342ac2a4413f3698a3a378c2c705b', '::1', 1469635783, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633353736373b7469746c657c733a31343a2253656172636820526573756c7473223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a3434353b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b613a363a7b733a323a226964223b733a31303a2239343632383337353031223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a31363a22504b2047554d20284d454e54484f4c29223b733a353a22726f776964223b733a33323a223533336136353734356239343034323832613938343835623435323362306434223b733a383a22737562746f74616c223b643a35303b7d733a33323a226332386531323863363239336265313331303364313533316564646161373030223b613a363a7b733a323a226964223b733a31303a2236393035313334323738223b733a333a22717479223b643a313b733a353a227072696365223b643a3339353b733a343a226e616d65223b733a31393a224649534820534541534f4e494e472031393847223b733a353a22726f776964223b733a33323a226332386531323863363239336265313331303364313533316564646161373030223b733a383a22737562746f74616c223b643a3339353b7d7d6572726f727c733a32343a2257726f6e6720656d61696c206f722070617373776f72642e223b637573746f6d65725f69647c733a313a2231223b656d61696c7c733a31343a227573657240676d61696c2e636f6d223b70617373776f72647c733a343a2275736572223b637573746f6d65725f747970657c733a383a22637573746f6d6572223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b7069636b75705f73746174696f6e7c733a313a2232223b),
('e6f5003a7a4de074aea34bc412cb7c70bb04c95d', '::1', 1469632340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633323332313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ecbf4211507a29b817f9d54bfd477dafce0df41c', '::1', 1469135647, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133353431313b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ed4be3da2d6ff90abafab47ab20f3a576e3f7b2d', '::1', 1525700202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639393930373b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('ed677ca83ef43c71c66f622c9060ce36f9e6cd8d', '::1', 1525701031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353730303936343b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('f0dbed9e59b6b85f9ff24b9c5c4cf8c3275e63f4', '::1', 1469638676, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393633383636363b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('f2ed48a3224bcf1dc957b0ec08c17834b709b7e2', '::1', 1469629985, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393632393639313b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a353a7b733a31303a22636172745f746f74616c223b643a3332303b733a31313a22746f74616c5f6974656d73223b643a333b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b613a363a7b733a323a226964223b733a31303a2239313032333637353834223b733a333a22717479223b643a313b733a353a227072696365223b643a35303b733a343a226e616d65223b733a32393a225045414b2054485245452043524f574e20455641502028333567205329223b733a353a22726f776964223b733a33323a226265383363653538386137646664343738313261393235626435393633623063223b733a383a22737562746f74616c223b643a35303b7d733a33323a226266626265356636303663353465313165353733313761663033383033623461223b613a363a7b733a323a226964223b733a31303a2238353632303337313934223b733a333a22717479223b643a313b733a353a227072696365223b643a31303b733a343a226e616d65223b733a31383a224f4b20414e5954494d4520435241434b4552223b733a353a22726f776964223b733a33323a226266626265356636303663353465313165353733313761663033383033623461223b733a383a22737562746f74616c223b643a31303b7d733a33323a223766396332663930313730316466376164313631356534626632343736306439223b613a363a7b733a323a226964223b733a31303a2238303237313533343639223b733a333a22717479223b643a313b733a353a227072696365223b643a3236303b733a343a226e616d65223b733a31353a224f52414e4745204a5549434520314c223b733a353a22726f776964223b733a33323a223766396332663930313730316466376164313631356534626632343736306439223b733a383a22737562746f74616c223b643a3236303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b);
INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('f6b2cff28328379f84ec3a193561c96e756c77bb', '::1', 1469567958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393536373737383b7469746c657c733a383a22436865636b6f7574223b636172745f636f6e74656e74737c613a343a7b733a31303a22636172745f746f74616c223b643a323230303b733a31313a22746f74616c5f6974656d73223b643a323b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b613a363a7b733a323a226964223b733a31303a2233323036373139343538223b733a333a22717479223b643a313b733a353a227072696365223b643a313030303b733a343a226e616d65223b733a32363a2242494720504c4153544943204355505320285041434b58353029223b733a353a22726f776964223b733a33323a226635316162346238363066643263303732323666616138306562353166663532223b733a383a22737562746f74616c223b643a313030303b7d733a33323a223939326366396137333535663162663663366464386130636233633933646330223b613a363a7b733a323a226964223b733a31303a2236343335323739383130223b733a333a22717479223b643a313b733a353a227072696365223b643a313230303b733a343a226e616d65223b733a32323a22465249534f20474f4c44205249434520333030474d53223b733a353a22726f776964223b733a33323a223939326366396137333535663162663663366464386130636233633933646330223b733a383a22737562746f74616c223b643a313230303b7d7d67756573745f656d61696c7c733a31393a2276616465736861796f40676d61696c2e636f6d223b64656c69766572795f6f7074696f6e7c733a373a227069636b5f7570223b616464726573737c733a303a22223b636974797c733a343a2243697479223b617265617c733a31333a22417265612f4c6f636174696f6e223b636f6e746163745f706572736f6e7c733a393a2246756c6c204e616d65223b70686f6e655f317c733a353a2250686f6e65223b70686f6e655f327c733a353a2250686f6e65223b),
('f94043fe002c54c58f8792cd4a5c69c82c7da82a', '::1', 1469136980, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393133363936383b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226e6577223b7d737563636573737c733a33353a224f7264657220686173206265656e206d61726b656420617320636f6d706c657465642e223b),
('faa9e8528faa11e9fb00e0a1e662207337982e24', '::1', 1525699580, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639393238393b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('fab84f8f3b8c8b4740cf8c1d8dd8e0385e1761bb', '::1', 1469275061, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393237343930373b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d),
('fb8920b1ab76dd57a22b793d0dd32ef69e14cfbc', '::1', 1469183288, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393138333235383b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b),
('fc1451527686004d34b89f959c7a144338523756', '::1', 1469274860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436393237343832363b6572726f727c733a32303a22496e76616c69642043726564656e7469616c7321223b5f5f63695f766172737c613a313a7b733a353a226572726f72223b733a333a226e6577223b7d),
('fc79b7d20c7f62921d83fe1c726c1877dd0618b9', '::1', 1525699275, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532353639383938353b7469746c657c733a343a22486f6d65223b6c6f676765645f696e5f61646d696e5f69647c733a313a2238223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d);

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
