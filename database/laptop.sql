-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220918.6792b17e72
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2022 at 01:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laptop2`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `address`, `phone`, `email`, `User`, `password`) VALUES
(9, 'Viet', 'Cau Ngang, Tra Vinh', '0868224463', 'viet@gmail.com', 'Viet', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Tran Hoang Viet', 'Cau Ngang, Tra Vinh', '0868224463', 'viethoangtv84@gmail.com', 'viet123', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `account_admin`
--

CREATE TABLE `account_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `User` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Matk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_admin`
--

INSERT INTO `account_admin` (`id`, `name`, `address`, `phone`, `email`, `User`, `password`, `Matk`) VALUES
(2, 'Tran Hoang Viet', 'Cau Ngang, Tra Vinh', '0868224463', 'vietb1910482@student.ctu.edu.vn', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1),
(9, 'abc', 'Soc Trang', '0963237091', 'viet1@gmail.com', 'abc', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brandId`, `brandName`) VALUES
(2, 'DELL'),
(3, 'ASUS'),
(4, 'Lenovo'),
(5, 'MacBook'),
(7, 'HP'),
(8, 'Logitech'),
(9, 'Razer'),
(10, 'CORSAIR'),
(11, 'MSI'),
(12, 'ACER');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_remain` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `catName`) VALUES
(1, 'LapTop ACER'),
(2, 'LapTop ASUS'),
(9, 'Laptop Macbook'),
(10, 'Laptop HP'),
(11, 'Chuột'),
(12, 'Bàn phím'),
(13, 'Tai nghe'),
(14, 'Ghế gaming'),
(16, 'Laptop DELL');

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE `item_rating` (
  `ratingId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Block, 0 = Unblock'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhap_hang`
--

CREATE TABLE `nhap_hang` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_cus`
--

CREATE TABLE `order_cus` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `customer_id`, `Name`, `adress`, `quantity`, `total`, `date_time`) VALUES
(17, 9, 'Viet', 'Cau Ngang, Tra Vinh', 1, 35030000, '2022-12-01 01:29:00'),
(18, 9, 'Viet', 'Cau Ngang, Tra Vinh', 1, 26030000, '2022-12-01 01:41:17'),
(19, 10, 'Tran Hoang Viet', 'Cau Ngang, Tra Vinh', 1, 30030000, '2022-12-01 16:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `image1`, `image2`, `image3`) VALUES
(10, 'Laptop Asus Zenbook UX333FA-A4181T ĐỎ', 'UX333FA', '20', '1', '39', 2, 2, '<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; font-weight: bold;\">Si&ecirc;u phẩm c&ocirc;ng nghệ Asus ZenBook UX333FA đ&atilde; c&oacute; th&ecirc;m phi&ecirc;n bản m&agrave;u mới Đỏ Burgundy sang trọng, t&ocirc;n th&ecirc;m sự cao cấp v&agrave; độc đ&aacute;o cho tuyệt t&aacute;c thiết kế laptop.</span></p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px; font-weight: bold;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-weight: 400; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-1.jpg\" alt=\"\" /></span></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Chiếc laptop nhỏ gọn nhất m&agrave; bạn từng thấy</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Asus ZenBook 13 UX333FA ch&iacute;nh l&agrave; sự khởi đầu cho một kỷ nguy&ecirc;n mới, kỷ nguy&ecirc;n của những sản phẩm si&ecirc;u di động. Với m&agrave;n h&igrave;nh viền si&ecirc;u mỏng NanoEdge ở cả 4 cạnh, ZenBook 13 inch c&oacute; k&iacute;ch thước chỉ tương đương một cuốn s&aacute;ch mặc d&ugrave; vẫn sở hữu m&agrave;n h&igrave;nh ti&ecirc;u chuẩn 13,3 inch. Tr&ecirc;n thực tế, ZenBook 13 inch c&ograve;n nhỏ hơn cả tờ giấy A4 m&agrave; ch&uacute;ng ta từng thấy v&agrave; dễ d&agrave;ng mang đi bất cứ đ&acirc;u khi trọng lượng chỉ vỏn vẹn 1,09kg.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-2.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Phi&ecirc;n bản m&agrave;u đỏ cao cấp v&agrave; nghệ thuật</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Tất cả đều bất ngờ khi nh&igrave;n v&agrave;o viền m&agrave;n h&igrave;nh si&ecirc;u mỏng NanoEdge mới tr&ecirc;n ZenBook 13. Cả bốn phần viền m&agrave;n h&igrave;nh đều được l&agrave;m mỏng đến tối đa, mang tới một tuyệt t&aacute;c về thiết kế v&agrave; một m&agrave;n h&igrave;nh hiển thị v&ocirc; c&ugrave;ng ấn tượng. Bạn c&oacute; được hiệu ứng thị gi&aacute;c m&atilde;n nh&atilde;n khi trước mắt l&agrave; m&agrave;n h&igrave;nh 13,3 inch Full HD sắc n&eacute;t v&agrave; kh&ocirc;ng bị g&ograve; b&ograve; bởi phần viền m&agrave;n h&igrave;nh. Đồng thời ch&iacute;nh việc viền m&agrave;n h&igrave;nh mỏng đ&atilde; gi&uacute;p cho Asus ZenBook 13 UX333FA trở th&agrave;nh chiếc laptop 13 inch nhỏ nhất thế giới hiện tại. Hơn nữa, phi&ecirc;n bản m&agrave;u Đỏ Burgundy mới tăng th&ecirc;m phần cao cấp v&agrave; kh&aacute;c biệt d&agrave;nh ri&ecirc;ng cho bạn. Chiếc laptop ZenBook 13 UX333FA m&agrave;u đỏ sẽ l&agrave;m tất cả phải trầm trồ.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-3.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Bản lề ErgoLift đầy s&aacute;ng tạo</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Bản lề ErgoLift l&agrave; bước s&aacute;ng tạo đơn giản nhưng mang tới hiệu quả rất lớn. Nhờ bản lề ErgoLift độc quyền m&agrave; Zenbook 13 c&oacute; thể c&oacute; phần viền m&agrave;n h&igrave;nh cạnh dưới mỏng hơn, đồng thời việc nghi&ecirc;ng nhẹ b&agrave;n ph&iacute;m cũng khiến cảm gi&aacute;c g&otilde; thoải m&aacute;i hơn. Kh&ocirc;ng hề c&oacute; sự ngẫu nhi&ecirc;n m&agrave; tất cả đều được t&iacute;nh to&aacute;n cẩn thận để độ nghi&ecirc;ng tối ưu cho trải nghiệm g&otilde; ph&iacute;m cũng như cải thiện hiệu suất l&agrave;m m&aacute;t v&agrave; &acirc;m thanh.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-4.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Hiệu năng kh&ocirc;ng giới hạn</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Được thiết kế để phục vụ cho sự s&aacute;ng tạo của bạn, ZenBook 13 kh&ocirc;ng hề hy sinh hiệu năng để c&oacute; được kiểu d&aacute;ng mỏng như đ&atilde; thấy. M&aacute;y được trang bị bộ vi xử l&yacute; Intel Core i5 &ndash; 8265U mạnh mẽ, c&ugrave;ng với 8GB RAM v&agrave; 256GB ổ cứng SSD cao cấp. Đ&acirc;y đều l&agrave; c&aacute;c linh kiện mới nhất, mang đến chất lượng cao v&agrave; hiệu năng cao để bạn kh&ocirc;ng phải chờ đợi trong c&ocirc;ng việc. Mọi thao t&aacute;c của bạn, d&ugrave; l&agrave; c&ocirc;ng việc hay giải tr&iacute; đều được thực hiện một c&aacute;ch mượt m&agrave; tr&ecirc;n Asus ZenBook 13 UX333FA.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-5.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Kết nối kh&ocirc;ng d&acirc;y si&ecirc;u tốc</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">L&agrave; một thiết bị si&ecirc;u di động, ZenBook 13 cần trang bị những kết nối kh&ocirc;ng d&acirc;y nhanh nhất c&oacute; thể. Chiếc laptop sở hữu c&ocirc;ng nghệ Wi-Fi Master v&agrave; gigabit-class Wi-Fi cho phạm vi cũng như tốc độ kết nối nhanh v&agrave; ổn định. Ngo&agrave;i ra, chuẩn Bluetooth 5.0 mới nhất gi&uacute;p bạn kết nối với c&aacute;c thiết bị ngoại vi hiệu quả, phục vụ tối ưu cho c&ocirc;ng việc.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-6.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Thời lượng pin cho cả ng&agrave;y năng động</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Asus ZenBook 13 UX333FA được cung cấp năng lượng bởi vi&ecirc;n pin dung lượng cao, sẵn s&agrave;ng cho cả ng&agrave;y l&agrave;m việc. Những ng&agrave;y l&agrave;m việc d&agrave;i hay những cuộc họp căng thẳng kh&ocirc;ng phải l&agrave; vấn đề khi ZenBook 13 c&oacute; thể hoạt động li&ecirc;n tục trong 14 giờ đồng hồ, để bạn lu&ocirc;n y&ecirc;n t&acirc;m d&ugrave; ở những nơi kh&ocirc;ng c&oacute; nguồn điện.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-8.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">B&agrave;n ph&iacute;m v&agrave; Touchpad đẳng cấp</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">B&agrave;n ph&iacute;m ZenBook 13 c&oacute; đ&egrave;n nền, mang tới trải nghiệm g&otilde; tuyệt vời nhờ bản lề ErgoLift v&agrave; h&agrave;nh tr&igrave;nh ph&iacute;m tối ưu 1,4mm. Cảm gi&aacute;c g&otilde; ph&iacute;m của bạn hết sức nhẹ nh&agrave;ng v&agrave; thanh tho&aacute;t. Trong khi đ&oacute; một b&agrave;n ph&iacute;m số cảm ứng được t&iacute;ch hợp ngay tr&ecirc;n b&agrave;n r&ecirc; chuột Touchpad gi&uacute;p bạn nhập số nhanh ch&oacute;ng hơn. Sự s&aacute;ng tạo được thể hiện tuyệt đối tr&ecirc;n chiếc laptop si&ecirc;u mỏng nhẹ.</p>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: center;\"><img style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: middle; background: 0px 0px; max-width: 100%; border-radius: 6px; width: 665px; height: auto !important;\" src=\"https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/asus-zenbook-ux333fa-red-7.jpg\" alt=\"\" /></p>\r\n<h3 style=\"box-sizing: inherit; margin: 0px 0px 8px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; font-family: Roboto, sans-serif; color: #212529; line-height: 24px; text-align: justify;\"><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; background: 0px 0px;\">Trải nghiệm &acirc;m thanh Harman Karrdon sống động</span></h3>\r\n<p style=\"box-sizing: inherit; margin: 0px 0px 16px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; background: 0px 0px #ffffff; color: #495057; line-height: 24px; font-family: Roboto, sans-serif; text-align: justify;\">Để tạo ra c&ocirc;ng nghệ &acirc;m thanh Asus SonicMaster thế hệ mới, Asus đ&atilde; l&agrave;m việc với những chuy&ecirc;n gia &acirc;m thanh từ h&atilde;ng nổi tiếng Harman Kardon. Kết quả l&agrave; bạn sẽ được tận hưởng những chất &acirc;m vượt trội cả về độ lớn lẫn độ chi tiết, mang lại &acirc;m thanh to hơn m&agrave; kh&ocirc;ng bị m&eacute;o tiếng. Sự kết hợp giữa phần cứng mạnh mẽ v&agrave; phần mềm th&ocirc;ng minh mang đến cho bạn trải nghiệm &acirc;m thanh tuyệt vời nhất.</p>', 1, '26000000', 'dd64c5aa73.jpg', 'dd64c5aa732.jpg', 'dd64c5aa7323.jpg', 'dd64c5aa7323d.png'),
(12, 'Laptop Asus ViVobook A512FA-EJ202T Bạc', 'A512FA', '20', '4', '21', 2, 3, '<p>Loai san pham gia re danh cho tan sinh vien</p>', 1, '16000000', 'e4543cfb11.jpg', 'e4543cfb11f.jpg', 'e4543cfb11f3.jpg', 'e4543cfb11f3f.jpg'),
(14, 'Laptop Dell Inspiron 7590 -(N7590)', 'N7590', '20', '1', '34', 1, 4, '<p>Sản phẩm c&oacute; hạn</p>\r\n<p><span style=\"text-decoration: underline;\"><strong>Ram:16g</strong></span></p>\r\n<p><span style=\"text-decoration: underline;\">Rom:512g</span></p>\r\n<p>&nbsp;</p>', 1, '35000000', '7d9528f6ac.jpg', '7d9528f6ac5.jpg', '7d9528f6ac57.jpg', '7d9528f6ac57f.jpg'),
(15, 'Laptop Apple Macbook Air 2017', 'MAR20', '20', '0', '25', 9, 5, '<ul class=\"parameter \">\r\n<li class=\"p106875 g92_94_93\">gfgdfg</li>\r\n<li class=\"p106875 g92_94_93\">fdfs</li>\r\n<li class=\"p106875 g92_94_93\">da</li>\r\n</ul>', 1, '20990000', '0467f07616.jpg', '0467f076167.jpg', '0467f0761675.jpg', '0467f07616751.jpg'),
(18, 'Laptop MacBook Pro Touch 16 inch 2019 i7 2.6GHz/16GB/512GB/4GB Radeon Pro 5300M (MVVJ2SA/A)', 'MVVJ2SA', '20', '0', '25', 9, 5, '<p>d</p>', 0, '59999000', '154ee30652.jpg', '154ee306521.jpg', '154ee3065211.jpg', '154ee30652117.jpg'),
(21, 'Laptop Dell Alienware 14 I7-4700MQ / RAM 8GB/ SSD 240GB/ GTX 765M/ 14 INCH FHD', '4700MQ ', '20', '1', '0', 1, 2, '<p>p</p>', 0, '13000000', 'c11c1311ce.jpg', 'c11c1311ce4.jpg', 'c11c1311ce43.jpg', 'c11c1311ce434.jpg'),
(22, 'Laptop Dell Inspiron 14 7490-6RKVN1 Bạc', '6RKVN1', '20', '45', '28', 16, 2, '<p>đẹp, tinh tế , sang trọng</p>', 1, '30000000', '597d5c9df7.png', '597d5c9df70.png', '597d5c9df70f.jpg', '597d5c9df70f2.png'),
(32, 'Laptop Asus VivoBook X509JA i3 1005G1/4GB/256GB/Win10 (EJ480T)', 'X509JA', '30', '6', '40', 2, 3, '<p>gdfgfd</p>', 1, '10690000', 'f0c0cb1bf4.jpg', 'f0c0cb1bf4f.jpg', 'f0c0cb1bf4fd.jpg', 'f0c0cb1bf4fdc.'),
(33, 'Laptop HP Envy 13 aq1057TX i7 10510U/8GB/512GB/2GB MX250/Win10 (8XS68PA)', '8XS68PA', '10', '1', '10', 10, 7, '<p>Laptop <a title=\"Xem th&ecirc;m c&aacute;c sản phẩm Hp Envy đang b&aacute;n tại Dienmayxanh.com\" href=\"https://www.dienmayxanh.com/laptop-hp-compaq-envy\" target=\"_blank\" rel=\"noopener\" type=\"Xem th&ecirc;m c&aacute;c sản phẩm Hp Envy đang b&aacute;n tại Dienmayxanh.com\">HP Envy</a> 13 aq1057TX c&oacute; thiết kế mỏng nhẹ, cơ động được l&agrave;m từ kim loại nguy&ecirc;n khối. Phần k&ecirc; tay c&oacute; họa tiết v&acirc;n gỗ độc đ&aacute;o đem đến c&aacute;i nh&igrave;n sang trọng hơn cho Envy 13.</p>\r\n<p>Th&acirc;n m&aacute;y mỏng chỉ <strong>14.7 mm</strong>, c&acirc;n nặng <strong>1.17 kg </strong>dễ d&agrave;ng đem theo b&ecirc;n m&igrave;nh đến bất cứ đ&acirc;u.</p>\r\n<p><img class=\"lazy\" style=\"display: block; opacity: 1;\" title=\"Laptop HP Envy 13 aq1057TX c&oacute; thiết kế mỏng nhẹ\" src=\"https://cdn.tgdd.vn/Products/Images/44/220503/hp-envy-13-i7-8xs68pa-thie%CC%82%CC%81tke%CC%82%CC%81.jpg\" alt=\"Laptop HP Envy 13 aq1057TX c&oacute; thiết kế mỏng nhẹ\" data-src=\"https://cdn.tgdd.vn/Products/Images/44/220503/hp-envy-13-i7-8xs68pa-thiếtkế.jpg\" /></p>', 1, '29490000', 'eaca9de9ac.jpg', 'eaca9de9aca.jpg', 'eaca9de9aca2.jpg', 'eaca9de9aca25.jpg'),
(35, 'Chuột gaming Logitech G502 HERO (Đen)', '1810470', '10', '0', '20', 11, 8, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Kiểu kết nối: C&oacute; d&acirc;y</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Cảm bi&ecirc;́n: HERO</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Đ&ocirc;̣ ph&acirc;n giải: 16000 DPI</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tốc độ phản h&ocirc;̀i: 1000 Hz (1ms)</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- M&agrave;u sắc: Đen</span></p>\r\n<div class=\"css-ftpi71\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 1rem; border: 0px; position: relative; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; height: 3.5rem; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div class=\"title css-1x5ixzd\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-image: initial; opacity: 1; color: #1b1d29; font-weight: bold; text-decoration: unset; font-size: 20px; line-height: 28px; overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: unset; max-width: unset; min-width: unset; transition: color 0.3s ease 0s; border: 1px none unset;\">M&ocirc; tả sản phẩm</div>\r\n</div>\r\n<div class=\"css-17aam1\" style=\"box-sizing: border-box; margin: 0px; padding: 1rem; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">\r\n<h2 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 20px; color: unset; padding: 0px; border: 0px;\"><a style=\"box-sizing: border-box; color: #0d6efd; margin: 0px; padding: 0px; border: 0px;\" href=\"https://phongvu.vn/c/chuot-may-tinh\">Chuột m&aacute;y t&iacute;nh</a>&nbsp;Logitech G502 HERO một sản phẩm cao cấp đ&aacute;p ứng tốt nhu cầu chinh chiến tr&ecirc;n &ldquo;đấu trường c&ocirc;ng l&yacute;&rdquo; của c&aacute;c game thủ. Thiết bị chuột n&agrave;y kh&ocirc;ng chỉ mang đến hiệu suất mạnh mẽ sản phẩm c&ograve;n sở hữu thiết kế gaming đầy c&aacute; t&iacute;nh. Sản phẩm n&agrave;y hứa hẹn sẽ mang đến cho người d&ugrave;ng những trải nghiệm tuyệt vời.</h2>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/19/20221019_23e22ff1-466b-4c82-b7d9-f6fcf338c0ab.png\" alt=\"Chuột m&aacute;y t&iacute;nh Logitech G502 HERO\" /></figure>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\">Thiết kế tỉ mỉ đến từng chi tiết, 11 n&uacute;t bẫm dễ d&agrave;ng thao t&aacute;c</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Logitech G502 HERO sở hữu vẻ ngo&agrave;i hiện đại với&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">t&ocirc;ng m&agrave;u đen</span>&nbsp;huyền b&iacute; mang hơi hướng gaming thu h&uacute;t. Thiết kế c&oacute; d&acirc;y c&ugrave;ng phần cầm nắm&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">viền cao su</span>&nbsp;cho trải nghiệm trắc tay dễ d&agrave;ng di chuyển. B&ecirc;n cạnh đ&oacute;, chuột c&ograve;n c&oacute; phần d&acirc;y bện với n&uacute;t buộc d&acirc;y kh&oacute;a nh&aacute;m gi&uacute;p bạn c&oacute; thể thu gọn phần d&acirc;y.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/19/20221019_31795efa-4ab7-416b-8b48-63ce6bbcc763.png\" alt=\"Chuột m&aacute;y t&iacute;nh Logitech G502 HERO | 11 n&uacute;t c&oacute; thể lập t&igrave;nh\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Chuột m&aacute;y t&iacute;nh nh&agrave; Logitech hỗ trợ phần mềm tr&ograve; chơi&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">HUB G</span>&nbsp;cho khả năng tối ưu h&oacute;a v&agrave; t&ugrave;y chỉnh c&aacute;c thiết bị trong đ&oacute; c&oacute; c&aacute;c lệnh v&agrave; macro với tối đa&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">11 n&uacute;t bấm</span>. Chỉ với thao t&aacute;c ng&oacute;n tay dễ d&agrave;ng bạn c&oacute; thể thực hiện c&aacute;c t&aacute;c từ di chuyển, thiết kế, đến chơi game với hiệu suất cao.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\">Trọng lượng gọn nhẹ, đ&ocirc;̣ ph&acirc;n giải (CPI/DPI) 16000DPI</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Chuột m&aacute;y t&iacute;nh Logitech c&oacute; khối lượng kh&aacute; gọn nhẹ v&igrave; thế bạn c&oacute; thể mang theo b&ecirc;n m&igrave;nh dễ d&agrave;ng. Ngo&agrave;i ra, sản phẩm nh&agrave;&nbsp; Logitech c&ograve;n mang đến t&iacute;nh năng tinh chỉnh cảm gi&aacute;c v&agrave; thao t&aacute;c trượt theo &yacute; muốn của bạn.&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">Cảm biến HERO G502</span>&nbsp;cho ph&eacute;p điều chỉnh với nhiều c&aacute;ch như ph&iacute;a trước, sau, b&ecirc;n tr&aacute;i, phải hay trung t&acirc;m cho bạn những trải nghiệm ưng &yacute;.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/19/20221019_a1be2154-203b-4798-adc0-b50dd40f3689.png\" alt=\"Chuột m&aacute;y t&iacute;nh Logitech G502 HERO | Khối lượng gọn nhẹ\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Logitech G502 c&ograve;n g&acirc;y ấn tượng bởi&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">đ&ocirc;̣ ph&acirc;n giải (CPI/DPI) l&ecirc;n đến 16000DPI</span>. Đ&acirc;y l&agrave; th&ocirc;ng số độ ph&acirc;n giải quang học thể hiện sự nhanh nhạy trong l&uacute;c sử dụng. Với th&ocirc;ng số n&agrave;y sẽ đ&aacute;p ứng được nhu cầu về gaming hay những c&ocirc;ng việc thiết kế đồ họa đặc th&ugrave;.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/19/20221019_29e3fd85-cae9-4e62-b125-b7c8811a7659.png\" alt=\"Chuột m&aacute;y t&iacute;nh Logitech G502 HERO | Cảm biến hero\" /></figure>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\">Dạng cảm bi&ecirc;́n Optical, c&ocirc;ng nghệ Lightsync cung cấp RGB thế hệ mới</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Một sản phẩm chuột m&aacute;y t&iacute;nh chất lượng sẽ mang đến độ ch&iacute;nh x&aacute;c c&ugrave;ng độ nhạy cao. Chuột m&aacute;y t&iacute;nh Logitech với dạng&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">cảm biến Optical</span>&nbsp;hiện đại sẽ mang đến cho bạn những trải nghiệm ấn tượng. Hoạt động với c&aacute;ch thức sử dụng &aacute;nh s&aacute;ng qua thấu k&iacute;nh để nhận biết c&aacute;c chuyển động&nbsp; từ đ&oacute; cho độ ch&iacute;nh x&aacute;c cao kể cả khi bạn di chuyển li&ecirc;n tục.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/19/20221019_e47c42fa-37b9-4b0c-9002-c222c084009a.png\" alt=\"Chuột m&aacute;y t&iacute;nh Logitech G502 HERO | Cảm biến optical\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Logitech G502 HERO c&ograve;n được đ&ocirc;ng đảo c&aacute;c game thủ y&ecirc;u th&iacute;ch bởi hệ thống đ&egrave;n&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">LED RGB</span>&nbsp;thế hệ mới.&nbsp;<span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">C&ocirc;ng nghệ Light Sync</span>&nbsp;cho bạn những trải nghiệm chiếu s&aacute;ng sống động kết hợp c&ugrave;ng chuyển động &acirc;m thanh. Cơ chế tự động điều chỉnh gi&uacute;p bạn dễ d&agrave;ng t&ugrave;y chỉnh theo &yacute; muốn tạo ra phong c&aacute;ch ri&ecirc;ng m&igrave;nh.</p>\r\n</div>\r\n</div>', 1, '1149000', '950978f3c2.jpg', '950978f3c24.jpg', '950978f3c24a.jpg', '950978f3c24a6.jpg'),
(36, 'Chuột gaming Logitech G403 Hero', '190800197', '10', '0', '10', 11, 8, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Kiểu kết nối: C&oacute; d&acirc;y</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Dạng cảm bi&ecirc;́n: HERO</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Đ&ocirc;̣ ph&acirc;n giải: 16000 DPI</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tốc độ phản hồi: 1000 Hz (1ms)</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- M&agrave;u sắc: Đen</span></p>', 0, '999000', 'bb1eccf8d0.webp', 'bb1eccf8d07.webp', 'bb1eccf8d07c.webp', 'bb1eccf8d07c0.webp'),
(38, 'Bàn phím cơ Logitech Gaming G813 (Full Size/GL Clicky)', '191005935', '15', '0', '15', 12, 8, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Bàn phím cơ</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Kết nối: USB</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Switch: GL Clicky</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Ph&iacute;m chức năng: Có</span></p>\r\n<div class=\"css-ftpi71\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 1rem; border: 0px; position: relative; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; height: 3.5rem; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div class=\"title css-1x5ixzd\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-image: initial; opacity: 1; color: #1b1d29; font-weight: bold; text-decoration: unset; font-size: 20px; line-height: 28px; overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: unset; max-width: unset; min-width: unset; transition: color 0.3s ease 0s; border: 1px none unset;\">M&ocirc; tả sản phẩm</div>\r\n</div>\r\n<div class=\"css-17aam1\" style=\"box-sizing: border-box; margin: 0px; padding: 1rem; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">Giới thiệu&nbsp;</span><a style=\"box-sizing: border-box; color: #0d6efd; margin: 0px; padding: 0px; border: 0px;\" href=\"https://phongvu.vn/phu-kien-thiet-bi-ngoai-vi-scat.03-N003\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">B&agrave;n ph&iacute;m</span></a><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">&nbsp;cơ Logitech Gaming G813</span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">B&agrave;n ph&iacute;m cơ với một phong c&aacute;ch mới chắc chắn sẽ khiến bạn y&ecirc;u th&iacute;ch, thiết kế si&ecirc;u mỏng tinh tế k&egrave;m c&aacute;c ph&iacute;m G ho&agrave;n to&agrave;n c&oacute; thể t&ugrave;y chỉnh một c&aacute;ch dễ d&agrave;ng, đưuọc trang bị đ&egrave;n LED RGB ri&ecirc;ng biệt. Trải nghiệm G813 v&agrave; chơi game một c&aacute;ch thoải m&aacute;i nhất.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/10/Ban-phim-Logitech-Gaming-G813-1024x342.png\" alt=\"B&agrave;n ph&iacute;m cơ Logitech Gaming G813 \" /></figure>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; color: unset; padding: 0px; border: 0px;\">Mỏng đến kh&ocirc;ng tưởng</h4>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">B&agrave;n ph&iacute;m cơ Logitech Gaming G813 được chế t&aacute;c kỳ c&ocirc;ng với kỹ thuật cao đem lại một d&aacute;ng vẻ mỏng tinh tế m&agrave; hiệu năng t&iacute;nh năng vẫn được giữ nguy&ecirc;n. Bền bỉ, thoải m&aacute;i v&agrave; lu&ocirc;n sẵn s&agrave;ng cũng bạn chiến mọi tựa game. G813 thực sự l&agrave; một b&agrave;n ph&iacute;m của tương lai.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/10/Ban-phim-Logitech-Gaming-G813-mong-1024x119.png\" alt=\"Mỏng đến kh&ocirc;ng tưởng\" /></figure>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; color: unset; padding: 0px; border: 0px;\">B&agrave;n ph&iacute;m cơ ti&ecirc;n tiến</h4>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Sở hữu tốc độ, độ ch&iacute;nh x&aacute;c v&agrave; hiệu suất với độ d&agrave;y chỉ bằng 1 nửa so với những loại switch th&ocirc;ng thường. C&aacute;c ph&iacute;m cơ switch GL được kiểm nghiệm chặt chẽ để đ&aacute;p ứng về độ bền, độ nhạy v&agrave; độ ch&iacute;nh x&aacute;c. C&oacute; 3 loại switch:</p>\r\n<ul style=\"box-sizing: border-box; padding: 0px 0px 0px 2rem; margin: 0px 0px 1rem; border: 0px;\">\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">GL Clicky - Phản hồi trực quan v&agrave; k&egrave;m &acirc;m thanh như c&aacute;c ph&iacute;m switch chơi game th&ocirc;ng thường, GL Clicky l&yacute; tưởng cho những người y&ecirc;u th&iacute;ch cảm nhận tiếng &ldquo;l&aacute;ch c&aacute;ch&rdquo; quen thuộc.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">GL Tactile -&nbsp;Đem lại phản hồi tinh tế trong khoảnh khắc nhấn cho phản hồi ch&iacute;nh x&aacute;c ngay lập tức.</li>\r\n<li style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">GL Linear - Tuyệt vời d&agrave;nh cho những c&uacute; nhấn đ&uacute;p v&agrave; li&ecirc;n tiếp.</li>\r\n</ul>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/10/Ban-phim-Logitech-Gaming-G813-switch-tien-tien-1024x367.png\" alt=\"B&agrave;n ph&iacute;m cơ ti&ecirc;n tiến\" /></figure>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; color: unset; padding: 0px; border: 0px;\">LIGHTSYNC RGB</h4>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">B&agrave;n ph&iacute;m cơ Logitech Gaming G813 c&oacute; thể t&ugrave;y chỉnh đ&egrave;n LED cho mỗi ph&iacute;m với 16,8 triệu m&agrave;u. Tạo hiệu ứng LED ri&ecirc;ng d&agrave;nh cho bạn, với c&ocirc;ng nghệ LIGHTSYNC hiệu ứng chiếu s&aacute;ng được lấy từ những tr&ograve; chơi, &acirc;m thanh hoặc m&agrave;n h&igrave;nh để đem lại trải nghiệm RGB tuyệt vời hơn bao giờ hết.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/10/Ban-phim-Logitech-Gaming-G813-LIGHTSYNC-RGB-1024x571.jpeg\" alt=\"LIGHTSYNC RGB\" /></figure>\r\n<h4 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; color: unset; padding: 0px; border: 0px;\">C&aacute;c ph&iacute;m tắt đa phương tiện</h4>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">C&aacute;c ph&iacute;m tắt được t&iacute;ch hợp đơn giản d&agrave;nh cho bạn. C&aacute;c n&uacute;t điều chỉnh ri&ecirc;ng biệt từ ph&aacute;t nhạc, điều chỉnh &acirc;m lượng v&agrave; tắt tiếng ngay lập tức với chỉ một ph&iacute;m tắt.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/10/Ban-phim-Logitech-Gaming-G813-phim-tat-1024x571.jpeg\" alt=\"C&aacute;c ph&iacute;m tắt đa phương tiện\" /></figure>\r\n</div>\r\n</div>', 1, '2999000', '64a44578fd.webp', '64a44578fd2.webp', '64a44578fd2d.webp', '64a44578fd2df.');
INSERT INTO `product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`, `image1`, `image2`, `image3`) VALUES
(39, 'Bàn phím cơ CORSAIR K68 (RGB/Fullsize/Cherry MX Red) CH-9102010-NA', '19030077', '10', '0', '10', 12, 10, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Bàn phím cơ</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Kết nối USB 2.0</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Ki&ecirc;̉u switch Cherry MX Red</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Ph&iacute;m chức năng Có</span></p>\r\n<div class=\"css-ftpi71\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 1rem; border: 0px; position: relative; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; height: 3.5rem; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div class=\"title css-1x5ixzd\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-image: initial; opacity: 1; color: #1b1d29; font-weight: bold; text-decoration: unset; font-size: 20px; line-height: 28px; overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: unset; max-width: unset; min-width: unset; transition: color 0.3s ease 0s; border: 1px none unset;\">M&ocirc; tả sản phẩm</div>\r\n</div>\r\n<div class=\"css-17aam1\" style=\"box-sizing: border-box; margin: 0px; padding: 1rem; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">\r\n<h2 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 20px; color: unset; padding: 0px; border: 0px; text-align: justify;\" data-v-42c41146=\"\">B&agrave;n ph&iacute;m cơ CORSAIR K68 RGB - Kh&ocirc;ng đơn điệu như trước</h2>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px; text-align: justify;\">Giới thiệu sản phẩm</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Đ&uacute;ng như c&aacute;i t&ecirc;n th&igrave; b&agrave;n ph&iacute;m cơ Corsair K68 RGB l&agrave; một sự n&acirc;ng cấp đầy đ&aacute;ng gi&aacute; so với c&aacute;c phi&ecirc;n bản K68 LED đơn sắc thủa trước. B&ecirc;n cạnh đ&oacute;, t&iacute;nh năng chống bụi v&agrave; chống nước chuẩn IP32 được mang lại bởi lớp cao su ph&ograve;ng hộ che chắn c&aacute;c t&aacute;c động từ ph&iacute;a ngo&agrave;i đến bảng mạch v&agrave; c&ocirc;ng tắc. Corsair K68 RGB đươc ra mắt với 2 phi&ecirc;n bản t&iacute;ch hợp Cherry MX switch Red v&agrave; Blue mang lại độ tin cậy v&agrave; chất lượng tuyệt đối cho người d&ugrave;ng. B&agrave;n ph&iacute;m chuẩn fullsize với 104 ph&iacute;m bấm cơ bản v&agrave; 7 n&uacute;t media hotkeys tiện dụng v&agrave; tr&ecirc;n hết sản phẩm được hỗ trợ 100% anti ghosting với full N-key Rollover.&nbsp;Corsair K68 RGB vẫn nằm trong danh mục những mẫu b&agrave;n ph&iacute;m cơ với mức gi&aacute; phải chăng.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/24.-B%C3%A0n-ph%C3%ADm-c%C6%A1-CORSAIR-K68-RGB.png\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/24.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB.png 740w, https://tmp.phongvu.vn/wp-content/uploads/2019/03/24.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB-300x217.png 300w\" alt=\"B&agrave;n ph&iacute;m cơ CORSAIR K68 RGB\" width=\"740\" height=\"536\" /></p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px; text-align: justify;\">Thiết kế nổi bật</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Về ngoại h&igrave;nh, phần layout của K68 được bố tr&iacute; căn bản v&agrave; quen thuộc; to&agrave;n bộ b&agrave;n ph&iacute;m l&agrave;m bằng nhựa cứng v&agrave; nh&aacute;m tay, gi&uacute;p cho game thủ c&oacute; những trải nghiệm thoải m&aacute;i v&agrave; tiện lợi nhất. C&oacute; thể nhiều bạn sẽ nghi ngờ độ bền của chất liệu b&agrave;n ph&iacute;m, tuy nhi&ecirc;n h&atilde;y y&ecirc;n t&acirc;m v&igrave; Corsair lu&ocirc;n được biết đến với c&aacute;c sản phẩm chất lượng v&agrave; độ ho&agrave;n thiện ở mức rất cao.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Nếu như nhiều người cảm thấy bất tiện đối với kiểu b&agrave;n ph&iacute;m tenkeyless ở phi&ecirc;n bản K63 th&igrave; với K68, người d&ugrave;ng sẽ h&agrave;i l&ograve;ng hơn khi h&atilde;ng đ&atilde; bổ sung th&ecirc;m d&agrave;n ph&iacute;m số. Coisair K68 RGB l&agrave; loại b&agrave;n ph&iacute;m c&oacute; cơ cấu Cherry MX Switch, với những ưu điểm như lực đ&agrave;n hồi tốt, c&oacute; độ nhạy cao v&agrave; kh&ocirc;ng ph&aacute;t ra tiếng. Đặc điểm hạn chế tiếng ồn n&agrave;y kh&aacute; hữu dụng, đặc biệt đối với những bạn thường chơi game v&agrave;o ban đ&ecirc;m v&agrave; kh&ocirc;ng muốn l&agrave;m phiền những người xung quanh. Ngo&agrave;i ra, c&ocirc;ng nghệ 100% Anti-ghosting sẽ gi&uacute;p thiết bị nhận được tất cả c&aacute;c lệnh của bạn, ngay cả khi bạn g&otilde; b&agrave;n ph&iacute;m rất nhanh v&agrave; nhiều ph&iacute;m c&ugrave;ng một l&uacute;c.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/21.-B%C3%A0n-ph%C3%ADm-c%C6%A1-CORSAIR-K68-RGB.jpg\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/21.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB.jpg 740w, https://tmp.phongvu.vn/wp-content/uploads/2019/03/21.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB-300x152.jpg 300w\" alt=\"B&agrave;n ph&iacute;m cơ CORSAIR K68 RGB\" width=\"740\" height=\"376\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Ưu điểm đ&aacute;ng ch&uacute; &yacute; hơn cả của Corsair K68 RGB l&agrave; khả năng chống nước v&agrave; chống bụi. H&atilde;y tưởng tượng rằng bạn đang ở những gi&acirc;y ph&uacute;t kịch t&iacute;nh nhất của trận game th&igrave; bỗng dưng, bạn sơ &yacute; đổ cốc nước l&ecirc;n b&agrave;n ph&iacute;m. T&igrave;nh huống trớ tr&ecirc;u n&agrave;y ngo&agrave;i việc khiến cho kết quả trận đấu kh&ocirc;ng được như mong muốn th&igrave; n&oacute; c&ograve;n c&oacute; thể l&agrave;m &ldquo;đi tong&rdquo; nguy&ecirc;n chiếc b&agrave;n ph&iacute;m của bạn. Nắm bắt được t&acirc;m l&yacute; n&agrave;y, Corsair đ&atilde; t&iacute;ch hợp cho K68 khả năng chống nước v&agrave; bụi tương đương với ti&ecirc;u chuẩn IP32. Về cơ bản, ti&ecirc;u chuẩn n&agrave;y sẽ cho ph&eacute;p bạn chống lại những vật thể bụi c&oacute; k&iacute;ch thước lớn hơn 2,5mm v&agrave; nước đổ trực tiếp từ tr&ecirc;n xuống (hoặc lệch một g&oacute;c 15 độ).</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Mỗi ph&iacute;m bấm tr&ecirc;n K68 RGB đều được trang bị một lớp ron cao su để bảo vệ phần switch, khi gắn keycaps l&ecirc;n tr&ecirc;n sẽ bao tr&ugrave;m phần cứng b&ecirc;n trong. Trong trường hợp nước đổ tr&ecirc;n b&agrave;n ph&iacute;m, thiết kế đặc biệt sẽ gi&uacute;p nước được dẫn qua c&aacute;c khe tho&aacute;t nước xuống mặt dưới, người chơi c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m chơi game m&agrave; kh&ocirc;ng ngại những tai nạn sơ &yacute;. Mặc d&ugrave; được trang bị lớp bọc cao su nhưng điều n&agrave;y kh&ocirc;ng hề cản trở c&aacute;c thao t&aacute;c với b&agrave;n ph&iacute;m, sản phẩm vẫn sẽ ghi nhận to&agrave;n bộ thao t&aacute;c ngay cả khi người d&ugrave;ng chỉ chạm nhẹ v&agrave;o c&aacute;c n&uacute;t bấm. T&iacute;nh năng chống bụi v&agrave; nước thực sự hữu &iacute;ch cho những bạn c&oacute; th&oacute;i quen ăn snack v&agrave; d&ugrave;ng đồ uống trong l&uacute;c chơi game hay l&agrave;m việc.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/22.-B%C3%A0n-ph%C3%ADm-c%C6%A1-CORSAIR-K68-RGB.jpg\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/22.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB.jpg 740w, https://tmp.phongvu.vn/wp-content/uploads/2019/03/22.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB-300x180.jpg 300w\" alt=\"B&agrave;n ph&iacute;m cơ CORSAIR K68 RGB\" width=\"740\" height=\"445\" /></p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px; text-align: justify;\">Hệ thống LED RGB cải tiến</h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Ngo&agrave;i những ưu điểm kể tr&ecirc;n, Corsair K68 RGB c&ograve;n tối ưu h&oacute;a trải nghiệm cho người d&ugrave;ng khi trang bị hệ thống đ&egrave;n LED RGB rất bắt mắt v&agrave; c&oacute; thể chỉnh được độ s&aacute;ng hay hiệu ứng nh&aacute;y đ&egrave;n bằng c&aacute;ch sử dụng phần mềm CORSAIR Utility Engine (CUE). B&ecirc;n cạnh đ&oacute;, K68 RGB cũng được trang bị c&aacute;c ph&iacute;m media tiện lợi v&agrave; ph&iacute;m Win lock &ndash; gi&uacute;p người chơi game kh&ocirc;ng c&ograve;n lo nhấn nhầm v&agrave; bị văng ra ngo&agrave;i. H&atilde;ng cũng rất chu đ&aacute;o khi tặng k&egrave;m miếng l&oacute;t cổ tay, gi&uacute;p những người sử dụng b&agrave;n ph&iacute;m trong thời gian d&agrave;i cảm thấy thoải m&aacute;i.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/20.-B%C3%A0n-ph%C3%ADm-c%C6%A1-CORSAIR-K68-RGB.jpg\" sizes=\"(max-width: 740px) 100vw, 740px\" srcset=\"https://tmp.phongvu.vn/wp-content/uploads/2019/03/20.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB.jpg 740w, https://tmp.phongvu.vn/wp-content/uploads/2019/03/20.-B&agrave;n-ph&iacute;m-cơ-CORSAIR-K68-RGB-300x204.jpg 300w\" alt=\"B&agrave;n ph&iacute;m cơ CORSAIR K68 RGB\" width=\"740\" height=\"504\" /></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; text-align: justify;\">Nếu bạn đang t&igrave;m kiếm một loại b&agrave;n ph&iacute;m cơ với mức gi&aacute; tầm trung v&agrave; muốn trải nghiệm khả năng chống bụi v&agrave; nước hay một số c&ocirc;ng nghệ như Cherry MX, LED nhập nhằng tuyệt đẹp v&agrave; Anti Ghosting th&igrave; Corsair K68 RGB l&agrave; một sản phẩm v&ocirc; c&ugrave;ng hợp l&yacute;.</p>\r\n</div>\r\n</div>', 1, '2499000', 'db6bb4cd6f.webp', 'db6bb4cd6f6.webp', 'db6bb4cd6f68.webp', 'db6bb4cd6f680.webp'),
(40, 'Ghế Warrior - Raider Series - WGC206 (Đen)', ' 200800206', '10', '0', '10', 14, 3, '<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Ghế cao cấp d&agrave;nh cho game thủ</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Chất liệu da PU chống xước</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Trục thủy lực Class 4 với độ ổn định cao</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Bệ đỡ: Kiểu c&aacute;nh bướm</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Đệm ngồi ghế được l&agrave;m bằng khu&ocirc;n sốp lạnh (cold molded foam)</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tay ghế 3D, Khung ghế kim loại tạo n&ecirc;n sự chắc chắn, ổn định</p>', 0, '3149000', '7ba045abeb.webp', '7ba045abeb6.', '7ba045abeb6f.', '7ba045abeb6f1.'),
(41, 'Ghế MSI MAG CH120 I (Đen)', '210102831', '5', '0', '5', 14, 11, '<div class=\"css-ftpi71\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 1rem; border: 0px; position: relative; display: flex; -webkit-box-pack: justify; justify-content: space-between; -webkit-box-align: center; align-items: center; height: 3.5rem; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div class=\"title css-1x5ixzd\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; border-image: initial; opacity: 1; color: #1b1d29; font-weight: bold; text-decoration: unset; font-size: 20px; line-height: 28px; overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: unset; max-width: unset; min-width: unset; transition: color 0.3s ease 0s; border: 1px none unset;\">M&ocirc; tả sản phẩm</div>\r\n</div>\r\n<div class=\"css-17aam1\" style=\"box-sizing: border-box; margin: 0px; padding: 1rem; border: 0px; color: #333333; font-family: Roboto, sans-serif; font-size: 14px;\">\r\n<div style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px;\">\r\n<h2 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 20px; color: unset; padding: 0px; border: 0px;\">Ghế gaming MSI CH 120 I (Đen) l&agrave; chiếc ghế gaming cao cấp đến từ thương hiệu MSI nổi tiếng với thiết kế phong c&aacute;ch c&ugrave;ng những t&iacute;nh năng vượt trội sẽ đem lại cho bạn những trải nghiệm tuyệt vời, thỏa m&atilde;n nhu cầu kể cả những người d&ugrave;ng kh&oacute; t&iacute;nh. V&igrave; thế, chắc chắn MSI CH 120 l&agrave; sự lựa chọn tối ưu cho bạn.</h2>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">Sử dụng chất liệu cao cấp cho cảm gi&aacute;c &ecirc;m &aacute;i, an to&agrave;n khi sử sử dụng v&agrave; dễ d&agrave;ng vệ sinh</span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Ghế gaming MSI CH 120 c&oacute; kết cấu cực kỳ chắc chắn, nhờ sở hữu bộ khung hợp kim th&eacute;p cao cấp trải d&agrave;i tr&ecirc;n to&agrave;n bộ lưng v&agrave; m&ocirc;ng ghế v&agrave; d&ugrave;ng vật liệu sơn c&oacute; thể ngăn ngừa rỉ s&eacute;t trong thời gian d&agrave;i sử dụng, đảm bảo độ bền v&agrave; ổn định ngang h&agrave;ng với c&aacute;c thương hiệu ghế cao cấp kh&aacute;c.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://lh4.googleusercontent.com/r5iWDAUyELVL_XOG2ySZ-R8Q04hbAgJZWGOUG0CikJy7aA6ccmZjfqGjcYK8oPjFYulg9feRng51GvB0Sj62MIyyzefRzcOg0ytUTETsNVpJeACh9w7X1zHCRjaKJPyQ4uRzcr6QUONj7vFh_w\" alt=\"Ghế gaming MSI CH 120 I (Đen) | Chất liệu cao cấp\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">C&ugrave;ng với đ&oacute;, bề mặt ghế được l&agrave;m từ chất liệu da PVC cao cấp v&acirc;n da mịn v&agrave; c&oacute; độ b&oacute;ng rất đẹp tạo cảm gi&aacute;c cực k&igrave; tho&aacute;ng m&aacute;t, kh&ocirc;ng thấm mồ h&ocirc;i, kh&ocirc;ng g&acirc;y m&ugrave;i v&agrave; đặc biệt dễ d&agrave;ng lau ch&ugrave;i vệ sinh mặt ghế.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Hơn nữa, MSI CH 120 c&ograve;n sử dụng đệm m&uacute;t bằng bọt mật cao b&ecirc;n trong ghế đem lại cảm gi&aacute;c &ecirc;m &aacute;i cho người sử dụng c&ugrave;ng khả năng độ đ&agrave;n hồi v&agrave; chống l&uacute;n cực tốt đem lại sự thư gi&atilde;n v&agrave; thoải m&aacute;i.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">Thiết kế nhỏ gọn, khả năng chịu lực cao với trụ thủy lực class 4</span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">MSI CH 120 c&oacute; k&iacute;ch thước ghế nhỏ gọn 130 x 65 x 52,5 (cm) với c&acirc;n năng chỉ 27kg, đường k&iacute;nh ch&acirc;n ghế chỉ 70mm, phần ph&iacute;a tr&ecirc;n đầu c&oacute; xu hướng cong ra ngo&agrave;i cho phần đầu lu&ocirc;n ở tư thế thẳng gi&uacute;p tiết kiệm kh&ocirc;ng gian căn ph&ograve;ng của bạn.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://lh5.googleusercontent.com/EB9zuPmdeWLgw0ISslJ7aMLKOIq4YXDMKb_lTGPErKdzCRHtiTANKlooIjAxx5NdWP1X_Zv_WT6V1d8b9O_Tkod8OeVgwh_gCgfkLVEQ1GV35mwUueuR19xwc0oBjcuskXk2XymnRVqrPX7Thw\" alt=\"Ghế gaming MSI CH 120 I (Đen) | Thiết kế nhỏ gọn\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Kh&ocirc;ng những thế, n&oacute; c&ograve;n được thiết kế trụ thủy lực Class 4 c&oacute; khả năng chịu tải trọng l&ecirc;n đến 150kg gi&uacute;p cho ghế chống rung giật đem lại cảm gi&aacute;c ngồi thoải m&aacute;i v&agrave; cực kỳ chắc chắn.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://lh4.googleusercontent.com/zivrQweKPWA2CzlA9UykB4Zeh1G3fUGWV-2IGnCO5WT3F_MvPP-wgerQKYVNcNuFTZRLnBuZxDQR9RtKu0R9UKD0UNtTFO_rtugkRya7D2K5pws3DklpfCcreoFa7DQd_hwyAkhPkFf8ULmOAA\" alt=\"Ghế gaming MSI CH 120 I (Đen) | Khả năng chịu lực cao\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Ngo&agrave;i ra,&nbsp; MSI CH 120 sở hữu thiết kế ch&acirc;n h&igrave;nh sao 5 c&aacute;nh gi&uacute;p cho ghế đảm bảo sự chắc chắn, vững v&agrave;ng v&agrave; khả năng chịu tải trọng cao hơn 20% so với c&aacute;c loại ch&acirc;n ghế th&ocirc;ng thường.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">G&oacute;c tựa ngả lưng l&ecirc;n đến 180 độ c&ugrave;ng thiết kế tay vịn điều chỉnh 4D linh hoạt</span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Ghế chơi game MSI CH 120 c&oacute; g&oacute;c ngả ghế lớn với g&oacute;c ngả lưng c&oacute; thể điều chỉnh từ 90-180 độ cho người d&ugrave;ng c&oacute; thể điều chỉnh tư thế ngồi hoặc nằm hợp l&yacute;, ph&ugrave; hợp c&aacute;c game thủ chơi game trong thời gian d&agrave;i.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://lh6.googleusercontent.com/HtCbYhYNGl6SIdjbP3wrZ2Jkna6W-RVtZJq1z3_emmXRex5L-S6pQxUhmh_GZDsCwcoXSouE-IZaoGVkBUUwdk8negB7bF7BLjEFwzXPFOg0BeablVdyaaACMQtIyBI3dYLzHzKbwsddVFoovg\" alt=\"Ghế gaming MSI CH 120 I (Đen) | G&oacute;c tựa ngả lưng\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">C&ugrave;ng với đ&oacute;, MSI CH 120 c&ograve;n sở hữu thiết kế 4D c&oacute; thể điều chỉnh theo 4 chế độ kh&aacute;c nhau cho cảm gi&aacute;c như một &ocirc;ng ho&agrave;ng, vua ch&uacute;a ngồi tr&ecirc;n chiếc ghế n&agrave;y, c&ugrave;ng với khả năng điều chỉnh độ cao tay vịn t&ugrave;y &yacute; để điều chỉnh ph&ugrave; hợp với người sử dụng.</p>\r\n<h3 style=\"box-sizing: border-box; margin: 0px 0px 0.5rem; font-weight: 500; line-height: 1.3; font-size: 16px; color: unset; padding: 0px; border: 0px;\"><span style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; border: 0px;\">Thiết kế b&aacute;nh xe chống xước gi&uacute;p ghế di chuyển &ecirc;m &aacute;i c&ugrave;ng gối tựa đầu v&agrave; đệm sau lưng đi k&egrave;m cho trải nghiệm tuyệt vời</span></h3>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">MSI CH 120 sở hữu thiết kế b&aacute;nh xe c&oacute; k&iacute;ch thước 66mm với khả năng di chuyển linh hoạt kh&ocirc;ng g&acirc;y tiếng ồn, kh&ocirc;ng g&acirc;y c&aacute;c vết xước tr&ecirc;n bề mặt s&agrave;n gi&uacute;p cho ghế chuyển động mượt m&agrave; &ecirc;m &aacute;i, dễ d&agrave;ng di chuyển đến vị tr&iacute; cần thiết.</p>\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px;\"><img style=\"box-sizing: border-box; vertical-align: middle; margin: 0px; padding: 0px; border: 0px; max-width: 100%; height: auto;\" src=\"https://lh4.googleusercontent.com/Uk_OuNDFYkYmWm9rdB2EadsVSnE43CQOJ3wuaFXpRO6MGD2RT4Z0sYJcf90BkHCsHmjiYm7Vt8RxicKAlqE5yXSSmAl4PxXbt5bEIYSeCSKqPfyc-p3bd0jrDBpubaAOIb8FX9Pe7m2_V4u1bQ\" alt=\"Ghế gaming MSI CH 120 I (Đen) | Thiết kế b&aacute;nh xe chống xước\" /></figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 1rem; padding: 0px; border: 0px;\">Cuối c&ugrave;ng, ghế c&ograve;n được trang bị k&egrave;m theo gối tựa đầu c&ugrave;ng đệm sau lưng bằng c&aacute;ch giảm &aacute;p lực ở cổ v&agrave; thắt lưng gi&uacute;p bạn kh&ocirc;ng c&ograve;n lo lắng bởi những bệnh l&yacute; như đau mỏi lưng, vai hay cảm thấy mệt mỏi khi ngồi chơi qu&aacute; l&acirc;u v&agrave; cũng c&oacute; thể ngủ một giấc ngon l&agrave;nh.</p>\r\n</div>\r\n</div>', 1, '4499000', 'c0efdcebb0.webp', 'c0efdcebb0f.webp', 'c0efdcebb0f3.', 'c0efdcebb0f34.'),
(42, 'Tai nghe Over-ear Corsair HS35 Stereo Carbon CA-9011195-AP (Đen)', '190800417', '10', '0', '10', 13, 10, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tần số:&nbsp;20Hz - 20 kHz</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Trở kh&aacute;ng:&nbsp;32 ohms</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Độ nhạy:&nbsp;113dB (+/-3dB)</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- K&iacute;ch thước Driver: 50 mm</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Kết nối: Jack 3.5mm</span></p>', 1, '849000', '84c4a927f3.webp', '84c4a927f31.webp', '84c4a927f316.webp', '84c4a927f3163.'),
(43, 'Tai nghe Asus TUF Gaming H3 (Red)', '191007011', '5', '0', '5', 13, 3, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tai nghe Gaming TUF H3 </span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Driver ASUS Essence 50mm v&agrave; c&ocirc;ng nghệ buồng k&iacute;n cho &acirc;m thanh ấn tượng</span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- &Acirc;m thanh v&ograve;m 7.1 giả lập hỗ trợ bởi Windows Sonic</span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\"> - Thiết kế gọn nhẹ, tạo sự thoải m&aacute;i &nbsp;</span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Gọng tai nghe bằng th&eacute;p kh&ocirc;ng gỉ cứng c&aacute;p gi&uacute;p gia tăng độ bền</span></p>\r\n<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Tương th&iacute;ch nhiều nền tảng như PC, Mac, PS4, Nintendo Switch, Xbox One v&agrave; điện thoại</span></p>', 0, '849000', 'efd3ff01fc.webp', 'efd3ff01fc1.webp', 'efd3ff01fc18.', 'efd3ff01fc181.'),
(47, 'Laptop ACER Aspire 7 A715-42G-R05G (Ryzen 5 5500U/RAM 8GB/512GB SSD/ Windows 11)', 'AK12345', '10', '0', '10', 1, 12, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- CPU: AMD Ryzen 5 5500U</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- M&agrave;n h&igrave;nh: 15.6\" IPS (1920 x 1080),144Hz</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- RAM: 1 x 8GB DDR4 3200MHz</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Đồ họa: GTX 1650 4GB GDDR6 / AMD Radeon Graphics</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Lưu trữ: 512GB SSD M.2 NVMe /</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Hệ điều h&agrave;nh: Windows 11 Home</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- 48 Wh</span><br style=\"box-sizing: border-box; color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\" /><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; background-color: #ffffff;\">- Khối lượng: 2.1kg</span></p>', 1, '17490000', '5c1e071e24.jpg', '5c1e071e24b.jpg', '5c1e071e24bc.', '5c1e071e24bc8.');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_admin`
--
ALTER TABLE `account_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartId`),
  ADD KEY `fk1_cart` (`productId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `item_rating`
--
ALTER TABLE `item_rating`
  ADD KEY `fk1_rat` (`productId`),
  ADD KEY `fk2_rat` (`userId`);

--
-- Indexes for table `nhap_hang`
--
ALTER TABLE `nhap_hang`
  ADD KEY `fk1_ware` (`id_sanpham`);

--
-- Indexes for table `order_cus`
--
ALTER TABLE `order_cus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_cus` (`customer_id`),
  ADD KEY `fk2_cus` (`productId`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_payment` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`),
  ADD KEY `fk1_product` (`brandId`),
  ADD KEY `fk2_product` (`catId`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD KEY `fk1_wis` (`customer_id`),
  ADD KEY `fk2_wis` (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `account_admin`
--
ALTER TABLE `account_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `order_cus`
--
ALTER TABLE `order_cus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk1_cart` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `item_rating`
--
ALTER TABLE `item_rating`
  ADD CONSTRAINT `fk1_rat` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`),
  ADD CONSTRAINT `fk2_rat` FOREIGN KEY (`userId`) REFERENCES `account` (`id`);

--
-- Constraints for table `nhap_hang`
--
ALTER TABLE `nhap_hang`
  ADD CONSTRAINT `fk1_ware` FOREIGN KEY (`id_sanpham`) REFERENCES `product` (`productId`);

--
-- Constraints for table `order_cus`
--
ALTER TABLE `order_cus`
  ADD CONSTRAINT `fk1_cus` FOREIGN KEY (`customer_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `fk2_cus` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk1_payment` FOREIGN KEY (`customer_id`) REFERENCES `account` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk1_product` FOREIGN KEY (`brandId`) REFERENCES `brand` (`brandId`),
  ADD CONSTRAINT `fk2_product` FOREIGN KEY (`catId`) REFERENCES `category` (`catID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `fk1_wis` FOREIGN KEY (`customer_id`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `fk2_wis` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
