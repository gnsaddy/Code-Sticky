-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2019 at 07:13 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Aditya Raj', 'aditya.x510@gmail.com', 'aditya123', 'IMG_20180511_144108.jpg', 'India', '  Aditya was born and raised in Ara Bihar, India, where he attended DAV public school Dhanupra. He is pursuing a Masters in Computer Application from RV College of Engineering, Banglore. He is a front end web developer and python programmer. He is good in debugging codes. He is interested in the data science field.', '+918271388851', 'Developer');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `size`) VALUES
(5, '::0', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Stickers', 'This Cat Men has been edited by the admin of this website'),
(2, 'Hoodies ', 'Snuggle up in the coziest sweatshirts for men and women! These sweatshirts are major comfort goals.'),
(3, 'Mugs', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit rem eos illo tempora dicta possimus adipisci doloribus obcaecati odit officiis, sapiente eius excepturi harum voluptates nihil aut quo vero eveniet.'),
(4, ' Laptop-skins ', 'StickerPro laptop skins protect your device from dirt, minor scratches & dullness, increasing its life & re-sale value. â€¢	Compatible with laptops screen sizes ranging from 14.1 inches to 15.6 inches(Trimming of the skin would be required as per your laptop size.) â€¢	Photorealistic Print Quality_UHD Print Quality â€¢	Easy to install & remove without leaving any gum or residue. â€¢	'),
(6, 'T-shirts', 'Premium T-shirt is as close to perfect as can be. Itâ€™s optimized for all types of print and will quickly become your favorite T-shirt. Soft, comfortable and durable, this is a definite must-own and a Spreadshirt recommended product.\r\n100% cotton (heather gray is 95% cotton /5% viscose. Heather Blue & Charcoal Gray are 80% Cotton/20% Polyester. Heather Burgundy is 65% cotton/35% Polyester) | Fabric Weight: 5.29 oz (heavyweight)');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(7, 'Akash Hebber', 'akash123@gmail.com', 'akash123', 'India', 'BENGALURU', '8271388851', '1st floor Flat number 101, block 10, Ganga block, 2nd phase, valagerahalli, BDA Apartment, mysore road, kengeri', 'iko.png', '::1'),
(8, 'Aditya Raj', 'aditya.x510@gmail.com', 'aditya1234', 'India', 'BENGALURU', '8271388851', '1st floor Flat number 101, block 10, Ganga block, 2nd phase, valagerahalli, BDA Apartment, mysore road, kengeri', 'IMG_20190101_102147-01.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(13, 7, 10, 2044092999, 1, 'Small', '2019-04-28', 'Complete'),
(14, 7, 349, 888987917, 1, 'Small', '2019-05-17', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 7, 888987917, '23', 1, 'Small', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(13, 5, 1, '2019-05-12 16:59:53', 'Boy Polos T-Shirt', '1d8i_mens.png', 'git.png', 'reddit.png', 299, 'Casual', '<p>Github fork tshirt.</p>'),
(16, 1, 2, '2019-04-28 06:29:01', 'Kickass torrent', '96tp_mhoodie.png', '', '', 499, 'Hoody,torrent', '<h1 id=\"testProName\" class=\"col-xs-12 col-sm-12 noPd\" style=\"box-sizing: border-box; font-size: 14px; margin: 0px 0px 2px; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; min-height: 1px; position: relative; width: 390px; color: rgba(0, 0, 0, 0.7); font-family: montserrat, sans-serif; font-weight: 500; line-height: 20px;\">White Fleece Hoodies</h1>'),
(17, 5, 6, '2019-05-10 12:30:28', ' Menâ€™s Premium T-Shirt I Love Javascript (Men)', 'i-love-javascript-men-mens-premium-t-shirt.webp', 'javascriptBack.webp', 'i-love-javascript-men-mens-premium-t-shirt (1).webp', 499, 'coder, coding, javascript, programmer, programming', '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px;\">A simplistic shirt for people who love programming. This shirt displays some basic ES6.</span></p>'),
(18, 7, 3, '2019-05-10 12:33:41', 'Full Color Mug I Love Javascript (Mug)', 'i-love-javascript-mug-full-color-mug.webp', 'jsmug.webp', 'jsmug2.webp', 399, ' coder, coding, coffee, javascript, mug, programmer, programming', '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 16px; letter-spacing: 0.32px;\">A coffee mug with some javascript on it. This product is for those who love programming.</span></p>'),
(21, 8, 1, '2019-05-12 14:59:44', 'Android Sticker for laptops', 'android.png', '0jwf.png', 'android.png', 149, 'android,programming,developer', '<p>Android sticker.</p>'),
(22, 8, 1, '2019-05-12 14:58:34', 'GADGETS WRAP 30Pcs stickers ', 'all1.jpg', 'all2.jpg', 'all3.jpg', 399, 'programming,code,python,js,java,docker', '<p>Gadgets wrap 30 stickers.</p>'),
(23, 8, 1, '2019-05-12 15:01:54', 'Developer Stickers - Perfect Gift for Software Developers', 'all4.jpg', 'all5.jpg', 'all1.jpg', 349, 'programming,code,python,js,java,docker', '<p>Developer stickers.</p>'),
(24, 9, 4, '2019-05-12 17:16:23', ' orbit Premium LG Vinyl (matte) Laptop Decal 15.6. laptop skins protect your device from dirt, minor scratches', 'orbit1.jpeg', 'orbit2.jpeg', 'orbit1.jpeg', 199, 'Laptop-skin,best,coding', '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">&nbsp;laptop skins protect your device from dirt, minor scratches &amp; dullness</span></p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Hoodies', 'Snuggle up in the coziest sweatshirts for men and women! These sweatshirts are major comfort goals. '),
(5, ' T-Shirt ', '100% cotton (heather gray is 95% cotton /5% viscose. Heather Blue & Charcoal Gray are 80% Cotton/20% Polyester. Heather Burgundy is 65% cotton/35% Polyester) | Fabric Weight: 5.29 oz (heavyweight)\r\nWide range of sizes from S-5XL\r\nFairly produced, certified and triple audited.\r\nDouble stitched, reinforced seams at shoulder, sleeve, collar and waist'),
(7, 'Mug', 'Full Color Mug\r\nAdd some personality to your favorite brew. Good for all types of beverages, this classic container is a great way to make your hot cocoa cool again.'),
(8, 'Stickers ', 'Stickers designed by independent artists from all over the world.Removable, individually kiss-cut vinyl\r\nIdeal for smooth flat surfaces like laptops, journals, windows, etc.'),
(9, 'Laptop-Skin', 'laptop skins protect your device from dirt, minor scratches & dullness, increasing its life & re-sale value.(instruction Manual Included) â€¢ Compatible with laptops screen sizes ranging from 14.1 inches to 15.6 inches(Trimming of the skin would be required as per your laptop size.) â€¢ Photorealistic Print Quality_UHD Print Quality â€¢ Easy to install & remove without leaving any gum or residue. ');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(8, 'Slide Number 6', 'slide-1.png'),
(9, 'Slide Number 7', 'slide-2.png'),
(10, 'Editing Slide Number 8', 'slide-3.png'),
(11, 'silde-4', 'slide-4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
