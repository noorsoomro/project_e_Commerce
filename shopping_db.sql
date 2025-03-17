-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 04:28 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `com_logo` varchar(100) DEFAULT NULL,
  `com_name` varchar(100) NOT NULL,
  `com_email` varchar(60) NOT NULL,
  `com_phone` varchar(15) DEFAULT NULL,
  `com_address` varchar(255) DEFAULT NULL,
  `cur_format` varchar(10) NOT NULL,
  `admin_role` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `username`, `password`, `com_logo`, `com_name`, `com_email`, `com_phone`, `com_address`, `cur_format`, `admin_role`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'Inventory', 'inventory@gmail.com', NULL, NULL, '$', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` text NOT NULL,
  `brand_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`, `brand_cat`) VALUES
(13, 'J. Junaid Jumshaid', 11),
(12, 'Beach Tree', 11),
(11, 'Ideas By Gul Ahmed', 11),
(10, 'Stylo', 11),
(14, 'Kashees', 11),
(15, 'Miss Rose', 11),
(16, 'Huda Beauty', 11),
(17, 'Harry Winston', 11),
(18, 'Phillips', 11),
(19, 'Calvin Klien', 11),
(20, 'Derma Shines', 11),
(21, 'Missoma', 11),
(22, 'Charles &amp; Keith', 11),
(23, 'Chanel', 11),
(24, 'Garnier', 11);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL,
  `products` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `products`) VALUES
(9, 'Electronics', 0),
(10, 'Men', 0),
(11, 'Women', 0),
(12, 'Furniture', 0);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `s_no` int(11) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `site_title` varchar(100) DEFAULT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `footer_text` varchar(100) NOT NULL,
  `currency_format` varchar(20) NOT NULL,
  `contact_phone` varchar(15) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `contact_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`s_no`, `site_name`, `site_title`, `site_logo`, `site_desc`, `footer_text`, `currency_format`, `contact_phone`, `contact_email`, `contact_address`) VALUES
(1, 'Cosmetic Shop', 'Online Shopping Project for Womens Makeup, Clothes, Jewelry and many more....', '16843081851684057726ei-1684046868352-removebg-preview.png', 'We Provide New Products And Quick Delivery Than', 'Copyright 2023', 'Rs.', '+92 3133152773', 'soomromfaisal01@gmail.com', 'Shop-#5 Main Street Pakistani Chowk Larkana, Sindh, Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_qty` varchar(100) NOT NULL,
  `total_amount` varchar(10) NOT NULL,
  `product_user` int(11) NOT NULL,
  `order_date` varchar(11) NOT NULL,
  `pay_req_id` varchar(100) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `delivery` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_id`, `product_id`, `product_qty`, `total_amount`, `product_user`, `order_date`, `pay_req_id`, `confirm`, `delivery`) VALUES
(46, '12,', '1,', '299', 2, '2020-12-04', '3c209af45445486c8aefb6cfb55dcbb7', 0, 1),
(47, '12,', '1,', '976', 15, '2023-05-17', '', 0, 1),
(48, '12,', '1,', '976', 15, '2023-05-17', '', 0, 0),
(49, '12,', '1,', '976', 15, '2023-05-17', '', 0, 0),
(50, '10,', '1,', '1573', 15, '2023-05-17', '', 0, 0),
(51, '10,', '1,', '1573', 15, '2023-05-17', '', 0, 0),
(52, '10,', '1,', '1573', 15, '2023-05-17', '', 0, 0),
(53, '4,', '3,', '3603', 16, '2023-05-18', '', 0, 1),
(54, '4,', '3,', '3603', 16, '2023-05-18', '', 0, 0),
(55, '4,', '1,', '1201', 16, '2023-05-18', 'f4e5ca9fe0294ee69e146b20598c28d0', 0, 0),
(56, '4,', '1,', '1201', 16, '2023-05-18', 'd38d18ee1ab24a74a9c2b5bdba5ff724', 0, 0),
(57, '43,', '1,', '2145', 17, '2023-05-20', '', 0, 0),
(58, '43,', '1,', '2145', 17, '2023-05-20', '4082c74927604598abc604ebcbf04167', 0, 0),
(59, '', '', '', 17, '2023-05-20', '', 0, 0),
(60, '59,', '1,', '3344', 17, '2023-05-20', '', 0, 0),
(61, '59,', '5,', '16720', 17, '2023-05-20', '', 0, 0),
(62, '59,', '5,', '16720', 17, '2023-05-20', '', 0, 0),
(63, '59,', '5,', '16720', 17, '2023-05-20', '', 0, 0),
(64, '59,', '5,', '16720', 17, '2023-05-20', '', 0, 0),
(65, '59,', '5,', '16720', 17, '2023-05-20', '', 0, 0),
(66, '12,', '3,', '2928', 17, '2023-05-20', '', 0, 0),
(67, '4,12,', '2,2,', '4354', 17, '2023-05-20', '', 0, 0),
(68, '4,12,', '2,1,', '3378', 17, '2023-05-20', '', 0, 0),
(69, '4,12,', '3,2,', '5555', 17, '2023-05-20', '', 0, 0),
(70, '4,12,', '1,1,', '2177', 17, '2023-05-20', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `item_number`, `txn_id`, `payment_gross`, `currency_code`, `payment_status`) VALUES
(5, '11', 'd388939cdaca4087acca75574a34b035', 759.00, '', 'credit'),
(6, '12', '4e2738d7eade4f57b5fd32434239d35f', 299.00, '', 'credit'),
(7, '12', 'd7a5b179cd07480782fc2d21edec7031', 299.00, '', 'credit'),
(8, '12', 'a0f61b1acd6b444ba5856cc4387e7710', 299.00, '', 'pending'),
(9, '12', '0e2fdf1541994d338c676201097d2481', 598.00, '', 'credit'),
(10, '12', '8b0791e3eb764e45b497b0f0c401d9d6', 299.00, '', 'credit'),
(11, '12', '92c9c474ae864d01b81f7e2f4d3a098e', 299.00, '', 'credit'),
(20, '11', '6863fbdf68be45d5a77aa01774a80885', 759.00, '', 'credit'),
(21, '11', 'ee7d6cea937c4f06b6e5e1fffe47b778', 759.00, '', 'credit'),
(22, '12', 'f7ce91d5964c462fa3972f6cb5373d4a', 299.00, '', 'credit'),
(23, '11', '939d866425ef479c84e276e664ce5a31', 1518.00, '', 'credit'),
(29, '10,11,12,', 'df952fa6bacd4f389de80b1080ed3871', 1342.00, '', 'credit'),
(30, '4,12,', 'd19818d2ba3543ffa03a79a7eb64901b', 94279.00, '', 'credit'),
(31, '11,12,', '2c648ec714914c18b447309d691b7eef', 1058.00, '', 'credit'),
(32, '11,12,', '700bf310ca4a4697b59184f61309275a', 1058.00, '', 'credit'),
(33, '11,12,', '639ccfba60cd41eeba02ba5ff1849249', 1058.00, '', 'credit'),
(34, '11,12,', '792c6616026948e48a2fcc07eb35c158', 1058.00, '', 'credit'),
(35, '11,12,', '153427404661463f83a5e8bd080a95e9', 1058.00, '', 'credit'),
(36, '11,12,', '37473185580340ab8c54d102204c7bf9', 1058.00, '', 'credit'),
(37, '11,12,', '2bb8d2ccf3544d0089d211abf4d55e36', 1058.00, '', 'credit'),
(38, '12,13,', '63148f0e7b7043f5a5e470a9ac1d3dde', 1532.00, '', 'credit'),
(39, '12,', '3c209af45445486c8aefb6cfb55dcbb7', 299.00, '', 'credit'),
(40, '12,', '', 976.00, '', 'credit'),
(41, '12,', '', 976.00, '', 'credit'),
(42, '12,', '', 976.00, '', 'credit'),
(43, '10,', '', 1573.00, '', 'credit'),
(44, '10,', '', 1573.00, '', 'credit'),
(45, '10,', '', 1573.00, '', 'credit'),
(46, '4,', '', 3603.00, '', 'credit'),
(47, '4,', '', 3603.00, '', 'credit'),
(48, '4,', 'f4e5ca9fe0294ee69e146b20598c28d0', 1201.00, '', 'credit'),
(49, '4,', 'd38d18ee1ab24a74a9c2b5bdba5ff724', 1201.00, '', 'credit'),
(50, '43,', '', 2145.00, '', 'credit'),
(51, '43,', '4082c74927604598abc604ebcbf04167', 2145.00, '', 'credit'),
(52, '', '', 0.00, '', 'credit'),
(53, '59,', '', 3344.00, '', 'credit'),
(54, '59,', '', 16720.00, '', 'credit'),
(55, '59,', '', 16720.00, '', 'credit'),
(56, '59,', '', 16720.00, '', 'credit'),
(57, '59,', '', 16720.00, '', 'credit'),
(58, '59,', '', 16720.00, '', 'credit'),
(59, '12,', '', 2928.00, '', 'credit'),
(60, '4,12,', '', 4354.00, '', 'credit'),
(61, '4,12,', '', 3378.00, '', 'credit'),
(62, '4,12,', '', 5555.00, '', 'credit'),
(63, '4,12,', '', 2177.00, '', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_sub_cat` int(11) NOT NULL,
  `product_brand` int(100) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `featured_image` text NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `product_keywords` text DEFAULT NULL,
  `product_views` int(11) DEFAULT 0,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_cat`, `product_sub_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `featured_image`, `qty`, `product_keywords`, `product_views`, `product_status`) VALUES
(2, '5fc500f4330ad', 11, 26, 22, 'Hand Bag (Royal Blue)', '1765', 'For Every Womens', '1684310528ChKt1.jpg', 14, NULL, 1, 1),
(3, '5fc500ec98a64', 11, 28, 12, 'Printed Dress', '2876', '3Pc Printed Dress By Beach Tree', '1684310289btdrees.jpg', 12, NULL, 35, 1),
(4, '5fc500e4de9c2', 11, 29, 19, 'Black Slim Watch', '1201', 'For Womens', '1684310032ppckwi10.jpg', 9, NULL, 10, 1),
(5, '5fc500decacd2', 11, 25, 17, 'Pink-Blue Set', '1998', 'Stylish &amp;amp; Beautiful Set By Harry Winston', '1684309886hwi1n.jpg', 7, NULL, 1, 1),
(6, '5fc500d9502a7', 11, 25, 17, 'Green Set', '2379', 'For Womens Beautiful Green Set By Harry Winston', '1684309787tft.jpg', 6, NULL, 4, 1),
(7, '5fc500d3ae088', 11, 20, 20, 'Facial Kit', '1954', '6 Favour&quot;s Facials By Derma Shines', '1684309588ppdsfki.jpg', 23, NULL, 4, 1),
(8, '5fc500cd9a2c4', 11, 24, 14, 'Foundation', '1287', 'Super Matte Liquid Foundation 35g - e - Net Wt.1.23Oz By Kashees', '1684309397foundation.jpg', 9, NULL, 0, 1),
(9, '5fc500c7c7bef', 11, 24, 14, 'Eye Shad', '1001', 'With 10%&amp;nbsp; Discount on Eye Shad By Kashees', '1684309177eyeshad.jpg', 20, NULL, 2, 1),
(10, '5fc500c285db4', 11, 24, 14, 'Face Kit', '1573', 'Wonderful Face Kit By Kashees.', '1684309080Face-kit.jpg', 15, NULL, 2, 1),
(11, '5fc500bc5d3e3', 11, 24, 14, 'Face Powder', '1392', 'Glowing Result Of Face Powder By Kashees.', '1684308984facepowder.jpg', 18, NULL, 14, 1),
(12, '5fc500b5570aa', 11, 21, 15, 'B.B Cream', '976', 'Best Result Of B.B Cream Prefect Cover SPF42 PA*** 40g By Miss Rose.&amp;nbsp;', '1684308819msrsbbcrem.jpg', 12, NULL, 16, 1),
(14, '64660198cf431', 11, 25, 13, 'Ear Rings', '1573', 'Golden Ear Rings For Womens By Junaid Jumshaid', '1684508350newearring.jpg', 27, NULL, 1, 1),
(15, '64665a4921f44', 11, 28, 11, 'Printed Net Dress', '5540', 'Front Embroied slvee Embroied Plane Trouser Net Dupptta', '1684429385GulAhmed2.jpg', 12, NULL, 0, 1),
(16, '64665aca4fe07', 11, 26, 23, 'Chanel Brown Purse', '4850', 'Best Quality Purse With Special 20% Discount', '1684429514chanelpurse2.jpg', 6, NULL, 0, 1),
(17, '64665b9f5fd96', 11, 28, 13, '3pc Printed Dress', '5000', '3pc Printed Dress (Blue &amp;amp; Grey) For Women', '1684429727j.unstichedsuit1.jpg', 6, NULL, 0, 1),
(18, '64665cb1d6257', 11, 26, 22, 'Hand Bag (White)', '2199', 'Hand Bag For Womens&amp;nbsp;&amp;nbsp;With 10% OFF&amp;nbsp; by Charles &amp;amp; Keith', '1684430001charles&amp;KeithPurse.jpg', 9, NULL, 0, 1),
(19, '64665d720cedf', 11, 28, 13, '3PC Lawn Printed Suit', '4899', 'Front Embroied&amp;nbsp;&lt;p&gt;Slvee Embroied&amp;nbsp;&lt;/p&gt;&lt;p&gt;Tlane Trouser&amp;nbsp;&lt;/p&gt;', '1684430194j2.jpg', 10, NULL, 0, 1),
(20, '64665df7acfa0', 11, 25, 14, 'Kashees Jhumka', '4888', 'Kashees Jhumka For Women With 5% Off', '1684430327earinggg.jpg', 9, NULL, 0, 1),
(21, '64665e65618e1', 11, 25, 13, 'Silver Earings', '999', 'Best Qulaity Earings For Women', '1684430437j.earings.jpg', 24, NULL, 0, 1),
(22, '64665efa45693', 11, 25, 13, 'Earings With Tikka', '1234', 'J. Earings And&amp;nbsp; Tikka&amp;nbsp; is&lt;p&gt;Best Quality&lt;/p&gt;', '1684430586j.earings7.jpg', 15, NULL, 0, 1),
(23, '64665f910178e', 11, 25, 13, 'Golden Bangels', '2245', 'Golden Bangels For Women Size 2.4/2.5/2.6/2.8/2.9/2.10', '1684430737j.bangels9.jpg', 10, NULL, 0, 1),
(24, '6466602714a1a', 11, 25, 13, 'Bangels', '1879', 'J. Bangels with Best Quantity Sze For Women Size 2.4/2.5/2.6/2.8/2.9/2.10', '1684430887j.bangelsset4.jpg', 18, NULL, 0, 1),
(25, '64666107ecb30', 11, 25, 13, 'Golden Bangels With Diamonds', '1345', '&lt;p&gt;Golden Bangels For Women&amp;nbsp;&lt;/p&gt;&lt;p&gt;Size 2.4/2.5/2.6/2.8/2.9/2.10&amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p&gt;With 25% Off By J. Junaid Jamshaid&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1684431111j.bangels2.jpg', 26, NULL, 0, 1),
(26, '6467a3a78e632', 11, 27, 12, 'Green Kurti', '2876', '&lt;span style=&quot;color: rgb(127, 127, 127); font-family: &amp;quot;Open Sans&amp;quot;;&quot;&gt;BeechTree Women Clothing is a fast fashion, women’s wear online brand. Making modern and trendy clothes that are friendly on the pocket. BeechTree came into being when HKB, the parent company,&lt;/span&gt;', '1684513703Beechtreekurti1.jpg', 12, NULL, 0, 1),
(27, '6467a5a2b5d32', 11, 27, 12, 'Beechtree Printed Lawn Kurti', '2234', 'Morbagh by Beechtree Printed Lawn Unstitched Kurti&amp;nbsp;MRB22SS MB1S22U09 - Spring / Summer Collection', '1684514210Beechtreekurti2.jpg', 10, NULL, 0, 1),
(28, '6467a6b425962', 11, 27, 12, 'Printed Lawn Unstitched Kurti', '2345', 'Morbagh by Beechtree Printed Lawn Unstitched Kurti With 15% Off&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1684514484Beechtreekurti3.jpg', 15, NULL, 0, 1),
(29, '6467a95b3d668', 11, 27, 11, 'Blue Shirt', '1399', '&lt;span style=&quot;color: rgb(61, 61, 61); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;The wedding season begins in less than a month. Now is the time to prepare all of your outfits, whether suits or sarees. Before you go to your tailor and have your clothing made, you should consider everything from the neckline to the sleeves.&lt;/span&gt;', '1684515163ideaskurti1.jpg', 18, NULL, 0, 1),
(31, '6467a9c00b327', 11, 27, 11, 'Pink Shirt', '1234', '&lt;span style=&quot;color: rgb(61, 61, 61); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;Chikankari is an ancient Indian embroidery technique that is used to create not only sarees but also designs like this Indian kurtis ideas for wedding. Chikankari is available in a variety of colours, ranging from black and white to green and yellow. You can choose from a variety of necklines, including boat neck, close round, and strapless.&lt;/span&gt;', '1684515264ideaskurti2.jpg', 24, NULL, 0, 1),
(32, '6467aa487f07f', 11, 27, 11, 'Green Shirt', '1324', '&lt;span style=&quot;color: rgb(61, 61, 61); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;An Indian kurti ideas for wedding pattern of this length is ideal for bottoms with a lot of flare, such as a skirt or a sharara. You can add embroidered net sleeves in a contrasting colour to this design to make it more glam. Red and gold colours are quite contrasted, and you can use them as well. Another colour scheme is dark green and gold.&lt;/span&gt;', '1684515400ideaskurti3.jpg', 15, NULL, 0, 1),
(33, '6467ab52da4e6', 11, 27, 11, 'Kasavu Kurtis', '1456', '&lt;span style=&quot;color: rgb(61, 61, 61); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;Floral patterns are one of the most popular patterns on the&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: &amp;quot;Open Sans&amp;quot;, sans-serif;&quot;&gt;Wholesale Market. You can add a floral cloth in complementary colours to the sleeves or hem of your kurtis ideas for wedding.&lt;/span&gt;', '1684515666ideaskurti4.jpg', 21, NULL, 0, 1),
(34, '6467ad24f14cb', 11, 27, 14, 'Kashees Short Kurti', '35055', 'Kashees Short Kurti The Best Discounts Online OFF 52%&lt;br&gt;', '1684516132Kasheeskurti1.jpg', 2, NULL, 0, 1),
(35, '6467add43ffc8', 11, 28, 14, 'kashee\'s  bridal dresses', '29078', '&lt;a rel=&quot;noopener&quot; target=&quot;_blank&quot; href=&quot;https://www.daralnahda.com/indzen.aspx?cid=1&amp;amp;zpen=kashee%27s+online+bridal+dresses&amp;amp;xi=5&amp;amp;xc=23&amp;amp;pr=68.99&quot; jsaction=&quot;focus:trigger.HTIQtd;mousedown:trigger.HTIQtd;touchstart:trigger.HTIQtd;&quot; data-ved=&quot;0CBMQjhxqFwoTCICdw-Tugf8CFQAAAAAdAAAAABAQ&quot; class=&quot;cqCFac mKq8g&quot; style=&quot;-webkit-tap-highlight-color: transparent; color: rgb(32, 33, 36); align-items: center; display: flex; flex: 1 1 auto; padding-top: 16px; font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);&quot;&gt;&lt;h1 class=&quot;n9H6p cS4Vcb-pGL6qe-fwJd0c&quot; style=&quot;-webkit-tap-highlight-color: transparent; font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 18px; line-height: 24px; flex: 1 1 auto; margin-bottom: 0px; overflow: hidden; text-decoration-line: none; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;&quot;&gt;kashee\'s online bridal dresses with Special Discount 10%OFF&lt;/h1&gt;&lt;/a&gt;', '1684516308kasheesdress1.jpg', 1, NULL, 0, 1),
(36, '6467ae9bcda4d', 11, 28, 14, 'Kashees Bridal Dress', '65898', '&amp;nbsp;Neelam Munir Drops Jaws Kashees Shadi Mubark Campaign with Special Discount 5% OFF', '1684516507kasheesdress2.jpg', 5, NULL, 0, 1),
(37, '6467af5a13249', 11, 28, 14, 'Red Kashees Bridal Dress', '71343', '&lt;p data-test-id=&quot;closeup-title&quot; class=&quot;zI7 iyn Hsu&quot; style=&quot;color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;?????? Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, ????, Meiryo, &amp;quot;?? ?????&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;p class=&quot;zI7 iyn Hsu&quot;&gt;&lt;p class=&quot;CloseupTitleCard&quot; style=&quot;color: rgb(68, 68, 68); font-weight: 700;&quot;&gt;&lt;p class=&quot;KO4 zI7 iyn Hsu&quot; style=&quot;margin-top: 16px;&quot;&gt;&lt;p data-test-id=&quot;rich-pin-information&quot; itemscope=&quot;&quot; itemtype=&quot;https://schema.org/Article&quot;&gt;&lt;div itemprop=&quot;name&quot;&gt;&lt;a class=&quot;Wk9 CCY S9z eEj kVc xQ4 iyn&quot; href=&quot;https://mehndidresses.pk/kashees-boutique-bridal-mehndi-dresses-designs/&quot; rel=&quot;noopener noreferrer nofollow&quot; target=&quot;_blank&quot; style=&quot;color: rgb(68, 68, 68); transition: transform 85ms ease-out 0s; text-decoration-line: none; display: block; border-radius: 0px;&quot;&gt;&lt;h1 class=&quot;lH1 dyH iFc H2s GTB O2T zDA IZT&quot; style=&quot;margin-bottom: 0px; color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-500); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-semibold); overflow-wrap: break-word;&quot;&gt;&lt;br&gt;&lt;/h1&gt;&lt;div class=&quot;XiG zI7 iyn Hsu&quot; style=&quot;position: relative; display: inline;&quot;&gt;&lt;div class=&quot;NVN CRJ zI7 iyn Hsu&quot; style=&quot;clip: rect(0px, 0px, 0px, 0px); border: 0px; clip-path: inset(50%); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; white-space: nowrap; width: 1px;&quot;&gt;; Opens a new tab&lt;/p&gt;&lt;/p&gt;&lt;/a&gt;&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;p class=&quot;jzS ujU un8 C9i TB_&quot; style=&quot;display: flex; margin-bottom: 0px; flex-direction: column; flex: 1 1 auto; min-height: 0px; min-width: 0px; color: rgb(33, 25, 34); font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Fira Sans&amp;quot;, &amp;quot;Droid Sans&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;?????? Pro W3&amp;quot;, &amp;quot;Hiragino Kaku Gothic Pro&amp;quot;, ????, Meiryo, &amp;quot;?? ?????&amp;quot;, Arial, sans-serif, &amp;quot;Apple Color Emoji&amp;quot;, &amp;quot;Segoe UI Emoji&amp;quot;, &amp;quot;Segoe UI Symbol&amp;quot;; font-size: 12px;&quot;&gt;&lt;p class=&quot;dLb hs0 un8 C9i TB_&quot; style=&quot;display: flex; margin-bottom: 0px; flex-direction: row; align-items: baseline;&quot;&gt;&lt;p class=&quot;zI7 iyn Hsu&quot; style=&quot;max-width: 444px;&quot;&gt;&lt;span class=&quot;richPinInformation&quot; data-test-id=&quot;richPinInformation-description&quot;&gt;&lt;p class=&quot;KO4 RDc zI7 iyn Hsu&quot; style=&quot;margin-top: 16px; margin-bottom: 16px;&quot;&gt;&lt;p data-test-id=&quot;truncated-description&quot; class=&quot;XiG ujU zI7 iyn Hsu&quot; style=&quot;position: relative; flex: 1 1 auto; min-height: 0px; min-width: 0px;&quot;&gt;&lt;div class=&quot;tBJ dyH iFc sAJ O2T zDA IZT swG CKL&quot; style=&quot;color: var(--color-text-default); -webkit-font-smoothing: antialiased; font-size: var(--font-size-300); font-family: var(--font-family-default-latin); font-weight: var(--font-weight-normal); overflow-wrap: break-word; -webkit-box-orient: vertical; display: -webkit-box; max-width: 100%; overflow: hidden; word-break: break-word; -webkit-line-clamp: 3;&quot;&gt;Kashee\'s is a famous beauty parlour and boutique dress designer in Pakistan. His complete and fully equipped.&lt;/p&gt;&lt;/p&gt;&lt;/p&gt;&lt;/span&gt;&lt;/p&gt;&lt;/p&gt;&lt;/div&gt;', '1684516698kasheesdress3.jpg', 4, NULL, 0, 1),
(38, '6467affa7c960', 11, 28, 14, 'kashee\'s  Bridal Dress', '62999', '&lt;span style=&quot;color: rgb(34, 34, 34); font-family: &amp;quot;Work Sans&amp;quot;, sans-serif; font-size: 16px; text-align: justify;&quot;&gt;Kashees makeup and dresses are very famous in Pakistan as well as worldwide. Kashees fashion boutique is trending nowadays with new style dresses and is the right place for the brides. He is skilled in every type of dressing including lehengas, frocks, walima dresses, Mehendi, and Barat dresses, etc&lt;/span&gt;', '1684516858kasheesdress4.jpg', 6, NULL, 0, 1),
(39, '6467b0c4eb388', 11, 29, 19, 'CK Girls Watch', '2200', '&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;HIGH CLASS CALVIN KLEIN GIRLS WATCH&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;BRASS JEWELRY&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;GOOD LOOKING CK DOUBLE SHADE DIAL&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;GOOD QUALITY&lt;/span&gt;&lt;br style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: &amp;quot;Work Sans&amp;quot;, Arial, sans-serif;&quot;&gt;AMAZING EID PRICE&lt;/span&gt;', '1684517060ckwatch1.jpg', 36, NULL, 0, 1),
(40, '6467b1dde76e1', 11, 29, 19, 'Women Wrist watch', '1966', '&lt;span style=&quot;color: rgb(25, 25, 25); font-family: Skin-market-sans;&quot;&gt;New with tags: A brand-new, unused, unworn and undamaged item in the original packaging (such as the original box or bag) and/or with the original tags attached.&lt;/span&gt;', '1684517341ckwatch2.jpg', 11, NULL, 0, 1),
(41, '6467b2e2af74e', 11, 29, 19, 'Kiev Swatch Clock Bracelet', '2888', '&lt;span style=&quot;color: rgb(0, 0, 0); font-family: roboto, arial, &amp;quot;sans-serif&amp;quot;; font-size: 13px; text-align: center;&quot;&gt;Kiev Swatch Clock Bracelet, Anne Klein ladies watches bracelet watch white, watch Accessory Best Quality With Special 10% OFF&lt;/span&gt;', '1684571594ckwatch3.jpg', 14, NULL, 0, 1),
(42, '6467b4261c154', 11, 29, 19, 'Women Watch With Baracelet', '1693', '&lt;a rel=&quot;noopener&quot; target=&quot;_blank&quot; href=&quot;https://www.google.com/url?sa=i&amp;amp;url=https%3A%2F%2Fwww.aliexpress.com%2Fitem%2F1005002989482439.html&amp;amp;psig=AOvVaw1FqWnIcZZ4wCPVbhUG3fXO&amp;amp;ust=1684603239652000&amp;amp;source=images&amp;amp;cd=vfe&amp;amp;ved=0CBMQjhxqFwoTCPDp48rygf8CFQAAAAAdAAAAABAy&quot; jsaction=&quot;focus:trigger.HTIQtd;mousedown:trigger.HTIQtd;touchstart:trigger.HTIQtd;&quot; data-ved=&quot;0CBMQjhxqFwoTCPDp48rygf8CFQAAAAAdAAAAABAy&quot; class=&quot;cqCFac mKq8g&quot; rlhc=&quot;1&quot; style=&quot;-webkit-tap-highlight-color: transparent; text-decoration-line: none; color: rgb(32, 33, 36); align-items: center; display: flex; flex: 1 1 auto; padding-top: 16px; font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);&quot;&gt;&lt;h1 class=&quot;n9H6p cS4Vcb-pGL6qe-fwJd0c&quot; style=&quot;-webkit-tap-highlight-color: transparent; font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 18px; line-height: 24px; flex: 1 1 auto; margin-bottom: 0px; overflow: hidden; text-decoration-line: none; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;&quot;&gt;Luxury Ladies Watch Bracelet Rose Gold Elegant Full Diamond Women Watches Fashion Casual.&lt;/h1&gt;&lt;/a&gt;', '1684517926ckwatch4.jpg', 20, NULL, 0, 1),
(43, '6467b4c92ef15', 11, 29, 19, 'CK Girls Gold Watch', '2145', '&lt;a rel=&quot;noopener&quot; target=&quot;_blank&quot; href=&quot;https://www.aliexpress.com/item/1005002989482439.html&quot; jsaction=&quot;focus:trigger.HTIQtd;mousedown:trigger.HTIQtd;touchstart:trigger.HTIQtd;&quot; data-ved=&quot;0CBMQjhxqFwoTCPDp48rygf8CFQAAAAAdAAAAABA5&quot; class=&quot;cqCFac mKq8g&quot; style=&quot;-webkit-tap-highlight-color: transparent; color: rgb(32, 33, 36); align-items: center; display: flex; flex: 1 1 auto; padding-top: 16px; font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small; background-color: rgb(255, 255, 255);&quot;&gt;&lt;h1 class=&quot;n9H6p cS4Vcb-pGL6qe-fwJd0c&quot; style=&quot;-webkit-tap-highlight-color: transparent; font-family: &amp;quot;Google Sans&amp;quot;, arial, sans-serif; font-size: 18px; line-height: 24px; flex: 1 1 auto; margin-bottom: 0px; overflow: hidden; text-decoration-line: none; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;&quot;&gt;Luxury Ladies Watch Bracelet Rose Gold Elegant Full Diamond Women Watches Fashion Casual.&lt;/h1&gt;&lt;/a&gt;', '1684518089ckwatch5.jpg', 16, NULL, 0, 1),
(44, '6467b5839f0f2', 11, 29, 19, 'Golden &amp; Silver Women Watch', '3555', '&lt;font face=&quot;Google Sans, arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Luxury Brand Diamond Women Watches Gold Watch Ladies Wrist Watches Rhinestone Women\'s Baracelet.&lt;/span&gt;&lt;/font&gt;&lt;br&gt;', '1684518275ckwatch6.jpg', 13, NULL, 0, 1),
(45, '6467b9c47aea5', 11, 30, 18, 'Women Hair Straightener', '6789', '&lt;font face=&quot;Google Sans, arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Straightener Prestige With SenseIQ I&amp;nbsp; Philips&lt;/span&gt;&lt;/font&gt;&lt;br&gt;', '1684519364philipshair1.jpg', 10, NULL, 0, 1),
(46, '6467ba5696803', 11, 30, 18, 'Hair Dryer', '4566', '&lt;p class=&quot;a-section a-spacing-base brand-snapshot-flex-row&quot; style=&quot;margin-bottom: 22px; position: relative; display: flex; flex-flow: row nowrap; align-items: center; color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://m.media-amazon.com/images/I/01S5bawZYgL.png&quot; class=&quot;brand-snapshot-item-image&quot; height=&quot;18&quot; width=&quot;18&quot; style=&quot;vertical-align: top; margin-right: 8px; max-width: 100%;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px;&quot;&gt;91% positive ratings from 100K+ customers&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;a-section a-spacing-base brand-snapshot-flex-row&quot; style=&quot;margin-bottom: 22px; position: relative; display: flex; flex-flow: row nowrap; align-items: center; color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://m.media-amazon.com/images/I/01S5bawZYgL.png&quot; class=&quot;brand-snapshot-item-image&quot; height=&quot;18&quot; width=&quot;18&quot; style=&quot;max-width: 100%; vertical-align: top; margin-right: 8px;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px;&quot;&gt;100K+ recent orders from this brand&lt;/p&gt;&lt;/p&gt;&lt;p class=&quot;a-section a-spacing-base brand-snapshot-flex-row&quot; style=&quot;margin-bottom: 0px; position: relative; display: flex; flex-flow: row nowrap; align-items: center; color: rgb(15, 17, 17); font-family: Arial, sans-serif;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;https://m.media-amazon.com/images/I/01S5bawZYgL.png&quot; class=&quot;brand-snapshot-item-image&quot; height=&quot;18&quot; width=&quot;18&quot; style=&quot;max-width: 100%; vertical-align: top; margin-right: 8px;&quot;&gt;&lt;p style=&quot;padding: 0px; margin-bottom: 0px;&quot;&gt;9+ years on Amazon&lt;/p&gt;&lt;/p&gt;', '1684519510philipshair2.jpg', 11, NULL, 0, 1),
(47, '6467baf3af49a', 11, 30, 18, 'Philips StyleCare Multi-Styler', '5567', '&lt;p style=&quot;margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &amp;quot;Red Hat Display&amp;quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(0, 0, 0);&quot;&gt;Every day a different look! From to perfectly polished, straight and curly hair to updos and more, create more than 10 styles with the new Philips Multi-Styler with style guide.&lt;/p&gt;&lt;ul class=&quot;a-unordered-list a-vertical a-spacing-none&quot; style=&quot;padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: &amp;quot;Red Hat Display&amp;quot;, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; list-style-type: disc; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(0, 0, 0);&quot;&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;Cool tip for easier and safer use&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;Protective ceramic coating and protective ceramic coating&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;Hair straightener plus curler&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;One click technology for quick and easy attachment changing&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;Click on your style&lt;/span&gt;&lt;/li&gt;&lt;li class=&quot;a-spacing-small&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;&lt;span class=&quot;a-list-item a-size-base&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px;&quot;&gt;Style guide and 3 useful hair accessories for 10 plus styles&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;', '1684519667philipshair3.jpg', 7, NULL, 0, 1),
(48, '6467bbf68481a', 11, 30, 18, 'Hair Brush', '8800', 'PHILIPS BHH880 Heated Hair Straightening Brush.', '1684519926philipshair4.jpg', 7, NULL, 0, 1),
(50, '6467bcfadcaa0', 11, 30, 18, 'Hair Dryer Brush', '4677', '&lt;span style=&quot;font-family: Skin-market-sans; font-size: 18px; font-weight: 700;&quot;&gt;Olivia Garden Pro Thermal Anti-Static Hair Brush.&lt;/span&gt;', '1684520186philipshair5.jpg', 27, NULL, 0, 1),
(51, '646886bc9fdc7', 11, 25, 14, 'Kashees Earings', '3467', 'kashees jewellery for Sale,Up To OFF 75%&lt;br&gt;', '1684571836kasheesearings8.jpg', 35, NULL, 0, 1),
(52, '646887255b169', 11, 25, 14, 'Kashees Pink Earings', '1788', 'Best Bridal Jewelry Set Ideas 2023 - Pakistani Pret Wear&lt;br&gt;', '1684571941kasheesearing9.jpg', 48, NULL, 0, 1),
(53, '646898e7d302e', 11, 25, 17, 'Diamond Set', '2577', '&lt;span style=&quot;color: rgb(15, 20, 25); font-family: TwitterChirp, -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap; background-color: rgba(0, 0, 0, 0.03);&quot;&gt;Exuberant arrangements of gemstones draw inspiration from the captivating beauty of a kaleidoscope.&lt;/span&gt;', '1684576487harrywinstonset1.jpg', 26, NULL, 0, 1),
(54, '646899a570281', 11, 25, 17, 'Sliver Jwellery Set', '7866', '&lt;p&gt;&lt;span style=&quot;font-size: 12.5px;&quot;&gt;&lt;u&gt;&amp;nbsp;Luxuries Jewelry Set for Her Majesty Queen, High Jewelry Design by Van Cleef and Arpels, Harry Winston, Cartier, Royal Blue Diamond Necklace, Hyper detailed, Ultra Realistic, Cinematic, Octane Render, HD, HQ, 8k&lt;/u&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '1684576677harrywinstonset2.jpg', 20, NULL, 0, 1),
(55, '646899d269c3f', 11, 25, 17, 'Jwellery Set', '4567', '&amp;nbsp;Luxuries Jewelry Set for Her Majesty Queen, High Jewelry Design by Van Cleef and Arpels, Harry Winston, Cartier, Royal Blue Diamond Necklace, Hyper detailed, Ultra Realistic, Cinematic, Octane Render, HD, HQ, 8k', '1684576722harrywinstonset3.jpg', 22, NULL, 0, 1),
(56, '64689a4bd4719', 11, 20, 20, 'Derma Shine Facial', '1245', '&lt;p style=&quot;margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;&quot;&gt;Derma Shine Facial Kit fights premature aging of skin and offers an instant glow and tightening to the skin. It rejuvenates and hydrates the skin, it also improves skins metabolism, helps in absorption of active ingredients, and hydrates and detoxifies skin.&lt;/p&gt;&lt;p style=&quot;margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &amp;quot;Segoe UI&amp;quot;, Roboto, Oxygen-Sans, Ubuntu, Cantarell, &amp;quot;Helvetica Neue&amp;quot;, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;&quot;&gt;100%&amp;nbsp;cruelty free&lt;br&gt;All Skin Types&lt;/p&gt;', '1684576843dermashinefacial1.jpg', 18, NULL, 0, 1),
(57, '64689a9d7443b', 11, 20, 20, 'Derma Shine Peach  Facial', '2233', '&lt;span style=&quot;color: rgb(32, 33, 36); font-family: arial, sans-serif;&quot;&gt;Derma Shine Facial Kit fights premature aging of skin and offers an instant glow and tightening to the skin. It rejuvenates and hydrates the skin,&lt;/span&gt;', '1684576925dermashinefacial2.jpg', 20, NULL, 0, 1),
(58, '64689b0520542', 11, 20, 20, 'Derma Shine Face Wash', '1233', 'Derma Shine Fruit Facial Kit ( 200 ML Tubes ): Buy Online at Best Prices in Pakistan&lt;br&gt;', '1684577029dermashinefacial3.jpg', 16, NULL, 0, 1),
(59, '64689b73c053e', 11, 20, 20, 'Derma Shine Facials', '3344', '&amp;nbsp; Derma Shine Morning Burst Facial Wash 200ml in Pakistan | Original with Money Back Guarantee&lt;br&gt;', '1684577139dermashinefacial4.jpg', 14, NULL, 0, 1),
(60, '64689c5b2fbe4', 11, 20, 24, 'Garnier Skin Care', '700', 'Garnier Skin Care For Womens', '1684577371garineer1.jpg', 28, NULL, 0, 1),
(61, '64689cb4b8e6f', 11, 20, 24, 'Garnier Black  Skin Care', '687', 'Garnier Black Skin Care With Best Quality&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '1684577460garineer2.jpg', 17, NULL, 0, 1),
(62, '64689d37ac7c4', 11, 22, 10, 'Sandal', '3333', 'Stylo Sandals is Best Quality', '1684577591Sandals1.jpeg', 21, NULL, 0, 1),
(63, '64689da482436', 11, 22, 10, 'Sandals', '7700', 'Best Qualitay Sandals', '1684583709Sandals2.png', 29, NULL, 0, 1),
(64, '64689e109958d', 11, 22, 10, 'Black Women Sandal', '6500', 'Women Sandal', '1684577808Sandals3.jpeg', 21, NULL, 0, 1),
(65, '6468b74a5847c', 11, 23, 16, 'Womens Purfume', '1788', 'Huda Beauty Kayali Vanilla 28 Eau De Parfum - 100ml', '1684584266hudapurfume1.jpg', 11, NULL, 0, 1),
(66, '6468b8242c0dd', 11, 23, 16, 'Purfume', '3699', '&amp;nbsp;Huda Beauty\'s Kayali Perfume Launches Bestseller Set In Singapore | TheBeauLife', '1684584484hudapurfume2.jpg', 10, NULL, 0, 1),
(67, '6468b86869428', 11, 23, 16, 'Women purfumes', '4578', '&amp;nbsp;Huda Beauty\'s Kayali Perfume Launches Bestseller Set In Singapore | TheBeauLife', '1684584552hudapurfume3.jpg', 13, NULL, 0, 1),
(68, '6468b94f73b54', 11, 24, 15, 'Purely Foundation', '1500', 'Miss Rose Purely Natural Foundation', '1684584783missrosemakeup1.jpg', 50, NULL, 0, 1),
(69, '6468b9cc3d7c3', 11, 24, 15, 'Profeffessional   Blush', '1200', '&amp;nbsp;MISS ROSE Professional Blush&lt;br&gt;', '1684584908missrosemakeup2.jpg', 41, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_cart`
--

CREATE TABLE `product_cart` (
  `s_no` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_cat_title` varchar(100) NOT NULL,
  `cat_parent` int(11) NOT NULL,
  `cat_products` int(11) NOT NULL DEFAULT 0,
  `show_in_header` tinyint(4) NOT NULL DEFAULT 1,
  `show_in_footer` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`sub_cat_id`, `sub_cat_title`, `cat_parent`, `cat_products`, `show_in_header`, `show_in_footer`) VALUES
(19, 'Laptops', 9, 2, 0, 0),
(21, 'Creams', 11, 0, 0, 1),
(20, 'Facials', 11, 6, 0, 1),
(18, 'Mobiles', 9, 2, 0, 0),
(22, 'Sandals', 11, 3, 0, 1),
(23, 'Perfumes', 11, 3, 0, 1),
(24, 'Makeup', 11, 3, 0, 1),
(25, 'Jewelry', 11, 14, 0, 1),
(26, 'Bags', 11, 4, 0, 1),
(27, 'Kurti\'s', 11, 9, 0, 1),
(28, 'Dresses', 11, 8, 0, 1),
(29, 'Watches', 11, 6, 0, 1),
(30, 'Hair Accessories', 11, 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `user_role` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `username`, `email`, `password`, `mobile`, `address`, `city`, `user_role`) VALUES
(2, 'user12', 'user', 'user@gmail.com', '', '24c9e15e52afc47c225b757e7bee1f9d', '9856231042', '#1234', 'delhi', 1),
(3, 'user2', 'user last', 'user2@gmail.com', '', '7e58d63b60197ceb55a1c487989a3720', '9999999999', '#kdjfg s gfd gdfjgkdsf gsdfkgjk', 'Delhi', 1),
(4, 'user3', 'user last', 'user3@gmail.com', '', '92877af70a45fd6a2ed7fe81e1236b78', '9999999999', '#hsd sdfsd fs df asdf', 'dsf asdf a', 1),
(5, 'user testing', 'user last', 'user4@gmail.com', '', '3f02ebe3d7929b091e3d8ccfde2f3bc6', '999999999', '#dsjg sdf sd f', 'dskfs f aslkf', 1),
(6, 'sadsadsa', 'sdsadsa', 'hh@gmail.com', '', '5e36941b3d856737e81516acd45edc50', '999999999', 'dsfsd fs', 'sdf a', 1),
(7, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user5@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(8, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(9, 'dsf sdfsd safasd', 'sdd fsdfsadf', 'user51s@gmail.com', '', '0a791842f52a0acfbb3a783378c066b8', '9999999999', 'dsf adfasd', 'dsafsadf', 1),
(10, 'sfnsdfbsd', 'sdfasdfsa', 'useryusdfnds@gmail.com', '', 'ba407c68e2448c005ee7459f89dd3e63', '9999999999', '#d dsfh', 'dsfdsf', 1),
(11, 's ds ad', 'sad sad', 'rti@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(12, 's ds ad', 'sad sad', 'rtis@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(13, 's ds ad', 'sad sad', 'rtisf@gmail.com', '', '620dc68bbfc5d7654e44817a8d3b2cdf', '9999999999', '#fg', 'adsad', 1),
(14, 'final user', 'user last', 'userf@gmail.com', '', 'add5092c13fbcc5cceaf1fdb98411871', '9999999999', 'lcnsd', 'dsfs df', 1),
(15, 'Noor Muhammad', 'Soomro', 'noorsoomro2006@gmail.com', '', 'Noor', '3184944194', 'C-9 House Sindh Green Colony', 'Larkana', 1),
(16, 'M Faisal', 'Soomro', 'soomromfaisal01@gmail.com', '', 'f4668288fdbf9773dd9779d412942905', '313579879', 'SINDH GREEN', 'Larkana', 1),
(17, 'Aptech', 'Students', 'aptechstudent@gmail.com', '', 'c56481008a2257d3fab36fbf5720a2e6', '01222222290', 'Sindh Green', 'Larkana', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_cart`
--
ALTER TABLE `product_cart`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_cart`
--
ALTER TABLE `product_cart`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
