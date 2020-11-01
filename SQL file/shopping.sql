-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 10:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(2, 'sumon', '25d55ad283aa400af464c76d713c07ad', '2020-03-19 04:34:56', '2020-10-22 18:22:58'),
(3, 'faisal', 'e10adc3949ba59abbe56e057f20f883e', '2020-09-01 13:20:27', '26-10-2020 08:50:43 PM'),
(4, 'lutfor', 'fcea920f7412b5da7be0cf42b8c93759', '2020-10-19 16:00:27', '2020-10-22 18:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test book', '2020-10-22 12:08:05', '2020-10-22 18:09:20'),
(4, 'Electronics', 'Electronic Products', '2020-10-22 12:10:27', '2020-10-22 18:10:27'),
(5, 'Furniture', 'nice furniture.', '2020-10-22 12:13:47', '25-10-2020 05:25:26 PM'),
(6, 'Fashion', 'Fashion', '2020-10-22 12:14:37', '2020-10-22 18:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(47, 5, '38', 1, '2020-10-19 16:05:12', 'Rocket', 'Delivered'),
(48, 5, '23', 1, '2020-10-21 15:24:08', 'Bkash', 'Delivered'),
(49, 5, '42', 1, '2020-10-21 15:24:08', 'Bkash', 'Delivered'),
(54, 5, '25', 1, '2020-10-22 13:36:15', 'Bkash', 'Delivered'),
(55, 5, '22', 1, '2020-10-25 11:54:24', 'Internet Banking', 'Delivered'),
(56, 5, '22', 1, '2020-10-26 15:25:41', 'Bkash', NULL),
(57, 5, '24', 1, '2020-10-27 05:27:19', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(7, 1, 'in Process', '1', '2020-03-30 09:55:44'),
(8, 1, 'Delivered', '1', '2020-04-02 10:23:21'),
(9, 1, 'Delivered', '1', '2020-04-02 10:23:29'),
(10, 9, 'in Process', '1', '2020-07-09 05:30:08'),
(11, 13, 'Delivered', '1', '2020-09-01 13:21:55'),
(12, 47, 'Delivered', '1', '2020-10-19 16:06:01'),
(13, 48, 'Delivered', '1', '2020-10-21 15:30:58'),
(14, 49, 'in Process', '1', '2020-10-21 15:31:23'),
(15, 49, 'Delivered', '1', '2020-10-21 16:25:59'),
(16, 55, 'Delivered', '2', '2020-10-25 12:05:41'),
(17, 54, 'Delivered', '1', '2020-10-27 05:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(7, 21, 5, 0, 0, 'Faisal Rahman', 's', 'very good', '2020-10-21 15:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 14, 'Recharge Your Down Battery', 'abcd', 200, 240, 'Programming Book', 'book 1.PNG', 'book 1.PNG', 'book 1.PNG', 20, 'In Stock', '2020-08-21 10:10:39', NULL),
(22, 3, 14, 'Computer Programming', 'subben', 290, 300, 'Best programming Book', 'book2.PNG', 'book2.PNG', 'book2.PNG', 20, 'In Stock', '2020-08-21 10:16:34', NULL),
(23, 4, 4, 'Huawei nova 7i', 'Huawei', 29000, 35000, '5G mobile', 'm6.1.PNG', 'm6.2.PNG', 'm6.PNG', 20, 'In Stock', '2020-08-21 10:23:37', NULL),
(24, 4, 4, 'Samsung A9', 'samsung', 39000, 45000, 'Samsung A9', 'm 1.0.PNG', 'm1.1.PNG', 'm 1.0.PNG', 20, 'In Stock', '2020-08-21 10:48:07', NULL),
(25, 4, 6, 'Asus A17', 'Asus', 89000, 90000, 'Asus A17', 'l1.2.PNG', 'l1.PNG', 'l1.3.PNG', 20, 'In Stock', '2020-08-21 10:53:20', NULL),
(26, 4, 6, 'HP Notebook', 'HP ', 33000, 43000, 'HP Notebook', 'l5.1.PNG', 'l5.PNG', 'l4.PNG', 20, 'In Stock', '2020-08-21 10:56:19', NULL),
(27, 4, 2, 'Samsung RU', 'Samsung ', 43000, 45000, 'Samsung RU', 't1.2.PNG', 't1.3.PNG', 't1.PNG', 20, 'In Stock', '2020-08-21 10:58:51', NULL),
(28, 4, 2, 'Sony AH', 'Sony', 140000, 142000, 'Sony AH 4k ', 't2.PNG', 't2.2.PNG', 't2.PNG', 20, 'In Stock', '2020-08-21 11:01:15', NULL),
(29, 4, 5, 'Samsung A50s backcase', 'xyz', 174, 200, 'Samsung A50s backcase\r\nBlack \r\nsolid', 'mc1.PNG', 'mc1.1.PNG', 'mc1.1.PNG', 20, 'In Stock', '2020-08-21 11:04:48', NULL),
(30, 4, 5, 'Vivo v15 back cover', 'xyz', 380, 400, 'Vivo v15 back cover<div><br><div><br></div></div>', 'mc2.PNG', 'mc2.1.PNG', 'mc2.PNG', 20, 'In Stock', '2020-08-21 11:07:06', NULL),
(31, 4, 7, 'Intel Corei7 Gamming PC', 'Intel ', 25200, 26000, '&nbsp;Gamming PC<div>Intel Corei7</div><div>Ram 32 GB<br><div><br></div></div>', 'c2.PNG', 'c2.PNG', 'c2.PNG', 20, 'In Stock', '2020-08-21 11:10:56', NULL),
(32, 4, 7, 'Intel corei5 Desktop', 'Intel ', 28000, 29000, 'Intel corei5<div>RAM 4GB</div><div>Monitor 19\"&nbsp;<br><div><br></div></div>', 'c1.PNG', 'c1.PNG', 'c1.PNG', 20, 'In Stock', '2020-08-21 11:17:28', NULL),
(33, 5, 9, 'Bed B-11', 'abc', 8300, 10000, 'Bed B-11<br><div>wood&nbsp;</div>', 'b1.PNG', 'b1.PNG', 'b1.PNG', 20, 'In Stock', '2020-08-21 11:19:43', NULL),
(34, 5, 9, 'Malaysian Wooden Bed', 'Malaysian ', 19000, 19100, 'Malaysian Wooden Bed<br>', 'b2.PNG', 'b2.PNG', 'b2.PNG', 20, 'In Stock', '2020-08-21 11:21:19', NULL),
(35, 5, 10, 'Divan', 'Wood BD', 23000, 25000, 'Divan<br><div><br></div><div>white</div>', 's1.PNG', 's1.PNG', 's1.PNG', 20, 'In Stock', '2020-08-21 11:23:07', NULL),
(36, 5, 10, 'Sofa 4pcs rose', 'rose wood ', 9500, 10000, 'red&nbsp;<div>wood&nbsp;</div><div>4pcs</div>', 's2.PNG', 's2.PNG', 's2.PNG', 20, 'In Stock', '2020-08-21 11:25:43', NULL),
(37, 6, 12, 'New model vans seankers', 'old skool', 16000, 2000, 'seankers<br><div>Black</div>', 'sh3.PNG', 'sh3.PNG', 'sh3.PNG', 20, 'In Stock', '2020-08-21 11:29:21', NULL),
(38, 6, 12, 'Casual footwear Black mixed red', 'bcv', 1200, 1390, 'Casual footwear<br><div>Black mixed red<br></div><div>42 size</div>', 'sh2.PNG', 'sh2.PNG', 'sh2.PNG', 20, 'In Stock', '2020-08-21 11:33:00', NULL),
(39, 3, 15, 'Eat That Frog', 'Brain', 750, 800, 'Eat That Frog<br><div><br></div>', 'book4.PNG', 'book4.PNG', 'book4.PNG', 20, 'In Stock', '2020-08-21 11:37:50', NULL),
(40, 3, 15, 'Frelanceing', 'Nasim', 370, 400, 'Frelanceing by Nasim<br>', 'book5.PNG', 'book5.PNG', 'book5.PNG', 20, 'In Stock', '2020-08-21 11:39:17', NULL),
(41, 6, 12, 'Genuine Leather Shoes', 'ZTS', 2000, 4000, '<ul class=\"\" style=\"margin-bottom: 0px; margin-left: 0px; list-style: none; overflow: hidden; columns: auto 2; column-gap: 32px; color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Excellent looking elegtant shoes made of premium 100% Genuine leather.</li><li class=\"\" style=\"margin: 0px; padding: 0px 0px 0px 15px; position: relative; box-sizing: border-box; font-size: 14px; line-height: 18px; text-align: left; list-style: none; word-break: break-word; break-inside: avoid;\">Best quality sewing,high quality craftmanship,ensures ultimate comfort for your feet.</li></ul>', 'sh4.PNG', 'sh4.1.PNG', 'sh4.2.PNG', 20, 'In Stock', '2020-08-21 13:28:56', NULL),
(42, 4, 4, 'Nova 5T', 'Huawei', 43000, 45000, 'Huawei<br><div>Nova 5T<br></div>', 'm3.PNG', 'm3.1.PNG', 'm3.PNG', 20, 'In Stock', '2020-08-21 13:52:36', NULL),
(43, 14, 0, 'Emotional Marketing', 'Daraz', 280, 350, 'Looking very nice book.', 'book6.PNG', 'book6.PNG', 'book6.PNG', 10, 'In Stock', '2020-10-22 16:44:10', NULL),
(44, 3, 14, 'Emotional Marketing', 'Daraz', 280, 350, 'nice book.', 'book6.PNG', 'book6.PNG', 'book6.PNG', 10, 'In Stock', '2020-10-22 16:46:15', NULL),
(45, 4, 4, 'Iphone 11', 'Apple', 138000, 150000, 'nice phone.', 'm4.PNG', 'm4.2.PNG', 'm4.1.PNG', 10, 'In Stock', '2020-10-23 03:24:16', NULL),
(46, 3, 14, 'Javascript Book', 'Daraz', 344, 444, 'nice book', '1.PNG', '2.PNG', '3.PNG', 34, 'In Stock', '2020-10-25 12:00:25', NULL),
(47, 3, 14, 'javascript programming', 'javascript', 280, 350, 'nice book', '1.PNG', '2.PNG', '3.PNG', 32, 'In Stock', '2020-10-26 14:16:56', NULL),
(48, 4, 6, 'Mac Book Pro', 'Apple', 344, 444, 'nice laptop', '2.PNG', '3.PNG', '2.PNG', 43, 'In Stock', '2020-10-26 15:16:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2020-10-22 12:16:34', '2020-10-22 18:16:34'),
(3, 4, 'Television', '2020-10-22 12:18:14', '2020-10-22 18:18:14'),
(4, 4, 'Mobiles', '2020-10-22 12:18:31', '2020-10-22 18:18:31'),
(6, 4, 'Laptops', '2020-10-22 12:19:09', '2020-10-22 18:19:09'),
(7, 4, 'Computers', '2020-10-22 12:19:24', '2020-10-22 18:19:24'),
(9, 5, 'Beds', '2020-10-22 12:19:38', '2020-10-22 18:19:38'),
(10, 5, 'Sofas', '2020-10-22 12:19:58', '2020-10-22 18:19:58'),
(12, 6, 'Men Footwears', '2020-10-22 12:20:17', '2020-10-22 18:20:17'),
(14, 3, 'Programming', '2020-10-22 12:20:31', '2020-10-22 18:20:31'),
(15, 3, 'Others', '2020-10-22 12:20:54', '2020-10-22 18:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(94, 'sakib@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-22 15:17:40', '22-10-2020 09:20:56 PM', 1),
(96, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-23 03:42:56', '23-10-2020 10:30:20 AM', 1),
(97, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-25 11:54:20', NULL, 1),
(98, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 09:13:41', '26-10-2020 03:25:12 PM', 1),
(99, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 09:25:17', '26-10-2020 03:26:09 PM', 1),
(100, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 09:26:13', '26-10-2020 03:27:09 PM', 1),
(101, 'faisalrahmn@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 09:27:18', NULL, 0),
(102, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 09:40:52', '26-10-2020 03:40:56 PM', 1),
(103, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 10:03:44', NULL, 0),
(104, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 10:03:52', NULL, 0),
(105, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 10:03:55', NULL, 1),
(106, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 14:32:54', '26-10-2020 08:50:06 PM', 1),
(107, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 14:51:49', '26-10-2020 08:51:58 PM', 1),
(108, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 15:00:55', '26-10-2020 09:00:59 PM', 1),
(109, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 15:01:09', NULL, 1),
(110, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 15:23:05', '26-10-2020 09:24:31 PM', 1),
(111, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-26 15:25:37', NULL, 1),
(112, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-27 05:27:00', '27-10-2020 11:27:03 AM', 1),
(113, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-27 05:27:07', '27-10-2020 11:33:36 AM', 1),
(114, 'faisal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-27 05:34:49', '27-10-2020 01:31:04 PM', 1),
(115, 'faisal@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-27 07:31:19', '27-10-2020 01:31:23 PM', 1),
(116, 'faisalrahman@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-27 08:24:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'faisal', 'faisalrahman@gmail.com', 162200352, 'e10adc3949ba59abbe56e057f20f883e', 'Mirpur', 'Dhaka', 1229, 'Dhaka\r\nkhilkhete', 'Dhaka', 1229, '2020-09-01 13:14:07', '21-10-2020 02:29:23 PM'),
(14, 'sakib', 'sakib@gmail.com', 1622003527, 'e10adc3949ba59abbe56e057f20f883e', 'Banani , Dhaka .', 'Dhaka', 1229, 'Dhaka\r\nkhilkhete,nikhunjo-2', 'Dhaka', 1212, '2020-10-22 15:37:57', NULL),
(15, 'faisal', 'faisal@gmail.com', 1622003527, 'e10adc3949ba59abbe56e057f20f883e', 'Banani , Dhaka .', 'Dhaka', 1229, 'Dhaka\r\nkhilkhete,nikhunjo-2', 'Dhaka', 1212, '2020-10-27 05:34:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 4, 3, '2020-03-29 12:45:46'),
(4, 3, 24, '2020-10-18 05:44:31'),
(6, 5, 22, '2020-10-26 10:04:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
