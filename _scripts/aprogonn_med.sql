-- phpMyAdmin SQL Dump
-- version 4.0.10.2
-- http://www.phpmyadmin.net
--
-- Host: aprogonn.mysql.ukraine.com.ua
-- Generation Time: Feb 04, 2015 at 04:45 PM
-- Server version: 5.1.72-cll-lve
-- PHP Version: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aprogonn_med`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Eugene', 'Kovaljov', '', '', '', 'Харьков', '', 'Kharkov', '61120', 220, 3487),
(2, 2, 'Иван', 'Иванов', '', '', '', 'ул. Бакулина 10, 5', '', 'Харьков', '60060', 220, 3487),
(3, 3, 'Ирина', 'Третьяк', '', '', '', 'Среднефонтанская. 26', '', 'Одесса', '', 220, 3495),
(4, 4, '', '', '', '', '', '', '', '', '', 0, 0),
(5, 5, '', '', '', '', '', '', '', '', '', 0, 0),
(6, 6, '', '', '', '', '', '', '', '', '', 0, 0),
(7, 7, '', '', '', '', '', '', '', '', '', 0, 0),
(8, 8, 'ssss', '', '', '', '', '', '', '', '', 0, 0),
(9, 9, '1234', '', '', '', '', '', '', '', '', 0, 0),
(10, 10, 'C hah HD h', '', '', '', '', '', '', '', '', 0, 0),
(11, 11, 'hrbegrw', '', '', '', '', '', '', '', '', 0, 0),
(13, 13, 'Контактное лицо', '', '', '', '', '', '', '', '', 0, 0),
(14, 14, 'фффф', '', '', '', '', '', '', '', '', 0, 0),
(15, 15, 'Антон', 'Котляров', '', '', '', '', '', '', '', 0, 0),
(16, 16, 'Eugene', '', '', '', '', '', '', '', '', 0, 0),
(17, 17, 'Иванов', 'Иван', '', '', '', '', '', '', '', 0, 0),
(18, 18, 'ЧП Иванов', '', '', '', '', '', '', '', '', 0, 0),
(19, 19, 'ЧП Иванов', '', '', '', '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(17, 7, 0),
(15, 9, 0),
(16, 9, 0),
(18, 10, 0),
(19, 13, 0),
(20, 11, 0),
(21, 12, 0),
(22, 12, 0),
(23, 12, 0),
(24, 13, 0),
(25, 14, 0),
(26, 12, 0),
(27, 15, 0),
(28, 16, 0),
(29, 17, 0),
(30, 12, 0),
(31, 12, 0),
(32, 15, 0),
(33, 15, 0),
(35, 15, 0),
(38, 18, 0),
(37, 18, 0),
(36, 18, 0),
(34, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(17, 2, 'Скорость движения бумаги'),
(15, 2, 'Тип электропитания'),
(16, 2, 'Длина кабеля'),
(18, 2, 'Объем (мл)'),
(19, 2, 'Товары в комплекте'),
(20, 2, 'Гарантийный срок'),
(21, 2, 'Место применения'),
(22, 2, 'Доза'),
(23, 2, 'Рекомендации по применению'),
(24, 2, 'Шт. в упаковке'),
(25, 2, 'Тип материала'),
(26, 2, 'Нагрузка на полку '),
(27, 2, 'Отклонение от горизонтали'),
(28, 2, 'Диаметр основания'),
(29, 2, 'Пациент'),
(30, 2, 'Область применения'),
(31, 2, 'Количество использований'),
(32, 2, 'Отличительные особенности'),
(33, 2, 'Преимущества'),
(38, 2, 'Высота'),
(37, 2, 'Ширина'),
(36, 2, 'Длина'),
(35, 2, 'Плотность'),
(34, 2, 'Тип изгиба');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(7, 0),
(10, 0),
(9, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(7, 2, 'Работа с бумагой'),
(10, 2, 'Объем'),
(9, 2, 'Электропитание'),
(11, 2, 'Гарантия'),
(12, 2, 'Применение'),
(13, 2, 'Комплектация'),
(14, 2, 'Материал'),
(15, 2, 'Особенности'),
(16, 2, 'Диаметр'),
(17, 2, 'Пациенты'),
(18, 2, 'Измерения');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(11, 'Баннер левой колонки', 1),
(8, 'Manufacturers', 0),
(9, 'Баннер на главной', 1),
(10, 'Дополнительный баннер', 1),
(12, 'Баннер левой колонки 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(90, 11, '', 'data/left-banner-1.png'),
(97, 12, '', 'data/left-banner-2.png'),
(83, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/demo/palm_logo.jpg'),
(82, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/demo/sony_logo.jpg'),
(81, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=9', 'data/demo/canon_logo.jpg'),
(80, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/demo/apple_logo.jpg'),
(79, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=5', 'data/demo/htc_logo.jpg'),
(84, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_logo.jpg'),
(94, 9, '', 'data/MainBanner-1.jpg'),
(95, 9, '', 'data/mainbanner-2.jpg'),
(89, 10, '', 'data/sub-banner-1.png'),
(96, 9, '', 'data/mainbanner-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(89, 2, 10, 'Дополнительный баннер'),
(95, 2, 9, 'Баннер на главной 2'),
(94, 2, 9, 'Баннер на главной 1'),
(90, 2, 11, 'Баннер левой колонки'),
(84, 2, 8, 'Hewlett-Packard'),
(83, 2, 8, 'Palm'),
(82, 2, 8, 'Sony'),
(81, 2, 8, 'Canon'),
(80, 2, 8, 'Apple'),
(79, 2, 8, 'HTC'),
(97, 2, 12, 'Баннер левой колонки 2'),
(96, 2, 9, 'Баннер на главной 3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(24, '', 0, 0, 1, 5, 1, '2009-01-20 02:36:26', '2014-11-14 00:13:21'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'data/demo/compaq_presario.jpg', 0, 0, 1, 1, 1, '2009-01-05 21:49:43', '2014-11-14 00:12:07'),
(86, '', 64, 1, 1, 0, 1, '2014-11-14 00:06:43', '2014-11-14 00:13:46'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(18, 'data/demo/hp_2.jpg', 0, 0, 0, 2, 1, '2009-01-05 21:49:15', '2014-11-14 00:12:19'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(87, '', 64, 0, 1, 0, 1, '2014-11-14 00:07:02', '2014-11-14 00:07:02'),
(33, '', 0, 0, 1, 6, 1, '2009-02-03 14:17:55', '2014-11-14 00:11:42'),
(91, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:34', '2014-11-14 00:19:34'),
(90, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:19', '2014-11-14 00:19:19'),
(88, '', 64, 0, 1, 0, 1, '2014-11-14 00:17:01', '2014-11-14 00:17:01'),
(25, '', 0, 0, 1, 3, 1, '2009-01-31 01:04:25', '2014-11-14 00:11:56'),
(59, '', 0, 1, 1, 1, 1, '2014-11-13 23:00:01', '2014-12-08 08:57:33'),
(60, '', 0, 1, 1, 0, 1, '2014-11-13 23:01:29', '2014-12-08 08:58:31'),
(62, '', 93, 0, 1, 0, 1, '2014-11-13 23:07:01', '2014-12-06 10:10:34'),
(97, '', 69, 0, 1, 0, 1, '2014-12-06 10:13:08', '2014-12-06 10:14:28'),
(64, '', 0, 1, 1, 0, 1, '2014-11-13 23:17:47', '2014-12-08 08:59:04'),
(65, '', 0, 1, 1, 0, 1, '2014-11-13 23:18:01', '2014-12-08 08:58:42'),
(66, '', 0, 1, 1, 0, 1, '2014-11-13 23:18:13', '2014-12-08 08:58:47'),
(69, '', 0, 1, 1, 0, 1, '2014-11-13 23:19:35', '2014-12-08 08:58:53'),
(70, '', 0, 1, 1, 0, 1, '2014-11-13 23:20:02', '2014-12-08 08:58:58'),
(71, '', 0, 1, 1, 0, 1, '2014-11-13 23:20:21', '2014-12-08 08:59:16'),
(89, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:04', '2014-11-14 00:19:04'),
(73, '', 0, 1, 1, 0, 1, '2014-11-13 23:21:46', '2014-12-08 08:59:20'),
(74, '', 69, 0, 1, 0, 1, '2014-11-13 23:21:57', '2014-12-06 10:11:20'),
(75, '', 98, 0, 1, 0, 1, '2014-11-13 23:22:18', '2014-12-06 10:23:09'),
(76, '', 69, 0, 1, 0, 1, '2014-11-13 23:22:30', '2014-12-06 10:42:58'),
(77, '', 95, 0, 1, 0, 1, '2014-11-13 23:22:43', '2014-12-06 10:34:18'),
(78, '', 98, 0, 1, 0, 1, '2014-11-13 23:23:01', '2014-12-06 10:44:24'),
(79, '', 96, 0, 1, 0, 1, '2014-11-13 23:23:24', '2014-12-06 10:11:00'),
(80, '', 66, 0, 1, 0, 1, '2014-11-13 23:49:35', '2014-11-13 23:49:35'),
(81, '', 66, 0, 1, 0, 1, '2014-11-13 23:49:55', '2014-11-13 23:49:55'),
(82, '', 66, 0, 1, 0, 1, '2014-11-13 23:50:10', '2014-11-13 23:50:10'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(57, '', 0, 0, 1, 3, 1, '2011-04-26 08:53:16', '2014-11-14 00:13:08'),
(93, '', 0, 1, 1, 0, 1, '2014-12-06 09:46:26', '2014-12-08 08:59:26'),
(94, '', 93, 0, 1, 0, 1, '2014-12-06 09:48:09', '2014-12-06 10:44:47'),
(95, '', 0, 1, 1, 0, 1, '2014-12-06 09:49:03', '2014-12-08 08:59:10'),
(96, '', 95, 0, 1, 0, 1, '2014-12-06 09:53:09', '2014-12-06 10:29:25'),
(99, '', 0, 1, 1, 0, 1, '2014-12-06 22:15:44', '2014-12-08 08:58:37'),
(98, '', 0, 1, 1, 0, 1, '2014-12-06 10:22:12', '2014-12-08 08:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(88, 2, 'Зажимы', '', '', ''),
(86, 2, 'Шприцы', '', '', ''),
(87, 2, 'Щипцы', '', '', ''),
(90, 2, 'Реактивы', '', '', ''),
(91, 2, 'Посуда пластик', '', '', ''),
(59, 2, 'Акушерство и гинекология', '', '', ''),
(60, 2, 'Дезинфицирующие средства', '', '', ''),
(97, 2, 'Посуда', '', '', ''),
(62, 2, 'Перевязка', '', '', ''),
(64, 2, 'Медицинский инструмент', '', '', ''),
(65, 2, 'Контрольные материалы', '', '', ''),
(66, 2, 'Костыли, трости', '', '', ''),
(69, 2, 'Лабораторное оборудование', '', '', ''),
(70, 2, 'Мебель', '', '', ''),
(71, 2, 'Оборудование для стерилизации', '', '', ''),
(89, 2, 'Стекло', '', '', ''),
(73, 2, 'Расходный материал', '', '', ''),
(74, 2, 'Реактивы и кислоты', '', '', ''),
(75, 2, 'Термометры Ареометры', '', '', ''),
(76, 2, 'Тест-реагенты и быстрые тесты', '', '', ''),
(77, 2, 'Физиотерапия', '', '', ''),
(78, 2, 'Хоз. товары', '', '', ''),
(79, 2, 'Шовный материал', '', '', ''),
(80, 2, 'Костыли подмышечные', '', '', ''),
(81, 2, 'Костыли подлокотные', '', '', ''),
(82, 2, 'Костыли детские', '', '', ''),
(99, 2, 'Диагностика', '', '', ''),
(98, 2, 'Товары для дома', '', '', ''),
(93, 2, 'Реабилитация', '', '', ''),
(94, 2, 'Ортопедия', '', '', ''),
(95, 2, 'Медицинское оборудование', '', '', ''),
(96, 2, 'Хирургия', '', '', '');
-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(59, 29),
(59, 31),
(59, 32),
(59, 33),
(59, 34),
(59, 35),
(59, 37),
(59, 38),
(59, 39),
(60, 2),
(60, 3),
(60, 4),
(60, 5),
(60, 8),
(60, 9),
(60, 29),
(60, 30),
(60, 31),
(60, 32),
(60, 33),
(60, 34),
(60, 35),
(64, 8),
(64, 9),
(64, 13),
(64, 14),
(64, 20),
(64, 21),
(64, 22),
(64, 23),
(64, 31),
(64, 36),
(66, 15),
(66, 17),
(66, 18),
(66, 19),
(88, 11),
(88, 12),
(88, 34),
(88, 35);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(33, 33, 0),
(46, 18, 0),
(46, 46, 1),
(45, 18, 0),
(45, 45, 1),
(18, 18, 0),
(24, 24, 0),
(26, 20, 0),
(26, 26, 1),
(27, 20, 0),
(27, 27, 1),
(20, 20, 0),
(32, 25, 0),
(32, 32, 1),
(31, 25, 0),
(31, 31, 1),
(30, 25, 0),
(30, 30, 1),
(29, 25, 0),
(29, 29, 1),
(36, 25, 0),
(36, 28, 1),
(28, 28, 1),
(36, 36, 2),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(28, 25, 0),
(86, 86, 1),
(57, 57, 0),
(91, 91, 1),
(91, 69, 0),
(90, 69, 0),
(90, 90, 1),
(89, 69, 0),
(88, 64, 0),
(88, 88, 1),
(87, 64, 0),
(87, 87, 1),
(86, 64, 0),
(25, 25, 0),
(59, 59, 0),
(60, 60, 0),
(62, 62, 1),
(64, 64, 0),
(65, 65, 0),
(66, 66, 0),
(97, 97, 1),
(69, 69, 0),
(70, 70, 0),
(71, 71, 0),
(89, 89, 1),
(73, 73, 0),
(74, 69, 0),
(75, 75, 1),
(76, 69, 0),
(77, 77, 1),
(78, 78, 1),
(79, 79, 2),
(80, 80, 1),
(80, 66, 0),
(81, 81, 1),
(81, 66, 0),
(82, 82, 1),
(82, 66, 0),
(75, 98, 0),
(97, 69, 0),
(79, 95, 0),
(62, 93, 0),
(98, 98, 0),
(74, 74, 1),
(93, 93, 0),
(94, 93, 0),
(95, 95, 0),
(96, 95, 0),
(99, 99, 0),
(79, 96, 1),
(96, 96, 1),
(77, 95, 0),
(76, 76, 1),
(78, 98, 0),
(94, 94, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(35, 0),
(36, 0),
(45, 0),
(46, 0),
(57, 0),
(59, 0),
(60, 0),
(62, 0),
(64, 0),
(65, 0),
(66, 0),
(69, 0),
(70, 0),
(71, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=221 ;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(220, 'Украина', 'UA', 'UKR', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Гривна', 'UAH', '', ' грн.', '2', 1.00000000, 1, '2014-11-01 14:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Eugene1', 'Kovaljov1', 'didevgen@gmail.com', '06357080689', '', '430923f9519b41decb84b9c7af6202fc3e67b369', 'd1b3a2abd', 'a:1:{s:5:"106::";i:1;}', 'a:0:{}', 1, 1, 1, '178.151.161.43', 1, 1, '', '2014-11-12 10:47:26'),
(2, 0, 'Иван', 'Иванов', 'test@example.com', '0502525555', '', 'cfd6c448b0eef56a57aa3b079dd60b84b6cc4509', '01d094a53', 'a:1:{s:5:"123::";i:1;}', 'a:2:{i:0;s:2:"53";i:1;s:3:"176";}', 1, 2, 1, '::1', 1, 1, '', '2014-11-22 01:44:57'),
(3, 0, 'Ирина', 'Третьяк', 'iren@malibu-sport.com.ua', '+380984387356', '', '5981f1a50981a4b3da6fe2effe0d508e2f3500f1', '4abe375b1', 'a:0:{}', '', 1, 3, 1, '134.249.143.13', 1, 1, '', '2014-12-02 13:55:05'),
(4, 0, '', '', 'kostemkin@gmail.com', '091', '', 'aa6413cad2187cf9e8150d957a8193b420d097db', '39af123fe', 'a:1:{s:4:"58::";i:1;}', '', 0, 4, 2, '94.179.127.246', 1, 1, '', '2014-12-08 02:02:38'),
(5, 0, '', '', 'kostemkin@mail.ru', '765342312', '', 'c3986bb471b94db2d0edb35be01ab694a27dccb5', '279976c8b', 'a:0:{}', '', 0, 5, 2, '94.179.127.246', 1, 1, '', '2014-12-08 02:08:47'),
(6, 0, '', '', 'kostemkin@yandex.ua', '4653423', '', '21ac0dc2cf2e6e64a5d73af00041d17cc4c5c334', 'c09d9e03a', '', '', 0, 6, 2, '94.179.127.246', 1, 0, '', '2014-12-08 02:10:04'),
(7, 0, '', '', 'kostemkin@yandex.ru', '78654e', '', '1e7cceb45e2efdacadeb9558e4f4777da0204417', 'a004468b2', 'a:0:{}', '', 0, 7, 2, '217.12.194.161', 1, 1, '', '2014-12-08 10:23:19'),
(8, 0, 'ssss', '', 'admin@eee.ru', '111', '', '7a5eea4bddba9a38fda60aab8dbbdf8d1d0a1a63', '3a31ad8ee', '', '', 0, 8, 2, '82.117.234.104', 1, 0, '', '2014-12-08 13:58:47'),
(9, 0, '1234', '', 'alex@test.com', '111', '', 'c1666f6280a0dc6a6fe65a79814990fae36ede14', 'd9a5ebb24', '', '', 0, 9, 2, '82.117.234.104', 1, 0, '', '2014-12-08 14:01:34'),
(10, 0, 'C hah HD h', '', 'anna@gmail.com', '225', '', '22cac2ff554cac63c5480cdc44633a92c93e8561', '117da474f', 'a:0:{}', '', 0, 10, 2, '46.203.75.168', 1, 1, '', '2014-12-08 14:07:19'),
(11, 0, 'hrbegrw', '', 'kos1@gmail.com', '5634232', '', '97702e1ef5d0e0c9469fc8a7a71fc1dd9fbef50c', '8725aba7a', 'a:0:{}', '', 0, 11, 2, '178.92.85.216', 1, 1, '', '2014-12-08 17:15:28'),
(14, 0, 'фффф', '', 'admin1@eee.ru', '767676', '', '81a3be73d361b6064d66bcb72fc1a7aa57e92d71', 'f799dd10c', '', '', 0, 14, 2, '93.76.213.8', 1, 0, '', '2014-12-08 21:54:04'),
(13, 0, 'Контактное лицо', '', 'stas249501@gmail.com', '1111111111', '', 'c5aac8737a060f9c02097943cc61b4a3b5e4b947', '71bc56047', 'a:1:{s:33:"244:YToxOntpOjI0MztzOjI6IjQ3Ijt9:";i:1;}', '', 1, 13, 2, '178.92.85.216', 1, 1, '', '2014-12-08 20:52:22'),
(15, 0, 'Антон', 'Котляров', 'admin@mail.ru', '068-956-54-32', '', '5d08a98f1e4f047d9cde712500593e04f2db87f8', '8029eb51d', 'a:1:{s:5:"177::";i:3;}', 'a:1:{i:0;s:3:"377";}', 1, 15, 1, '37.53.104.166', 1, 1, '', '2015-01-23 18:05:00'),
(16, 0, 'Eugene', '', 'didevgen1@gmail.com', '6264565', '', 'f49469d517f8271cf1d6713708821f516660049a', '0e9774355', NULL, NULL, 0, 16, 2, '178.151.161.43', 1, 0, '', '2015-01-26 22:41:32'),
(17, 0, 'Иванов', 'Иван', 'admin@gmail.com', '050-000-00-00', '', '448c739961964f222408ca2e4ec059038ab04958', '1cf8cc149', 'a:1:{s:5:"120::";i:1;}', '', 1, 17, 1, '37.53.104.166', 1, 1, '', '2015-01-28 20:59:19'),
(18, 0, 'ЧП Иванов', '', 'tonya@mail.ru', '050-000-00-00', '', '621b9cd1f122cf5524774b7317fee4d0e41dadf0', 'ea87ca020', NULL, NULL, 1, 18, 2, '37.53.104.166', 1, 1, '', '2015-02-01 20:18:21'),
(19, 0, 'ЧП Иванов', '', 'tontchka@mail.ru', '050-000-00-00', '', 'e076ef2f1df00c21d68ef269f1a295ce8993759a', '16cb74a69', 'a:3:{s:5:"200::";i:2;s:4:"52::";i:1;s:5:"120::";i:1;}', 'a:3:{i:0;s:3:"468";i:1;s:3:"227";i:2;s:3:"603";}', 1, 19, 2, '37.53.104.166', 1, 1, '', '2015-02-01 20:21:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_field`
--

CREATE TABLE IF NOT EXISTS `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 0, 0, 0, 0, 1),
(2, 1, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Физические лица', ''),
(2, 2, 'Юридические лица', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2014-11-12 10:47:30'),
(2, 2, '::1', '2014-11-22 01:45:29'),
(3, 3, '134.249.143.13', '2014-12-02 13:55:51'),
(4, 4, '94.179.127.246', '2014-12-08 02:03:43'),
(5, 5, '94.179.127.246', '2014-12-08 02:09:31'),
(6, 7, '217.12.194.161', '2014-12-08 10:24:04'),
(7, 10, '46.203.75.168', '2014-12-08 14:26:22'),
(8, 11, '178.92.85.216', '2014-12-08 17:16:20'),
(9, 13, '109.87.116.253', '2014-12-08 21:24:10'),
(10, 13, '178.92.85.216', '2014-12-08 21:40:33'),
(11, 1, '178.151.161.43', '2015-01-18 17:54:48'),
(12, 15, '37.54.241.214', '2015-01-23 18:05:01'),
(13, 17, '37.53.104.166', '2015-01-28 20:59:20'),
(14, 15, '37.53.104.166', '2015-02-01 14:28:59'),
(15, 19, '37.53.104.166', '2015-02-01 20:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=456 ;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(440, 'module', 'magnorcms'),
(452, 'shipping', 'flat'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(429, 'shipping', 'pickup'),
(438, 'module', 'tm_slideshow'),
(389, 'total', 'coupon'),
(451, 'module', 'category'),
(408, 'module', 'account'),
(439, 'total', 'sub_total'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(428, 'shipping', 'novaposhta'),
(442, 'module', 'information'),
(432, 'shipping', 'courier_ua'),
(443, 'module', 'bestseller'),
(444, 'payment', 'liqpay'),
(445, 'module', 'watermark'),
(446, 'module', 'simple'),
(447, 'module', 'product_viewed'),
(448, 'module', 'special'),
(453, 'module', 'filterpro');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Украина', 'Территория Украины', '2014-11-01 16:03:03', '2014-11-01 15:26:39'),
(6, 'г. Харьков', 'Территория города Харькова', '2014-11-01 16:02:50', '2014-11-01 15:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(3, 2, 'Как стать партнером', '&lt;h3 style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; line-height: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; Для групп товаров представленных на сайте&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px;&quot;&gt;Для начала сотрудничества необходимо предоставить следующую информацию:&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; line-height: normal;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Краткую характеристику бренда, его доля в процентах и деньгах среди товарных и ценовых аналогов на рынке Украины.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Квартальный оборот по предыдущим периодам в различных типах реализации (онлайн, офлайн, опт)&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Предполагаемый оборот с учетом сезонности&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Список конкурирующих брендов — их доля на рынке Украины&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Список конкурирующих продуктов — их доля на рынке Украины&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Маркетинговый фонд на развитие бренда со стороны поставщика и Бренда&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Маржинальность и степень надежности фиксированных цен на рынке&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Указать преимущественные характеристики бренда, слабые и сильные стороны&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Указать периодичность поставок и объем складских остатков&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Кредитные условия&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Формы оплаты&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Сервисное обслуживание, возможность возврата&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Консигнация и условия сток ротейшн&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Возможность проведения тренингов&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; line-height: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; Для групп товаров не представленных на сайте&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px;&quot;&gt;Для начала сотрудничества необходимо предоставить следующую информацию:&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; line-height: normal;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Краткую характеристику бренда, его доля в процентах и деньгах среди товарных и ценовых аналогов на рынке Украины, Европы, Мира.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Квартальный оборот по предыдущим периодам в различных типах реализации (онлайн, офлайн, опт)&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Предполагаемый оборот с учетом сезонности&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Список конкурирующих брендов — их доля на рынке Украины&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Список конкурирующих продуктов — их доля на рынке Украины&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Маркетинговый фонд на развитие бренда&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Маржинальность и степень надежности фиксированных цен на рынке&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Указать преимущественные характеристики бренда, слабые и сильные стороны&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Указать периодичность поставок и объем складских остатков&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Предоставить образцы продукции&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Кредитные условия&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Формы оплаты&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Сервисное обслуживание, возможность возврата&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Возможность проведения тренингов&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Описание товаров в электронном виде&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px; line-height: normal;&quot;&gt;Ваши предложения присылайте нам на e-mail: abcmedtehnika@gmail.com&lt;/span&gt;&lt;br /&gt;\r\n&lt;span id=&quot;copyinfo&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; text-decoration: none; outline: none; color: rgb(102, 0, 153); font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px; line-height: normal; position: absolute; overflow: hidden; width: 1px; height: 1px;&quot;&gt;&lt;a href=&quot;mailto:partner@rozetka.com.ua&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; text-decoration: none; outline: none; color: rgb(102, 0, 153); font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px; line-height: normal;&quot;&gt;Подробнее:&lt;/a&gt;&lt;/span&gt;&lt;/p&gt;\r\n'),
(4, 2, 'О нас', '&lt;h1&gt;&lt;img alt=&quot;&amp;quot;ABC - МЕдтехник&amp;quot;&quot; src=&quot;http://med.gooshie.net/image/data/logo2.png&quot; style=&quot;width: 255px; height: 82px;&quot; /&gt;&lt;/h1&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Фирма «АВС - Медтехник» работает на рынке уже более 15 лет, являясь дилерами как украинских, так и зарубежных производителей. Основными направлениями деятельности являются:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;комплексное оснащение медицинских учреждений;&lt;/li&gt;\r\n	&lt;li&gt;поставка лабораторного и медицинского оборудования;&lt;/li&gt;\r\n	&lt;li&gt;поставка товаров медицинского назначения, расходных материалов, лабораторной посуды и реактивов;&lt;/li&gt;\r\n	&lt;li&gt;поставка хирургических инструментов, шовного материала и многое другое.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Политика нашей фирмы основана на стремлении предложить качественный, современный и доступный по цене товар. Вся продукция сертифицирована, зарегистрирована и рекомендована Минздравом Украины. Нашими услугами пользуются многочисленные ведущие лечебные учреждения, поликлиники, медицинские центры нашего города и области, а также других городов нашей страны.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Мы предлагаем и Вам воспользоваться нашим опытом в решении Ваших задач наиболее эффективным способом.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot; &gt;Цены указаны в гривнах и включают НДС. Доставка товара по городу Харькову осуществляется бесплатно, в другие регионы Украины за счет клиента удобным для него способом.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;Мы надеемся, что наше сотрудничество будет плодотворным и взаимовыгодным.&lt;/p&gt;\r\n'),
(6, 2, 'Доставка и оплата', '&lt;h2&gt;Cамовывоз из нашего магазина&lt;/h2&gt;\r\n\r\n&lt;p&gt;Из офиса г. Харьков, пр. 50 лет СССР, 56/3. В рабочие дни с 10 до 21, с 10 до 19 в субботу и с 10 до 17 в воскресенье, после согласования заказа с менеджером.&amp;nbsp;&lt;br /&gt;\r\nОплата: наличная при получении, безналичная.&lt;br /&gt;\r\nТак как ассортимент товара очень широк, мы не можем весь его разместить на витринах выставки. Поэтому, просим согласовывать Ваш визит заранее.&lt;/p&gt;\r\n\r\n&lt;h2&gt;Доставка на дом по всей Украине!&lt;/h2&gt;\r\n\r\n&lt;p&gt;Стоимость адресной доставки компанией Мист Экспресс — составляет 35 грн.&lt;br /&gt;\r\nСтоимость доставки товара из раздела &quot;мебель&quot; по Украине рассчитывается индивидуально.&lt;/p&gt;\r\n\r\n&lt;p&gt;Подъем габаритных грузов вручную оплачивается отдельно. Стоимость подъёма: 20–60 грн./этаж в зависимости от размеров, веса товара и сложности подъема&lt;/p&gt;\r\n\r\n&lt;h1&gt;Способы оплаты&lt;/h1&gt;\r\n\r\n&lt;h3&gt;Наличная&lt;/h3&gt;\r\n\r\n&lt;p&gt;Оплата наличными возможна только при покупке в офисе, а также в пунктах самовывоза в регионах Украины и в отделениях &quot;Новой Почты&quot;. Оплата производится исключительно в национальной валюте.&lt;br /&gt;\r\nВ подтверждение оплаты мы выдаем Вам товарный чек.&lt;/p&gt;\r\n\r\n&lt;h3&gt;MasterCard акционный&lt;/h3&gt;\r\n\r\n&lt;p&gt;Вы можете оплатить заказ картой MasterCard любого банка без комиссии и получить скидку!&lt;/p&gt;\r\n\r\n&lt;h3&gt;Безналичная&lt;/h3&gt;\r\n\r\n&lt;p&gt;Оплата по безналичному расчету осуществляется следующим способом: после оформления заказа, менеджер магазина факсом или электронной почтой вышлет Вам счет-фактуру, который Вы сможете оплатить в кассе отделения любого банка или с расчетного счета Вашей фирмы. Для юридических лиц пакет всех необходимых документов предоставляется вместе с товаром. Доставка заказов, оплаченных по безналичному расчету, бесплатна, кроме товаров из раздела Бытовая техника и интерьер.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Платежные карты Visa и MasterCard (ПриватБанк)&lt;/h3&gt;\r\n\r\n&lt;p&gt;Вы можете оплатить заказ онлайн любой картой Visa и MasterCard любого банка без комиссии.&lt;br /&gt;\r\nОплата с помощью платежных карт осуществляется следующим способом:&lt;br /&gt;\r\nЕсли вы хотите оплатить свой заказ банковской картой, во время оформления заказа на сайте, Вам будет предложено сделать выбор способа оплаты. В графе &quot;Оплата&quot; вам нужно выбрать «Visa/MasterCard». После этого вы будете переадресованы на страницу системы безопасных платежей ПриватБанка, где Вам необходимо будет подтвердить оплату.&lt;br /&gt;\r\nПожалуйста, обратите внимание, получить товар, оплаченный платежной картой, может только тот клиент,&amp;nbsp;&lt;b&gt;на кого оформлен заказ&lt;/b&gt;, поэтому при получении заказа обязательно нужно иметь при себе паспорт.&lt;/p&gt;\r\n'),
(5, 2, 'Гарантийное обслуживание', '&lt;h1 style=&quot;margin: 0px; padding: 0px; border: 0px; letter-spacing: -0.015em; font-size: 1.85em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; line-height: normal;&quot;&gt;Гарантия и сервисное обслуживание&lt;/h1&gt;\r\n\r\n&lt;div class=&quot;text-page&quot; style=&quot;padding: 1em 0px 0px 1.75em; font-family: Arial, Helvetica, FreeSans, ''Liberation Sans'', ''Nimbus Sans L'', sans-serif; font-size: 13px; line-height: normal;&quot;&gt;\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;51&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;На какие товары предоставляется гарантия?&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;На товары в нашем магазине предоставляется гарантия, подтверждающая обязательства по отсутствию в товаре заводских дефектов. Гарантия предоставляется на срок от 2-х недель до 36 месяцев в зависимости от сервисной политики производителя. Срок гарантии указан в описании каждого товара на нашем сайте. Подтверждением гарантийных обязательств служит гарантийный талон производителя, или гарантийный талон &quot;ROZETKA — online супермаркет продвинутой электроники&quot;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Пожалуйста, проверьте комплектность и отсутствие дефектов в товаре при его получении (комплектность определяется описанием изделия или руководством по его эксплуатации).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;a href=&quot;http://rozetka.com.ua/shoes_info/#a4&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; text-decoration: none; outline: none; color: rgb(102, 0, 153);&quot;&gt;Особенности предоставления гарантийного обслуживания обуви.&lt;/a&gt;&lt;br /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;54&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;Куда обращаться за гарантийным обслуживанием?&lt;/h3&gt;\r\n\r\n&lt;p sizcache=&quot;9&quot; sizset=&quot;55&quot; style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Гарантийным обслуживанием занимаются сервисные центры, авторизованные производителями.&lt;br /&gt;\r\nАдреса и телефоны сервисных центров вы можете найти на гарантийном талоне или по адресу&amp;nbsp; —&amp;nbsp;&lt;b&gt;&lt;a href=&quot;http://rozetka.com.ua/service-centers&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; text-decoration: none; outline: none; color: rgb(102, 0, 153);&quot; title=&quot;Список авторизованных сервисных центров&quot;&gt;список сервисных центров&lt;/a&gt;&lt;/b&gt;.&amp;nbsp;&lt;/p&gt;\r\nПраво на бесплатное гарантийное обслуживание дает гарантийный талон, в котором указываются:&lt;br /&gt;\r\n&amp;nbsp;\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; модель;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; серийный номер;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; гарантийный срок;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp; дата продажи товара.&lt;/li&gt;\r\n&lt;/ul&gt;\r\nПожалуйста, сохраняйте его в течение всего срока эксплуатации.&lt;br /&gt;\r\n&lt;br /&gt;\r\nСрок ремонта определяется авторизованным СЦ, в случае возникновения проблем с сервис-партнером, вы можете обратиться в точку продажи.&lt;br /&gt;\r\n&amp;nbsp;\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;52&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;Я могу обменять или вернуть товар?&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Да, вы можете обменять или вернуть товар в течение 14 дней после покупки. Это право гарантирует вам «Закон о защите прав потребителя».&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Чтобы использовать эту возможность, пожалуйста убедитесь что:&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;товар, не был в употреблении и не имеет следов использования: царапин, сколов, потёртостей, на счётчике телефона не более 5 минут разговоров, программное обеспечение не подвергалось изменениям и т. п.;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;товар полностью укомплектован и не нарушена целостность упаковки;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;сохранены все ярлыки и заводская маркировка.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Если товар не работает, обмен или возврат товара производится только при наличии заключения сервисного центра, авторизованного производителем, о том, что условия эксплуатации не нарушены.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Особенности доставки и обмена обуви.&lt;/b&gt;&lt;br /&gt;\r\nСогласно правилам продаж нашей компании, мы не предоставляем услугу примерки при доставке либо выдаче обуви в пунктах выдачи. Вы можете осмотреть полученный товар на предмет соответствия с описанием и отсутствия внешних повреждений, однако производить примерку допускается только после оплаты товара.&lt;br /&gt;\r\n&lt;br /&gt;\r\nВ случае несоответствия размера вы можете произвести возврат товара в 14-дневный срок в соответствии с правилами возврата товаров, приобретенных в нашей компании. Обратите внимание, что к возврату не принимаются товары, утратившие товарный вид либо целостность упаковки, а также с любыми следами использования и эксплуатации!&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;Обмен/возврат ювелирных изделий&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Несмотря на то, что по законодательству Украины ювелирные изделия входят в список НЕ подлежащих возврату и обмену мы даем возможность вернуть или обменять изделие в течение 14 дней со дня покупки.&lt;/p&gt;\r\n&lt;strong&gt;Что вы не можете вернуть&lt;/strong&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;К сожалению, мы вынуждены отказать в возврате или обмене, в следующих случаях:&lt;/p&gt;\r\n\r\n&lt;ul class=&quot;marker&quot; style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Изделия, которые были повреждены или модифицированы (исключая заводской брак)&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Изделия, которые имеют следы пользования&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Индивидуальные заказы, сделанные по требованию заказчика&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Изделия после 14 дней со дня продажи, не могут быть приняты для возврата или обмена&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Изделия, которые изменили свой цвет или из-за нахождения в бассейне (влияние химических веществ), или других внешних факторов.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;strong&gt;Условия возврата или обмена изделия&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul class=&quot;marker&quot; style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Мы принимаем на возврат/обмен изделия в новом и неиспользованном состоянии в оригинальной упаковке и при наличии товарного чека.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;После получения изделия на обмен/возврат, наши ювелиры проверят состояние изделия для контроля качества в течение 2-5 рабочих дней.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;После проверки ювелиром состояния изделия, мы сделаем возврат денег или обмен на другое изделие.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;При возврате денег за изделие мы не компенсируем расходы за доставку, которая была в оригинальном заказе.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Возвраты за покупки, сделанные с помощью кредитной карты, будут зачислены только на ту же карту.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Возвраты за покупки, сделанные за наличный расчет, будут согласованы с клиентом для выбора удобного способа возврата денег.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Для обмена или возврата товаров из раздела &quot;Ювелирные украшения&quot;, Вам необходимо отправить изделие службой доставки &quot;Мист Экспресс&quot; по адресу: г. Днепропетровск, Екатеринославский бульвар 2, офис 604. Отправка товара производится на имя: Пыхунина Людмила Витальевна.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul class=&quot;marker&quot; style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;53&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;Где и как можно произвести обмен или возврат?&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Обменять или вернуть товар можно в нашем офисе по адресу:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;г. Киев, улица Ярославская, 57,&lt;/b&gt;&amp;nbsp;c понедельника по пятницу с 10-00 до 19-00, в субботу — с 10-00 до 17-00.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Телефон: (044) 502-84-47&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Обмен и возврат товаров из раздела &quot;Бытовая техника и интерьер&quot; проводятся по адресу: ул. Фрунзе, 40 тел.: (044) 591-18-87&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Для обмена или возврата товаров из раздела &quot;Ювелирные украшения&quot;, Вам необходимо отправить изделие службой доставки &quot;Мист Экспресс&quot; по адресу: г. Днепропетровск, Екатеринославский бульвар 2, офис 604. Отправка товара производится на имя: Пыхунина Людмила Витальевна.&lt;br /&gt;\r\nТелефон: 0676315291&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;При возврате товара нужно иметь при себе паспорт. Мы вернем деньги в день возврата товара или, в случае отсутствия денег в кассе, не позже, чем через 7 дней.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Если вы живете не в Киеве, можете отправить товар обратно с помощью службы доставки. Если у товара сохранён товарный вид и упаковка, мы обменяем его вам или вернём деньги.&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Обмен и возврат товаров надлежащего качества осуществляется за счет покупателя в течении 14 дней со дня продажи при условии сохранении товарного вида купленного оборудования, упаковки, и наличии документов, подтверждающих факт покупки.&lt;/p&gt;\r\n&amp;nbsp;\r\n\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;56&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;Сервисный центр не может отремонтировать мой товар в гарантийный период&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;Если в гарантийный период товар, который вы у нас купили, вышел из строя по вине производителя и не может быть отремонтирован в авторизованном сервисном центре, мы обменяем товар на аналогичный или вернём деньги.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Для этого, пожалуйста, предоставьте нам:&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;товар с полной комплектацией;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;гарантийный талон;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;документ подтверждающий оплату;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;заключение сервисного центра с отметкой о том, что товар имеет «существенный недостаток».&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h3 sizcache=&quot;9&quot; sizset=&quot;57&quot; style=&quot;margin: 0px 0px 0px -1.2em; padding: 0.5em 0px 0.25em; border: 0px; letter-spacing: -0.015em; font-size: 1.4em;&quot;&gt;В каких случаях гарантия не предоставляется?&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Сервисный центр может отказать в гарантийном ремонте если:&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;нарушена сохранность гарантийных пломб;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;есть механические или иные повреждения, которые возникли вследствие умышленных или неосторожных действий покупателя или третьих лиц;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;нарушены правила использования, изложенные в эксплуатационных документах;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;было произведено несанкционированное вскрытие, ремонт или изменены внутренние коммуникации и компоненты товара, изменена конструкция или схемы товара;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;неправильно заполнен гарантийный талон;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;серийный или IMEI номер, находящийся в памяти изделия, изменён, стёрт или не может быть установлен.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Гарантийные обязательства не распространяются на следующие неисправности:&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;естественный износ или исчерпание ресурса;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;случайные повреждения, причиненные клиентом или повреждения, возникшие вследствие небрежного отношения или использования (воздействие жидкости, запыленности, попадание внутрь корпуса посторонних предметов и т. п.);&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;повреждения в результате стихийных бедствий (природных явлений);&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;повреждения, вызванные аварийным повышением или понижением напряжения в электросети или неправильным подключением к электросети;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;повреждения, вызванные дефектами системы, в которой использовался данный товар, или возникшие в результате соединения и подключения товара к другим изделиям;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;повреждения, вызванные использованием товара не по назначению или с нарушением правил эксплуатаций;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;программное обеспечение, которое не входит в комплект изделия;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;сохранность информации на жестком диске.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 1.25em; border: 0px; word-wrap: break-word; line-height: 1.5em;&quot;&gt;&lt;b&gt;Пожалуйста, обратите внимание:&lt;/b&gt;&lt;/p&gt;\r\nСогласно статьи 9 Закона Украины «О защите прав потребителей».&lt;br /&gt;\r\nКабинетом Министров Украины утвержден перечень товаров надлежащего качества, которые не подлежат обмену или возврату.&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\nК таким товарам относятся:&lt;br /&gt;\r\n&amp;nbsp;\r\n&lt;ul style=&quot;margin: -0.6em 0px 0px; padding-right: 0px; padding-bottom: 1em; padding-left: 1.5em; border: 0px; list-style-position: initial; list-style-image: initial; word-wrap: break-word; font-size: 1.077em;&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Перопуховые изделия.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Детские игрушки мягкие.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Детские игрушки резиновые надувные.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Перчатки.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Тюлегардинные и кружевные полотна.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Белье нательное.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Белье постельное.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Чулочно-носочные изделия.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Печатные издания.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Диски для лазерных систем считывания с записью.&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Товары для новорожденных (пеленки, соски, бутылочки для кормления т. д.).&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px 0px 0.4em; border: 0px;&quot;&gt;Товары для личной гигиены (например: эпиляторы, электробритвы, машинки для стрижки волос)&lt;br /&gt;\r\n	&lt;span id=&quot;copyinfo&quot; style=&quot;position: absolute; overflow: hidden; width: 1px; height: 1px;&quot;&gt;Подробнее:&lt;a href=&quot;http://rozetka.com.ua/warranty/&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; text-decoration: none; outline: none; color: rgb(102, 0, 153);&quot;&gt;http://rozetka.com.ua/warranty/&lt;/a&gt;&lt;/span&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(2, 'Русский', 'ru', 'ru,ru_RU,ru_RU.UTF-8', 'ru.png', 'russian', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Сантиметры', 'см'),
(2, 2, 'Миллиметры', 'мм'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'data/demo/htc_logo.jpg', 0),
(6, 'Palm', 'data/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'data/demo/hp_logo.jpg', 0),
(8, 'Apple', 'data/demo/apple_logo.jpg', 0),
(9, 'Canon', 'data/demo/canon_logo.jpg', 0),
(10, 'Sony', 'data/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(13, 'select', 0),
(14, 'select', 0),
(15, 'select', 0),
(16, 'select', 0),
(17, 'select', 0),
(18, 'select', 0),
(19, 'select', 0),
(20, 'select', 0),
(21, 'select', 0),
(22, 'select', 0),
(23, 'select', 0),
(24, 'select', 0),
(25, 'select', 0),
(26, 'select', 0),
(27, 'select', 0),
(28, 'select', 0),
(29, 'select', 0),
(30, 'select', 0),
(31, 'select', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(13, 2, 'Объем'),
(14, 2, 'Размер'),
(15, 2, 'Длина'),
(16, 2, 'Ширина'),
(17, 2, 'Число секций'),
(18, 2, 'Лунки'),
(19, 2, 'Количество'),
(20, 2, 'Диаметр'),
(21, 2, 'Производитель'),
(22, 2, 'КСК-'),
(23, 2, 'П-'),
(24, 2, 'Расход зеркал'),
(25, 2, 'Пинцет'),
(26, 2, 'Материал'),
(27, 2, 'Тип шпателя'),
(28, 2, 'Тип мыла'),
(29, 2, 'Цвет краски'),
(30, 2, 'Назначение '),
(31, 2, 'Время');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=224 ;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(113, 16, 'no_image.jpg', 0),
(220, 13, 'no_image.jpg', 0),
(158, 13, 'no_image.jpg', 0),
(157, 13, 'no_image.jpg', 0),
(149, 13, 'no_image.jpg', 0),
(148, 13, 'no_image.jpg', 0),
(118, 13, 'no_image.jpg', 0),
(196, 14, 'no_image.jpg', 0),
(133, 14, 'no_image.jpg', 0),
(104, 14, 'no_image.jpg', 0),
(103, 14, 'no_image.jpg', 0),
(102, 14, 'no_image.jpg', 0),
(172, 15, 'no_image.jpg', 0),
(197, 14, 'no_image.jpg', 0),
(76, 14, 'no_image.jpg', 0),
(141, 14, 'no_image.jpg', 0),
(116, 13, 'no_image.jpg', 0),
(137, 14, 'no_image.jpg', 0),
(134, 14, 'no_image.jpg', 0),
(73, 14, 'no_image.jpg', 0),
(128, 14, 'no_image.jpg', 0),
(61, 14, 'no_image.jpg', 0),
(58, 14, 'no_image.jpg', 0),
(56, 14, 'no_image.jpg', 0),
(91, 14, 'no_image.jpg', 0),
(59, 14, 'no_image.jpg', 0),
(86, 13, 'no_image.jpg', 0),
(84, 13, 'no_image.jpg', 0),
(83, 13, 'no_image.jpg', 0),
(77, 13, 'no_image.jpg', 0),
(78, 13, 'no_image.jpg', 0),
(79, 13, 'no_image.jpg', 0),
(52, 13, 'no_image.jpg', 0),
(55, 13, 'no_image.jpg', 0),
(54, 13, 'no_image.jpg', 0),
(80, 13, 'no_image.jpg', 0),
(112, 16, 'no_image.jpg', 0),
(90, 16, 'no_image.jpg', 0),
(74, 14, 'no_image.jpg', 0),
(64, 14, 'no_image.jpg', 0),
(164, 15, 'no_image.jpg', 0),
(206, 15, 'no_image.jpg', 0),
(60, 14, 'no_image.jpg', 0),
(62, 14, 'no_image.jpg', 0),
(65, 14, 'no_image.jpg', 0),
(105, 17, '', 0),
(106, 17, '', 0),
(107, 18, '', 0),
(108, 18, '', 0),
(179, 15, 'no_image.jpg', 0),
(177, 15, 'no_image.jpg', 0),
(124, 15, 'no_image.jpg', 0),
(165, 15, 'no_image.jpg', 0),
(127, 15, 'no_image.jpg', 0),
(89, 16, 'no_image.jpg', 0),
(87, 16, 'no_image.jpg', 0),
(88, 16, 'no_image.jpg', 0),
(114, 19, 'no_image.jpg', 0),
(49, 13, 'no_image.jpg', 0),
(53, 13, 'no_image.jpg', 0),
(50, 13, 'no_image.jpg', 0),
(51, 13, 'no_image.jpg', 0),
(57, 13, 'no_image.jpg', 0),
(122, 20, 'no_image.jpg', 0),
(121, 20, 'no_image.jpg', 0),
(111, 15, 'no_image.jpg', 0),
(110, 15, 'no_image.jpg', 0),
(96, 15, 'no_image.jpg', 0),
(94, 15, 'no_image.jpg', 0),
(93, 15, 'no_image.jpg', 0),
(71, 14, 'no_image.jpg', 0),
(69, 14, 'no_image.jpg', 0),
(67, 14, 'no_image.jpg', 0),
(72, 14, 'no_image.jpg', 0),
(115, 19, 'no_image.jpg', 0),
(130, 19, '', 0),
(131, 21, 'no_image.jpg', 0),
(75, 14, 'no_image.jpg', 0),
(92, 14, 'no_image.jpg', 0),
(100, 14, 'no_image.jpg', 0),
(66, 14, 'no_image.jpg', 0),
(129, 14, 'no_image.jpg', 0),
(70, 14, 'no_image.jpg', 0),
(136, 14, 'no_image.jpg', 0),
(101, 14, 'no_image.jpg', 0),
(139, 14, 'no_image.jpg', 0),
(142, 22, '', 0),
(143, 22, '', 0),
(144, 22, '', 0),
(145, 22, '', 0),
(146, 22, '', 0),
(81, 13, 'no_image.jpg', 0),
(68, 13, 'no_image.jpg', 0),
(82, 13, 'no_image.jpg', 0),
(150, 23, '', 0),
(151, 23, '', 0),
(152, 23, '', 0),
(123, 20, 'no_image.jpg', 0),
(153, 20, '', 0),
(154, 20, '', 0),
(155, 20, '', 0),
(156, 20, '', 0),
(85, 13, 'no_image.jpg', 0),
(117, 13, 'no_image.jpg', 0),
(119, 13, 'no_image.jpg', 0),
(120, 13, 'no_image.jpg', 0),
(140, 14, 'no_image.jpg', 0),
(162, 24, '', 0),
(163, 24, '', 0),
(109, 15, 'no_image.jpg', 0),
(63, 15, 'no_image.jpg', 0),
(126, 15, 'no_image.jpg', 0),
(168, 25, '', 0),
(169, 25, '', 0),
(170, 25, '', 0),
(97, 15, 'no_image.jpg', 0),
(98, 15, 'no_image.jpg', 0),
(171, 15, 'no_image.jpg', 0),
(132, 21, 'no_image.jpg', 0),
(173, 21, '', 0),
(174, 21, '', 0),
(175, 26, '', 0),
(176, 26, '', 0),
(178, 15, 'no_image.jpg', 0),
(99, 15, 'no_image.jpg', 0),
(125, 15, 'no_image.jpg', 0),
(180, 27, '', 0),
(181, 27, '', 0),
(182, 27, '', 0),
(183, 27, '', 0),
(184, 27, '', 0),
(185, 28, '', 0),
(186, 28, '', 0),
(187, 29, '', 0),
(188, 29, '', 0),
(189, 29, '', 0),
(190, 29, '', 0),
(191, 29, '', 0),
(192, 30, '', 0),
(193, 30, '', 0),
(194, 30, '', 0),
(135, 14, 'no_image.jpg', 0),
(161, 14, 'no_image.jpg', 0),
(195, 14, 'no_image.jpg', 0),
(138, 14, 'no_image.jpg', 0),
(203, 31, 'no_image.jpg', 0),
(202, 31, 'no_image.jpg', 0),
(201, 31, 'no_image.jpg', 0),
(199, 31, 'no_image.jpg', 0),
(200, 31, 'no_image.jpg', 0),
(166, 15, 'no_image.jpg', 0),
(207, 15, 'no_image.jpg', 0),
(167, 15, 'no_image.jpg', 0),
(208, 15, 'no_image.jpg', 0),
(209, 15, 'no_image.jpg', 0),
(213, 15, 'no_image.jpg', 0),
(216, 15, 'no_image.jpg', 0),
(215, 15, 'no_image.jpg', 0),
(217, 15, 'no_image.jpg', 0),
(218, 15, 'no_image.jpg', 0),
(198, 14, 'no_image.jpg', 0),
(219, 14, '', 0),
(147, 13, 'no_image.jpg', 0),
(159, 13, 'no_image.jpg', 0),
(160, 13, 'no_image.jpg', 0),
(221, 13, 'no_image.jpg', 0),
(222, 13, '', 0),
(223, 15, '', 0),
(204, 31, 'no_image.jpg', 0),
(205, 31, 'no_image.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(113, 2, 16, '660 мм'),
(50, 2, 13, '250 мл'),
(53, 2, 13, '600 мл'),
(196, 2, 14, '2,0x90'),
(220, 2, 13, '475 мл'),
(133, 2, 14, '300х400'),
(104, 2, 14, '140х295'),
(103, 2, 14, '130х270'),
(177, 2, 15, '100 мм'),
(102, 2, 14, '200х350'),
(76, 2, 14, '24х10'),
(157, 2, 13, '10 л'),
(141, 2, 14, '150х180'),
(137, 2, 14, '400х300'),
(134, 2, 14, '300х220'),
(73, 2, 14, '40х70'),
(128, 2, 14, '90х250'),
(61, 2, 14, '10х90'),
(58, 2, 14, '16х150'),
(56, 2, 14, '15х60'),
(158, 2, 13, '5 л'),
(149, 2, 13, '7 л'),
(148, 2, 13, '9 л'),
(118, 2, 13, '2000 мл'),
(116, 2, 13, '4000 мл'),
(86, 2, 13, '0,2 мл'),
(77, 2, 13, '25 мл'),
(83, 2, 13, '0,1 мл'),
(112, 2, 16, '500 мм'),
(90, 2, 16, '75 м'),
(89, 2, 16, '20 м'),
(91, 2, 14, '75х20х100м'),
(59, 2, 14, '14х120'),
(74, 2, 14, '36х50'),
(124, 2, 15, '90 мм'),
(165, 2, 15, '0.75 м'),
(127, 2, 15, '150 мм'),
(111, 2, 15, '400 мм'),
(64, 2, 14, '30х40'),
(60, 2, 14, '14х100'),
(62, 2, 14, '10х80'),
(65, 2, 14, '24х30'),
(71, 2, 14, '75х110'),
(105, 2, 17, '2'),
(106, 2, 17, '4'),
(107, 2, 18, '96'),
(108, 2, 18, '192'),
(110, 2, 15, '700 мм'),
(96, 2, 15, '5 мм'),
(94, 2, 15, '2 мм'),
(87, 2, 16, '100 м'),
(88, 2, 16, '100 мм'),
(115, 2, 19, '264'),
(114, 2, 19, '103'),
(84, 2, 13, '0,04 мл'),
(78, 2, 13, '200 мл'),
(79, 2, 13, '2 мл'),
(122, 2, 20, '90 мм'),
(121, 2, 20, '180 мм'),
(93, 2, 15, '1 мм'),
(109, 2, 15, '1300 мм'),
(63, 2, 15, '200 мм'),
(126, 2, 15, '210 мм'),
(69, 2, 14, '150х230'),
(67, 2, 14, '13х18'),
(72, 2, 14, '56х80'),
(75, 2, 14, '34х12'),
(130, 2, 19, '2'),
(132, 2, 21, 'Phillips (Голландия)'),
(131, 2, 21, 'Китай'),
(92, 2, 14, '300х80х100м'),
(100, 2, 14, '300х450'),
(66, 2, 14, '18х24'),
(129, 2, 14, '60х140'),
(70, 2, 14, '100х150'),
(136, 2, 14, '200x150'),
(101, 2, 14, '250х400'),
(135, 2, 14, '260х180'),
(142, 2, 22, '18'),
(143, 2, 22, '12'),
(144, 2, 22, '9'),
(145, 2, 22, '6'),
(146, 2, 22, '3'),
(55, 2, 13, '50 мл'),
(150, 2, 23, '40'),
(151, 2, 23, '22'),
(152, 2, 23, '18'),
(123, 2, 20, '50 мм'),
(153, 2, 20, '2,7 мм'),
(154, 2, 20, '3,2 мм'),
(155, 2, 20, '4,7 мм'),
(156, 2, 20, '7 мм'),
(52, 2, 13, '100 мл'),
(54, 2, 13, '1000 мл'),
(80, 2, 13, '5 мл'),
(139, 2, 14, '200х150'),
(162, 2, 24, '0 до 209 мм'),
(163, 2, 24, '0 до 165 мм'),
(97, 2, 15, '10 мм'),
(168, 2, 25, 'ПА — 200, ПХ — 200'),
(169, 2, 25, 'ПА — 250, ПХ — 250'),
(170, 2, 25, 'ПА — 150, ПХ — 150'),
(98, 2, 15, '20 мм'),
(171, 2, 15, '140 мм'),
(178, 2, 15, '110 мм'),
(173, 2, 21, 'Италия, Англия'),
(174, 2, 21, 'Россия'),
(175, 2, 26, 'Пластмасса'),
(176, 2, 26, 'Эмаль'),
(99, 2, 15, '30 мм'),
(125, 2, 15, '120 мм'),
(166, 2, 15, '1,5 м'),
(207, 2, 15, '250 мм'),
(167, 2, 15, '1 м'),
(180, 2, 27, 'Ложка гинекологическая'),
(181, 2, 27, 'Ложка урологическая'),
(182, 2, 27, 'Эйра'),
(183, 2, 27, 'Петля гинекологическая'),
(184, 2, 27, 'Зонд на хламидоз'),
(185, 2, 28, 'Хозяйственное'),
(186, 2, 28, 'Туалетное'),
(187, 2, 29, 'Желтый'),
(188, 2, 29, 'Зеленый'),
(189, 2, 29, 'Черный'),
(190, 2, 29, 'Красная'),
(191, 2, 29, 'Белая'),
(192, 2, 30, 'Манипуляции'),
(193, 2, 30, 'Инструменты'),
(194, 2, 30, 'Пеленание'),
(140, 2, 14, '250х350'),
(161, 2, 14, '250х20'),
(195, 2, 14, '0,8x40'),
(138, 2, 14, '300х220'),
(205, 2, 31, '3 мин'),
(204, 2, 31, '2 мин'),
(203, 2, 31, '1 мин'),
(202, 2, 31, '5 мин'),
(201, 2, 31, '10 мин'),
(199, 2, 31, '20 мин'),
(200, 2, 31, '15 мин'),
(208, 2, 15, '40 мм'),
(209, 2, 15, '60 мм'),
(213, 2, 15, '270 мм'),
(216, 2, 15, '270 мм'),
(215, 2, 15, '160 мм'),
(217, 2, 15, '4 мм'),
(218, 2, 15, '3 мм'),
(197, 2, 14, '1,0x120'),
(198, 2, 14, '10х120'),
(219, 2, 14, '13х120'),
(49, 2, 13, '400 мл'),
(51, 2, 13, '150 мл'),
(57, 2, 13, '10 мл'),
(81, 2, 13, '20 мл'),
(68, 2, 13, '500 мл'),
(82, 2, 13, '1 мл'),
(85, 2, 13, '0,02 мл'),
(117, 2, 13, '10000 мл'),
(119, 2, 13, '35 мл'),
(120, 2, 13, '18 мл'),
(147, 2, 13, '21 Л'),
(159, 2, 13, '3 л'),
(160, 2, 13, '1 л'),
(221, 2, 13, '6 л'),
(222, 2, 13, '3 мл'),
(179, 2, 15, '115 мм'),
(206, 2, 15, '160 мм'),
(164, 2, 15, '1 м'),
(172, 2, 15, '170 мм'),
(223, 2, 15, '1,25 м');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://localhost/', 2, 1, 'Иван', 'Иванов', 'test@example.com', '0502525555', '', 'Иван', 'Иванов', '', '', '', 'ул. Бакулина 10, 5', '', 'Харьков', '60060', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Иван', 'Иванов', '', 'ул. Бакулина 10, 5', '', 'Харьков', '60060', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', '', '22895.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 'ru,en-US;q=0.8,en;q=0.6', '2014-11-22 01:52:35', '2014-11-22 01:52:35'),
(2, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Ирина', 'Третьяк', 'iren@malibu-sport.com.ua', '+380984387356', '', 'Ирина', 'Третьяк', '', '', '', 'ул. Шаумяна. 129', '', 'Харьков', '61109', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'Ирина', 'Третьяк', '', 'ул. Шаумяна. 129', '', 'Харьков', '61109', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', 'тест', '22590.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '134.249.143.13', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-02 13:45:20', '2014-12-02 13:45:20'),
(3, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Ирина', 'Третьяк', 'iren@malibu-sport.com.ua', '+380984387356', '', 'Ирина', 'Третьяк', '', '', '', 'ул. Шаумяна. 129', '', 'Харьков', '61109', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Ирина', 'Третьяк', '', 'ул. Шаумяна. 129', '', 'Харьков', '61109', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', 'тест', '22590.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '134.249.143.13', '', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-02 13:45:45', '2014-12-02 13:45:48'),
(4, 1, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '232.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 17:35:14', '2014-12-08 17:35:21'),
(5, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '1.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 17:42:53', '2014-12-08 17:42:58'),
(6, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '22.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 17:50:10', '2014-12-08 17:50:15'),
(7, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '10.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 17:59:28', '2014-12-08 17:59:32'),
(8, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '0.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 18:40:36', '2014-12-08 18:40:36'),
(9, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Стас', 'Задорожний', 'stas249501@gmail.com', '0953123838', '', 'Стас', 'Задорожний', '', '', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Стас', 'Задорожний', '', 'прпарапр', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'Спасибо)', '10.0000', 1, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 18:41:59', '2014-12-08 18:42:02'),
(10, 2, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Stas', 'Zadorojhniy', 'stas249501@gmail.com', '0953123838', '', 'Stas', 'Zadorojhniy', '', '', '', 'ываыва', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Stas', 'Zadorojhniy', '', 'ываыва', '', 'Харьков', '61115', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'ывыва', '10.0000', 14, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '109.87.116.253', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4', '2014-12-08 20:51:04', '2014-12-08 22:11:47'),
(11, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'Иван', 'Иванов', 'email@test.com', '(050) 000-00-00', '', 'Иван', 'Иванов', '', '', '', 'блаблабла', '', 'Харьков', '00000', 'Украина', 220, 'Харьковская область', 3487, '', 'Оплата при доставке', 'cod', 'Иван', 'Иванов', '', 'блаблабла', '', 'Харьков', '00000', 'Украина', 220, 'Харьковская область', 3487, '', 'Самовывоз из магазина', 'pickup.pickup', 'вапавпавп', '22796.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '93.76.213.8', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 'uk-UA,uk;q=0.8,ru;q=0.6,en-US;q=0.4,en;q=0.2', '2014-12-11 06:35:29', '2014-12-11 06:35:29'),
(12, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'выаыа', 'dsf', 'sdfs@sdf.com', 'sfs', '', 'выаыа', 'dsf', '', '', '', 'Тракторостроителей', '', 'Харьков', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'выаыа', 'dsf', '', 'Тракторостроителей', '', 'Харьков', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', '', '40.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.151.161.43', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-01-18 18:54:22', '2015-01-18 18:54:22'),
(13, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 0, 1, 'выаыа', 'dsf', 'sdfs@sdf.com', 'sfs', '', 'выаыа', 'dsf', '', '', '', 'Тракторостроителей', '', 'Харьков', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'выаыа', 'dsf', '', 'Тракторостроителей', '', 'Харьков', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', '', '40.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.151.161.43', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-01-18 18:55:54', '2015-01-18 18:55:54'),
(14, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 1, 1, 'Eugene1', 'Kovaljov1', 'didevgen@gmail.com', '06357080689', '', 'Eugene', 'Kovaljov', '', '', '', 'Харьков', '', 'Kharkov', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'Eugene', 'Kovaljov', '', 'Харьков', '', 'Kharkov', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', '', '210.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.151.161.43', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-01-26 22:53:14', '2015-01-26 22:53:14'),
(15, 0, 'INV-2014-00', 0, 'ABC-Медтехника', 'http://med.gooshie.net/', 1, 1, 'Eugene1', 'Kovaljov1', 'didevgen@gmail.com', '06357080689', '', 'Eugene', 'Kovaljov', '', '', '', 'Харьков', '', 'Kharkov', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Кредитная карта / Дебетовая карта (LiqPay)', 'liqpay', 'Eugene', 'Kovaljov', '', 'Харьков', '', 'Kharkov', '61120', 'Украина', 220, 'Харьковская область', 3487, '', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по ', 'novaposhta.novaposhta', '', '210.0000', 0, 0, '0.0000', 2, 4, 'UAH', '1.00000000', '178.151.161.43', '', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4,uk;q=0.2', '2015-01-26 22:58:08', '2015-01-26 22:58:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_download`
--

CREATE TABLE IF NOT EXISTS `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, '', '2014-11-22 01:52:35'),
(2, 3, 1, 1, '', '2014-12-02 13:45:48'),
(3, 4, 1, 1, '', '2014-12-08 17:35:21'),
(4, 5, 1, 1, '', '2014-12-08 17:42:58'),
(5, 6, 1, 1, '', '2014-12-08 17:50:15'),
(6, 7, 1, 1, '', '2014-12-08 17:59:32'),
(7, 9, 1, 1, '', '2014-12-08 18:42:02'),
(8, 10, 1, 1, '', '2014-12-08 20:51:07'),
(9, 10, 14, 1, 'Если ты получил это письмо - свистни Олексею в ВК', '2014-12-08 22:11:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 6, 10, 239, 35, 'Длина', '200 мм', 'select'),
(2, 11, 16, 243, 46, 'Размер', '150х230', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(2, 1, 52, 'Электрокардиограф', 'АТ-1', 1, '22590.0000', '22590.0000', '0.0000', 0),
(3, 1, 60, 'Штатив для длительных вливаний ', 'ШДВ', 1, '295.0000', '295.0000', '0.0000', 0),
(4, 2, 52, 'Электрокардиограф', 'АТ-1', 1, '22590.0000', '22590.0000', '0.0000', 0),
(6, 3, 52, 'Электрокардиограф', 'АТ-1', 1, '22590.0000', '22590.0000', '0.0000', 0),
(7, 4, 120, 'Бланидас порошковый 1 кг', 'Бланидас', 1, '160.0000', '160.0000', '0.0000', 0),
(8, 4, 109, 'Неостерил голубой спрей 0,25 л', 'BALTIACHEMI', 1, '72.0000', '72.0000', '0.0000', 0),
(9, 5, 239, ' Крышка к эксикатору', 'd=180, d=210', 1, '1.0000', '1.0000', '0.0000', 0),
(10, 6, 234, ' Палочка стеклянная лопаточка стеклянная', 'Палочка стеклянная ', 1, '22.0000', '22.0000', '0.0000', 0),
(11, 7, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(12, 8, 383, 'Индикатор внутриглазного давления', ' НГД-02', 1, '0.0000', '0.0000', '0.0000', 0),
(14, 9, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(15, 10, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(16, 11, 244, 'Воронка', 'Воронка', 1, '14.0000', '14.0000', '0.0000', 0),
(17, 11, 52, 'Электрокардиограф', 'АТ-1', 1, '22590.0000', '22590.0000', '0.0000', 0),
(18, 11, 116, 'Дезактин 1кг', 'Дезактин', 1, '192.0000', '192.0000', '0.0000', 0),
(19, 12, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(21, 13, 56, 'Чаша выпарительная', '№4', 1, '10.0000', '10.0000', '0.0000', 0),
(22, 14, 106, 'Перекись водорода 35% ', 'Перекись водорода 35%', 1, '180.0000', '180.0000', '0.0000', 0),
(23, 15, 106, 'Перекись водорода 35% ', 'Перекись водорода 35%', 1, '180.0000', '180.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(3, 2, 'В пути'),
(7, 2, 'Отменен'),
(5, 2, 'Завершен'),
(10, 2, 'Ошибка'),
(12, 2, 'Возвращен'),
(1, 2, 'Обрабатывается'),
(15, 2, 'Обработан'),
(14, 2, 'Просрочен');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Сумма', '22895.00 грн.', '22895.0000', 0),
(2, 1, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(3, 1, 'total', 'Итого', '22895.00 грн.', '22895.0000', 10),
(4, 2, 'sub_total', 'Сумма', '22590.00 грн.', '22590.0000', 0),
(5, 2, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '0.00 грн.', '0.0000', 1),
(8, 3, 'sub_total', 'Сумма', '22590.00 грн.', '22590.0000', 0),
(9, 3, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '0.00 грн.', '0.0000', 1),
(10, 4, 'sub_total', 'Сумма', '232.00 грн.', '232.0000', 0),
(11, 4, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(12, 5, 'sub_total', 'Сумма', '1.00 грн.', '1.0000', 0),
(13, 5, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(14, 6, 'sub_total', 'Сумма', '22.00 грн.', '22.0000', 0),
(15, 6, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(16, 7, 'sub_total', 'Сумма', '10.00 грн.', '10.0000', 0),
(17, 7, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(18, 8, 'sub_total', 'Сумма', '0.00 грн.', '0.0000', 0),
(19, 8, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(23, 9, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(22, 9, 'sub_total', 'Сумма', '10.00 грн.', '10.0000', 0),
(24, 10, 'sub_total', 'Сумма', '10.00 грн.', '10.0000', 0),
(25, 10, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(26, 11, 'sub_total', 'Сумма', '22796.00 грн.', '22796.0000', 0),
(27, 11, 'shipping', 'Самовывоз из магазина', '0.00 грн.', '0.0000', 1),
(28, 12, 'sub_total', 'Сумма', '10.00 грн.', '10.0000', 0),
(29, 12, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '30.00 грн.', '30.0000', 1),
(32, 13, 'sub_total', 'Сумма', '10.00 грн.', '10.0000', 0),
(33, 13, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '30.00 грн.', '30.0000', 1),
(34, 14, 'sub_total', 'Сумма', '180.00 грн.', '180.0000', 0),
(35, 14, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '30.00 грн.', '30.0000', 1),
(36, 15, 'sub_total', 'Сумма', '180.00 грн.', '180.0000', 0),
(37, 15, 'shipping', 'Наши сотрудники отправят товар на склад Новой почты<br>(<a href="http://novaposhta.ua/office" target="_blank">Список складов по городам</a>)', '30.00 грн.', '30.0000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=720 ;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(66, 'ТМ- З-7-1 ', '', '', '', '', '', '', '', 100, 5, 'data/demo/Med_Instrument_mg_9867.jpg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '28.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 11:49:56', '0000-00-00 00:00:00', 0),
(69, 'З-120', '', '', '', '', '', '', '', 100, 5, 'data/demo/z-120.jpg', 0, 1, '65.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:01:28', '0000-00-00 00:00:00', 0),
(70, 'З-119', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-119.jpg', 0, 1, '60.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:08:16', '0000-00-00 00:00:00', 2),
(71, 'З-118', '', '', '', '', '', '', '', 100, 5, 'data/demo/z-118.jpg', 0, 1, '60.0000', 0, 0, '2014-11-16', '0.00000000', 1, '12.50000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:11:29', '0000-00-00 00:00:00', 3),
(68, 'З-121', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-121.jpg', 0, 1, '65.0000', 0, 0, '2014-11-16', '0.00000000', 1, '12.50000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 11:59:26', '0000-00-00 00:00:00', 0),
(72, 'З-117', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-117.jpg', 0, 1, '60.0000', 0, 0, '2014-11-16', '0.00000000', 1, '12.50000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:13:53', '0000-00-00 00:00:00', 2),
(73, '№3 З-95-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-95-3 (1).jpg', 0, 1, '207.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:16:41', '0000-00-00 00:00:00', 1),
(74, '№2 З-95-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-95-2.jpg', 0, 1, '207.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:17:56', '0000-00-00 00:00:00', 1),
(75, 'З-62-4', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-62-4.jpg', 0, 1, '60.0000', 0, 0, '2014-11-16', '0.00000000', 1, '15.40000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:19:51', '2014-11-17 12:22:33', 0),
(76, 'З-62-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-62-2.jpg', 0, 1, '60.0000', 0, 0, '2014-11-16', '0.00000000', 1, '15.20000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:24:00', '0000-00-00 00:00:00', 0),
(77, 'З-62-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-61-1.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '15.20000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:25:11', '0000-00-00 00:00:00', 0),
(78, 'З-92', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-92.jpg', 0, 1, '65.0000', 0, 0, '2014-11-16', '0.00000000', 1, '16.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:32:06', '0000-00-00 00:00:00', 1),
(79, 'З-53', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-53.jpg', 0, 1, '65.0000', 0, 0, '2014-11-16', '0.00000000', 1, '15.80000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:33:56', '0000-00-00 00:00:00', 1),
(80, 'З-42-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-42-1.jpg', 0, 1, '116.0000', 0, 0, '2014-11-16', '0.00000000', 1, '27.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:36:22', '0000-00-00 00:00:00', 0),
(81, 'З-42', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-42.jpg', 0, 1, '116.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:38:13', '0000-00-00 00:00:00', 0),
(85, 'З-31', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-31.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '20.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:49:23', '0000-00-00 00:00:00', 2),
(82, 'З-37', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-37.jpg', 0, 1, '96.0000', 0, 0, '2014-11-16', '0.00000000', 1, '19.60000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:40:12', '0000-00-00 00:00:00', 0),
(83, 'З-32', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-32.jpg', 0, 1, '96.0000', 0, 0, '2014-11-16', '0.00000000', 1, '19.80000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:42:07', '2014-11-17 12:42:40', 1),
(84, 'З-31-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-31-1.jpg', 0, 1, '96.0000', 0, 0, '2014-11-16', '0.00000000', 1, '20.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:44:42', '0000-00-00 00:00:00', 3),
(52, 'АТ-1', '', '', '', '', '', '', 'Швейцария', 3, 5, 'data/demo/cardiovit.jpg', 0, 1, '22590.0000', 0, 0, '2014-11-13', '2.50000000', 1, '288.00000000', '210.00000000', '70.00000000', 2, 1, 1, 1, 1, '2014-11-14 19:07:48', '2014-11-14 19:36:41', 47),
(53, 'LD-71 ', '', '', '', '', '', '', 'Сингапур', 100, 5, 'data/demo/LD-71-A.jpg', 0, 1, '181.0000', 0, 0, '2014-11-13', '340.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:41:32', '2014-11-14 19:42:15', 7),
(54, 'ST-77', '', '', '', '', '', '', '', 500, 5, 'data/demo/st77.jpg', 0, 1, '200.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:47:59', '2014-11-14 19:48:36', 3),
(55, 'Пробирка &quot;Eppendorf&quot;', '', '', '', '', '', '', '', 50, 5, 'data/demo/tovar-1550151.jpg', 0, 1, '129.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:55:34', '0000-00-00 00:00:00', 10),
(56, '№4', '', '', '', '', '', '', '', 996, 5, 'data/demo/resize.jpg', 0, 1, '10.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:30:18', '2015-01-18 20:49:40', 10),
(57, 'ТС', '', '', '', '', '', '', '', 23, 5, 'data/demo/71QU39-aPfL.200x200.jpg', 0, 1, '20.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:37:00', '2014-12-07 10:37:56', 2),
(58, 'ШМ-2', '', '', '', '', '', '', '', 17, 5, 'data/demo/x-Shkaf-medicinskij-dvuhstvorchatij-ShM-2.d01.jpg', 0, 1, '3090.0000', 0, 0, '2014-11-13', '0.00000000', 1, '40.00000000', '100.00000000', '160.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:41:26', '0000-00-00 00:00:00', 3),
(59, 'СВИ', '', '', '', '', '', '', '', 10, 5, 'data/demo/sotl_vnutriven.jpg', 0, 1, '1400.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:46:22', '0000-00-00 00:00:00', 3),
(60, 'ШДВ', '', '', '', '', '', '', '', 0, 5, 'data/demo/shtativ-dlya-dlitelnyh-vlivanii-evro-shdv-e.png', 0, 1, '295.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:49:33', '0000-00-00 00:00:00', 4),
(61, 'Москит', '', '', '', '', '', '', '', 100, 5, 'data/demo/Med_Instrument_mg_9867.jpg', 0, 1, '75.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:28:42', '2014-11-14 21:32:34', 2),
(62, 'IGAR-SHP-5', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpricy-3-kompon.jpg', 0, 1, '0.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:39:39', '2014-11-14 21:40:12', 1),
(63, '&quot;МІТ-ЕФ2&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed11.jpg', 0, 1, '3040.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:54:29', '0000-00-00 00:00:00', 2),
(64, 'УЗТ-1.01Ф-МедТеКо', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed25.jpg', 0, 1, '16900.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:56:50', '2014-11-14 21:57:31', 3),
(65, 'Delphinus F1000', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed73.jpg', 0, 1, '2200.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 22:02:42', '2014-12-11 17:49:44', 7),
(67, 'Москит', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-122.jpg', 0, 1, '63.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 11:52:47', '2014-11-17 11:57:30', 0),
(86, 'З-21-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-21-1.jpg', 0, 1, '96.0000', 0, 0, '2014-11-16', '0.00000000', 1, '150.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:51:00', '0000-00-00 00:00:00', 2),
(87, 'З-21', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-21.jpg', 0, 1, '96.0000', 0, 0, '2014-11-16', '0.00000000', 1, '15.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:52:11', '0000-00-00 00:00:00', 2),
(88, 'З-11-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-11-2.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '16.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 12:55:25', '0000-00-00 00:00:00', 0),
(89, 'З-11-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-11-1.jpg', 0, 1, '118.0000', 0, 0, '2014-11-16', '0.00000000', 1, '160.00000000', '0.00000000', '0.00000000', 2, 1, 1, 1, 1, '2014-11-17 12:56:51', '0000-00-00 00:00:00', 0),
(90, 'З-5-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-5-1.jpg', 0, 1, '118.0000', 0, 0, '2014-11-16', '0.00000000', 1, '160.00000000', '0.00000000', '0.00000000', 2, 1, 1, 1, 1, '2014-11-17 12:58:51', '0000-00-00 00:00:00', 1),
(91, 'З-5', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-5.jpg', 0, 1, '118.0000', 0, 0, '2014-11-16', '0.00000000', 1, '160.00000000', '0.00000000', '0.00000000', 2, 1, 1, 1, 1, '2014-11-17 13:00:06', '0000-00-00 00:00:00', 2),
(92, 'З-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-3.jpg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '240.00000000', '0.00000000', '0.00000000', 2, 1, 1, 1, 1, '2014-11-17 13:01:25', '0000-00-00 00:00:00', 0),
(93, 'Отрез', '', '', '', '', '', '', '', 1, 5, 'data/demo/marlya_p36_5m.jpg', 0, 1, '10.0000', 0, 0, '2014-11-16', '0.00000000', 1, '500.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:05:40', '0000-00-00 00:00:00', 1),
(94, 'Отрез 3м', '', '', '', '', '', '', '', 1, 5, 'data/demo/marlya_p36_3m.jpg', 0, 1, '7.0000', 0, 0, '2014-11-16', '0.00000000', 1, '300.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:07:18', '0000-00-00 00:00:00', 1),
(95, 'Рулон марли', '', '', '', '', '', '', '', 1, 5, 'data/demo/marlya_p36_1000m.jpg', 0, 1, '270.0000', 0, 0, '2014-11-16', '0.00000000', 1, '1000000.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:09:53', '0000-00-00 00:00:00', 3),
(96, 'бинт', '', '', '', '', '', '', '', 1, 5, 'data/demo/bint_ns_7x14.jpg', 0, 1, '5.0000', 0, 0, '2014-11-16', '0.00000000', 1, '7.00000000', '14.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:13:24', '2014-12-11 17:50:38', 6),
(97, 'бинт 5х10', '', '', '', '', '', '', '', 1, 5, 'data/demo/bint_ns_5x10.gif', 0, 1, '2.5000', 0, 0, '2014-11-16', '0.00000000', 1, '5.00000000', '10.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:16:57', '2014-12-11 17:51:00', 2),
(98, 'известь', '', '', '', '', '', '', '', 1, 5, 'data/demo/hlor_izvest.jpg', 0, 1, '7.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:20:53', '0000-00-00 00:00:00', 0),
(101, 'АХД-гель (0,25л)', '', '', '', '', '', '', '', 1, 5, 'data/demo/axd_gel_250ml1.jpeg', 0, 1, '45.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:24:19', '2015-01-18 20:36:27', 17),
(102, 'Салфетки', '', '', '', '', '', '', '', 1, 5, 'data/demo/hospisept.jpg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:26:42', '0000-00-00 00:00:00', 0),
(103, 'Хлорантонин', '', '', '', '', '', '', '', 1, 5, 'data/demo/hlorantoin.jpeg', 0, 1, '145.0000', 0, 0, '2014-11-16', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:28:55', '2015-01-18 00:01:12', 1),
(105, 'STERILLIUM COMFORT GEL', '', '', '', '', '', '', '', 1, 5, 'data/demo/sterillium_gel.jpg', 0, 1, '30.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:54:38', '2015-01-18 20:32:57', 5),
(106, 'Перекись водорода 35%', '', '', '', '', '', '', '', 1, 5, 'data/demo/perekis_35.jpeg', 0, 1, '180.0000', 0, 0, '2014-11-16', '11.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:56:04', '0000-00-00 00:00:00', 1),
(107, 'Неохлор таблет.№300', '', '', '', '', '', '', '', 1, 5, 'data/demo/neohlor_tab.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 13:58:50', '0000-00-00 00:00:00', 0),
(108, 'УНВЦПД', '', '', '', '', '', '', '', 1, 5, 'data/demo/neohlor_1l.jpg', 0, 1, '36.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:00:40', '2015-01-18 20:35:49', 0),
(110, 'NEOSTERYL ', '', '', '', '', '', '', '', 1, 5, 'data/demo/68496538_w640_h640_cid239667_pid32425427-ea2602ed.jpg', 0, 1, '136.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:04:43', '2015-01-18 20:34:52', 0),
(111, 'Максисан ', '', '', '', '', '', '', '', 1, 5, 'data/demo/02_maksisan.jpg', 0, 1, '495.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:08:36', '2015-01-18 20:34:03', 0),
(112, 'Лизоформин ', '', '', '', '', '', '', '', 1, 5, 'data/demo/lizoformin_plus.png', 0, 1, '300.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:10:59', '2015-01-18 20:41:01', 2),
(113, '3000', '', '', '', '', '', '', '', 1, 5, 'data/demo/4acca03dcd443-250x500w.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:13:05', '2015-01-18 20:40:31', 3),
(114, 'ЖАВЕЛЬ-КЛЕЙД', '', '', '', '', '', '', '', 1, 5, 'data/demo/zhavel-kleyd.jpg', 0, 1, '430.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:18:35', '0000-00-00 00:00:00', 4),
(115, 'Дезальгин', '', '', '', '', '', '', '', 1, 5, 'data/demo/dezalgin.jpg', 0, 1, '1500.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:20:58', '2015-01-18 20:39:58', 8),
(116, 'Дезактин', '', '', '', '', '', '', '', 1, 5, 'data/demo/1605000970.jpg', 0, 1, '192.0000', 0, 0, '2014-11-16', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:27:17', '0000-00-00 00:00:00', 3),
(117, 'Дезэфект', '', '', '', '', '', '', '', 1, 5, 'data/demo/271_enl.jpg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:31:19', '0000-00-00 00:00:00', 2),
(118, 'Блаусан', '', '', '', '', '', '', '', 1, 5, 'data/demo/Blausan_3L.jpg', 0, 1, '325.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:33:56', '2015-01-18 20:39:25', 2),
(119, 'Бациллол', '', '', '', '', '', '', '', 1, 5, 'data/demo/bazcillol.jpg', 0, 1, '260.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:36:23', '2015-01-18 20:27:39', 4),
(120, 'Бланидас', '', '', '', '', '', '', '', 0, 5, 'data/demo/blanidas_porshok.jpg', 0, 1, '160.0000', 0, 0, '2014-11-16', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:38:51', '0000-00-00 00:00:00', 12),
(121, 'Бланидас', '', '', '', '', '', '', '', 1, 5, 'data/demo/blanidas_aktiv.png', 0, 1, '320.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:49:01', '2014-12-06 09:31:44', 4),
(122, 'Бриллиант', '', '', '', '', '', '', '', 1, 5, 'data/demo/briliant.jpg', 0, 1, '156.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:52:24', '2015-01-18 20:28:09', 2),
(123, 'Аниосгель', '', '', '', '', '', '', '', 1, 5, 'data/demo/aniosgel.jpg', 0, 1, '320.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 14:54:56', '2015-01-18 20:37:45', 22),
(125, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/panel.jpg', 0, 1, '115.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:19:38', '0000-00-00 00:00:00', 1),
(126, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/panel.jpg', 0, 1, '95.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:21:57', '0000-00-00 00:00:00', 1),
(127, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/panel.jpg', 0, 1, '72.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:24:36', '0000-00-00 00:00:00', 5),
(128, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/panel.jpg', 0, 1, '62.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:27:29', '0000-00-00 00:00:00', 1),
(129, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/panel.jpg', 0, 1, '51.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:29:13', '0000-00-00 00:00:00', 1),
(130, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:40:31', '0000-00-00 00:00:00', 1),
(131, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:41:24', '0000-00-00 00:00:00', 1),
(132, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:42:50', '0000-00-00 00:00:00', 2),
(133, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:44:47', '0000-00-00 00:00:00', 1),
(134, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/9604118_w200_h200_test_2.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:46:49', '0000-00-00 00:00:00', 1),
(135, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:50:32', '0000-00-00 00:00:00', 1),
(136, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '16.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:56:01', '0000-00-00 00:00:00', 2),
(137, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '16.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 22:59:28', '0000-00-00 00:00:00', 1),
(138, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:00:28', '0000-00-00 00:00:00', 8),
(139, 'ЭТ ', '', '', '', '', '', '', '', 1, 5, 'data/demo/40660248_w200_h200_cid1218555_pid21946567-3a286741.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:03:04', '2014-11-17 23:04:10', 2),
(140, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/image093.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:18:04', '0000-00-00 00:00:00', 0),
(141, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/image093.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:19:23', '2014-11-17 23:24:06', 0),
(142, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/image093.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:26:51', '0000-00-00 00:00:00', 0),
(143, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/image093.jpg', 0, 1, '14.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:28:35', '0000-00-00 00:00:00', 0),
(144, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/abhor-reagents.png', 0, 1, '20.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:33:38', '0000-00-00 00:00:00', 0),
(145, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/abhor-reagents.png', 0, 1, '20.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:35:12', '2014-11-17 23:35:36', 0),
(146, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/abhor-reagents.png', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:37:06', '0000-00-00 00:00:00', 0),
(147, 'ЭТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/abhor-reagents.png', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:40:49', '0000-00-00 00:00:00', 0),
(148, 'Контейнер', '', '', '', '', '', '', '', 1, 5, 'data/demo/11.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:43:42', '0000-00-00 00:00:00', 4),
(149, 'Наконечник', '', '', '', '', '', '', '', 1, 5, 'data/demo/nakonech_doz_100-1000.jpeg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:46:40', '2014-11-17 23:47:05', 2),
(150, 'Наконечник', '', '', '', '', '', '', '', 1, 5, 'data/demo/nakonech_doz_05-200.jpeg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:47:58', '0000-00-00 00:00:00', 1),
(151, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6926.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '230.00000000', '93.00000000', '35.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:51:46', '2014-11-17 23:53:11', 0),
(152, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6926.jpg', 0, 1, '95.0000', 0, 0, '2014-11-16', '0.00000000', 1, '98.00000000', '83.00000000', '38.00000000', 1, 1, 1, 1, 1, '2014-11-17 23:54:58', '2014-11-17 23:55:33', 0),
(153, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6926.jpg', 0, 1, '0.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 00:12:19', '0000-00-00 00:00:00', 0),
(154, 'Шпатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel_dervyan_ns.gif', 0, 1, '45.0000', 0, 0, '2014-11-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 00:15:23', '0000-00-00 00:00:00', 0),
(155, 'Шпатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel-dlya-yazyka-plastikovyj-odnorazovyj-sterilnyj-suyun-1.jpg', 0, 1, '100.0000', 0, 0, '2014-11-16', '0.00000000', 1, '150.00000000', '18.00000000', '1.80000000', 2, 1, 1, 1, 1, '2014-11-18 00:17:55', '0000-00-00 00:00:00', 0),
(156, 'Пробирка &quot;Eppendorf&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/eppendorf.jpeg', 0, 1, '520.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:05:46', '0000-00-00 00:00:00', 0),
(157, 'Пробирка &quot;Eppendorf&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/eppendorf.jpeg', 0, 1, '520.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:07:12', '2014-12-11 17:51:49', 0),
(158, 'Плитка для группы крови', '', '', '', '', '', '', '', 1, 5, 'data/demo/18608be1da7d8385265464d37765c8a3.jpg', 0, 1, '100.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:15:19', '0000-00-00 00:00:00', 1),
(159, 'Бриса', '', '', '', '', '', '', '', 1, 5, 'data/demo/2988223_w640_h640_brissa2.jpg', 0, 1, '4.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:20:43', '0000-00-00 00:00:00', 1),
(160, 'Апликатор', '', '', '', '', '', '', '', 1, 5, 'data/demo/2988223_w640_h640_brissa2.jpg', 0, 1, '2.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:22:24', '0000-00-00 00:00:00', 2),
(161, 'Плевательница', '', '', '', '', '', '', '', 1, 5, 'data/demo/k2_16.jpg', 0, 1, '10.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:32:13', '0000-00-00 00:00:00', 0),
(162, 'Сосуд', '', '', '', '', '', '', '', 1, 5, 'data/demo/1250108.jpeg', 0, 1, '10.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 11:35:40', '2014-11-18 19:21:57', 0),
(163, 'Сосуд', '', '', '', '', '', '', '', 1, 5, 'data/demo/7409648475043517de7fed.jpg', 0, 1, '14.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 19:22:47', '2014-11-18 19:23:01', 0),
(164, 'Сосуд', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 19:28:58', '0000-00-00 00:00:00', 0),
(165, 'Сосуд', '', '', '', '', '', '', '', 1, 5, 'data/demo/2356738.jpeg', 0, 1, '4.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 19:57:20', '0000-00-00 00:00:00', 0),
(166, 'Сосуд', '', '', '', '', '', '', '', 1, 5, 'data/demo/sosud_mocha_75ml.jpg', 0, 1, '4.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:02:27', '0000-00-00 00:00:00', 0),
(167, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6841.jpg', 0, 1, '80.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:15:41', '2014-11-18 20:16:15', 0),
(168, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6841.jpg', 0, 1, '80.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:20:00', '0000-00-00 00:00:00', 0),
(169, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/imgres.jpg', 0, 1, '0.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:24:37', '0000-00-00 00:00:00', 0),
(170, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6841.jpg', 0, 1, '100.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:26:47', '2014-11-18 20:29:00', 0),
(171, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6841.jpg', 0, 1, '100.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:30:19', '0000-00-00 00:00:00', 0),
(172, 'Пробирка', '', '', '', '', '', '', '', 1, 5, 'data/demo/img_6841.jpg', 0, 1, '200.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:37:24', '0000-00-00 00:00:00', 0),
(173, 'Деструктор', '', '', '', '', '', '', '', 1, 5, 'data/demo/nuliff_dots.jpeg', 0, 1, '1800.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:41:23', '0000-00-00 00:00:00', 1),
(174, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/ob_promin.jpg', 0, 1, '420.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:43:32', '0000-00-00 00:00:00', 0),
(175, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/orbp-5_30.jpg', 0, 1, '500.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:48:15', '0000-00-00 00:00:00', 0),
(176, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/obpe-6_30_timer.jpg', 0, 1, '2000.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:53:42', '0000-00-00 00:00:00', 2),
(177, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/obpe-3_30_timer.jpg', 0, 1, '1900.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 20:59:20', '0000-00-00 00:00:00', 3),
(178, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/obpe-3_30.jpg', 0, 1, '0.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:02:42', '0000-00-00 00:00:00', 0),
(179, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/orb-5_30_timer.jpg', 0, 1, '4500.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:05:45', '0000-00-00 00:00:00', 0),
(180, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/orb-2_30_timer.jpg', 0, 1, '2000.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:09:04', '2014-11-18 21:10:07', 0),
(181, 'Облучатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/orb-2_30_timer.jpg', 0, 1, '0.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:10:54', '0000-00-00 00:00:00', 0),
(182, 'Модель ФС', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '42.0000', 0, 0, '2014-11-17', '0.00000000', 1, '18.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:38:15', '2014-11-18 21:45:43', 5),
(183, 'Модель ФС', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '31.5000', 0, 0, '2014-11-17', '0.00000000', 1, '15.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:50:06', '0000-00-00 00:00:00', 1),
(184, 'Модель ФБ', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '18.9000', 0, 0, '2014-11-17', '0.00000000', 1, '12.50000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:52:09', '0000-00-00 00:00:00', 1),
(185, 'Модель ФБ', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '13.6500', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:53:32', '0000-00-00 00:00:00', 1),
(186, 'Модель ФС', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '13.1300', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:57:57', '0000-00-00 00:00:00', 2),
(187, 'Модель ФБ', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '7.8800', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 21:59:08', '0000-00-00 00:00:00', 1),
(188, 'Модель ФБ', '', '', '', '', '', '', '', 1, 5, 'data/demo/filtr_obezzoleniy.jpg', 0, 1, '6.3000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:00:08', '2014-11-18 22:00:28', 1),
(189, 'Модель Т-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/784663403_6.jpg', 0, 1, '4.5000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:08:35', '2014-11-18 22:11:28', 0),
(190, 'Т-6', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '29.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:19:38', '0000-00-00 00:00:00', 0),
(191, '25л', '', '', '', '', '', '', '', 1, 5, 'data/demo/sumka_holodilnik.jpg', 0, 1, '1200.0000', 0, 0, '2014-11-17', '8.00000000', 1, '30.00000000', '24.00000000', '35.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:23:16', '0000-00-00 00:00:00', 1),
(192, '10л', '', '', '', '', '', '', '', 1, 5, 'data/demo/sumka_holodilnik.jpg', 0, 1, '390.0000', 0, 0, '2014-11-17', '3.00000000', 1, '31.00000000', '19.00000000', '18.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:25:52', '0000-00-00 00:00:00', 20),
(193, 'СЛ-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/spirtovka1.jpg', 0, 1, '35.0000', 0, 0, '2014-11-17', '0.20000000', 1, '0.00000000', '0.00000000', '9.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:28:30', '0000-00-00 00:00:00', 1),
(194, 'СК1', '', '', '', '', '', '', '', 1, 5, 'data/demo/skarifikatornot.jpg', 0, 1, '0.2300', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:35:46', '0000-00-00 00:00:00', 1),
(195, 'СК2', '', '', '', '', '', '', '', 10, 5, 'data/demo/skarifikator.jpg', 0, 1, '0.1800', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:38:46', '0000-00-00 00:00:00', 2),
(196, 'Пробка', '', '', '', '', '', '', '', 1, 5, 'data/demo/probka_rezin_soe.jpeg', 0, 1, '0.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:43:32', '0000-00-00 00:00:00', 1),
(197, 'ПР1', '', '', '', '', '', '', '', 1, 5, 'data/demo/probka_rez-10.jpeg', 0, 1, '1.4000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:51:44', '0000-00-00 00:00:00', 0),
(198, 'ПР1', '', '', '', '', '', '', '', 1, 5, 'data/demo/probka_rez-10.jpeg', 0, 1, '0.9000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:52:58', '0000-00-00 00:00:00', 0),
(199, 'Петля', '', '', '', '', '', '', '', 1, 5, 'data/demo/petla_s_alum_derzh.jpg', 0, 1, '14.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 22:56:58', '0000-00-00 00:00:00', 1),
(200, 'ПЕ-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/9937558_w640_h640_pe1n.jpg', 0, 1, '2016.0000', 0, 0, '2014-11-17', '35.00000000', 1, '54.00000000', '42.00000000', '23.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:02:49', '0000-00-00 00:00:00', 1),
(201, 'ПР1', '', '', '', '', '', '', '', 1, 5, 'data/demo/planshet_dla_krovi.jpg', 0, 1, '23.0000', 0, 0, '2014-11-17', '0.00000000', 1, '18.00000000', '28.00000000', '0.10000000', 1, 1, 1, 1, 1, '2014-11-18 23:07:35', '0000-00-00 00:00:00', 1),
(202, 'ОКП', '', '', '', '', '', '', '', 1, 5, 'data/demo/planshet_72lun.jpg', 0, 1, '33.0000', 0, 0, '2014-11-17', '0.00000000', 1, '22.00000000', '12.00000000', '0.10000000', 1, 1, 1, 1, 1, '2014-11-18 23:10:05', '0000-00-00 00:00:00', 1),
(203, 'Greetmed', '', '', '', '', '', '', '', 15, 5, 'data/demo/planshet_96lun_v.jpg', 0, 1, '12.0000', 0, 0, '2014-11-17', '0.00000000', 1, '12.80000000', '8.60000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:12:50', '0000-00-00 00:00:00', 1),
(204, 'Пип1', '', '', '', '', '', '', '', 18, 5, 'data/demo/pipetka_konteyner.jpg', 0, 1, '1.8000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:15:01', '0000-00-00 00:00:00', 1),
(205, 'Пн1', '', '', '', '', '', '', '', 1, 5, 'data/demo/perchatki_ns.jpeg', 0, 1, '22.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:18:31', '0000-00-00 00:00:00', 1),
(206, 'Универсал', '', '', '', '', '', '', '', 1, 5, 'data/demo/nakonechnik_200mkl.jpg', 0, 1, '88.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:21:21', '0000-00-00 00:00:00', 2),
(207, 'Micrimed', '', '', '', '', '', '', '', 1, 5, 'data/demo/maslo_imersion.jpg', 0, 1, '160.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:24:45', '0000-00-00 00:00:00', 1),
(208, 'Л12', '', '', '', '', '', '', '', 10, 5, 'data/demo/lupa_s_ruchkoy.jpg', 0, 1, '65.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:27:27', '2014-11-19 11:00:59', 0),
(209, 'Кфк', '', '', '', '', '', '', '', 5, 5, 'data/demo/kuveta.jpg', 0, 1, '210.0000', 0, 0, '2014-11-17', '0.00000000', 1, '10.00000000', '2.50000000', '4.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:32:55', '2014-11-19 10:58:19', 0),
(210, 'Кфк', '', '', '', '', '', '', '', 6, 5, 'data/demo/kuveta.jpg', 0, 1, '120.0000', 0, 0, '2014-11-17', '0.00000000', 1, '5.00000000', '0.00000000', '3.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:35:47', '2014-11-19 11:00:12', 1),
(211, 'Кфк', '', '', '', '', '', '', '', 1, 5, 'data/demo/kuveta.jpg', 0, 1, '85.0000', 0, 0, '2014-11-17', '0.00000000', 1, '3.00000000', '0.00000000', '1.50000000', 1, 1, 1, 1, 1, '2014-11-18 23:40:12', '2014-11-19 10:57:35', 1),
(212, 'Кфк', '', '', '', '', '', '', '', 4, 5, 'data/demo/kuveta.jpg', 0, 1, '45.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.50000000', '0.00000000', '0.25000000', 1, 1, 1, 1, 1, '2014-11-18 23:41:41', '2014-11-19 10:59:15', 0),
(213, 'Контейнер', '', '', '', '', '', '', '', 10, 5, 'data/demo/imgres.jpg', 0, 1, '51.0000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:44:28', '2014-11-19 10:53:04', 3),
(214, 'Контейнер', '', '', '', '', '', '', '', 8, 5, 'data/demo/imgres (1).jpg', 0, 1, '68.2000', 0, 0, '2014-11-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-18 23:45:42', '2014-11-19 10:55:10', 7),
(216, 'Ёрш1', '', '', '', '', '', '', '', 5, 5, 'data/demo/Ерш пробирочный.jpg', 0, 1, '4.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:39:10', '0000-00-00 00:00:00', 1),
(217, 'Ёрш2', '', '', '', '', '', '', '', 10, 5, 'data/demo/28602010-07-0733849736.jpg', 0, 1, '10.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:43:38', '0000-00-00 00:00:00', 3),
(218, 'Пробирка Флоринского', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_florinskogo.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:44:46', '2014-12-06 09:55:55', 2),
(219, 'П-1-10-0,2 ', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_p1-10-02.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:47:32', '2014-12-06 09:56:10', 3),
(220, 'П-1-10', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_p1-10.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:48:44', '2014-12-06 09:56:02', 4),
(221, 'Apexmed', '', '', '', '', '', '', '', 1, 5, 'data/demo/002746-500x500.jpg', 0, 1, '45.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:49:43', '0000-00-00 00:00:00', 1),
(222, 'П-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_16-150_p2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:52:02', '2014-12-06 09:55:34', 3),
(223, 'П-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_16-150.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:52:56', '2014-12-06 09:55:19', 2),
(224, 'Васко', '', '', '', '', '', '', '', 1, 5, 'data/demo/marlya-medicinskaya-photo-o20140505-1576197_big.jpeg', 0, 1, '2.5000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:56:31', '0000-00-00 00:00:00', 1),
(225, 'П-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_14-120.jpg', 0, 1, '0.9000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 09:57:30', '2014-12-08 22:51:33', 18),
(226, 'П-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_vaservana.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:01:17', '0000-00-00 00:00:00', 2),
(227, 'Укрвата', '', '', '', '', '', '', '', 15, 5, 'data/demo/images.jpg', 0, 1, '3.5000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:01:17', '0000-00-00 00:00:00', 1),
(228, 'П-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_kana.jpg', 0, 1, '0.6000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:02:36', '2014-12-08 21:38:21', 3),
(230, 'Рол1', '', '', '', '', '', '', '', 1, 5, 'data/demo/00000009654.400x400.jpg', 0, 1, '6.5000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:04:52', '0000-00-00 00:00:00', 1),
(231, 'Пробирка Видаля', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirki_vidalya.jpg', 0, 1, '0.6000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:05:51', '2014-12-08 22:41:15', 11),
(232, 'Вата', '', '', '', '', '', '', '', 1, 5, 'data/demo/00000009654.400x400.jpg', 0, 1, '5.7000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:07:26', '0000-00-00 00:00:00', 1),
(233, 'Прибор', '', '', '', '', '', '', '', 1, 5, 'data/demo/pribor_dlya_sernoy_kisloty.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:07:41', '0000-00-00 00:00:00', 1),
(234, 'Палочка стеклянная ', '', '', '', '', '', '', '', 0, 5, 'data/demo/lopat_palochki.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:09:14', '2014-12-09 00:39:37', 6),
(235, 'Б-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/original_2e8445ec2c3092ff66d28197082a3ce9.png', 0, 1, '5.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:11:48', '0000-00-00 00:00:00', 1),
(236, 'Лоток почкообразный', '', '', '', '', '', '', '', 1, 5, 'data/demo/lotok_pochka.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:12:59', '2014-12-06 10:14:40', 3),
(237, 'Лоток прямоугольный (нержавейка)', '', '', '', '', '', '', '', 1, 5, 'data/demo/lotok_30-40.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:16:27', '2014-12-08 10:29:04', 2),
(238, 'Бинт-5', '', '', '', '', '', '', '', 17, 5, 'data/demo/original_2e8445ec2c3092ff66d28197082a3ce9.png', 0, 1, '4.5000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:16:40', '2014-12-06 10:17:53', 1),
(239, 'd=180, d=210', '', '', '', '', '', '', '', 0, 5, 'data/demo/aksikator.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:19:59', '2014-12-09 00:36:50', 10),
(240, 'Игар', '', '', '', '', '', '', '', 10, 5, 'data/demo/al-IGR606500AA00001.jpg', 0, 1, '15.5000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:22:24', '0000-00-00 00:00:00', 1),
(241, 'Колба коническая', '', '', '', '', '', '', '', 1, 5, 'data/demo/kolba_50.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:22:56', '2014-12-08 10:29:30', 0),
(242, 'Капилляр для СРБ', '', '', '', '', '', '', '', 1, 5, 'data/demo/kappilar_SRB.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:24:23', '0000-00-00 00:00:00', 1),
(243, 'Игар', '', '', '', '', '', '', '', 1, 5, 'data/demo/al-IGR606500AA00001.jpg', 0, 1, '11.1500', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:24:42', '2014-12-06 10:25:52', 1),
(244, 'Воронка', '', '', '', '', '', '', '', 1, 5, 'data/demo/voronka_100-150.jpg', 0, 1, '10.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:26:23', '2014-12-08 21:09:02', 33),
(245, 'Игар', '', '', '', '', '', '', '', 1, 5, 'data/demo/al-IGR606500AA00001.jpg', 0, 1, '8.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:26:54', '0000-00-00 00:00:00', 1),
(246, 'Бюкс', '', '', '', '', '', '', '', 1, 5, 'data/demo/byks_dlya_vzveshivaniya.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:30:01', '2014-12-08 10:31:38', 1),
(247, 'ТС', 'Украина', '', '', '', '', '', '', 1, 5, 'data/demo/621440226492f7046dbc572143195023492f7046dc427.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:33:14', '2014-12-08 10:32:59', 0),
(248, 'ПК', '', '', '', '', '', '', '', 1, 5, 'data/demo/50.jpg', 0, 1, '6.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:35:24', '0000-00-00 00:00:00', 1),
(249, 'Цилиндр мерный с подставкой и носиком', '', '', '', '', '', '', '', 1, 5, 'data/demo/zcilindr_100.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:37:21', '0000-00-00 00:00:00', 0),
(250, 'Стакан для разлива спиртных напитков', '', '', '', '', '', '', '', 1, 5, 'data/demo/stakan_150.png', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:39:23', '2014-12-06 10:41:00', 3),
(251, 'ПР-1', '', '', '', '', '', '', '', 10, 5, 'data/demo/pereliv21_02_150.gif', 0, 1, '3.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:41:28', '0000-00-00 00:00:00', 1),
(252, 'Ш-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpriz_insultuberkul.jpg', 0, 1, '135.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 10:49:31', '0000-00-00 00:00:00', 2),
(253, 'Chirana', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpriz_chirana.jpg', 0, 1, '1.2000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 11:27:45', '2014-12-06 11:31:35', 3),
(254, 'Гемопласт', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpriz_gemoplast.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 11:36:44', '0000-00-00 00:00:00', 6),
(255, ' Пипетка мерная с делениями на полный слив', '', '', '', '', '', '', '', 1, 5, 'data/demo/2578m.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:38:31', '0000-00-00 00:00:00', 1),
(256, 'Пипетка Сали', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipet_sali_04.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:41:15', '2014-12-06 12:42:04', 1);
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(257, 'капилляр Панченкова', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipet_soa.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:43:14', '0000-00-00 00:00:00', 1),
(258, 'Пипетка Пастера', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipet_pastera.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:44:02', '0000-00-00 00:00:00', 0),
(259, 'Ш-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/images (1).jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:46:08', '2014-12-06 12:47:29', 6),
(260, 'Пипетка Мора', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipet_mora_1ml.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:46:41', '2014-12-06 12:48:17', 1),
(261, 'ПЖ', '', '', '', '', '', '', '', 1, 5, 'data/demo/piknometr.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:48:03', '0000-00-00 00:00:00', 0),
(262, ' Микропипетка капиллярная', '', '', '', '', '', '', '', 1, 5, 'data/demo/mikropipet_01.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:50:20', '2014-12-06 12:51:05', 1),
(263, 'РН-0-12 №100', '', '', '', '', '', '', '', 1, 5, 'data/demo/imgres (2).jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:50:44', '0000-00-00 00:00:00', 1),
(264, 'Микробюретка ', '', '', '', '', '', '', '', 1, 5, 'data/demo/mikroburetka_5ml.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:52:16', '0000-00-00 00:00:00', 0),
(265, '№50', '', '', '', '', '', '', '', 1, 5, 'data/demo/ok-test-test-na-skrytuu-krov-v-kale-50-p.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:53:01', '0000-00-00 00:00:00', 1),
(266, 'Мензурка', '', '', '', '', '', '', '', 1, 5, 'data/demo/minzurka_250.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:54:05', '2014-12-08 10:46:34', 0),
(267, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:54:39', '0000-00-00 00:00:00', 1),
(268, 'RB50 ', '', '', '', '', '', '', '', 1, 5, 'data/demo/Плоские рулоны PMS Steripack (автоклав).jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:57:22', '0000-00-00 00:00:00', 0),
(269, 'Кювета для фотометрии', '', '', '', '', '', '', '', 1, 5, 'data/demo/kuvetka.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 12:57:25', '2014-12-06 13:01:35', 0),
(270, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:01:28', '0000-00-00 00:00:00', 0),
(271, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:02:47', '0000-00-00 00:00:00', 1),
(272, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:03:15', '0000-00-00 00:00:00', 1),
(273, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:04:03', '0000-00-00 00:00:00', 1),
(274, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:04:44', '0000-00-00 00:00:00', 0),
(275, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:05:14', '2014-12-08 23:27:27', 1),
(276, 'Лахема', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:05:39', '0000-00-00 00:00:00', 1),
(277, 'Колба мерная', '', '', '', '', '', '', '', 1, 5, 'data/demo/356245_kolba_mernaya_1_250_2.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:06:27', '2014-12-06 13:06:41', 0),
(278, 'Кет-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:07:00', '0000-00-00 00:00:00', 0),
(279, 'Норма', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:08:01', '0000-00-00 00:00:00', 1),
(280, 'Норма', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:09:03', '0000-00-00 00:00:00', 1),
(281, 'Камера Фукса-Розенталя', '', '', '', '', '', '', '', 1, 5, 'data/demo/kamera_fuksa_rozentalya.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:09:18', '0000-00-00 00:00:00', 1),
(282, 'Норма', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:09:55', '0000-00-00 00:00:00', 1),
(283, '«Диапрофмед» ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:10:55', '2014-12-06 13:15:42', 0),
(284, 'Макромед', '', '', '', '', '', '', '', 1, 5, 'data/demo/6611.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:11:45', '2014-12-08 10:52:57', 1),
(285, '«Диапрофмед» ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:16:53', '0000-00-00 00:00:00', 0),
(286, '«Агат»', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:18:13', '0000-00-00 00:00:00', 3),
(287, 'Ренам', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:19:36', '0000-00-00 00:00:00', 1),
(288, 'Ренам', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:20:18', '0000-00-00 00:00:00', 1),
(289, 'Агат', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 13:21:19', '2015-01-18 20:44:24', 0),
(290, 'Агат', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 20:57:30', '0000-00-00 00:00:00', 1),
(291, 'Тр-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 20:58:36', '0000-00-00 00:00:00', 1),
(292, 'Костыли', '', '', '', '', '', '', '', 1, 5, 'data/demo/kotil_derv_detsk.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:00:10', '0000-00-00 00:00:00', 1),
(293, 'Костыли', '', '', '', '', '', '', '', 1, 5, 'data/demo/kotil_derv_teen.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:04:54', '0000-00-00 00:00:00', 2),
(294, 'Костыли', '', '', '', '', '', '', '', 1, 5, 'data/demo/kotil_derv_detsk.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:06:11', '0000-00-00 00:00:00', 1),
(295, 'х-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/x-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:08:20', '0000-00-00 00:00:00', 1),
(296, 'х-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/x-2s.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:09:23', '2014-12-06 21:10:26', 1),
(297, 'х-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/X-1_KRS.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:12:39', '0000-00-00 00:00:00', 1),
(298, 'х-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/X1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:14:35', '0000-00-00 00:00:00', 1),
(299, 'КЛ-Д', '', '', '', '', '', '', '', 1, 5, 'data/demo/kl-d.png', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:16:03', '0000-00-00 00:00:00', 1),
(300, 'КЛ-4', '', '', '', '', '', '', '', 1, 5, 'data/demo/kl-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:17:16', '0000-00-00 00:00:00', 1),
(301, 'Т-4', '', '', '', '', '', '', '', 1, 5, 'data/demo/t-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:18:31', '0000-00-00 00:00:00', 1),
(302, 'ТМ-С', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:19:41', '0000-00-00 00:00:00', 2),
(303, 'Т-1а', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:20:36', '0000-00-00 00:00:00', 1),
(304, 'Т-2а', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:21:07', '0000-00-00 00:00:00', 2),
(305, 'ТМТ', '', '', '', '', '', '', '', 1, 5, 'data/demo/trost_alum_teleskop.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:22:35', '0000-00-00 00:00:00', 1),
(306, 'ТМ-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/trost_alum.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:24:21', '0000-00-00 00:00:00', 3),
(307, 'ТД', '', '', '', '', '', '', '', 1, 5, 'data/demo/trost_der.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:26:09', '0000-00-00 00:00:00', 1),
(308, 'КЛ-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/kotil_loktevoy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:27:23', '0000-00-00 00:00:00', 1),
(309, 'КПД-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/kotil_detsk.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:28:26', '0000-00-00 00:00:00', 1),
(310, 'КПП-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/kostil_still_big.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:29:55', '0000-00-00 00:00:00', 1),
(311, 'КП ', '', '', '', '', '', '', '', 1, 5, 'data/demo/kostil_still_big.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:30:28', '0000-00-00 00:00:00', 1),
(312, 'эк', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:31:15', '2014-12-06 21:31:51', 0),
(313, 'с-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:33:21', '0000-00-00 00:00:00', 1),
(314, 'ПФ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:33:59', '0000-00-00 00:00:00', 1),
(315, 'эм', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:34:34', '0000-00-00 00:00:00', 0),
(316, 'Аз', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:35:00', '0000-00-00 00:00:00', 1),
(317, 'Тит', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:35:40', '0000-00-00 00:00:00', 0),
(318, 'хлор', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:36:37', '2015-01-18 20:50:32', 0),
(319, 'Ук', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:37:21', '0000-00-00 00:00:00', 0),
(320, 'Тк', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:37:49', '0000-00-00 00:00:00', 0),
(321, 'Тальк', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:38:13', '0000-00-00 00:00:00', 0),
(322, 'Сульф', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:38:49', '0000-00-00 00:00:00', 2),
(323, 'С2', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:39:10', '0000-00-00 00:00:00', 1),
(324, 'сода', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:39:32', '0000-00-00 00:00:00', 1),
(325, 'Сал', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:40:09', '0000-00-00 00:00:00', 2),
(326, 'Эрлих', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:40:55', '0000-00-00 00:00:00', 0),
(327, 'Несслер', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:41:23', '0000-00-00 00:00:00', 0),
(328, 'Гисс', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:41:55', '0000-00-00 00:00:00', 0),
(329, 'П1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:42:45', '0000-00-00 00:00:00', 0),
(330, 'ПВ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:43:30', '0000-00-00 00:00:00', 1),
(331, 'Парафин', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:44:00', '0000-00-00 00:00:00', 1),
(332, 'О-ф', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:44:41', '2014-12-06 21:45:58', 1),
(333, 'Оз', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:45:36', '0000-00-00 00:00:00', 0),
(334, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:46:36', '0000-00-00 00:00:00', 0),
(335, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:46:53', '2014-12-06 21:49:45', 0),
(336, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:50:19', '0000-00-00 00:00:00', 0),
(337, 'бура', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:50:47', '0000-00-00 00:00:00', 0),
(338, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:52:00', '0000-00-00 00:00:00', 0),
(339, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:52:42', '0000-00-00 00:00:00', 0),
(340, 'Na', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:53:16', '0000-00-00 00:00:00', 0),
(341, 'МК', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:53:54', '0000-00-00 00:00:00', 1),
(342, 'СU', '', '', '', '', '', '', '', 1, 5, 'data/demo/med_sernokisl.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:55:17', '0000-00-00 00:00:00', 1),
(343, 'Mg', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:56:08', '0000-00-00 00:00:00', 1),
(344, 'Лим', '', '', '', '', '', '', '', 1, 5, 'data/demo/limonnaya_kislota.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:56:57', '0000-00-00 00:00:00', 1),
(345, 'Крахмал  ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:57:34', '0000-00-00 00:00:00', 1),
(346, 'Кх', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:57:58', '0000-00-00 00:00:00', 1),
(347, 'Kф', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:58:36', '0000-00-00 00:00:00', 1),
(348, 'Кф', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 21:59:08', '0000-00-00 00:00:00', 1),
(349, 'Кл', '', '', '', '', '', '', '', 1, 5, 'data/demo/kaliy_lemon.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:00:08', '0000-00-00 00:00:00', 1),
(350, 'Ке', '', '', '', '', '', '', '', 1, 5, 'data/demo/kaliy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:01:02', '0000-00-00 00:00:00', 1),
(351, 'Йод', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:01:53', '0000-00-00 00:00:00', 1),
(352, 'Йод', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:01:55', '0000-00-00 00:00:00', 1),
(353, 'Гл', '', '', '', '', '', '', '', 1, 5, 'data/demo/hlicerin.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:03:30', '2015-01-18 20:49:05', 1),
(354, 'ГКС', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:04:32', '0000-00-00 00:00:00', 1),
(355, 'Вм', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:05:31', '0000-00-00 00:00:00', 1),
(356, 'Бор', '', '', '', '', '', '', '', 1, 5, 'data/demo/boric_acid.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:06:30', '0000-00-00 00:00:00', 1),
(357, 'Ацетилацетон', '', '', '', '', '', '', '', 1, 5, 'data/demo/acetylacetone.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:07:10', '0000-00-00 00:00:00', 1),
(358, 'Аммоний', '', '', '', '', '', '', '', 1, 5, 'data/demo/ammonij_molibdenovokislyij.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:08:08', '0000-00-00 00:00:00', 1),
(359, 'Ав', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:08:52', '0000-00-00 00:00:00', 2),
(360, 'Азот', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:09:38', '0000-00-00 00:00:00', 1),
(361, 'эп', '', '', '', '', '', '', '', 1, 5, 'data/demo/elektrod_prisos_6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:17:32', '0000-00-00 00:00:00', 0),
(362, 'эп', '', '', '', '', '', '', '', 1, 5, 'data/demo/elektrod_prisos_6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:18:54', '0000-00-00 00:00:00', 0),
(363, 'Мидас', '', '', '', '', '', '', '', 1, 5, 'data/demo/elektrokardiograf_I.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:20:14', '0000-00-00 00:00:00', 0),
(364, 'DS-400', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_ds_400.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:21:21', '0000-00-00 00:00:00', 0),
(365, 'DS-1902', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_ds_1902.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:22:36', '0000-00-00 00:00:00', 1),
(366, 'То-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_uvelich.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:23:54', '0000-00-00 00:00:00', 1),
(367, ' LD-71', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_mehan.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:24:56', '0000-00-00 00:00:00', 1),
(368, ' LD-71', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_mehan.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:24:59', '0000-00-00 00:00:00', 0),
(369, 'То-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonometr_vnutriglaznogo_davleniya.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:26:08', '0000-00-00 00:00:00', 1),
(370, 'Табл', '', '', '', '', '', '', '', 1, 5, 'data/demo/tabl_rabkin.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:28:13', '0000-00-00 00:00:00', 0),
(371, 'Ст-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/stetoscop_derevyan.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:29:14', '0000-00-00 00:00:00', 0),
(372, 'Ст-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/stetoscop_dvuhstornniy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:30:16', '0000-00-00 00:00:00', 0),
(373, 'Ст-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/stetoscop_rappaport.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:31:37', '0000-00-00 00:00:00', 0),
(374, 'Реф', '', '', '', '', '', '', '', 1, 5, 'data/demo/reflektor_simanovskogo.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:33:11', '0000-00-00 00:00:00', 1),
(375, '7А23В', '', '', '', '', '', '', '', 1, 5, 'data/demo/otsasivatel_7a23v.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:33:58', '0000-00-00 00:00:00', 0),
(376, 'Оп-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/Oprava-probnaya-universalnaya.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:36:30', '0000-00-00 00:00:00', 1),
(377, 'НМ-4', '', '', '', '', '', '', '', 1, 5, 'data/demo/negatoskop_nm-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:38:46', '2015-01-18 20:42:44', 1),
(378, 'Линза', '', '', '', '', '', '', '', 1, 5, 'data/demo/nabor_linz.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:47:47', '0000-00-00 00:00:00', 1),
(379, '01-СУ', '', '', '', '', '', '', '', 1, 5, 'data/demo/mundshtuki_k_alkotesteram_alkont.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:49:20', '0000-00-00 00:00:00', 1),
(380, 'М-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/manjety_dla_plecha.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:50:11', '0000-00-00 00:00:00', 1),
(381, 'М-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/manjety_mlad.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:50:58', '0000-00-00 00:00:00', 1),
(382, 'М-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/manjety_child.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:51:54', '0000-00-00 00:00:00', 1),
(383, ' НГД-02', '', '', '', '', '', '', '', 1, 5, 'data/demo/ngd02pra.png', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:53:06', '0000-00-00 00:00:00', 4),
(384, 'В1-15', '', '', '', '', '', '', '', 1, 5, 'data/demo/vesi_sasha.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:54:02', '0000-00-00 00:00:00', 1),
(385, ' РМ-150', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:54:33', '0000-00-00 00:00:00', 4),
(386, 'Ар-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/appara_rotta_svet.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:55:37', '0000-00-00 00:00:00', 1),
(387, ' &quot;Псоролайт&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/psorolait.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:56:50', '0000-00-00 00:00:00', 1),
(388, ' 01-СУ', '', '', '', '', '', '', '', 1, 5, 'data/demo/alkont01su.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:57:52', '0000-00-00 00:00:00', 1),
(389, 'Глюкофост плюс', '', '', '', '', '', '', '', 1, 5, 'data/demo/glukofost.jpg', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:58:58', '0000-00-00 00:00:00', 0),
(390, 'Элек', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-06 22:59:43', '0000-00-00 00:00:00', 0),
(391, 'Micromed', '', '', '', '', '', '', '', 1, 5, 'data/demo/micromed.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:14:36', '0000-00-00 00:00:00', 0),
(392, 'УГН-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:15:25', '0000-00-00 00:00:00', 0),
(393, ' БОП-4', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:16:21', '0000-00-00 00:00:00', 0),
(394, 'СМ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:16:55', '0000-00-00 00:00:00', 0),
(395, 'Рост', '', '', '', '', '', '', '', 1, 5, 'data/demo/rostomer-napolniy-s-elektronnimi-vesami.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:18:10', '0000-00-00 00:00:00', 0),
(396, 'Рост-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/rostomer_napol.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:19:05', '0000-00-00 00:00:00', 0),
(397, 'Рост-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/rostomer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:19:54', '0000-00-00 00:00:00', 0),
(398, 'Пар-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:20:42', '2014-12-07 09:22:46', 0),
(399, 'Оз-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/ochki_solar.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:24:07', '0000-00-00 00:00:00', 0),
(400, 'БОП-01/27', '', '', '', '', '', '', '', 1, 5, 'data/demo/bop-01-271.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:25:06', '0000-00-00 00:00:00', 0),
(401, 'ОКН-021М ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:25:41', '0000-00-00 00:00:00', 0),
(402, ' ОКН-011М ', '', '', '', '', '', '', '', 1, 5, 'data/demo/okn-00m1_zavet.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:26:27', '0000-00-00 00:00:00', 0),
(403, 'УГН-01', '', '', '', '', '', '', '', 1, 5, 'data/demo/ugn-01_zavet.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:27:18', '0000-00-00 00:00:00', 0),
(404, 'Ом-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/sinyaya_lampa.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:28:14', '0000-00-00 00:00:00', 0),
(405, 'ИП-03, ИП-111П', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:29:10', '0000-00-00 00:00:00', 0),
(406, ' HE-C29', '', '', '', '', '', '', '', 1, 5, 'data/demo/omron_he_c29.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:30:59', '0000-00-00 00:00:00', 0),
(407, '&quot;Муссон-2&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/musson_2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:32:01', '0000-00-00 00:00:00', 0),
(408, '403А', '', '', '', '', '', '', '', 1, 5, 'data/demo/403a.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:32:48', '0000-00-00 00:00:00', 0),
(409, '402А', '', '', '', '', '', '', '', 1, 5, 'data/demo/402a.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:33:33', '0000-00-00 00:00:00', 0),
(410, 'Вулкан-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/vulkan_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:34:41', '0000-00-00 00:00:00', 0),
(411, 'Туман-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/tuman_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:35:57', '0000-00-00 00:00:00', 0),
(412, 'ЭГ-1/220', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:36:41', '0000-00-00 00:00:00', 0),
(413, 'Ам-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/aromamedalon.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:37:30', '0000-00-00 00:00:00', 0),
(414, 'Апп-1', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:40:45', '0000-00-00 00:00:00', 1),
(415, 'Апп-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/aparat_frolova.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:41:44', '0000-00-00 00:00:00', 0),
(416, 'Солнышко', '', '', '', '', '', '', '', 1, 5, 'data/demo/ufo_solnishko.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:42:44', '0000-00-00 00:00:00', 0),
(417, ' ТОНУС-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/tonus-1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:43:33', '0000-00-00 00:00:00', 1),
(418, 'Апп-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/aparat_bobrova1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:44:37', '2014-12-07 09:46:06', 1),
(419, ' УВЧ-70', '', '', '', '', '', '', '', 1, 5, 'data/demo/uvch_70.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:47:00', '0000-00-00 00:00:00', 0),
(420, 'УЗТ-1.07Ф', '', '', '', '', '', '', '', 1, 5, 'data/demo/uzt_1-07f.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:48:00', '0000-00-00 00:00:00', 0),
(421, 'МАГ-30-4', '', '', '', '', '', '', '', 1, 5, 'data/demo/mag_30-04.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:49:01', '0000-00-00 00:00:00', 1),
(422, 'Алмаг-01', '', '', '', '', '', '', '', 1, 5, 'data/demo/almag_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:50:05', '0000-00-00 00:00:00', 1),
(423, 'Полюс-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/polus_3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:51:28', '0000-00-00 00:00:00', 1),
(424, 'Витязь', '', '', '', '', '', '', '', 1, 5, 'data/demo/vityaz.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:52:29', '0000-00-00 00:00:00', 1),
(425, 'УЗТ-1.01Ф', '', '', '', '', '', '', '', 1, 5, 'data/demo/uzt_1-01f.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:53:32', '0000-00-00 00:00:00', 0),
(426, 'УВЧ-30.03', '', '', '', '', '', '', '', 1, 5, 'data/demo/uvch_30-03.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:56:44', '0000-00-00 00:00:00', 1),
(427, 'Корона', '', '', '', '', '', '', '', 1, 5, 'data/demo/darsonval_korona.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:57:37', '0000-00-00 00:00:00', 1),
(428, 'Искра-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/iskra_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:58:30', '0000-00-00 00:00:00', 1),
(429, 'Поток-01', '', '', '', '', '', '', '', 1, 5, 'data/demo/potok_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 09:59:22', '0000-00-00 00:00:00', 1),
(430, 'Интратон-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/Intraton-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:00:33', '0000-00-00 00:00:00', 1),
(431, '&quot;Амплипульс-5&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/amplipuls_5.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:01:24', '0000-00-00 00:00:00', 1),
(432, '&quot;Алконт 01-СУ&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/alkont_01.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:02:30', '0000-00-00 00:00:00', 1),
(433, 'Шп-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel_3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:03:36', '2014-12-07 10:05:34', 0),
(434, '№4', '', '', '', '', '', '', '', 1, 5, 'data/demo/chasha_4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:07:55', '0000-00-00 00:00:00', 0),
(435, 'Тиг4', '', '', '', '', '', '', '', 1, 5, 'data/demo/tigel_4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:09:56', '0000-00-00 00:00:00', 0),
(436, 'Ступка', '', '', '', '', '', '', '', 1, 5, 'data/demo/stupka_6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:12:38', '0000-00-00 00:00:00', 0),
(437, 'Пестик', '', '', '', '', '', '', '', 1, 5, 'data/demo/pestik_3.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:15:35', '0000-00-00 00:00:00', 1),
(438, 'Ложка', '', '', '', '', '', '', '', 1, 5, 'data/demo/lozhka_200.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:19:55', '0000-00-00 00:00:00', 1),
(439, 'Кружка', '', '', '', '', '', '', '', 1, 5, 'data/demo/kruzhka_farfor_250.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:21:32', '2015-01-18 20:46:11', 1),
(440, 'ТС-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/eksikator_s_kranom.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:23:12', '0000-00-00 00:00:00', 0),
(441, 'ТС-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/eksikator_bez_krana.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:24:47', '0000-00-00 00:00:00', 0),
(442, 'ЧП-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/chashka_petri.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:25:40', '0000-00-00 00:00:00', 0),
(443, 'Хол', '', '', '', '', '', '', '', 1, 5, 'data/demo/holdilnik_sharik.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:27:29', '0000-00-00 00:00:00', 0),
(444, 'Хол-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/holdilnik_spiral.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:28:12', '0000-00-00 00:00:00', 0),
(445, 'Стекло', '', '', '', '', '', '', '', 1, 5, 'data/demo/steklo_predmetnoe_lunka.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:29:39', '0000-00-00 00:00:00', 0),
(446, 'Стекло-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/steklo_predmetnoe_s_polem.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:30:45', '0000-00-00 00:00:00', 0),
(447, 'Стекло-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/steklo_predmetnoe.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:31:37', '0000-00-00 00:00:00', 0),
(448, 'Горяев', '', '', '', '', '', '', '', 1, 5, 'data/demo/steklo_goryaeva.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:32:37', '0000-00-00 00:00:00', 0),
(449, 'Стекло-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/steklo.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:39:04', '0000-00-00 00:00:00', 0),
(450, 'Сп-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/spirtovka.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 10:40:16', '0000-00-00 00:00:00', 0),
(451, 'Часы сигнальные', '', '', '', '', '', '', '', 1, 5, 'data/demo/chasi.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:31:37', '0000-00-00 00:00:00', 0),
(452, 'ОПН-3', '', '', '', '', '', '', '', 1, 5, 'data/demo/opn-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:32:41', '0000-00-00 00:00:00', 0),
(453, 'ЦЛМН-Р10-01', '', '', '', '', '', '', '', 1, 5, 'data/demo/clmn_r10_01_elekon.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:33:35', '0000-00-00 00:00:00', 0),
(454, 'Китай', 'DZ-10', '', '', '', '', '', '', 1, 5, 'data/demo/dz-10.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:34:13', '0000-00-00 00:00:00', 0),
(455, 'Россия', 'ДЭ-10, ДЭ-25', '', '', '', '', '', '', 1, 5, 'data/demo/ten_de_10_25_kvt_da2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:35:17', '0000-00-00 00:00:00', 0),
(456, '№50', '', '', '', '', '', '', '', 1, 5, 'data/demo/glukofotplusbox.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:37:13', '0000-00-00 00:00:00', 3),
(457, 'ТС-1 80 СПУ ', '', '', '', '', '', '', '', 1, 5, 'data/demo/ts-1-80.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:38:01', '0000-00-00 00:00:00', 0),
(458, 'ТПС', '', '', '', '', '', '', '', 1, 5, 'data/demo/TPS_big_0.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:38:38', '0000-00-00 00:00:00', 0),
(459, '1 ТЖ-0-03', '', '', '', '', '', '', '', 1, 5, 'data/demo/1tzh-0-03.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:39:19', '0000-00-00 00:00:00', 0),
(460, 'СЛ-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/sl-1.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:39:59', '0000-00-00 00:00:00', 1),
(461, 'Стимул+', '', '', '', '', '', '', '', 1, 5, 'data/demo/schetchik_leykozt.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:40:48', '0000-00-00 00:00:00', 0),
(462, 'Сумка-укладка лаборанта', '', '', '', '', '', '', '', 1, 5, 'data/demo/sumka_laboranta.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:42:25', '0000-00-00 00:00:00', 1),
(463, 'Секундомер', '', '', '', '', '', '', '', 1, 5, 'data/demo/sekundomer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:43:12', '0000-00-00 00:00:00', 2),
(464, 'Г2-210', '', '', '', '', '', '', '', 1, 5, 'data/demo/g2-210.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:44:05', '0000-00-00 00:00:00', 3),
(465, 'ЕТ-39', '', '', '', '', '', '', '', 1, 5, 'data/demo/et-39.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:45:05', '0000-00-00 00:00:00', 1),
(466, 'Наконечники универсальные ', '', '', '', '', '', '', '', 1, 5, 'data/demo/nakonechnik.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:45:55', '0000-00-00 00:00:00', 1),
(467, 'Микроскоп бинокулярный XSM', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:49:12', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(468, ' Микроскоп монокулярный (аналог Р11)', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:49:28', '0000-00-00 00:00:00', 1),
(469, 'Лупа с подсветкой', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:49:57', '0000-00-00 00:00:00', 2),
(470, ' Лупа на подставке', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:50:39', '0000-00-00 00:00:00', 1),
(471, ' Лупа с ручкой', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:51:02', '0000-00-00 00:00:00', 1),
(472, 'Зажим Гофмана; зажим Мора (для резиновых трубок)', '', '', '', '', '', '', '', 1, 5, 'data/demo/Zazhim_Mora.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:53:05', '0000-00-00 00:00:00', 1),
(473, 'Ленпипет', '', '', '', '', '', '', '', 1, 5, 'data/demo/lenpipet_8.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:53:49', '0000-00-00 00:00:00', 2),
(474, ' Дозатор переменного объёма', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:54:09', '0000-00-00 00:00:00', 1),
(475, 'Дозатор постоянного объёма 10 мкл; 20 мкл; 1000 мкл', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:54:29', '0000-00-00 00:00:00', 1),
(476, 'Глюкофот плюс', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:57:17', '0000-00-00 00:00:00', 1),
(477, 'Гири 0,5 кг; 1 кг; 2 кг', '', '', '', '', '', '', '', 1, 5, 'data/demo/Giri_torgovye.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 16:59:19', '0000-00-00 00:00:00', 1),
(478, 'ВИТ-1; ВИТ-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/gigr.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:00:10', '0000-00-00 00:00:00', 1),
(479, 'Минигем-540', '', '', '', '', '', '', '', 1, 5, 'data/demo/MH_540.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:00:47', '0000-00-00 00:00:00', 1),
(480, 'ВР-1, ВР-5', '', '', '', '', '', '', '', 1, 5, 'data/demo/vr-5.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:01:43', '0000-00-00 00:00:00', 1),
(481, 'ВТ-200', '', '', '', '', '', '', '', 1, 5, 'data/demo/bt-200.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:02:23', '0000-00-00 00:00:00', 0),
(482, 'Баня водяная с электроподогревом', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:03:05', '0000-00-00 00:00:00', 1),
(483, 'ДЭ-25М »Завет» ', '', '', '', '', '', '', '', 1, 5, 'data/demo/de_zavet_.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:04:17', '0000-00-00 00:00:00', 0),
(484, 'ДЭ-10М »Завет» ', '', '', '', '', '', '', '', 1, 5, 'data/demo/de_zavet_.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:05:02', '0000-00-00 00:00:00', 1),
(485, 'ДЭ-04М »Завет» ', '', '', '', '', '', '', '', 1, 5, 'data/demo/de_zavet_.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:05:31', '2014-12-08 22:41:33', 0),
(486, 'ДЭ-25 ', '', '', '', '', '', '', '', 1, 5, 'data/demo/de-25-spb.png', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:06:26', '0000-00-00 00:00:00', 1),
(487, 'ДЭ-10', '', '', '', '', '', '', '', 1, 5, 'data/demo/de-25-spb.png', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:06:55', '0000-00-00 00:00:00', 0),
(488, 'ДЭ4-02', '', '', '', '', '', '', '', 1, 5, 'data/demo/de-25-spb.png', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:07:27', '0000-00-00 00:00:00', 1),
(489, ' Языкодержатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/ya-5.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:14:16', '0000-00-00 00:00:00', 0),
(490, 'Штопор для захватывания фибромиом матки №2;№3', '', '', '', '', '', '', '', 1, 5, 'data/demo/WT-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:17:03', '0000-00-00 00:00:00', 0),
(491, 'Щипцы гортанные для извлечения инородного тела', '', '', '', '', '', '', '', 1, 5, 'data/demo/III-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:21:45', '0000-00-00 00:00:00', 0),
(492, ' Щипцы геморроидальные окончатые прямые;изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/III-55-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:22:22', '0000-00-00 00:00:00', 0),
(493, ' Щипцы Кагаловского для захватывания плевры', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-16.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:23:01', '0000-00-00 00:00:00', 0),
(494, 'Щипцы кишечные окончатые для взрослых', '', '', '', '', '', '', '', 1, 5, 'data/demo/sch_13_240.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:23:41', '0000-00-00 00:00:00', 0),
(495, 'Щипцы тампонные носовые ', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:24:31', '0000-00-00 00:00:00', 0),
(496, 'Щипцы – пулёвки однозубые', '', '', '', '', '', '', '', 1, 5, 'data/demo/sch-66.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:25:03', '0000-00-00 00:00:00', 0),
(497, 'Щипцы маточные двухзубчатые пр.(по Мюзо) №1;№2', '', '', '', '', '', '', '', 1, 5, 'data/demo/sch-84.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:26:25', '0000-00-00 00:00:00', 0),
(498, 'Щипцы-кусачки костные шарнирные по Листону ', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-98.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:27:07', '0000-00-00 00:00:00', 0),
(499, 'Щипцы-кусачки по Листону ', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-106.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:28:13', '0000-00-00 00:00:00', 0),
(500, 'Щипцы-кусачки по Янсену', '', '', '', '', '', '', '', 1, 5, 'data/demo/yansen.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:28:39', '0000-00-00 00:00:00', 0),
(501, 'Щипцы для захватывания и удержания трубчатых костей', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-105.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:29:19', '0000-00-00 00:00:00', 0),
(502, 'Щипцы для извлечения осколков кости ', '', '', '', '', '', '', '', 1, 5, 'data/demo/III-31.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:30:06', '0000-00-00 00:00:00', 0),
(503, 'Шприц многоразовый 1мл;2 мл;5 мл; 10 мл; 20', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpricy-metallicheskie-mnogorazovye.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:39:58', '0000-00-00 00:00:00', 1),
(504, 'Шприц Жанэ', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpric_zhane.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:42:08', '0000-00-00 00:00:00', 1),
(505, ' Шприц для внутриматочных вливаний (компл.)', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-12.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:43:28', '0000-00-00 00:00:00', 1),
(506, 'Шприц для внутригортанных вливаний', '', '', '', '', '', '', '', 1, 5, 'data/demo/sh-14.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:44:11', '0000-00-00 00:00:00', 1),
(507, 'Шпатель для цемента', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel_dlya_zcementa.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:44:50', '0000-00-00 00:00:00', 1),
(508, 'Шпатель металлический двухсторонний прямой для языка ', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel-metallicheskij_180.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:46:41', '0000-00-00 00:00:00', 1),
(509, 'Шпатель гинекологический типа Эйра', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpatel_ayra.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:47:26', '0000-00-00 00:00:00', 1),
(510, 'Шина Крамера на руку', '', '', '', '', '', '', '', 1, 5, 'data/demo/shina_kramera_2.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:48:00', '0000-00-00 00:00:00', 1),
(511, 'Шина Крамера лестничная', '', '', '', '', '', '', '', 1, 5, 'data/demo/shina_kramera.jpg', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:48:43', '0000-00-00 00:00:00', 1),
(512, 'Угревыдавливатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/ugred-s-pet.gif', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:49:23', '0000-00-00 00:00:00', 2),
(513, 'Трубка трахеотомическая №3,4 металлическая', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:49:48', '0000-00-00 00:00:00', 1),
(514, 'Трубка трахеотомическая №1-6 пласт.', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-06', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-07 17:50:00', '0000-00-00 00:00:00', 1),
(515, 'Пакет', '', '', '', '', '', '', '', 1, 5, 'data/demo/16751d0dc27464e579c962e99dfd8178.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 00:46:02', '0000-00-00 00:00:00', 0),
(516, 'Камера', '', '', '', '', '', '', '', 1, 5, 'data/demo/kamera_stadart.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 00:47:06', '0000-00-00 00:00:00', 1),
(517, 'ОБН-150', '', '', '', '', '', '', '', 1, 5, 'data/demo/obn-150.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 00:48:58', '2014-12-08 00:50:58', 0),
(518, 'ОБН-75', '', '', '', '', '', '', '', 1, 5, 'data/demo/obn-75.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 00:52:05', '0000-00-00 00:00:00', 0),
(519, 'Лоток прямоугольный', '', '', '', '', '', '', '', 1, 5, 'data/demo/lotok_400-300_nerzh.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 00:53:35', '2014-12-08 00:58:10', 0),
(520, 'Лоток прямоугольный', '', '', '', '', '', '', '', 1, 5, 'data/demo/2454.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:01:00', '0000-00-00 00:00:00', 0),
(521, 'Лоток', '', '', '', '', '', '', '', 1, 5, 'data/demo/lotok_pochka_emal.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:01:44', '0000-00-00 00:00:00', 0),
(522, 'TUV  -30', '', '', '', '', '', '', '', 1, 5, 'data/demo/da8f195b8032f025947661eb4e4acdb6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:03:46', '0000-00-00 00:00:00', 0),
(523, ' TUV — 15 ', '', '', '', '', '', '', '', 1, 5, 'data/demo/da8f195b8032f025947661eb4e4acdb6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:04:34', '0000-00-00 00:00:00', 1),
(524, 'КСК', '', '', '', '', '', '', '', 1, 5, 'data/demo/ksk-3.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:06:34', '0000-00-00 00:00:00', 1),
(525, 'Емкость', '', '', '', '', '', '', '', 1, 5, 'data/demo/phpThumb_generated_thumbnailjpeg.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:09:31', '0000-00-00 00:00:00', 1),
(526, 'Емкость', '', '', '', '', '', '', '', 1, 5, 'data/demo/emkost_dlya_termometr.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:10:09', '0000-00-00 00:00:00', 1),
(527, 'Емкость', '', '', '', '', '', '', '', 1, 5, 'data/demo/2518.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:11:09', '0000-00-00 00:00:00', 0),
(528, 'Кипятильник', '', '', '', '', '', '', '', 1, 5, 'data/demo/kipyatilnik_e40.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:12:13', '0000-00-00 00:00:00', 0),
(529, 'Кипятильник', '', '', '', '', '', '', '', 1, 5, 'data/demo/kipyatilnik_P40.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:14:04', '0000-00-00 00:00:00', 1),
(530, 'Стеритест', '', '', '', '', '', '', '', 1, 5, 'data/demo/IMG_3260.JPG', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:15:00', '0000-00-00 00:00:00', 2),
(531, 'индикатор', '', '', '', '', '', '', '', 1, 5, 'data/demo/379454.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 01:16:08', '0000-00-00 00:00:00', 0),
(532, 'П-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/probirka_himik.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:26:45', '0000-00-00 00:00:00', 0),
(533, 'ЕДПО', '', '', '', '', '', '', '', 1, 5, 'data/demo/edpo10_dlin.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:36:14', '0000-00-00 00:00:00', 0),
(534, 'Троакар полостной ', '', '', '', '', '', '', '', 1, 5, 'data/demo/t-32.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:36:23', '2014-12-08 10:37:44', 1),
(535, 'Пипетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipetka_na_polniy_sliv.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:36:53', '0000-00-00 00:00:00', 0),
(536, 'Тазомер металлический', '', '', '', '', '', '', '', 1, 5, 'data/demo/tazomer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:38:47', '0000-00-00 00:00:00', 1),
(537, 'Сали', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipetka_sali.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:39:08', '0000-00-00 00:00:00', 0),
(538, 'Стетоскоп деревянный акушерский', '', '', '', '', '', '', '', 1, 5, 'data/demo/stetoscop_derevyan.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:39:49', '0000-00-00 00:00:00', 1),
(539, 'Скобки Мишеля ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:40:26', '0000-00-00 00:00:00', 1),
(540, 'ЕДПО', '', '', '', '', '', '', '', 1, 5, 'data/demo/edpo3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:40:47', '0000-00-00 00:00:00', 1),
(541, 'капилляр Панченкова', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipetka_panchenkova.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:40:53', '0000-00-00 00:00:00', 0),
(542, 'Делатест', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:42:21', '0000-00-00 00:00:00', 1),
(543, 'Скальпель для операций в глубоких полостях', '', '', '', '', '', '', '', 1, 5, 'data/demo/s-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:42:23', '0000-00-00 00:00:00', 1),
(544, 'Скальпель глазной средний СБ-3 и СОЗ', '', '', '', '', '', '', '', 1, 5, 'data/demo/sb-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:43:03', '0000-00-00 00:00:00', 1),
(545, 'Мор', '', '', '', '', '', '', '', 1, 5, 'data/demo/pipetki_mora.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:43:41', '0000-00-00 00:00:00', 0),
(546, 'Крафт', '', '', '', '', '', '', '', 1, 5, 'data/demo/bumaga_kraft.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:44:17', '0000-00-00 00:00:00', 1),
(547, ' Скальпель о/к брюшистый средний', '', '', '', '', '', '', '', 1, 5, 'data/demo/S-1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:44:17', '0000-00-00 00:00:00', 0),
(548, 'Роторасширитель винтовой', '', '', '', '', '', '', '', 1, 5, 'data/demo/r-5.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:45:02', '0000-00-00 00:00:00', 1),
(549, 'Проба', '', '', '', '', '', '', '', 1, 5, 'data/demo/azopiramovaya_proba.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:45:28', '0000-00-00 00:00:00', 0),
(550, 'Микро', '', '', '', '', '', '', '', 1, 5, 'data/demo/micropipetk_kapilyarnaya.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:45:30', '0000-00-00 00:00:00', 0),
(551, 'Ранорасширитель нейрохирургический с острыми губками', '', '', '', '', '', '', '', 1, 5, 'data/demo/r-38.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:45:41', '0000-00-00 00:00:00', 0),
(552, 'Капрон крученый', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:46:18', '0000-00-00 00:00:00', 1),
(553, 'Капрон хирургический ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:46:53', '2014-12-08 10:47:14', 1),
(554, 'Ранорасширитель реечный для грудной полости ', '', '', '', '', '', '', '', 1, 5, 'data/demo/ranorasshiritel209.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:47:15', '0000-00-00 00:00:00', 2),
(555, 'Расширитель канала шейки матки по Гигару №3-17', '', '', '', '', '', '', '', 1, 5, 'data/demo/R-6_06.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:48:03', '0000-00-00 00:00:00', 1),
(556, 'Шелк', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:48:03', '2015-01-18 21:29:25', 1),
(557, 'Ранорасширитель нейрохирургич.универсальный Егорова-Фрайдина', '', '', '', '', '', '', '', 1, 5, 'data/demo/r-8.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:48:43', '0000-00-00 00:00:00', 1),
(558, 'Колба', '', '', '', '', '', '', '', 1, 5, 'data/demo/kolbi_mernie.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:48:59', '0000-00-00 00:00:00', 0),
(559, 'Шелк', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:49:21', '2015-01-18 21:14:31', 1),
(560, 'Капрон хирургический ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:49:57', '0000-00-00 00:00:00', 1),
(561, 'Проводник для проволочных пил', '', '', '', '', '', '', '', 1, 5, 'data/demo/p-126.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:50:10', '0000-00-00 00:00:00', 1),
(562, 'Кетгут', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:50:41', '2015-01-18 21:04:56', 1),
(563, 'Кетгут', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:51:22', '2015-01-18 21:04:28', 1),
(564, 'Пила листовая с пластмассовой ручкой', '', '', '', '', '', '', '', 1, 5, 'data/demo/p-126.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:51:26', '0000-00-00 00:00:00', 1),
(565, 'Бюр', '', '', '', '', '', '', '', 1, 5, 'data/demo/byretka_bez_krana.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:52:03', '2015-01-18 20:51:16', 1),
(566, 'Пила Джигли', '', '', '', '', '', '', '', 1, 5, 'data/demo/pila_dgigli.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:52:49', '0000-00-00 00:00:00', 1),
(567, 'Пинцет эпиляционный', '', '', '', '', '', '', '', 1, 5, 'data/demo/p-101.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:53:29', '0000-00-00 00:00:00', 1),
(568, 'Пинцет зубчато-лапчатый', '', '', '', '', '', '', '', 1, 5, 'data/demo/p-157.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:54:39', '0000-00-00 00:00:00', 1),
(569, 'Капрон хирургический ', '', '', '', '', '', '', '', 1, 5, 'data/demo/kapron_ns.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:55:11', '0000-00-00 00:00:00', 1),
(570, 'Пинцет стоматологический горизонтально-изогнутый', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:55:12', '0000-00-00 00:00:00', 1),
(571, 'Пинцет ПА — 250, ПХ — 250', '', '', '', '', '', '', '', 1, 5, 'data/demo/pa-250.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:56:49', '2014-12-08 10:57:56', 1),
(572, 'Игла', '', '', '', '', '', '', '', 1, 5, 'data/demo/igla_hirurg.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:57:00', '0000-00-00 00:00:00', 1),
(573, 'Термометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/termometr_ekektrokontakt.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:58:42', '0000-00-00 00:00:00', 1),
(574, 'Ножницы для рассечения мягких тканей в глубоких полостях ', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-8.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:58:52', '0000-00-00 00:00:00', 0),
(575, 'Термометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/termometr_komnata.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:59:28', '0000-00-00 00:00:00', 1),
(576, 'Ножницы хирургические тупоконечные прямые, в/изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-8.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 10:59:47', '0000-00-00 00:00:00', 1),
(577, 'Термометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/termometr_holodilnik.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:00:15', '0000-00-00 00:00:00', 2),
(578, 'Ножницы для разрезания гипсовых повязок ', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-28.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:00:32', '0000-00-00 00:00:00', 0),
(579, 'Термометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/termometr_voda.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:01:09', '0000-00-00 00:00:00', 1),
(580, 'Ножницы для перевязочного материала', '', '', '', '', '', '', '', 1, 5, 'data/demo/nojnici_dlja_perevjazochnogo_materiala_190.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:01:59', '0000-00-00 00:00:00', 0),
(581, 'Термометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/termometr_med.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:02:18', '0000-00-00 00:00:00', 1),
(582, 'Ножницы пуговчатые ', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-14.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:02:54', '0000-00-00 00:00:00', 0),
(583, 'Ножницы сосудистые нейрохирургические изогн.под углом ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:03:24', '0000-00-00 00:00:00', 1),
(584, 'Ножницы сосудистые о/к в/из нейрохирургические', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-23.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:04:01', '0000-00-00 00:00:00', 1),
(585, 'Гигрометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/gigrometr_vit-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:04:07', '0000-00-00 00:00:00', 1),
(586, 'Гигрометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/gigrometr_vit-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:04:42', '0000-00-00 00:00:00', 1),
(587, 'Ножницы сосудистые прямые ', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-40.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:04:50', '0000-00-00 00:00:00', 1),
(588, 'Ножницы сосудистые изогнутые по радиусу;изогнутые под углом ', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-38.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:05:49', '0000-00-00 00:00:00', 0),
(589, 'Ареометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/areometr_spirt.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:06:17', '0000-00-00 00:00:00', 3),
(590, 'Ареометр', '', '', '', '', '', '', '', 1, 5, 'data/demo/areometr_urina-1000.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:06:56', '0000-00-00 00:00:00', 3),
(591, 'Ножницы о/к,т/к прямые, изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/n-6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:08:05', '0000-00-00 00:00:00', 0),
(592, 'Мочеприемник', '', '', '', '', '', '', '', 1, 5, 'data/demo/mochepriemnik_pediatrich.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:08:48', '0000-00-00 00:00:00', 1),
(593, 'Пайпель', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:09:17', '0000-00-00 00:00:00', 1),
(594, 'Пленка', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:09:51', '0000-00-00 00:00:00', 1),
(595, '№3', '', '', '', '', '', '', '', 1, 5, 'data/demo/kolzco_matoch_3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:11:14', '0000-00-00 00:00:00', 1),
(596, '№1', '', '', '', '', '', '', '', 1, 5, 'data/demo/kolzco_matoch_1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:11:48', '0000-00-00 00:00:00', 1),
(597, 'Шпатель', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:12:21', '0000-00-00 00:00:00', 1),
(598, 'Судно', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:14:00', '0000-00-00 00:00:00', 8),
(599, 'Маска', '', '', '', '', '', '', '', 1, 5, 'data/demo/maska_narkoznaya_eu.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:16:09', '0000-00-00 00:00:00', 1),
(600, 'Ножницы о/к прямые, изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-3-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:50:32', '0000-00-00 00:00:00', 0),
(601, 'Ножницы глазные тупоконечные прямые, изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-34-1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:51:56', '0000-00-00 00:00:00', 0),
(602, 'Ножницы глазные о/к прямые, изогнутые', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-41.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:52:54', '2014-12-08 11:53:24', 0),
(603, 'Набор для расширения канала шейки матки (Гигара) 25 шт (№3-№14)', '', '', '', '', '', '', '', 1, 5, 'data/demo/R-6.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:54:18', '0000-00-00 00:00:00', 2),
(604, 'Нож резикционный брюшистый', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-43.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:55:10', '0000-00-00 00:00:00', 0),
(605, 'Нож ампутационный малый', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-39.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:55:40', '0000-00-00 00:00:00', 0),
(606, 'Нож ампутационный большой', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-38.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 11:56:16', '0000-00-00 00:00:00', 0),
(607, 'TRODG', '', '', '', '', '', '', '', 1, 5, 'data/demo/mochepriemnik_2l.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:00:35', '0000-00-00 00:00:00', 1),
(608, 'Ацетон-мульти', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:01:00', '0000-00-00 00:00:00', 1),
(609, 'Шпатель', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:04:42', '0000-00-00 00:00:00', 1),
(610, 'Щетка', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:05:03', '0000-00-00 00:00:00', 1),
(611, 'Щетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/2782.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:07:05', '0000-00-00 00:00:00', 1),
(612, 'Зеркало', '', '', '', '', '', '', '', 1, 5, 'data/demo/zerkalo_ginekolog.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:15:55', '0000-00-00 00:00:00', 1),
(613, 'Электролампа', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:17:09', '0000-00-00 00:00:00', 0),
(614, 'Уайт-спирит', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:20:04', '0000-00-00 00:00:00', 0),
(615, 'Средство', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:20:32', '0000-00-00 00:00:00', 0),
(616, 'Средство', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:21:40', '0000-00-00 00:00:00', 0),
(617, 'Средство', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:22:42', '2014-12-08 19:22:56', 1),
(618, 'Розетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/rozetka.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:24:38', '0000-00-00 00:00:00', 1),
(619, 'Стиральный порошок', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:25:17', '0000-00-00 00:00:00', 1),
(620, 'Мыло', '', '', '', '', '', '', '', 1, 5, 'data/demo/milo_hoz.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:26:35', '0000-00-00 00:00:00', 1),
(621, 'Метла', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:26:56', '0000-00-00 00:00:00', 1),
(622, 'Макловица', '', '', '', '', '', '', '', 1, 5, 'data/demo/maklovizca.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:27:54', '0000-00-00 00:00:00', 2),
(623, 'Краска', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:31:56', '0000-00-00 00:00:00', 2),
(624, 'Кисти', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:32:25', '0000-00-00 00:00:00', 1),
(625, 'Известь', '', '', '', '', '', '', '', 1, 5, 'data/demo/izvest.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:33:08', '0000-00-00 00:00:00', 1),
(626, 'Розетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/euorerozetka.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:34:26', '0000-00-00 00:00:00', 1),
(627, 'Держак', '', '', '', '', '', '', '', 1, 5, 'data/demo/grabli_derzhak.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:35:13', '0000-00-00 00:00:00', 1),
(628, 'Грабли', '', '', '', '', '', '', '', 1, 5, 'data/demo/grabli.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:36:08', '0000-00-00 00:00:00', 1),
(629, 'Грабли', '', '', '', '', '', '', '', 1, 5, 'data/demo/grabli_veer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:36:45', '0000-00-00 00:00:00', 1),
(630, 'Выключатель', '', '', '', '', '', '', '', 1, 5, 'data/demo/vikluchatel.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:38:18', '0000-00-00 00:00:00', 1),
(631, 'Веник', '', '', '', '', '', '', '', 1, 5, 'data/demo/venik.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:38:59', '0000-00-00 00:00:00', 1),
(632, 'Столик', '', '', '', '', '', '', '', 1, 5, 'data/demo/sotl_vnutriven.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:40:22', '0000-00-00 00:00:00', 1),
(633, 'Кресло-коляска', '', '', '', '', '', '', '', 1, 5, 'data/demo/kreslo_kolyaska_malogabarit.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:41:21', '0000-00-00 00:00:00', 1),
(634, 'Кресло-коляска', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:42:34', '0000-00-00 00:00:00', 1),
(635, 'Кресло-коляска', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:43:23', '0000-00-00 00:00:00', 1),
(636, 'Подставка', '', '', '', '', '', '', '', 1, 5, 'data/demo/podstavka_steril_korob.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:44:10', '0000-00-00 00:00:00', 1),
(637, 'Стул', '', '', '', '', '', '', '', 1, 5, 'data/demo/stul_office.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:44:52', '0000-00-00 00:00:00', 1),
(638, 'Стол', '', '', '', '', '', '', '', 1, 5, 'data/demo/sotl_komputer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:53:39', '0000-00-00 00:00:00', 1),
(639, 'Шкаф', '', '', '', '', '', '', '', 1, 5, 'data/demo/shkaf_odezhda.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:55:21', '0000-00-00 00:00:00', 1),
(640, 'ШДВ', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_shdv.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:56:09', '0000-00-00 00:00:00', 1),
(641, 'ШМ-1', '', '', '', '', '', '', '', 1, 5, 'data/demo/shkaf_shm-1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:57:02', '0000-00-00 00:00:00', 1),
(642, 'Ширма', '', '', '', '', '', '', '', 1, 5, 'data/demo/shirma-2.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:58:03', '0000-00-00 00:00:00', 2),
(643, 'Ширма', '', '', '', '', '', '', '', 1, 5, 'data/demo/shirma-1.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:58:41', '0000-00-00 00:00:00', 2),
(644, 'Табурет', '', '', '', '', '', '', '', 1, 5, 'data/demo/taburet_vintovoy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 19:59:41', '0000-00-00 00:00:00', 1),
(645, 'Стул', '', '', '', '', '', '', '', 1, 5, 'data/demo/stul_vintovoy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:00:23', '0000-00-00 00:00:00', 0),
(646, 'Столик', '', '', '', '', '', '', '', 1, 5, 'data/demo/sotl_manipulyacion.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:02:01', '0000-00-00 00:00:00', 1),
(647, 'Столик', '', '', '', '', '', '', '', 1, 5, 'data/demo/stol_instrumental.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:02:45', '0000-00-00 00:00:00', 1),
(648, 'Столик', '', '', '', '', '', '', '', 1, 5, 'data/demo/sotl_pelenalniy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:03:28', '0000-00-00 00:00:00', 1),
(649, 'Кушетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/kushetka_smotrovaya.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:04:09', '0000-00-00 00:00:00', 1),
(650, 'Нож хрящевой реберный', '', '', '', '', '', '', '', 1, 5, 'data/demo/N-131.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:04:51', '0000-00-00 00:00:00', 0),
(651, 'Кушетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/kushetka_massazh.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:05:02', '0000-00-00 00:00:00', 1),
(652, ' Молоток хирургический металлический', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:05:04', '0000-00-00 00:00:00', 1),
(653, 'Молоток неврологический (игла,щетка)', '', '', '', '', '', '', '', 1, 5, 'data/demo/nevrolog_molot.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:05:34', '0000-00-00 00:00:00', 0),
(654, 'КГ-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/kreslo_gk-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:05:51', '0000-00-00 00:00:00', 1),
(655, 'Лопатка Буяльского ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:06:06', '0000-00-00 00:00:00', 1),
(656, 'Щиток', '', '', '', '', '', '', '', 1, 5, 'data/demo/zashita_licza.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:06:41', '0000-00-00 00:00:00', 1),
(657, 'Ложка Фолькмана', '', '', '', '', '', '', '', 1, 5, 'data/demo/l-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:06:51', '0000-00-00 00:00:00', 1);
INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(658, 'Щетка', '', '', '', '', '', '', '', 1, 5, 'data/demo/shetka_dlya_ruk.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:07:26', '0000-00-00 00:00:00', 1),
(659, 'Крючок хирургический ', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-29.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:07:30', '0000-00-00 00:00:00', 1),
(660, 'Крючок пластинчатый по Фарабеху', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-15.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:08:05', '0000-00-00 00:00:00', 1),
(661, 'Кюретка акушерская с зубчиком № 1-№ 6', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-101.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:09:31', '0000-00-00 00:00:00', 1),
(662, 'Корцанг прямой,изогнутый', '', '', '', '', '', '', '', 1, 5, 'data/demo/kronzag_pryamoy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:10:11', '0000-00-00 00:00:00', 1),
(663, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_soe.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:10:23', '0000-00-00 00:00:00', 1),
(664, 'Конхотом ', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-137.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:10:51', '0000-00-00 00:00:00', 1),
(665, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_probirok_ependorf_15.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:11:26', '0000-00-00 00:00:00', 1),
(666, 'Комплект для акупунктуры ', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:11:42', '0000-00-00 00:00:00', 2),
(667, 'КВ- 2 ', '', '', '', '', '', '', '', 1, 5, 'data/demo/KV-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:12:15', '0000-00-00 00:00:00', 1),
(668, 'Луер-Рекорд', '', '', '', '', '', '', '', 1, 5, 'data/demo/rekord_luer.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:13:47', '0000-00-00 00:00:00', 1),
(669, 'Канюля для промывания аттика', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-40.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:14:18', '0000-00-00 00:00:00', 0),
(670, 'Игла Куликовского ', '', '', '', '', '', '', '', 1, 5, 'data/demo/k-44.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:14:55', '0000-00-00 00:00:00', 1),
(671, 'Игла для пункции и дренирования гайморовой пазухи', '', '', '', '', '', '', '', 1, 5, 'data/demo/i_43.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:15:43', '0000-00-00 00:00:00', 0),
(672, ' Игла иньекционная', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:17:05', '0000-00-00 00:00:00', 1),
(673, ' Игла иньекционная', '', '', '', '', '', '', '', 1, 5, '', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:18:35', '0000-00-00 00:00:00', 0),
(674, 'Игла-нож для удаления инородных тел из роговицы', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-68.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:19:14', '0000-00-00 00:00:00', 1),
(675, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_probirok_40.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:20:06', '0000-00-00 00:00:00', 2),
(676, 'А-20-40-12;А-26-40-2', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-143.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:20:19', '0000-00-00 00:00:00', 0),
(677, 'Игла для отсасывания плазмы', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-114.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:20:56', '0000-00-00 00:00:00', 0),
(678, 'Игла для впуска воздуха Г-20х180х12', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-160.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:21:39', '0000-00-00 00:00:00', 0),
(679, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_probirok_20.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:21:50', '0000-00-00 00:00:00', 1),
(680, 'Игла для спино-мозговой пункции ', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-23.gif', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:22:34', '2014-12-08 20:23:07', 0),
(681, 'Штатив', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ_probirok_10.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:22:56', '0000-00-00 00:00:00', 2),
(682, 'Кассирского', '', '', '', '', '', '', '', 1, 5, 'data/demo/igla_kassirskogo.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:23:51', '0000-00-00 00:00:00', 1),
(683, 'Часы', '', '', '', '', '', '', '', 1, 5, 'data/demo/chasi_procedurnie.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:23:52', '0000-00-00 00:00:00', 1),
(684, 'В-10-120-30', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-7.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:24:28', '0000-00-00 00:00:00', 0),
(685, 'Часы', '', '', '', '', '', '', '', 1, 5, 'data/demo/chasi_pesoch_10.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:25:33', '2014-12-08 20:26:29', 2),
(686, 'Игла для пунции сердца (комплект)', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-13.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:25:41', '0000-00-00 00:00:00', 0),
(687, 'Иглодержатель глазной с фиксатором для пальца', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-126.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:26:00', '0000-00-00 00:00:00', 1),
(688, 'Хладоэлемент', '', '', '', '', '', '', '', 1, 5, 'data/demo/hladoelement.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:27:09', '0000-00-00 00:00:00', 1),
(689, 'Иглодержатель ', '', '', '', '', '', '', '', 1, 5, 'data/demo/i-10-3.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:33:01', '2014-12-08 20:33:54', 1),
(690, 'Зонд анатомический трупный с делениями ', '', '', '', '', '', '', '', 1, 5, 'data/demo/zn-55.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:34:39', '0000-00-00 00:00:00', 0),
(691, 'Зонд хирургический жолобоватый ', '', '', '', '', '', '', '', 1, 5, 'data/demo/zn-36.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:35:27', '0000-00-00 00:00:00', 0),
(692, 'Зонд пуговчатый с ушком', '', '', '', '', '', '', '', 1, 5, 'data/demo/zn_34.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:36:03', '0000-00-00 00:00:00', 0),
(693, 'Зонд ушной по Воячеку', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZH-48.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:36:43', '0000-00-00 00:00:00', 0),
(694, 'Зонд для аттика ', '', '', '', '', '', '', '', 1, 5, 'data/demo/zond_attika.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 20:37:31', '0000-00-00 00:00:00', 0),
(718, 'Долото с рифлёной ручкой, желобоватое изогнутое', '', '', '', '', '', '', '', 1, 5, 'data/demo/doloto_riflenoe_4mm.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:36:25', '2014-12-08 22:44:25', 1),
(695, 'Зеркало носовое с дл.губок ', '', '', '', '', '', '', '', 1, 5, 'data/demo/zerkalo_nosovoe.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:08:53', '2014-12-08 22:09:53', 1),
(696, 'Зеркало гортанное и носоглоточное', '', '', '', '', '', '', '', 1, 5, 'data/demo/zerkalo_gortan-nosoglot.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:10:34', '0000-00-00 00:00:00', 1),
(697, 'Зонд маточный с делениями пр.из.', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZH-2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:11:06', '0000-00-00 00:00:00', 0),
(698, 'Зеркало по ОТТУ №3, 4 (плоское)', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZM43-46.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:11:39', '0000-00-00 00:00:00', 0),
(699, 'Зеркало по ОТТУ № 1, 2 (плоское)', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZM43-46.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:12:37', '0000-00-00 00:00:00', 1),
(700, 'Зеркало по Симсу № 1, 2, 3, 4, 5', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZM53-54.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:13:08', '0000-00-00 00:00:00', 0),
(701, 'Зеркало по Куско № 1, 2, 3', '', '', '', '', '', '', '', 1, 5, 'data/demo/ZM53-54.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:13:39', '0000-00-00 00:00:00', 1),
(702, 'Зажим (Федорова) для почечной ножки изогнутый', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-26.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:14:36', '0000-00-00 00:00:00', 1),
(703, 'Зажим (Федорова) для почечной ножки изогнутый по радиусу мал', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-4.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:15:38', '0000-00-00 00:00:00', 1),
(704, 'Зажим кишечный эластичный прямой,изогнизогнутый', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-40-1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:16:32', '0000-00-00 00:00:00', 1),
(705, 'Зажим кишечный жесткий', '', '', '', '', '', '', '', 1, 5, 'data/demo/z-28.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:17:13', '0000-00-00 00:00:00', 1),
(706, 'Зажим для бронхов средний ', '', '', '', '', '', '', '', 1, 5, 'data/demo/zazhim_dla_bronha.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:17:54', '0000-00-00 00:00:00', 0),
(707, 'Зажим-цапка', '', '', '', '', '', '', '', 1, 5, 'data/demo/capka.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:18:28', '0000-00-00 00:00:00', 1),
(708, 'Зажим к/о (Микулича', '', '', '', '', '', '', '', 1, 5, 'data/demo/mikulich_198.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:19:10', '0000-00-00 00:00:00', 1),
(709, 'Зажим кровоостанавливающий для глубоких полостей', '', '', '', '', '', '', '', 1, 5, 'data/demo/dlya_glubokih_ploskistey_214.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:19:54', '0000-00-00 00:00:00', 1),
(710, 'Москит', '', '', '', '', '', '', '', 1, 5, 'data/demo/moskit_pryamoy_160.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:20:41', '0000-00-00 00:00:00', 1),
(711, 'Москит', '', '', '', '', '', '', '', 1, 5, 'data/demo/moskit_izognut_po_rebru_160.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:22:28', '0000-00-00 00:00:00', 1),
(712, 'Москит', '', '', '', '', '', '', '', 1, 5, 'data/demo/moskit_izognut_po_rebru_160.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:23:12', '0000-00-00 00:00:00', 1),
(713, 'Пиана, Бильрота', '', '', '', '', '', '', '', 1, 5, 'data/demo/belrota_izognut_270.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:24:02', '2014-12-08 22:31:25', 1),
(714, 'Пиана, Бильрота', '', '', '', '', '', '', '', 1, 5, 'data/demo/belrota_pryamaya_270.jpeg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:26:29', '2014-12-08 22:31:04', 1),
(715, 'Кохер', '', '', '', '', '', '', '', 1, 5, 'data/demo/zajim_kohera_izognutiy1.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:33:17', '0000-00-00 00:00:00', 1),
(716, 'Кохер', '', '', '', '', '', '', '', 1, 5, 'data/demo/zajim_kohera_pramoy.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:34:13', '0000-00-00 00:00:00', 1),
(717, 'Долото с рифлёной ручкой плоское ', '', '', '', '', '', '', '', 1, 5, 'data/demo/doloto_riflenoe_ploskoe_468mm2.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:35:42', '0000-00-00 00:00:00', 1),
(719, 'Диссектор сосудистый ', '', '', '', '', '', '', '', 1, 5, 'data/demo/dissektor_270mm.jpg', 0, 1, '0.0000', 0, 0, '2014-12-07', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-12-08 22:38:44', '2015-01-18 20:52:21', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(67, 29, 2, 'Новорожденные и дети раннего возраста'),
(52, 21, 2, 'Грудная клетка'),
(52, 17, 2, '25,0 мм в секунду и 50 мм в секунду;'),
(53, 19, 2, 'Манометр с нагнетателем,\r\nМанжета компрессионная со встроенным стетоскопом,\r\nРуководство по эксплуатации,\r\nУпаковка (виниловая сумочка, картонная коробка).'),
(53, 21, 2, 'Правая/ левая рука'),
(54, 20, 2, '1 год'),
(55, 24, 2, '1000'),
(56, 25, 2, 'Фарфор'),
(57, 25, 2, 'Стекло'),
(58, 26, 2, 'Не более 2 килограмм'),
(59, 27, 2, '0 градусов'),
(60, 28, 2, ' 650 мм.'),
(61, 29, 2, 'новорожденные и дети раннего возраста'),
(61, 30, 2, 'для гемостаза небольших сосудов при нейрохирургических операциях и в детской практике\r\n'),
(62, 31, 2, 'Одноразовый'),
(63, 30, 2, 'Применение аппарата наиболее эффективно при лечении:\r\n\r\n• поражений периферической нервной системы (межреберная невралгия, ишиас);\r\n• травматических повреждений;\r\n• функциональных заболеваний центральной нервной системы;\r\n• заболеваний сердечно-сосудистой системы;\r\n• заболеваний пищеварительной системы;\r\n• заболеваний органов опоры и движения;\r\n• ревматических поражений суставов, сухожилий;\r\n• заболеваний кожи и др.'),
(64, 32, 2, 'наличие микропроцессорного блока управления; индикация и контроль параметров.'),
(67, 30, 2, 'Для остановки кровотечения'),
(67, 34, 2, 'По ребру'),
(68, 34, 2, 'По плоскости'),
(68, 29, 2, 'Новорожденные и дети раннего возраста'),
(69, 34, 2, 'Прямой'),
(69, 29, 2, 'для новорожденных и детей раннего возраста'),
(70, 34, 2, 'Изогнутый по ребру'),
(70, 29, 2, 'для новорожденных и детей раннего возраста'),
(71, 34, 2, 'По плоскости'),
(72, 34, 2, 'Прямой'),
(73, 30, 2, 'Глубокие полости'),
(74, 30, 2, 'Глубокие полости'),
(75, 34, 2, 'По ребру'),
(76, 34, 2, 'Изогнут по плоскости'),
(77, 34, 2, 'Прямой'),
(78, 30, 2, 'Для захватывания и зажима сосудов'),
(78, 34, 2, 'Прямой'),
(79, 34, 2, 'Изогнутый по ребру'),
(81, 34, 2, 'Изогнутый по плоскости'),
(83, 34, 2, 'Прямой'),
(85, 34, 2, 'Прямой'),
(87, 34, 2, 'Прямой'),
(88, 32, 2, 'Атравматическая насечка'),
(89, 34, 2, 'Прямой'),
(89, 32, 2, 'Атравматическая насечка'),
(91, 34, 2, 'Прямой'),
(92, 34, 2, 'Вертикально-изогнутый'),
(93, 35, 2, '36 гр/см2'),
(94, 35, 2, '36 г/см2'),
(95, 35, 2, '36 г/см2'),
(96, 30, 2, '1. Применяются с целью перевязки ран и ожогов.\r\n2. Тампонады ран при кровотечениях.\r\n3. Для наложения повязок после хирургических вмешательств с целью осушения ран и защиты их от вторичной инфекции.'),
(97, 30, 2, '1. Применяются с целью перевязки ран и ожогов.\r\n2. Тампонады ран при кровотечениях.\r\n3. Для наложения повязок после хирургических вмешательств с целью осушения ран и защиты их от вторичной инфекции.'),
(102, 30, 2, 'Рекомендованы к применению в лечебных учреждениях, санитарных машинах и машинах скорой медицинской помощи, в домашних условиях при уходе за больными, новорожденными, людьми пожилого возраста, в промышленных отраслях, на предприятиях общественного хозяйства.'),
(114, 24, 2, '300'),
(117, 20, 2, '5 лет'),
(117, 30, 2, 'лечебно-профилактические учреждения, инфекционные очаги, детские учреждения, коммунальные объекты (гостиницы, общежития, бани, бассейны, спорткомплексы, культурно-оздоровительные комплексы, офисы, парикмахерские, общественные туалеты), предприятия общественного питания, пищевой промышленности (молочной, мясной, напитков и пиво-безалкогольной), санитарный, авиационный, железнодорожный транспорт и метрополитен.'),
(123, 20, 2, '3 года'),
(125, 24, 2, '20 штук'),
(125, 30, 2, 'определяет амфетамин, марихуану, морфин (опиат), кокаин, барбитураты, метамфетамин, бензодиазепин, экстази, бупренорфин, метадон'),
(126, 24, 2, '20 штук'),
(126, 30, 2, 'определяет амфетамин, марихуану, морфин (опиат), кокаин, барбитуроты, метамфетамин, бензодиазепин, экстази.'),
(127, 24, 2, '20 штук'),
(127, 30, 2, 'тест для одновременного определения амфетамина, марихуаны, морфина(опиата), кокаина, барбитуротов, метамфет.'),
(128, 24, 2, '20 штук'),
(128, 30, 2, 'тест для одновременного определения амфетамина, марихуаны, морфина(опиата), кокаина, барбитуротов'),
(129, 24, 2, '20 штук'),
(129, 30, 2, 'тест для одновременного определения амфетамина, марихуаны, морфина (опиатов), метамфетамина.'),
(140, 22, 2, ' 5мл'),
(140, 24, 2, '50 доз'),
(141, 24, 2, '30 доз'),
(141, 22, 2, '5 мл'),
(141, 32, 2, 'для проб Кумбса'),
(142, 24, 2, '50 доз'),
(142, 22, 2, '5 мл'),
(143, 22, 2, '5 мл'),
(143, 24, 2, '50'),
(144, 22, 2, '10 мл'),
(144, 24, 2, '100'),
(145, 22, 2, '10 мл'),
(145, 24, 2, '100'),
(146, 22, 2, '10 мл'),
(146, 24, 2, '100'),
(147, 22, 2, '10 мл'),
(147, 24, 2, '100'),
(149, 24, 2, '500'),
(150, 24, 2, '1000'),
(151, 32, 2, '50 мест'),
(152, 32, 2, 'на 25 мест'),
(153, 32, 2, 'на 2 стекла'),
(155, 20, 2, '5 лет'),
(156, 18, 2, '2 мл'),
(156, 24, 2, '1000 штук'),
(156, 33, 2, 'Обеспечивают наименьшее испарение при нагревании;\r\nградуировка; место для маркировки, в т.ч. на крышке;\r\nмогут быть качества PCR clean и Biopur;\r\nвыдерживают центрифугирование до 30000×g (пробирки 0,5 и 1,5 мл Eppendorf Quality и PCR clean) и до 22000×g (пробирки Biopur).'),
(157, 18, 2, '1,5 мл'),
(157, 24, 2, '1000'),
(159, 38, 2, '100мм'),
(159, 28, 2, '16'),
(161, 18, 2, '35 мл'),
(163, 18, 2, '15 мл'),
(164, 32, 2, 'стерильный с закручивающейся жёлтой крышкой'),
(165, 18, 2, '100 мл'),
(165, 32, 2, 'стерильный с закручивающейся крышкой'),
(166, 18, 2, '75 мл'),
(166, 32, 2, 'стерильный с захлопывающейся крышкой'),
(167, 32, 2, 'С пробкой'),
(167, 28, 2, '16 мм'),
(167, 38, 2, '100 мм'),
(167, 24, 2, '350 штук'),
(168, 38, 2, '75 мм'),
(168, 28, 2, '12 мм'),
(168, 24, 2, '600 штук'),
(168, 32, 2, 'Стерильная с пробкой'),
(169, 28, 2, '16 мм'),
(169, 38, 2, '100 мм'),
(169, 32, 2, 'конусная'),
(169, 24, 2, '100 штук'),
(170, 38, 2, '100 мм'),
(170, 24, 2, '100 штук'),
(170, 28, 2, '16 мм'),
(170, 18, 2, '10 мл'),
(171, 18, 2, '5 мл'),
(171, 28, 2, '16 мм'),
(171, 38, 2, '50 мм'),
(171, 32, 2, 'С пробкой'),
(171, 24, 2, '500 штук'),
(172, 28, 2, '12 мм'),
(172, 38, 2, '75 мм'),
(172, 24, 2, '900 штук'),
(173, 15, 2, '230 В + 10%,  50 Гц, однофазный'),
(173, 38, 2, '115 мм'),
(173, 37, 2, '165 мм'),
(176, 32, 2, 'с таймером (лампа Philips)'),
(177, 20, 2, '9000 часов'),
(177, 38, 2, '1250 мм'),
(177, 37, 2, '320'),
(177, 36, 2, '320'),
(177, 32, 2, '3 лампы. (лампа Philips)'),
(178, 32, 2, 'Лампа Philips'),
(179, 20, 2, '8000 часов'),
(179, 32, 2, 'Количество ламп 5 х 30 Вт\r\nПроизводительность 200 м3/час'),
(180, 20, 2, '8000 часов'),
(180, 32, 2, 'с таймером'),
(182, 20, 2, '2 месяца'),
(184, 20, 2, '2 месяца'),
(196, 20, 2, 'Не ограничен'),
(198, 20, 2, '3 года'),
(200, 20, 2, '1 год'),
(201, 20, 2, '1 год '),
(203, 20, 2, '1 год '),
(204, 20, 2, '2 года'),
(206, 20, 2, '3 года'),
(207, 20, 2, '2 года'),
(208, 20, 2, 'не ограничен'),
(210, 20, 2, 'не ограничен'),
(211, 20, 2, 'не ограничен'),
(212, 20, 2, 'не ограничен'),
(213, 20, 2, '1 год'),
(214, 20, 2, '1 год '),
(433, 36, 2, '200 мм'),
(440, 28, 2, '210 мм'),
(441, 28, 2, '180 мм '),
(445, 31, 2, '50 шт'),
(449, 25, 2, 'стекло');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(74, 2, 'Зажим кровоостанавливающий для глубоких полостей №2 ', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 18px; vertical-align: baseline; color: rgb(0, 0, 0); margin-bottom: 14px !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;Стерилизация хирургического инструментария осуществляют кипячением, автоклавированием и антисептическими веществами. Нережущие инструменты стерилизуют кипячением в 1—2% растворе гидрокарбоната натрия, который препятствует окислению металла и повышает температуру кипения. Можно кипятить инструменты в дистиллированной воде. Инструменты, вымытые щеткой с мылом и высушенные после предыдущей операции, опускают в воду на сетке в специальные металлические сосуды — стерилизаторы, размеры которых варьируют в зависимости от количества и размера инструментов. Время кипячения инструментов — 30 мин. Если инструменты ранее использовали при гнойной операции, а особенно, если произошло их загрязнение анаэробными микробами или синегнойной палочкой, время кипячения увеличивается до 45 мин. или даже их кипятят троекратно по 60 мин. со сменой воды. Такие инструменты перед кипячением на несколько часов погружают в насыщенный раствор борной кислоты (при загрязнении синегнойной палочкой) или в раствор лизоформа. Кипячение инструментов, предназначенных для «чистых» и для гнойных операций, производят в отдельных стерилизаторах. Инструменты можно стерилизовать уложенными в биксы или завернутыми в простыни в автоклаве в течение 30 мин. при давлении 2 am. Применяют также суховоздушную стерилизацию в сушильных шкафах при t° 180— 200° в течение 40 мин. В экстренных случаях допускается стерилизация инструментов обжиганием. Уложив в металлический лоток, их обливают спиртом, который поджигают. Но от такой стерилизации инструменты портятся, да и метод не является надежным.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 18px; vertical-align: baseline; color: rgb(0, 0, 0); margin-bottom: 14px !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;Режущие инструменты при кипячении в воде тупятся, поэтому их стерилизуют холодным способом. После мытья щеткой с мылом их погружают на 2 часа в 96% спирт. Спирт меньшей концентрации вызывает ржавчину. Можно использовать растворы следующего состава: карболовой кислоты — 3 части, едкого натра — 15 частей,&amp;nbsp;&lt;/span&gt;формалина&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;&amp;nbsp;— 20 частей, дистиллированной воды — 1000 частей; формалина — 20 частей, фенола чистого жидкого — 1,5 части, карбоната натрия — 7,5 части, воды дистиллированной — 500 частей. Стерилизация в этих растворах менее надежна, возможно образование ржавчины, поэтому их применение может быть рекомендовано только при отсутствии спирта. Экспозиция та же, что и при стерилизации спиртом.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(79, 2, 'Зажим кровоостанавливающий зубчатый изогнутый №1 ', '', '', '', ''),
(80, 2, 'Зажим кровоостанавливающий зубчатый прямой №3 ', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Жизнь людей порой полностью зависит от качества хирургического вмешательства. А оно будет успешным только при условии использования надежных и удобных инструментов. Помимо инструментов для разъединения тканей требуются вспомогательные и кровоостанавливающие. К таковым относится и&amp;nbsp;зажим медицинский. Они изготавливаются из хромированной нержавеющей стали, но имеют большое количество разновидностей. Целая группа зажимов предназначена для сжатия кровеносных сосудов. К таковым относится зажим Блелока, Хёпфнера, Маллигена, Кохера,&amp;nbsp;зажим медицинский&amp;nbsp;кровоостанавливающий Москит, зажим Поттса, Дольотти и др. Они имеют разную длину бранш, различный угол изгиба, и засечки на губках, позволяющие прочно, но при этом наименее травматично сжимать сосуды для остановки кровотока. Ряд зажимов предназначен для работы с конкретными органами. Так, например, для пережатия широких связок матки применяется специальный длинный гинекологический зажим с прямыми браншами или модель Мюзе. Для наложения на кишку используется зажим без бранш — модели Дзаммитти — Блазиуса и Дюпюитрена — Блазиуса. Для сближения краев разрезанных мышц сердца использется игольчатый&amp;nbsp;зажим медицинский&amp;nbsp;или зажим Лонго. Легкие без травм фиксирует зажим Люэра, концы рабочих губок которого при фиксации не соприкасаются, а также пинцет Дюваля с губками в виде равнобедренных треугольников с засечками. При аппендэктомии применяется зажим Хартманна. При помощи этих окончатых щипцов извлекается червеобразный отросток. В пластических операциях для захвата сухожилий используется когтистый зажим Бизальского, для операций на колене нужен специальный артроскопический хирургический зажим с кремальерой. Для полостных операций применяется зажимы Пайра (резекция желудка), Поппера (операция на желчном пузыре), Фёдорова (нефрэктомия), Линартца (наложение энтероэнтероанастомоза «бок в бок»).&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Существует также и другие, вспомогательные устройства. К примеру, для удержания кровоостанавливающих тампонов используется зажим Микулича. При помощи него также закрепляется белье к брюшине. Для этой цели применяется и двузубчатый&amp;nbsp;зажим медицинский. Зажимом Биттера проводят манипуляции с предметными и покровными стеклами, а зажимом Мора пережимают резиновые трубки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(75, 2, 'Зажим кровоостанавливающий типа Москит изогнутый по ребру', '', '', '', ''),
(76, 2, 'Зажим кровоостанавливающий типа Москит изогнутый по плоскости', '', '', '', ''),
(77, 2, 'Зажим кровоостанавливающий типа Москит прямой', '', '', '', ''),
(78, 2, 'Зажим кровоостанавливающий зубчатый прямой №1 ', '&lt;p&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 19.140625px; vertical-align: baseline; text-align: justify;&quot;&gt;Жизнь людей порой полностью зависит от качества хирургического вмешательства. А оно будет успешным только при условии использования надежных и удобных инструментов. Помимо инструментов для разъединения тканей требуются вспомогательные и кровоостанавливающие. К таковым относится и&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: 17px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;зажим медицинский&lt;/span&gt;. Они изготавливаются из хромированной нержавеющей стали, но имеют большое количество разновидностей. Целая группа зажимов предназначена для сжатия кровеносных сосудов. К таковым относится зажим Блелока, Хёпфнера, Маллигена, Кохера,&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: 17px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;зажим медицинский&lt;/span&gt;&amp;nbsp;кровоостанавливающий Москит, зажим Поттса, Дольотти и др. Они имеют разную длину бранш, различный угол изгиба, и засечки на губках, позволяющие прочно, но при этом наименее травматично сжимать сосуды для остановки кровотока. Ряд зажимов предназначен для работы с конкретными органами. Так, например, для пережатия широких связок матки применяется специальный длинный гинекологический зажим с прямыми браншами или модель Мюзе. Для наложения на кишку используется зажим без бранш — модели Дзаммитти — Блазиуса и Дюпюитрена — Блазиуса. Для сближения краев разрезанных мышц сердца использется игольчатый&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: 17px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;зажим медицинский&amp;nbsp;&lt;/span&gt;или зажим Лонго. Легкие без травм фиксирует зажим Люэра, концы рабочих губок которого при фиксации не соприкасаются, а также пинцет Дюваля с губками в виде равнобедренных треугольников с засечками. При аппендэктомии применяется зажим Хартманна. При помощи этих окончатых щипцов извлекается червеобразный отросток. В пластических операциях для захвата сухожилий используется когтистый зажим Бизальского, для операций на колене нужен специальный артроскопический хирургический зажим с кремальерой. Для полостных операций применяется зажимы Пайра (резекция желудка), Поппера (операция на желчном пузыре), Фёдорова (нефрэктомия), Линартца (наложение энтероэнтероанастомоза «бок в бок»).&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); font-family: Verdana, sans-serif; font-size: 13px; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-size: 14px; font-stretch: inherit; line-height: 19.140625px; vertical-align: baseline; text-align: justify;&quot;&gt;Существует также и другие, вспомогательные устройства. К примеру, для удержания кровоостанавливающих тампонов используется зажим Микулича. При помощи него также закрепляется белье к брюшине. Для этой цели применяется и двузубчатый&amp;nbsp;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: 17px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;зажим медицинский&lt;/span&gt;. Зажимом Биттера проводят манипуляции с предметными и покровными стеклами, а зажимом Мора пережимают резиновые трубки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(81, 2, 'Зажим кровоостанавливающий зубчатый изогнутый №3 ', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Жизнь людей порой полностью зависит от качества хирургического вмешательства. А оно будет успешным только при условии использования надежных и удобных инструментов. Помимо инструментов для разъединения тканей требуются вспомогательные и кровоостанавливающие. К таковым относится и&amp;nbsp;зажим медицинский. Они изготавливаются из хромированной нержавеющей стали, но имеют большое количество разновидностей. Целая группа зажимов предназначена для сжатия кровеносных сосудов. К таковым относится зажим Блелока, Хёпфнера, Маллигена, Кохера,&amp;nbsp;зажим медицинский&amp;nbsp;кровоостанавливающий Москит, зажим Поттса, Дольотти и др. Они имеют разную длину бранш, различный угол изгиба, и засечки на губках, позволяющие прочно, но при этом наименее травматично сжимать сосуды для остановки кровотока. Ряд зажимов предназначен для работы с конкретными органами. Так, например, для пережатия широких связок матки применяется специальный длинный гинекологический зажим с прямыми браншами или модель Мюзе. Для наложения на кишку используется зажим без бранш — модели Дзаммитти — Блазиуса и Дюпюитрена — Блазиуса. Для сближения краев разрезанных мышц сердца использется игольчатый&amp;nbsp;зажим медицинский&amp;nbsp;или зажим Лонго. Легкие без травм фиксирует зажим Люэра, концы рабочих губок которого при фиксации не соприкасаются, а также пинцет Дюваля с губками в виде равнобедренных треугольников с засечками. При аппендэктомии применяется зажим Хартманна. При помощи этих окончатых щипцов извлекается червеобразный отросток. В пластических операциях для захвата сухожилий используется когтистый зажим Бизальского, для операций на колене нужен специальный артроскопический хирургический зажим с кремальерой. Для полостных операций применяется зажимы Пайра (резекция желудка), Поппера (операция на желчном пузыре), Фёдорова (нефрэктомия), Линартца (наложение энтероэнтероанастомоза «бок в бок»).&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Существует также и другие, вспомогательные устройства. К примеру, для удержания кровоостанавливающих тампонов используется зажим Микулича. При помощи него также закрепляется белье к брюшине. Для этой цели применяется и двузубчатый&amp;nbsp;зажим медицинский. Зажимом Биттера проводят манипуляции с предметными и покровными стеклами, а зажимом Мора пережимают резиновые трубки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(68, 2, 'Зажим кровоостанавливающий типа Москит изогнутый по плоскости', '', '', '', ''),
(69, 2, 'Зажим кровоостанавливающий типа Москит прямой', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana; font-size: 13px; line-height: normal;&quot;&gt;Кровоостанавливающие зажимы &quot;Москит&quot; применяются для временной остановки кровотечения.&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Verdana; font-size: 13px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana; font-size: 13px; line-height: normal;&quot;&gt;Зажим типа &quot;Москит&quot; имеет самые тонкие рабочие поверхности.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(70, 2, 'Зажим кровоостанавливающий 1×2-зубый зубчатый изогнутый по ребру ', '&lt;p&gt;&lt;span style=&quot;color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px;&quot;&gt;Имеет длинные узкие рабочие губки с острыми зубчиками. На одной из губок зубец один, и он входит между двумя зубцами второй губки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(71, 2, 'Зажим кровоостанавливающий 1×2 зубый зубчатый изогнутый по плоскости', '&lt;p&gt;&lt;span style=&quot;color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px;&quot;&gt;Имеет длинные узкие рабочие губки с острыми зубчиками. На одной из губок зубец один, и он входит между двумя зубцами второй губки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(72, 2, 'Зажим кровоостанавливающий 1×2 зубый зубчатый прямой ', '&lt;p&gt;&lt;span style=&quot;color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: 18px;&quot;&gt;Имеет длинные узкие рабочие губки с острыми зубчиками. На одной из губок зубец один, и он входит между двумя зубцами второй губки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(73, 2, 'Зажим кровоостанавливающий для глубоких полостей №3 ', '&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 18px; vertical-align: baseline; color: rgb(0, 0, 0); margin-bottom: 14px !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;Стерилизация хирургического инструментария осуществляют кипячением, автоклавированием и антисептическими веществами. Нережущие инструменты стерилизуют кипячением в 1—2% растворе гидрокарбоната натрия, который препятствует окислению металла и повышает температуру кипения. Можно кипятить инструменты в дистиллированной воде. Инструменты, вымытые щеткой с мылом и высушенные после предыдущей операции, опускают в воду на сетке в специальные металлические сосуды — стерилизаторы, размеры которых варьируют в зависимости от количества и размера инструментов. Время кипячения инструментов — 30 мин. Если инструменты ранее использовали при гнойной операции, а особенно, если произошло их загрязнение анаэробными микробами или синегнойной палочкой, время кипячения увеличивается до 45 мин. или даже их кипятят троекратно по 60 мин. со сменой воды. Такие инструменты перед кипячением на несколько часов погружают в насыщенный раствор борной кислоты (при загрязнении синегнойной палочкой) или в раствор лизоформа. Кипячение инструментов, предназначенных для «чистых» и для гнойных операций, производят в отдельных стерилизаторах. Инструменты можно стерилизовать уложенными в биксы или завернутыми в простыни в автоклаве в течение 30 мин. при давлении 2 am. Применяют также суховоздушную стерилизацию в сушильных шкафах при t° 180— 200° в течение 40 мин. В экстренных случаях допускается стерилизация инструментов обжиганием. Уложив в металлический лоток, их обливают спиртом, который поджигают. Но от такой стерилизации инструменты портятся, да и метод не является надежным.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-top: 0px; margin-right: 0px; margin-left: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 18px; vertical-align: baseline; color: rgb(0, 0, 0); margin-bottom: 14px !important;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;Режущие инструменты при кипячении в воде тупятся, поэтому их стерилизуют холодным способом. После мытья щеткой с мылом их погружают на 2 часа в 96% спирт. Спирт меньшей концентрации вызывает ржавчину. Можно использовать растворы следующего состава: карболовой кислоты — 3 части, едкого натра — 15 частей,&amp;nbsp;&lt;/span&gt;формалина&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 17.5499992370605px; vertical-align: baseline;&quot;&gt;&amp;nbsp;— 20 частей, дистиллированной воды — 1000 частей; формалина — 20 частей, фенола чистого жидкого — 1,5 части, карбоната натрия — 7,5 части, воды дистиллированной — 500 частей. Стерилизация в этих растворах менее надежна, возможно образование ржавчины, поэтому их применение может быть рекомендовано только при отсутствии спирта. Экспозиция та же, что и при стерилизации спиртом.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(52, 2, 'Электрокардиограф', '&lt;p style=&quot;margin: 0px 0px 10px; padding: 0px 6px 10px 0px; color: rgb(60, 60, 60); font-family: Arial; font-size: 13px; line-height: normal; text-align: justify;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Электрокардиограф швейцарской фирмы SCHILLER AG&amp;nbsp; CARDIOVIT AT-101&lt;/strong&gt;представляет собой надежный&amp;nbsp; портативный аппарат для снятия электрокардиограмм и обработки и вывода результатов.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 10px; padding: 0px 6px 10px 0px; color: rgb(60, 60, 60); font-family: Arial; font-size: 13px; line-height: normal; text-align: justify;&quot;&gt;&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nДанные обследования выводятся на печать при помощи встроенного термопринтера по трем каналам. Данные аппарат обладает широким спектром настроек, включая параметры измерения, интерпретации результатов и скорости печати, кроме того имеется функция автоматического распознавания кардиостимулятора. Используемые для управления функциональные клавиши прибора имеют обозначения на русском языке.&amp;nbsp;&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nБлагодаря компактным размерам и небольшому весу&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Электрокардиограф CARDIOVIT AT-101&lt;/strong&gt;&amp;nbsp;можно использовать при проведении амбулаторных обследований.&lt;/p&gt;\r\n', '', '', ''),
(53, 2, 'Тонометр механический с фонендоскопом LD-71', '&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Прибор для измерения артериального давления классического типа.&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Точный металлический анероидный манометр.&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;&lt;b style=&quot;margin: 0px; padding: 0px;&quot;&gt;Особенности:&lt;/b&gt;&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Прочная и удобная нейлоновая манжета с металлическим фиксирующим кольцом для окружности плеча 25 - 36 см.&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Для удобства самостоятельного измерения металлический стетоскоп встроен в манжету.&lt;/div&gt;\r\n\r\n&lt;div style=&quot;margin: 0px; padding: 0px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Сетчатый фильтр обратного клапана нагнетателя предотвращает засорение прибора пылью.&lt;/div&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 9px; font-family: Tahoma, Geneva, sans-serif; color: rgb(63, 63, 63); line-height: normal;&quot;&gt;Металлический надежный воздушный игольчатый клапан с плавной регулировкой сброса давления.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(54, 2, 'Стетофонендоскоп Раппопорта Microlife ST-77', '&lt;p&gt;&lt;strong style=&quot;color: rgb(102, 102, 102); font-family: Tahoma; font-size: 13px; line-height: 16.6399993896484px;&quot;&gt;Стетоскоп Раппопорта&lt;/strong&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Tahoma; font-size: 13px; line-height: 16.6399993896484px;&quot;&gt;&amp;nbsp;предназначен для прослушивания тонов Короткова при измерении артериального давления механическим тонометром, легких. Имеет головку с большой и малой диафрагмой, 3 запасных комплекта олив различных размеров, запасную мембрану, 3 головки с воронками конической формы и 2 запасных диафрагмы.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong style=&quot;color: rgb(102, 102, 102); font-family: Tahoma; font-size: 13px; line-height: 16.6399993896484px;&quot;&gt;Обладает отличными акустическими характеристиками&lt;/strong&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Tahoma; font-size: 13px; line-height: 16.6399993896484px;&quot;&gt;&amp;nbsp;и надежной конструкцией.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(55, 2, 'Пробирка &quot;Eppendorf&quot; ', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Микропробирки&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;тип Eppendorf&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;идеально подходят для транспортировки и для работы с малыми объёмами. Выдерживают&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;15 000&amp;nbsp;g&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;при&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;центрифугировании&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(56, 2, 'Чаша выпарительная', '&lt;p&gt;&lt;span style=&quot;color: rgb(49, 49, 49); font-family: Tahoma, Geneva, sans-serif; font-size: 13px; line-height: normal;&quot;&gt;Чаша выпарительная применяется для выпаривания до сухого остатка жидкостей нейтрального, щелочного и кислого характера, не оказывающих разрушительного действия на глазурованную поверхность чаши. Выпаривание производится при помощи водяной, песочной бани и газовой горелки. Внутренняя и наружная поверхность чаши, за исключением верхней кромки, покрыта глазурью. Чаша выпарительная выпускается в соответствии с требованиями ГОСТ 9147-80 &quot;Посуда и оборудование лабораторные фарфоровые&quot;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(57, 2, 'Стакан высокий с меткой ', '', '', '', ''),
(58, 2, 'Шкаф медицинский ШМ-2 двухстворчатый', '&lt;p&gt;&lt;span style=&quot;color: rgb(74, 70, 70); font-family: Georgia; line-height: normal;&quot;&gt;Данный вид медицинской мебели используется практически в каждом медицинском кабинете, начиная от кабинета семейного врача и заканчивая процедурным кабинетом и перевязочной. В таком шкафу размещают различный инструментарий, медикаменты, перевязочный материал для изоляции от нестерильной окружающей среды.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(59, 2, 'Столик для внутривенных вливаний', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Столик&amp;nbsp; состоит&amp;nbsp; из&amp;nbsp; сварного основания и мягкой подушки, имеющей возможность регулировки по высоте над уровнем пола и по углу на-клона относительно горизонтали. Фиксация выбранного положения подушки столика производится при помощи винтовых зажимов. &amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(60, 2, 'Штатив для длительных вливаний ', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.2000007629395px; text-align: justify; text-indent: 20px;&quot;&gt;Штатив для длительных вливаний ШДВ-Е предназначен для установки и крепления емкостей для переливания лекарственных препаратов и одноразовых систем. Имеет телескопически поднимающуюся корзину, состоящую из двух крючков для систем внутривенного вливания и двух независимых подвесов для бутылочек с инфузионным раствором.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(61, 2, 'Зажим кровоостанавливающий типа Москит', '', '', '', ''),
(62, 2, 'Шприц инъекционный IGAR-MedPlast', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: small; font-weight: bold; line-height: normal; text-align: justify;&quot;&gt;Шприц инекционный одноразового использования с иглой, трех-компонентный. Инструмент медецинского назначения, для введения в ткани организма жидких лекарственных средств.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(63, 2, 'Аппарат для электролечения двухканальный &quot;МІТ-ЕФ2&quot;', '&lt;p&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Аппарат для рефлексотерапии комбинированный «МИТ-ЭФ 2» применяется для выполнения электрофореза или других вариантов электролечения импульсным или постоянным электрическим током.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Лекарственный электрофорез – это метод сочетанного одновременного воздействия на больного электрическим током и определенным лекарственным веществом, вводимым в ткани при помощи тока. Для электрофореза используют препараты, которые в электрическом поле не утрачивают свои фармакологические свойства, распадаясь на ионы или абсорбируя ионы на себя. Благодаря тому, что лекарство находится в ионизированной форме, а реактивность организма под воздействием электрического тока повышается, даже такие небольшие количества препарата оказывают желаемое воздействие. Кроме того, депонирование препарата в виде активной ионизированной формы в коже позволяет значительно пролонгировать его действие.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(64, 2, 'Аппарат ультразвуковой терапии УЗТ-1.01Ф-МедТеКо', '&lt;p&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Аппарат предназначен для генерирования ультразвуковых механических колебаний в целях воздействия ими на локальные участки тела.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Аппарат применяется в медицинских и косметологических учреждениях, с лечебной и профилактической целью.&lt;/span&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;&amp;nbsp;Аппарат предназначен для лечения и профилактики заболеваний внутренних органов, костно-мышечной и нервной системы, мочеполовой системы, глаз, полости рта, трофических язв, массажа кожно-мышечной системы.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(65, 2, 'Ингалятор компрессорный для аэрозольной терапии Delphinus F1000', '&lt;p&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Ингалятор компрессорный для аэрозольной терапии Delphinus F1000 предназначен для проведения небулайзерной аэрозольтерапии;&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;применяется при лечении острых и хронических заболеваний верхних и нижних дыхательных путей:&lt;/b&gt;&lt;/p&gt;\r\n', '', '', ''),
(66, 2, 'Зажим эластичный для пищевода ТМ- З-7-1 ', '', '', '', ''),
(67, 2, 'Зажим кровоостанавливающий типа Москит изогнутый по ребру', '', '', '', ''),
(82, 2, 'Зажим кровоостанавливающий зубчатый изогнутый №2 ', '', '', '', ''),
(83, 2, 'Зажим кровоостанавливающий зубчатый прямой №2 ', '', '', '', ''),
(84, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый изогнутый №3', '', '', '', ''),
(85, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый прямой №3 ', '', '', '', ''),
(86, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый изогнутый №1', '', '', '', ''),
(87, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый прямой №1', '', '', '', ''),
(88, 2, 'Зажим кровоостанавливающий изогнутый с атравматической с насечкой', '', '', '', ''),
(89, 2, 'Зажим кровоостанавливающий прямой с атравматической с насечкой', '', '', '', ''),
(90, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый изогнутый №2 ', '', '', '', ''),
(91, 2, 'Зажим кровоостанавливающий 1×2 зубчатый, зубчатый прямой №2', '', '', '', ''),
(92, 2, 'Зажим кровоостанавливающий зубчатый вертикально-изогнутый ', '', '', '', ''),
(93, 2, 'Отрез 5 м', '', '', '', ''),
(94, 2, 'Отрез 3 м', '&lt;p&gt;&lt;span style=&quot;color: rgb(108, 112, 119); font-family: Tahoma; font-size: 11px; line-height: normal; text-align: justify; background-color: rgb(252, 254, 254);&quot;&gt;Отрез марлевый медицинский изготовлен из ниточной марли простого плетения, отбеленной без использования хлора. Отрезы упаковываются в полимерную упаковку, которая отличается хорошим внешним видом, не повреждается при транспортировке, пыле- и влагонепроницаема. Отрез марлевый удобен для выполнения повязок с использованием нестерильного бинта. Оптимальные размеры марлевых отрезов позволяют широко использовать их не только в медицине, но и для бытовых целей.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(95, 2, 'Марля рулон (1000 м) ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Марля медицинская хлопчатобумажная отбеленная - представляет собой лёгкую, гигроскопичную хлопчатобумажную ткань простого полотняного плетения.&amp;nbsp;Отбеленная марля х/б нестерильная. Нестерильная марля в основном служит протирочным материалом, так как имеет массу полезных свойств: отлично впитывает жидкости, хорошо выжимается и быстро сохнет. Совокупность отличительных свойств данного материала, способствуют широкому применению марли в хозяйстве и в санитарных работах. Марля отбеленная широко применяется&amp;nbsp; в производстве бинтов, ватно-марлевых повязок, масок и тампонов&amp;nbsp; хирургических. Марля нашла&amp;nbsp; широкое применение и в производстве, отбеленную марлю используют в покрасочных цехах для&amp;nbsp; удаления&amp;nbsp; пыли и грязи. Производственные цеха используют марлю для удаления масла и обезжиривания поверхности под покраску.Марля медицинская отбеленная предназначена для изготовления опериационно- перевязочных средств. Марля медицинская&amp;nbsp; отбеленная производится из хлопковой пряжи по высокоэффективной современной технологии. Марля медицинская отбеленная обладают целым рядом достоинств: 1.Отличные капиллярные и кроостанавливающие свойства; 2. Имея широкий размерный диапозон могут использоваться как в детской, так и во взрослой медицинской практике. Технические характеристики: Белизна, нестерильных бинтов %, не менее-80; Смачиваемость, с, не более-10,0; Разрывная нагрузка, Н-78. Срок годности - неограничен.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(96, 2, 'Бинт н/с 7х14', '&lt;div align=&quot;justify&quot; style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: 11px; font-weight: bold; line-height: normal;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Бинт марлевый нестерильный, размеры составляют 7м х 14 см.&lt;/font&gt;&lt;font size=&quot;2&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;font size=&quot;2&quot;&gt;Разрывная способность – не менее 78 Н. Капиллярность гбеотовых бинтов – не менее 7,0 см.&lt;/font&gt;&lt;/div&gt;\r\n\r\n&lt;div align=&quot;justify&quot; style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: 11px; font-weight: bold; line-height: normal;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Бинты марлевые медицинские стерильные и нестерильные изготавливаются из марли простого плетения. Отбеливание производится без использования хлора. Бинты обладают высокой впитывающей способностью.&lt;/font&gt;&lt;/div&gt;\r\n', '', '', ''),
(97, 2, 'Бинт н/с 5х10', '&lt;div align=&quot;justify&quot; style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: 11px; font-weight: bold; line-height: normal;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Бинт марлевый нестерильный, размеры составляют 5м х 10 см.&lt;/font&gt;&lt;font size=&quot;2&quot;&gt;&amp;nbsp;&lt;/font&gt;&lt;font size=&quot;2&quot;&gt;Разрывная способность – не менее 78 Н. Капиллярность готовых бинтов – не менее 7,0 см.&lt;/font&gt;&lt;/div&gt;\r\n\r\n&lt;div align=&quot;justify&quot; style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: 11px; font-weight: bold; line-height: normal;&quot;&gt;&lt;font size=&quot;2&quot;&gt;Бинты марлевые медицинские стерильные и нестерильные изготавливаются из марли простого плетения. Отбеливание производится без использования хлора. Бинты обладают высокой впитывающей способностью.&lt;/font&gt;&lt;/div&gt;\r\n', '', '', ''),
(98, 2, 'Хлорная известь', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Хлорная известь - это сильнодействующий дезинфицирующий препарат, пользоваться которым необходимо строго по показаниям. На сегодняшний день реализуемая нами хлорная известь, а также другие виды химического сырья уже представлены в двадцати областях Украины и мы продолжаем расти. Сегодня мы работаем в 150 населенных пунктах страны, в том числе во всех городах-миллионниках: Киеве, Днепропетровске, Донецке, Львове, Одессе и Харькове. Полный спектр услуг мы предоставляем в 128 населенных пунктах Украины. Мы предлагаем Вашему вниманию высококачественную продукцию, качество которой соответствует высоким международным стандартам, при изготовлении которой применяются самые передовые технологии. Наличие прямых контрактов и долгосрочных партнерских взаимоотношений с производителями позволяет устанавливать цены на оптимально приемлемом уровне для потребителя. Наша цель направлена на работу с конечным потребителем, наша миссия снижение и оптимизация потребительских затрат производственных предприятий.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp;Хлорная известь&amp;nbsp;&lt;/strong&gt;- используется как в общественных&amp;nbsp; и производственных помещениях, так и в бытовых условиях. Например, хлорка используется для обработки и дезинфекции поверхностей и помещений в целом в том случае, если здесь находились люди с заболеваниями инфекционного характера. &amp;nbsp;Кроме этого, химический продукт применяется в целях очистки бытовых и промышленных сточных вод и для обеззараживания чистой питьевой воды. Для Вашего удобства представляем информацию, включающую в себя детальное описание применения хлорной извести:&lt;/p&gt;\r\n', '', '', ''),
(216, 2, 'Ёрш для мытья пробирок', '&lt;p&gt;&lt;span style=&quot;color: rgb(123, 129, 129); font-family: Helvetica, Arial, sans-serif; font-size: 13px; line-height: 22.1000003814697px; background-color: rgb(246, 248, 180);&quot;&gt;Используется&amp;nbsp;для мытья пробирок и прочей&amp;nbsp;лабораторной посуды.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(217, 2, 'Ёрш для мытья колб, бутылок', '&lt;p&gt;Используется для мытья лабораторной посуды, в частности колб и бутылок&lt;/p&gt;\r\n', '', '', ''),
(218, 2, 'Пробирка 15х60 Флоринского', '', '', '', ''),
(219, 2, 'Пробирка центрифужная на 10 мл с делениями', '', '', '', ''),
(220, 2, 'Пробирка центрифужная на 10 мл без делений', '', '', '', ''),
(221, 2, 'Жгут с автоматической защёлкой ', '&lt;p&gt;Используется д&lt;span style=&quot;line-height: 1.6em;&quot;&gt;ля ограничения циркуляции венозной крови в конечностях тела при проведении внутривенных манипуляций.&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: normal; text-indent: 15px;&quot;&gt;Жгут изготовлен из мягкой, упругой прорезиненной ленты.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(222, 2, ' Пробирка 16х150 биологическая', '', '', '', ''),
(223, 2, ' Пробирка 16х150 химическая', '', '', '', ''),
(224, 2, 'Марля медицинская в рулоне.', '&lt;p&gt;Используется для стерильной обработки ран. Плотность 36 г/м2.&lt;/p&gt;\r\n', '', '', ''),
(225, 2, 'Пробирка', '', '', '', ''),
(226, 2, 'Пробирка 14х100 (Вассермана) ', '', '', '', ''),
(227, 2, 'Вата стерильная &quot;ролик&quot;', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Вата медицинская гигроскопическая гигиеническая стерильная&amp;nbsp; изготовлена из 100% хлопка высокого качества, отбеленного без применения хлора. Благодаря передовой технологии производства является экологически чистым продуктом, без каких либо добавок и примесей. Вата имеет идеально белый цвет без посторонних запахов. Вата поставляется в виде ролика в стерильной упаковке. Вес упаковки: 50 г.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(101, 2, 'АХД-гель ', '&lt;p&gt;Дезинфицирующее, гелеобразное, мягкое средство для гигиенической и хирургической обработки рук и кожи Свойства Средство на основе этанола 75%, содержит комплекс ухода за кожей. Не вызывает раздражений и аллергических реакций кожи. Имеет вирулицидную (вкл. вирус гриппа А H1N1, гепатит В, ВИЧ), бактерицидным, туберкулоцидные, фунгицидное активность. Снижает количество транзиторной микрофлоры кожи за 30 сек. в 100 тыс. раз. Имеет высокую действие в присутствии белка, сыворотки, крови. Средство обладает пролонгированным действием в течение 3-х часов. Сфера применения: Рекомендован для дезинфекции рук медицинского персонала учреждений здравоохранения, локтевых сгибов доноров, обработки кожи операционного, инъекционного поля, обработки кожи при инвазивных методах диагностики и лечения пациентов и деконтаминации кожи рук персонала пищеперерабатывающей промышленности, общественного питания и торговли, других коммунальных об объектов, фармацевтической и парфюмерно-косметической промышленности, учреждений социальной защиты и других объектов, деятельность которых требует соблюдения санитарно-гигиенических норм и правил, в домашних условиях при уходе за больными, новорожденными, стариками и др.. Имеет быстрое действие: Гигиеническая обработка 3 мл - 30 сек. Хирургическая обработка 10 мл - 3 мин. Антисептическая обработка кожи пациента - от 15 сек. до 10 мин.&lt;/p&gt;\r\n', '', '', ''),
(228, 2, 'Пробирка 10х90 (Кана)', '', '', '', ''),
(718, 2, 'Долото с рифлёной ручкой, желобоватое изогнутое', '', '', '', ''),
(230, 2, 'Вата н/с 100г ролик', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: small; font-weight: bold; line-height: normal; text-align: justify;&quot;&gt;Вата медицинская гигроскопическая гигиеническая нестерильная изготовлена из 100% хлопка высокого качества, отбеленного без применения хлора. Благодаря передовой технологии производства вата является экологически чистым продуктом, без каких либо добавок и примесей. Вата имеет идеально белый цвет без посторонних запахов. Вата поставляется в виде ролика. Вес ролика 100г.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(231, 2, 'Пробирка (Видаля)', '', '', '', ''),
(232, 2, 'Вата н/с 100г зиг заг', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma; font-size: small; font-weight: bold; line-height: normal; text-align: justify;&quot;&gt;Вата медицинская гигроскопическая гигиеническая нестерильная изготовлена из 100% хлопка высокого качества, отбеленного без применения хлора. Вес ваты - 100г. Зиг-Заг - это удобная форма фасовки ваты. В отличие от рулонной, вата «Зиг-Заг» не спрессована, а удобно сложена зигзагом, что позволяет отрывать нужное количество от ватной ленты, не затрагивая остаток, находящийся в пакете и сохранять основную массу от загрязнения, запыленности, инфекции.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(233, 2, 'Прибор для отмеривания серной кислоты', '', '', '', ''),
(234, 2, ' Палочка стеклянная лопаточка стеклянная', '', '', '', ''),
(235, 2, 'Бинт стерильный', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(231, 244, 252);&quot;&gt;Бинт стерильный, апирогенный, нетоксичный. Стерилизация радиационная. Изготовлен из 100% хлопка.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(236, 2, 'Лоток почкообразный', '', '', '', ''),
(237, 2, 'Лоток прямоугольный (нержавейка)', '', '', '', ''),
(238, 2, 'Бинт стерильный 5*10', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(231, 244, 252);&quot;&gt;Бинт стерильный, апирогенный, нетоксичный. Стерилизация радиационная. Изготовлен из 100% хлопка.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(239, 2, ' Крышка к эксикатору', '', '', '', ''),
(240, 2, 'Бинт гипсовый 20 см * 270 см ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ''PT Sans'', sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Используется&amp;nbsp;для фиксации всех типов переломов костей, в ортопедичной пластике, при оказании первой помощи, фиксации&amp;nbsp;при хирургических вмешательствах, травмах мягких тканей, болезнях суставов.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(241, 2, 'Колба коническая', '', '', '', ''),
(242, 2, 'Капилляр для СРБ', '', '', '', ''),
(243, 2, 'Бинт гипсовый 15 см * 270 см ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ''PT Sans'', sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Используется&amp;nbsp;для фиксации всех типов переломов костей, в ортопедичной пластике, при оказании первой помощи, фиксации&amp;nbsp;при хирургических вмешательствах, травмах мягких тканей, болезнях суставов.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(244, 2, 'Воронка', '', '', '', ''),
(245, 2, 'Бинт гипсовый 10 см * 270 см ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: ''PT Sans'', sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Используется&amp;nbsp;для фиксации всех типов переломов костей, в ортопедичной пластике, при оказании первой помощи, фиксации&amp;nbsp;при хирургических вмешательствах, травмах мягких тканей, болезнях суставов.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(246, 2, 'Бюкс(стаканчик для взвешивания высокий)', '', '', '', ''),
(247, 2, 'Цилиндр мерный', '', '', '', ''),
(248, 2, 'Система ПК', '&lt;p&gt;&lt;span style=&quot;color: rgb(1, 73, 119); font-family: Verdana, Arial, Tahoma, sans-serif, Arial; line-height: normal; background-color: rgb(220, 244, 248);&quot;&gt;Устройство ПК 21-02 предназначено для переливания крови, кровезаменителей и других трансфузионных сред.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(1, 73, 119); font-family: Verdana, Arial, Tahoma, sans-serif, Arial; line-height: normal; text-align: justify; background-color: rgb(220, 244, 248);&quot;&gt;Устройство однократного применения.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(249, 2, 'Цилиндр мерный с подставкой и носиком', '', '', '', ''),
(250, 2, 'Стакан для разлива спиртных напитков', '', '', '', ''),
(251, 2, 'Система ПР', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Устройства для вливания инфузиционных растворов с металлической иглой.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(252, 2, 'Шприц инсулиновый туберкулиновый игар', '&lt;p style=&quot;padding: 0px; margin: 0.8em 0px 20px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(231, 244, 252);&quot;&gt;Шприц туберкулиновый одноразовый. Состав сырья: резервуар - пластик, поршень - резина, пластик, игла - сталь, пластик.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;padding: 0px; margin: 0.8em 0px 20px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 14px; line-height: 21px; background-color: rgb(231, 244, 252);&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(102, 2, 'Хосписепт-салфетки №100', '&lt;p&gt;&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Антисептические спиртсодержащие салфетки Хосписепт - средство для гигиенической обработки рук и кожи&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Свойства&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Средство на основе этанола 75% и&amp;nbsp;пропанола 15% в виде салфеток, пропитанных раствором, содержащим комплекс ухода за кожей.&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Не вызывает раздражений и аллергических реакций кожи.&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Имеет вирулицидную (гепатит В, ВИЧ), бактерицидную, туберкулоцидную, фунгицидную активность.&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Снижает количество транзиторной микрофлоры кожи за 30 сек.&amp;nbsp;в 100 тыс. раз,&amp;nbsp;обеспечивая таким образом качественную хирургическую антисептику кожи.&lt;/span&gt;&lt;br style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(114, 114, 114); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: 15px; text-align: justify;&quot;&gt;Имеет высокое действие в присутствии белка, сыворотки, крови.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(103, 2, 'Хлорантоин 1 кг', '&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Препарат представляет собой сыпучий порошок светлых тонов со слабым запахом хлора. Хлорантоин – дезинфекционное средство с моющим эффектом.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Стабилен при хранении в течении 3-х лет. Растворимость в воде – не менее 20 г/дмЗ. Водные растворы ХЛОРАНТОИНА прозрачны, бесцветны, имеют слабый запах хлора. Допускается умеренная опалесценция водных растворов ХЛОРАНТОИНА. Рабочие растворы средства обладают моющими, дезинфицирующими и предстерилизационными свойствами, не повреждают объекты, изготовленные из металла, стекла, резины, полимерных материалов, дерева, кафеля, фарфора, фаянса и поверхности медицинских приборов и оборудования с лакокрасочными, гальваническими и полимерными покрытиями, хорошо эмульгируют жиры, удаляют бепково-жировую пленку с обрабатываемых поверхностей, легко с них смываются, не оставляя налета. Гомогенизируют мокроту и другие выделения.&lt;/p&gt;\r\n', '', '', ''),
(105, 2, 'Стериллиум-гель', '&lt;p&gt;&lt;span style=&quot;color: rgb(119, 136, 153); font-family: Verdana, Tahoma, Arial; line-height: normal;&quot;&gt;100 г Стериллиум геля содержат: этанол – 80,8-89,3 г, циклометикон, 2-бутанон, глицерин, спирт миристиловый, бисаболол, изогексадекан, тетрагидроксипропилэтилендиамин, акрилаты/С10-30 алкилакрилат кроссполимер, поливинилпирролидон, ароматизатор, вода.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(119, 136, 153); font-family: Verdana, Tahoma, Arial; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(119, 136, 153); font-family: Verdana, Tahoma, Arial; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(119, 136, 153); font-family: Verdana, Tahoma, Arial; line-height: normal;&quot;&gt;Бактерициден, фунгициден, туберкулоциден, вирулициден: вирусы гепатита В и С, ВИЧ, SARS, вирусы герпеса (тип 1 и 2), адено-, полио-, вакциния-, папова-, норо-, ротавирусы, вирусы гриппа А и птичьего гриппа, SARS-CoV и др.)&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(106, 2, 'Перекись водорода 35% ', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;Перекись водорода 35% стабилизированная (пергидроль) применяется достаточно широко.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;В медицине перекись водорода (пергидроль) используется в качестве антисептического средства, кровоостанавливающего и дезинфицирующего средства. А именно пергидроль используется в следующих случаях:&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;• для дезинфекции поверхностей жесткой мебели, сантехнического оборудования, предметов ухода за больными в ЛПУ, а так же в клинических, микробиологических и др. лабораториях; санитарного транспорта; кувезов;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;• для дезинфекции изделий мед назначения (хирургические, стоматологические инструменты, стоматологические оттиски, эндоскопы);&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 19.6000003814697px;&quot;&gt;• для пред стерилизационной очистки изделий мед назначения в сочетании с моющими средствами. Подходит для ручного и механизированного способа.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(107, 2, 'Неохлор таблет.№300', '', '', '', ''),
(108, 2, 'Неохлор 1кг', '&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Состав препарата Неохлор&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Хлор-активный агент (начальная концентрация активного хлора 7-9%), моющие, ароматизирующие, антикоррозионные компоненты, стабилизатор содержания активного хлора.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Антимикробная активность&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nНеохлор эффективен против широкого спектра микроорганизмов: грам+ и грам- бактерий (в т.ч. Pseudomonas aeruginosa,&amp;nbsp;&amp;nbsp; БГКП, S.aureus, Listeria monocytogenes, гнилостные бактерии (в т.ч. рода Proteus), микобактерий туберкулеза, возбудителей брюшного типа, паратифа, дифтерии, менингококковой инфекции и внутрибольничных инфекций, вегетативных и споровых форм спорообразуючих бактерий (в т.ч рода Clostridium, возбудителей «картофельной болезни» хлеба), вирусов (в т.ч. полиовирусов, вирусов гепатитов А, В, С и ВИЧ, вирусов гриппа всех типов (в т.ч. Н5N1 та Н1N1), SARS («атипова пневмонія»), грибов рода Candida, возбудителей дерматомикозов, плесневые грибы Aspergillus niger в споровой форме, спор микроорганизмов, а также возбудителей особо опасных инфекций, в частности сибирской язвы, чумы, холеры, псевдотуберкулеза, бруцеллеза, лептоспироза.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Показатели безопасности&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nIII класс опасности (умеренно опасные вещества по ГОСТ 12.1.007-76). Не оказывает сенсибилизирующего и мутагенного действия. Растворы с содержанием активного хлора от 0,015% до 0,1%&amp;nbsp; могут применяться в присутствии лиц не причастных к проведению работ по дезинфекции.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Свойства&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nСредство и его рабочие растворы имеют щелочную реакцию, обладают эмульгирующим, выраженным моющим и высоким смачивающим действием; не фиксируют на поверхностях обработки органические загрязнения,&amp;nbsp; хорошо смываются водой с обработанных поверхностей, не оставляют потеков и налета; удаляют белковые, жировые, механические загрязнения, остатки крови и лекарственных препаратов; гомогенизируют мокроту и другие выделения. Неохлор и его растворы не повреждают изделия из металла, стекла, резины, полимерных материалов (в т.ч. полистирола, полиэтилена, поливинилхлорида, полиуретана), древесины, керамики, лакокрасочное,&amp;nbsp; гальваническое и полимерное покрытие.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Применение&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nНеохлор применяется в виде водных рабочих растворов в концентрации по активному хлору от 0,01-0,015% до 0,5% в зависимости от сферы применения, цели обработки, вида загрязнения, возбудителя и объектов обработки.&amp;nbsp; Норма расхода рабочего раствора – 75-100 мл/м2. Способ обработки: ручной, механизованный (в т.ч. СІР-мойка), аэрозольный.&lt;/p&gt;\r\n', '', '', ''),
(110, 2, 'Неостерил голубой', '&lt;p style=&quot;margin: 8px 0px; font-size: 14px; padding: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;Состав антисептического средства Неостерил&lt;br /&gt;\r\nСредство содержит синергичную композицию этилового (65,0%) и изопропилового (4,7%) спиртов, компоненты обеспечивающие пролонгированное антимикробное действие (3 часа под перчатками), а также комплекс высококачественных эффективных компонентов для ухода за кожей рук, регулирующих водно-жировой баланс, обладающих регенерирующим, заживляющим действием и снижающих потребность в применении средств по уходу за кожей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; font-size: 14px; padding: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;Антимикробная активность&lt;br /&gt;\r\nНеостерил голубой высокоэффективен против широкого спектра бактерий (в т.ч. в отношении возбудителей туберкулеза и госпитальных инфекций), вирусов (в т.ч. в отношении вируса полиомиелита, возбудителей гепатитов А, В, С, ВИЧ, гриппа, парагриппа, «птичьего гриппа», SARS («атипичной пневмонии»), аденовирусной энтеровирусной, коронавирусной, респираторносинтициальной, риновирусной, ротавирусной инфекции) и грибов (в частности, в отношении грибов рода Кандида, Трихофитон и A.niger в споровой форме) действие.&lt;br /&gt;\r\n&amp;nbsp;&lt;br /&gt;\r\nПоказатели безопасности&lt;br /&gt;\r\nIV класс опасности (малоопасное вещество по ГОСТ 12.1.007-76). Средство безопасно для пользователей благодаря удачному сочетанию спиртов с преобладанием доли этилового спирта. Отсутствуют противопоказания и возрастные ограничения по применению средства.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; font-size: 14px; padding: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;Свойства&lt;br /&gt;\r\nНеостерил блакитний обладает широким спектром антимикробного действия и пролонгированным антимикробным&amp;nbsp; действием – 3 часа под перчатками. Не вызывает аллергических реакций, не оказывает кожно-резорбтивного, сенсибилизирующего действия и других побочных эффектов; уменьшает потребность в использовании средств ухода за кожей; смягчает и регулирует водно-жировой баланс кожи, не сушит, не раздражает кожу, не вызывает побочных эффектов. Способствует заживлению повреждений кожи. рН 5,5-6,0&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; font-size: 14px; padding: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;Применение приепарата Неостерил голубой&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; font-size: 14px; padding: 0px; border: 0px; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; line-height: 20px;&quot;&gt;Гигиеническая антисептика -&amp;nbsp; 3 мл — 30 сек.&lt;br /&gt;\r\nОбработка рук хирургов -&amp;nbsp; 6 мл —&amp;nbsp; 3 мин.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(111, 2, 'Максисан 1 кг', '&lt;p style=&quot;margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-stretch: inherit; line-height: 15.6000003814697px; vertical-align: baseline; color: rgb(34, 34, 34); background-color: rgb(252, 253, 253);&quot;&gt;Высококонцентрированный препарат для дезинфекции и достерилизацийного очистки, генеральных уборок, мытья и дезодорации.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Состав&lt;/strong&gt;&lt;br /&gt;\r\nВысококонцентрированный препарат на основе комплекса 6 четвертичных аммониевых соединений (не менее 50 %) и вспомогательных компонентов. Препарат свободен от альдегидов, фосфатов, активного хлора и кислорода, а также других агрессивных, высокотоксичных, летучих и экологически неблагополучных веществ.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-stretch: inherit; line-height: 15.6000003814697px; vertical-align: baseline; color: rgb(34, 34, 34); background-color: rgb(252, 253, 253);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Безопасность&lt;/strong&gt;&lt;br /&gt;\r\nIV класс опасности (мало опасное вещество по ГОСТ 12.1.007-76). Разрешен для применения в присутствии пациентов, не раздражает органы дыхания и глаза при свободном испарении.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-stretch: inherit; line-height: 15.6000003814697px; vertical-align: baseline; color: rgb(34, 34, 34); background-color: rgb(252, 253, 253);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Фармакологические свойства&lt;/strong&gt;&lt;br /&gt;\r\nШирокий спектр антимикробной активности. Эффективен против грамположительных и грамотрицательных бактерий (включая P. aeruginosa, MRSA, возбудителей туберкулеза), вирусов (включая вирусы гепатитов, ВИЧ, герпеса, гриппа, рота-, корона-, хантавирусив, вируса Аvian influenza (возбудитель птичьего гриппа) и др.), патогенных грибов (возбудителей кандидозов и дерматомикозов) и плесени.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Основные свойства&lt;/strong&gt;&lt;br /&gt;\r\nБыстрая дезинфекция объектов, в том числе в режиме по гепатиту В - экспозиция всего 10 минут!&lt;br /&gt;\r\nРазнообразие возможных методов применения - протирание, орошение, замачивание, погружение, заполнения, аэрозольный, а также в ультразвуковом моющем оборудовании.&lt;br /&gt;\r\nНейтральный рН концентрата и рабочих растворов, совместимость с различными материалами, отсутствие коррозионного и другого повреждающего действия на материалы обрабатываемых объектов.&lt;br /&gt;\r\nХорошо смывается, после применения не оставляет пятен и подтеков.&lt;br /&gt;\r\nЭффективность режимов при высоком белковом нагрузке, т.е. для обработки сильно загрязненных объектов.&lt;br /&gt;\r\nНе фиксирует загрязнения на обрабатываемых объектах.&lt;br /&gt;\r\nПовышение антимикробных и моющих свойств при использовании нагретых рабочих растворов и усиления их антимикробных и моющих свойств при добавлении кальцинированной соды.&lt;br /&gt;\r\nВозможность сочетания в одном этапе дезинфекции и достерилизацийного очистки изделий медицинского назначения, включая стоматологические инструменты и пр.&lt;br /&gt;\r\nВозможность многократного использования рабочих растворов.&lt;br /&gt;\r\nСтабильность концентрата (5 лет), при хранении не требует периодического контроля содержания действующих веществ.&lt;br /&gt;\r\nСтабильность рабочих растворов (1 месяц до начала применения).&lt;br /&gt;\r\nЭкономичность - низких концентрациях рабочих растворов (от 0,05 % до 0,25 % по препарату), возможность приготовить из 1 л концентрата до 2000 л рабочего раствора, низкого расхода раствора.&lt;br /&gt;\r\nПростота и удобство при транспортировке и хранении концентрата, приготовлении и использовании рабочих растворов не нужны дорогие меры безопасности при использовании растворов.&lt;br /&gt;\r\nНаличие аттестованных &quot; Укрметртестстандартом &quot; средств и методик для экспресс - определения содержания активно действующего вещества в средстве и его рабочих растворах.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1.5em; padding: 0px; border: 0px; font-family: Arial, Helvetica, sans-serif; font-stretch: inherit; line-height: 15.6000003814697px; vertical-align: baseline; color: rgb(34, 34, 34); background-color: rgb(252, 253, 253);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Сфера применения&lt;/strong&gt;&lt;br /&gt;\r\nБыстрая дезинфекция изделий медицинского назначения, включая стоматологические инструменты и другие, а также возможность сочетания в одном процессе дезинфекции и достерилизацийного очистки.&lt;br /&gt;\r\nЭкономическая и быстрая дезинфекция поверхностей помещений, аппаратуры, технологического оборудования, посуды, белья, предметов ухода за больными, санитарно - технического оборудования и других объектов в медицинских и детских учреждениях, инфекционных очагах, быту и т.д. при текущей и заключительной дезинфекции, ежедневных и генеральных влажных уборках, обеззараживания перевязочного материала и одноразовых изделий медицинского назначения перед их утилизацией.&lt;br /&gt;\r\nДезинфекция в детских учреждениях, на предприятиях общественного питания, торговли и пищевой промышленности, в гостиницах, парикмахерских, на коммунальных и других объектах с профилактической целью и по эпидемическим показаниям.&lt;/p&gt;\r\n', '', '', ''),
(112, 2, 'Лизоформин плюс ', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Концентрат синего цвета со&amp;nbsp;слабым запахом отдушки.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Состав: 9,5% глутарового альдегида, 7,5% глиоксаля и&amp;nbsp;9,6% дидецилдиметиламмония хлорида, и&amp;nbsp;других компоненты;&amp;nbsp;pH&amp;nbsp;=&amp;nbsp;3,7&amp;nbsp;±&amp;nbsp;0,3.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Дезсредство обладает вирулицидными, бактерицидными (в&amp;nbsp;т.&amp;nbsp;ч. туберкулоцидными и&amp;nbsp;спороцидными) и&amp;nbsp;фунгицидными свойствами.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Дезинфицирующее средство обладает фиксирующими свойствами, что требует перед дезинфекцией ИМН удаления органических загрязнений с&amp;nbsp;них.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Предназначено для дезинфекции (в&amp;nbsp;т.&amp;nbsp;ч. совмещенной с предстерилизационной очисткой при добавлении Бланизола), ИМН (включая гибкие и&amp;nbsp;жесткие эндоскопы), поверхностей, сантехнического оборудования и&amp;nbsp;уборочного материала при инфекциях бактериальной (включая туберкулез) и&amp;nbsp;вирусной (гепатит и&amp;nbsp;ВИЧ&amp;nbsp;-&amp;nbsp;инф.), грибковой этиологии, при ООИ (чума, холера, туляремия, сап, мелиоидоз, сибирская язва); для ДВУ эндоскопов; а&amp;nbsp;также для стерилизации ИМН в&amp;nbsp;ЛПУ. Режимы: для дезинфекции ИМН 2%&amp;nbsp;раствор&amp;nbsp;-&amp;nbsp;время выдержки 15&amp;nbsp;мин для всех инфекций.; для дезинфекции, совмещенной с предстерилизационной очисткой ИМН (включая эндоскопы) раствором, содержащим 1,5% Лизофор и&amp;nbsp;0,5% Бланизола, время выдержки 30&amp;nbsp;мин. Стерилизацию ИМН проводят 8%&amp;nbsp;раствором, при начальной температуре 50&amp;nbsp;град. время стерилизации 1&amp;nbsp;час; ДВУ эндоскопов 8%&amp;nbsp;раствор&amp;nbsp;-&amp;nbsp;5&amp;nbsp;мин, при начальной температуре раствора 50&amp;nbsp;град. Вместо подогрева используют Активатор : для получения 5&amp;nbsp;литров активированного 10% раствора Лизоформин 3000 нужно смешать Активатор 100&amp;nbsp;мл, 500&amp;nbsp;мл концентрата Лизоформин 3000, и&amp;nbsp;4400&amp;nbsp;мл воды.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Режим дезинфекции активированным 10% раствором стоматологических оттисков, зубопротезных заготовок, артикуляторов&amp;nbsp;-&amp;nbsp;10&amp;nbsp;мин; ДВУ эндоскопов активированным раствором&amp;nbsp;-&amp;nbsp;10&amp;nbsp;мин, стерилизация&amp;nbsp;-&amp;nbsp;1&amp;nbsp;час. Концентрат сохраняет свои свойства после замерзания.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Класс опасности: 3.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Срок годности: концентрата 2,5&amp;nbsp;года, рабочих растворов предназначенных для использования при комнатной температуре&amp;nbsp;-&amp;nbsp;14&amp;nbsp;дней.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Срок годности: активированного 10% рабочего раствора&amp;nbsp;-&amp;nbsp;18&amp;nbsp;дней.&lt;/p&gt;\r\n', '', '', ''),
(113, 2, 'Лизоформин -3000', '&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Концентрат синего цвета со&amp;nbsp;слабым запахом отдушки.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Состав: 9,5% глутарового альдегида, 7,5% глиоксаля и&amp;nbsp;9,6% дидецилдиметиламмония хлорида, и&amp;nbsp;других компоненты;&amp;nbsp;pH&amp;nbsp;=&amp;nbsp;3,7&amp;nbsp;±&amp;nbsp;0,3.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Дезсредство обладает вирулицидными, бактерицидными (в&amp;nbsp;т.&amp;nbsp;ч. туберкулоцидными и&amp;nbsp;спороцидными) и&amp;nbsp;фунгицидными свойствами.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Дезинфицирующее средство обладает фиксирующими свойствами, что требует перед дезинфекцией ИМН удаления органических загрязнений с&amp;nbsp;них.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Предназначено для дезинфекции (в&amp;nbsp;т.&amp;nbsp;ч. совмещенной с предстерилизационной очисткой при добавлении Бланизола), ИМН (включая гибкие и&amp;nbsp;жесткие эндоскопы), поверхностей, сантехнического оборудования и&amp;nbsp;уборочного материала при инфекциях бактериальной (включая туберкулез) и&amp;nbsp;вирусной (гепатит и&amp;nbsp;ВИЧ&amp;nbsp;-&amp;nbsp;инф.), грибковой этиологии, при ООИ (чума, холера, туляремия, сап, мелиоидоз, сибирская язва); для ДВУ эндоскопов; а&amp;nbsp;также для стерилизации ИМН в&amp;nbsp;ЛПУ. Режимы: для дезинфекции ИМН 2%&amp;nbsp;раствор&amp;nbsp;-&amp;nbsp;время выдержки 15&amp;nbsp;мин для всех инфекций.; для дезинфекции, совмещенной с предстерилизационной очисткой ИМН (включая эндоскопы) раствором, содержащим 1,5% Лизофор и&amp;nbsp;0,5% Бланизола, время выдержки 30&amp;nbsp;мин. Стерилизацию ИМН проводят 8%&amp;nbsp;раствором, при начальной температуре 50&amp;nbsp;град. время стерилизации 1&amp;nbsp;час; ДВУ эндоскопов 8%&amp;nbsp;раствор&amp;nbsp;-&amp;nbsp;5&amp;nbsp;мин, при начальной температуре раствора 50&amp;nbsp;град. Вместо подогрева используют Активатор : для получения 5&amp;nbsp;литров активированного 10% раствора Лизоформин 3000 нужно смешать Активатор 100&amp;nbsp;мл, 500&amp;nbsp;мл концентрата Лизоформин 3000, и&amp;nbsp;4400&amp;nbsp;мл воды.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Режим дезинфекции активированным 10% раствором стоматологических оттисков, зубопротезных заготовок, артикуляторов&amp;nbsp;-&amp;nbsp;10&amp;nbsp;мин; ДВУ эндоскопов активированным раствором&amp;nbsp;-&amp;nbsp;10&amp;nbsp;мин, стерилизация&amp;nbsp;-&amp;nbsp;1&amp;nbsp;час. Концентрат сохраняет свои свойства после замерзания.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Класс опасности: 3.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Срок годности: концентрата 2,5&amp;nbsp;года, рабочих растворов предназначенных для использования при комнатной температуре&amp;nbsp;-&amp;nbsp;14&amp;nbsp;дней.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 20px;&quot;&gt;Срок годности: активированного 10% рабочего раствора&amp;nbsp;-&amp;nbsp;18&amp;nbsp;дней.&lt;/p&gt;\r\n', '', '', ''),
(114, 2, 'Жавель-клейд (уп.300 таб.) ', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;Данный препарат включен в список дез. средств рекомендованных к применению при проведении карантинных мероприятий!!!&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;Препарат имеет ряд преимуществ, которые позволяют комфортно и с минимальными затратами проводить противоэпидемиологические, дезинфекционные мероприятия, при которых расход других дез. средств увеличивался в два раза.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•препарат таблетированный, с большим содержанием активного хлора, удобен в применении — 1 таблетка на 10л (ведро) воды. Это позволяет проводить четкий учет и контроль расхода дез. средства;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•низкие концентрация активного хлора дез. растворов (до 0,1% позволяет проводить дезинфекцию без средств индивидуальной защиты и в присутствии людей;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•в зависимости от применяемой концентрации, можно регулировать время проведения дезинфекции (экспозиции):&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;— 0,015 (1таб. ) — 60мин. ;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;— 0,03 (2таб. ) — 30мин. ;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;— 0,06 (4таб. ) — 15мин.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•препарат имеет длительный срок хранения (5 лет), рабочие растворы можно хранить в закрытой таре до 15 суток;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•препарат так же применяется для дезинфекции воды и емкостей для хранения питьевой воды, профилактики и борьбы с плесенью, профилактики грибковых заболеваний в раздевалках и душевых и т. п.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;Дез. средство «Жавель-Клейд» имеет ряд отличительных положительных особенностей среди хлорсодержащих, таблетированных препаратов:&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•хорошо растворяется в воде;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•не имеет резкого запаха и в концентрации до 0,1% не требует специальных средств защиты и дезинфекцию можно проводить в присутствии людей и животных;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•относительно низкая рабочая концентрация (0,015%);&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•длительный срок хранения приготовленных рабочих растворов (до 15&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;суток);&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•дешевизна 1 литра рабочего раствора, стоимость обработки 1м² площади;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;•наличие четких разработанных Инструкций по применению:&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;а) по использованию дез. средства «Жавель-Клейд» в ветеринарии и перерабатывающей промышленности;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;б) для дезинфекции воды при нецентрализованном водоснабжении, дезинфекции емкостей для сберегания воды;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;в) по дезинфекции воздуха в помещениях, поверхностей помещений и объектах в них аэрозольным методом, что позволяет сократить расход дез. средства в 10 раз;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;г) по дезинфекции колодцев и обеззараживания хозяйственно-питьевой воды.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;ОСНОВНЫЕ ПРЕИМУЩЕСТВА СРЕДСТВА «ЖАВЕЛЬ-КЛЕЙД»:&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;1. УНИВЕРСАЛЬНЫЙ по спектру антимикробного действия и ЭФФЕКТИВНЫЙ в борьбе с инфекциями всех видов (бактерии, вирусы, грибки). Одна таблетка весом всего 3,5 г может заменить от 10 до 500 г (мл) порошка (концентрата).&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;2. ПРОСТОЙ и УДОБНЫЙ в применении. Не требует использования весов, мерок и других дозировочный емкостей. Таблетка быстро и полностью растворяется в воде без соблюдения специальных температурных режимов и без размешивания.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;3. ЭКОНОМИЧНЫЙ благодаря точности дозирования.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;4. БЕЗОПАСНЫЙ для людей и окружающей среды, не имеет резкого неприятного запаха, не требует использования индивидуальных средств защиты.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;5. СТАБИЛЬНЫЙ — не требует особых условий хранения и не теряет своих свойств во время хранения.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;6. КОМПАКТНЫЙ — благодаря высокой эффективности и низкой норме затрат требует значительно меньше места для хранения, чем порошки и концентраты.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;ПРЕПАРАТ «ЖАВЕЛЬ-КЛЕЙД» ПРЕДНАЗНАЧЕН ДЛЯ:&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;-общей (профилактической и текущей) и заключительной дезинфекции поверхностей в помещениях (пол, стены, двери, включая полируемую и деревянную мебель);&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;-дезинфекции санитарно-технического (душевые помещения, ванны, раковины, унитазы, бассейны) и другого оборудования (медицинского, производственного и т. п. );&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;-предметов ухода за больными, белья, посуды, игрушек, средств уборки;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;-для дезинфекции поверхностей, помещений на предприятиях, заводах, фабриках, в заведениях общественного питания, медицинских, учебных заведениях и т. п.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Verdana; font-size: 14px; line-height: normal;&quot;&gt;-для использования в животноводческих, с/х предприятиях, птицефермах и т. п.&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(115, 2, 'Дезалгин', '&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Для тех, кто планирует обустроить в своем доме или же на участке бассейн, причем не важно каких размеров, следует непременно озадачиться методами обработки воды в нем, чтобы она была всегда чистой и безопасной для здоровья купающихся. Этот вопрос требует решения с первых дней после начала эксплуатации бассейна.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Вот почему мы предлагаем своим клиентам приобрести Дезальгин Джет – высокоэффективное средство для предотвращения активного роста водорослей в любых плавательных бассейнах. Кроме того, он позволяет в считанные минуты избавиться от веществ, которые приводят к мутности воды. Препарат сделает воду в вашем бассейне прозрачной и чистой, так что плавать в нем будет особенно приятно!&lt;/p&gt;\r\n\r\n&lt;h2 style=&quot;font-size: 16px; margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; text-align: justify;&quot;&gt;Преимущества и общие рекомендации по Dezalgine&lt;/h2&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Для многих немаловажным доводом в пользу Dezalgine является отсутствие хлора в его составе. Мы же хотим отметить следующие преимущества данного раствора для очистки воды в бассейне:&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot; type=&quot;disc&quot;&gt;\r\n	&lt;li&gt;Долгосрочный эффект после каждого применения;&lt;/li&gt;\r\n	&lt;li&gt;При контакте с водой нет пенообразования;&lt;/li&gt;\r\n	&lt;li&gt;Нейтральный&amp;nbsp;PH&amp;nbsp;при высоком содержании активных веществ;&lt;/li&gt;\r\n	&lt;li&gt;Универсален, так как не содержит тяжелых металлов и хлора;&lt;/li&gt;\r\n	&lt;li&gt;Не наносит вреда коже при соблюдении рекомендуемой дозировки.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Таким образом, Дезальгин для бассейна - очень эффективное и простое в применении средство, которое обеспечит чистоту в вашем бассейне надолго.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Производитель рекомендует перед подачей воды в бассейн выполнить несложные действия по предварительной обработке его поверхности. Для этого необходимо обработать стенки и дно раствором Дезальгина, разведенного в пропорциях, указанных на упаковке, и дать ему высохнуть. Таким образом, вы с одной стороны продезинфицируете поверхность бассейна, с другой – создадите надежный защитный слой.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Обратите внимание на различные порции ввода средства, в зависимости от степени загрязнения бассейна, а также частоты пользования им. Так, при особо активной эксплуатации, после выпадения осадков в значительном количестве, а также высоких или, наоборот, низких температурах, следует увеличивать частоту обработки воды или количество добавки средства. В любом случае для более эффективного смешивания с водой рекомендуется вводить&amp;nbsp;&lt;strong&gt;Dezalgine&amp;nbsp;&lt;/strong&gt;для бассейна около заливного отверстия. Купить данный жидкий концентрат вы можете в бутылях различного объема. Это позволит подобрать оптимальную для своих нужд упаковку.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 10px; color: rgb(0, 0, 0); font-family: Arial; line-height: 18px; text-align: justify;&quot;&gt;Вы можете обратиться к нашим консультантам для уточнения любой информации, касающейся&amp;nbsp; Дезальгин.&lt;/p&gt;\r\n', '', '', ''),
(116, 2, 'Дезактин 1кг', '&lt;p&gt;&lt;span style=&quot;font-family: Tahoma; font-size: 16px; line-height: normal;&quot;&gt;Наименование: дезактин&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; font-size: 16px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; font-size: 16px; line-height: normal;&quot;&gt;Состав: дихлорантин - 23,0, 5,5-диметилгидантоин - 12,4-16,4, диспергатор - 9,0-12,0, ингибитор коррозии до 10,0, анионные поверхностно-активные вещества - 3,2-5,0, наполнитель до 100,0, активный кислород не менее 14,0 %&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; font-size: 16px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; font-size: 16px; line-height: normal;&quot;&gt;Данное средство используется для дезенфицирования любых поверхностей – мебели, посуды, оборудования и т.д.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(117, 2, 'Дезэфект', '&lt;p&gt;Описание: жидкость&amp;nbsp; зелёного цвета.&lt;/p&gt;\r\n\r\n&lt;p&gt;Состав: смесь двух четвертичных аммониевых соединений и вспомогательные компоненты.&lt;/p&gt;\r\n\r\n&lt;p&gt;Назначение: дезинфекция поверхностей в помещениях, белья, посуды, предметов ухода за больными, санитарно-технического оборудования, уборочного материала при инфекциях бактериальной (включая туберкулез), вирусной и грибковой (кандидозы и дерматофитии) этиологии; проведение генеральных уборок; дезинфекция, в том числе совмещенная с предстерилизационной очисткой (окончательной перед ДВУ эндоскопов) изделий медицинского назначения (включая стоматологические инструменты, жесткие и гибкие эндоскопы и инструменты к ним), дезинфекция систем вентиляции и кондиционирования воздуха.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(118, 2, 'Блаусан ', '&lt;p&gt;&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Для достижения безупречного качества воды, необходимо, чтобы в ней не было водорослей, с которыми хлор не всегда может справиться (особенно в открытых бассейнах).&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Поэтому воду бассейна необходимо периодически обрабатывать средствами, препятствующими росту и развитию водорослей (альгицидами).&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;При заполнении бассейна:&lt;/strong&gt;&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;На 10 м3 воды требуется 100 мл препарата.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Расчетное количество средства разбавить водой 1:10 и вливать в воду вдоль краев бассейна, затем включить циркуляционный насос фильтровальной установки.&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;strong style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Текущее дозирование:&lt;/strong&gt;&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;На 10 м3 воды добавлять по 80 мл препарата примерно через каждые две недели.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;При интенсивном использовании бассейна, высоких температурах и выпадении осадков дозу препарата следует увеличить на 10 - 20%.&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;strong style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Для ударной обработки&amp;nbsp;&lt;/strong&gt;&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;воды и уничтожения уже образовавшихся водорослей необходимо 400 мл препарата на 10 м3 воды.&lt;/span&gt;&lt;br style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(86, 86, 86); font-family: Tahoma, Verdana, Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Однопроцентный раствор «БЛАУСАН К» также может примениться для обработки душевых кабин, пола и настилов.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(119, 2, 'Бациллол 1л', '&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span class=&quot;stagstrong&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;&quot;&gt;Бациллол АФ 1 л&lt;/span&gt;&amp;nbsp;подойдет для быстрой дезинфекции маникюрного оборудования, косметологических и парикмахерских инструментов. Чтобы избежать заражения клиентов вирусами, без антисептика Бациллола АФ не обойтись.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span class=&quot;stagstrong&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;&quot;&gt;Бациллол AФ&lt;/span&gt;&amp;nbsp;не содержит альдегидов, эффективен против гепатита В, С и СПИДа, не оставляет осадков.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;Купить Бациллол АФ значит 1 л, значит получить универсальный дезинфектор для работы в салоне красоты или косметологическом кабинете. Бацилол АФ можно можно использовать:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;· в парикмахерских;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;· при проведении маникюра и педикюра;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;· для стерилизации оборудования перед инъекциями в салоне.&lt;/p&gt;\r\n\r\n&lt;h3 style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; color: rgb(17, 17, 17); line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span class=&quot;stagstrong&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;&quot;&gt;Состав Антисептика Бациллола АФ&lt;/span&gt;&lt;/h3&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;1-пропанол — 45,0 г; 2-пропанол — 25,0 г; этанол — 4,7 г; 2-бутанон — &amp;lt; 1.0 г; воду очищенную.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span class=&quot;stagstrong&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; background: transparent;&quot;&gt;Антисептик Бациллол АФ&lt;/span&gt;&amp;nbsp;используется без разведения, вылейте некоторое количество средства на салфетку, после этого смело стерилизуйте любое оборудование.&lt;/p&gt;\r\n\r\n&lt;div style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; color: rgb(28, 28, 28); line-height: 20px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;\r\n&lt;p style=&quot;font-family: ''Myriad Pro'', ''Open sans'', serif; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-stretch: normal; line-height: 24px; background: transparent;&quot;&gt;&lt;span class=&quot;stagstrong&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: bold; font-family: ''PT Sans'' !important; background: transparent;&quot;&gt;Антисептик Бациллол АФ&lt;/span&gt;&amp;nbsp;безвреден для инструментов из стали, алюминия, меди, латуни, полипропилена, полиамида, твердого и мягкого полихлорвинила, , силикона, латекса, резины.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;p style=&quot;font-family: ''PT Sans''; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; vertical-align: baseline; font-stretch: normal; line-height: 24px; color: rgb(28, 28, 28); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(120, 2, 'Бланидас порошковый 1 кг', '&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;Для проведения текущей и заключительной&amp;nbsp; дезинфекции, генеральных уборок при инфекциях, в очагах инфекционных заболеваний, лечебно-профилактических учреждениях различного профиля.&amp;nbsp;Использовать в соответствии с методическими указаниями, утвержденными МЗ Украины. С 1 кг дезсредства можно приготовить от&amp;nbsp; 40 до 1000 л рабочего раствора. Возможность хранения неиспользованного рабочего раствора средства в течение 3суток.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;Допускается&amp;nbsp; проведение дезинфекции изделий медицинского назначения, медицинских перчаток, предметов ухода, столовой, лабораторной посуды и др. 0,1-1,0% растворами «Бланидас, марка А» способом погружения в таре с плотно закрытой крышкой в присутствии больных и лиц, непосредственно не занятых&amp;nbsp; в проведении дезинфекционных работ без защиты органов дыхания.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;Допускается проведение дезинфекции белья, уборочного инвентаря и др. 0,1-1,0% растворами «Бланидас, марка А» способом замачивания в таре с плотно закрытой крышкой в присутствии больных и лиц, непосредственно не занятых проведением дезработ без защиты органов дыхания.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;&lt;strong&gt;Состав средства:&lt;/strong&gt;&amp;nbsp;Средство на основе композиции хлора и брома.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;&lt;strong&gt;Физико-химические свойства:&lt;/strong&gt;&amp;nbsp;Представляет собой сыпучий порошок от белого до светло-желтого цвета с умеренным запахом хлора. Водные растворы средства прозрачные, бесцветные, имеют умеренный запах хлора. Обладают моющими свойствами, не повреждают объекты, не фиксируют загрязнения органического происхождения на поверхностях изделий медицинского назначения, хорошо смываются, не оставляют налета на обрабатываемых поверхностях. Удаляют механические, белковые, жировые загрязнения, остатки крови, остатки лекарственных средств с наружных поверхностей, внутренних каналов и пустот&amp;nbsp; изделий медицинского назначения.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;&lt;strong&gt;Спектр антимикробного действия:&lt;/strong&gt;&amp;nbsp;Активен к инфекциям бактериальной (включая туберкулез),&amp;nbsp; вирусной (включая гепатиты А, парентеральные вирусные гепатиты (В,С), вирус СПИД (ВИЧ) и грибковой (кандидозы, дерматомикозы, плесневые&amp;nbsp; грибки) этиологии, спорам.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;&lt;strong&gt;Показания к применению:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;color: rgb(136, 136, 136); font-family: Georgia; font-size: 16px; line-height: normal;&quot;&gt;\r\n	&lt;li&gt;Для проведения текущей и заключительной дезинфекции, генеральных уборок при инфекциях, в очагах инфекционных заболеваний, лечебно-профилактических учреждениях различного профиля;&lt;/li&gt;\r\n	&lt;li&gt;Для дезинфекции, совмещенных процессов дезинфекции и предстерилизационной очистки, предстерилизационной очистки&amp;nbsp; изделий медицинского назначения&amp;nbsp; из коррозионно стойких металлов, стекла, резины, каучука, полимерных материалов, силикона, пластмасс (за&amp;nbsp; исключением гибких и жестких эндоскопов и инструментов к ним); &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/li&gt;\r\n	&lt;li&gt;Для дезинфекции, совмещенных процессов дезинфекции и предстерилизационной очистки, предстерилизационной очистки&amp;nbsp; коррозионностойкого парикмахерского, маникюрного, педикюрного, косметологического инструментария;&lt;/li&gt;\r\n	&lt;li&gt;Для дезинфекции поверхностей в помещениях, мебели, предметов обстановки, медицинского оснащения, аппаратуры и оборудования, предметов ухода за больными, термометров,&amp;nbsp; средств гигиены,&amp;nbsp; лабораторной, столовой, кухонной, аптечной посуды, предметов для мытья посуды, белья, санитарно-технического оборудования, уборочного инвентаря, технологического оборудования, емкостей для хранения пищевых продуктов и др.;&lt;/li&gt;\r\n	&lt;li&gt;Для обеззараживания использованных изделий медицинского назначения однократного применения, медотходов, биологических жидкостей;&lt;/li&gt;\r\n	&lt;li&gt;Для проведения профилактической дезинфекции и генеральных уборок в ЛПУ, лабораториях, аптечных, оздоровительных учреждениях, в учреждениях общественного питания и торговли, в спортивно-оздоровительных учреждениях,&amp;nbsp; в учебно-воспитательных, детских дошкольных, на предприятиях пищеперерабатывающей промышленности, в учреждениях общепита и торговли, в объектах коммунально-бытового обслуживания, в спортивно-оздоровительных учреждениях,&amp;nbsp; других эпидзначимых объектах, деятельность которых требует проведения дезинфекционных работ в соответствии с действующими санитарно-гигиеническими и противоэпидемическими нормами и правилами.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(121, 2, 'Бланидас Актив 1л', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Жидкий концентрат, бесхлорное средство для дезинфекции, очистки и стерилизации изделий медицинского назначения, в том числе эндоскопов, инструментария.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Жидкий концентрат, бесхлорное средство для проведения текущей, заключительной, профилактической дезинфекции и генеральных уборок, для дезинфекции, очистки и стерилизации изделий медицинского назначения, в том числе эндоскопов, инструментария, для дезинфекции посуды, санитарно-технического оборудования, белья и т. д.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Свойства:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Средство на основе третичных аминов и четвертичных аммонийных соединений.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Не содержит хлора, альдегидов, окислителей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Активен в отношении возбудителей внутрибольничных инфекций, инфекций бактериальной этиологии (включая туберкулез, опасные и особо опасные инфекции, инфекций вирусной этиологии (включая вирус «свиного гриппа» А H1N1, гепатит А, парентеральные вирусные гепатиты (В, С), вирус СПИДа ( ВИЧ), герпес, полиомиелит и др. ), инфекций грибковой этиологии (кандидозы, дерматомикозы, плесневые грибки), имеет спороцидно свойства.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Рабочие растворы средства имеют хорошие моющие, дезодорирующие, смачивающие, эмульгирующие свойства, не вызывают коррозии металлов, не повреждают объекты из термостабильных и термолабильных материалов и поверхности медицинских приборов и оборудования с лакокрасочным, гальваническим и полимерным покрытием, не обесцвечивают и не уменьшают прочность тканей, не фиксируют загрязнения органического происхождения на поверхности изделий медицинского назначения, хорошо смываются, не оставляют налета и пятен на поверхностях объектов, подвергающихся обработке. Удаляют механические, белковые, жировые загрязнения, остатки крови, остатки лекарственных средств с внешних поверхностей, внутренних каналов и полостей изделий медицинского назначения, гомогенизируют мокроты и другие выделения.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Объекты применения:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Рекомендован для дезинфекции, в том числе совмещенной с достерилизацийним очисткой (ручным и механизированным способом в установках ультразвуковой очистки) и стерилизации всех видов изделий медицинского назначения из различных материалов одноразового и многоразового назначения, включая гибкие и жесткие эндоскопы и инструменты к ним, хирургические, стоматологические инструменты (в том числе эндодонтические, вращающиеся, слиновидсмоктуючи установки, плевательницы, ортопедические инструменты, видтискни ложки), стоматологические материалы (оттиски из альгината и силикона, зубопротезные заготовки, слепки, мосты, коронки, артикуляторы), зонды всех видов, катетеры, головки ультразвуковых диагностических аппаратов, маски, трубки, шланги к наркозно-дыхательной аппаратуры, парикмахерского, маникюрного, педикюрном, косметического инструментария и принадлежностей, для дезинфекции кувезов в отделениях неонатологии, для сочетания дезинфекции и одновременного мытья поверхностей помещений (пол, стены, двери, подоконники и т. д. ), мебели, предметов обстановки, медицинских приборов, аппаратов и оборудования (в том числе особо чувствительных приборов и аппаратов наркозно-дыхательной аппаратуры, датчиков к аппаратам ультразвукового обследования, рентгендиагностических систем и комплексов, радиологической и цифрового оборудования для диагностики, оборудование для компьютерной томографии, магнитно-резонансной томографии, ангиографических систем, оборудования для ультразвуковой диагностики и т. д. ), предметов ухода за больными, лабораторной, столовой, кухонной, аптечной посуды (в том числе одноразового использования), белья, игрушек, санитарно-технического оборудования, уборочного инвентаря (в том числе предметов для мытья посуды (щетки, губки и др. ), резиновых ковриков, в ковриках для дезинфекции обуви, для обеззараживания перед утилизацией использованных изделий медицинского назначения одноразового использования, медицинских отходов из текстильных материалов (в том числе перевязочный материал, ватные тампоны, салфетки и т. д. ), биологических жидкостей (кровь, слизь, мокрота, слюна и др. ), для дезинфекции воздуха способом распыления на различных объектах, обеззараживания систем вентиляции и кондиционирования воздуха (бытовые кондиционеры, сплит-системы, мультизональные сплит-системы и др. ), для дезинфекции и мытья мусоропроводов, контейнеров и других емкостей для мусора, санитарного транспорта, карет скорой медицинской помощи, технологического оборудования и оборудования в пищевой, фармацевтической, микробиологической, биотехнологической, парфюмерно-косметической промышленности, транспортных средств, оборудования и инвентаря коммунально-бытового обслуживания и других объектов.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Режимы использования:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Экономичное использование. С 1 л концентрата можно приготовить от 2000 л рабочего раствора.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\nИспользовать в соответствии с методическими указаниями, утвержденными МОЗ Украины.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\nВозможность использования в присутствии пациентов, посетителей.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\nВозможность хранения неиспользованного рабочего раствора средства в течение 16 суток.&lt;/p&gt;\r\n', '', '', ''),
(122, 2, 'Брилиант 1л.', '&lt;p&gt;&lt;span style=&quot;font-family: Tahoma; font-size: 14px; line-height: normal;&quot;&gt;Назначение: средство для дезинфекции Бриллиант&quot; предназначено для дезинфекции поверхностей в помещениях, санитарно-технического оборудования, предметов ухода за больными, изделий медицинского назначения (включая стоматологические инструменты, жесткие эндоскопы и инструменты к ним), проведения генеральных уборок в лечебно-профилактических учрежденияхдля дезинфекции, совмещенной с предстерилизационной очисткой ручным и механизированным способом (с использованием УЗО) изделий медицинского назначения (включая хирургические и стоматологические инструменты) , для дезинфекции высокого уровня и стерилизации ИМН, включая жесткие и гибкие эндоскопы и инструменты к ним, для предварительной и предстерилизационной очистки ИМН без дезинфекции, для дезинфекции поверхностей в помещениях, санитарно-технического оборудования, посуды, белья, уборочного материала, предметов ухода за больными, для проведения генеральных уборок в ЛПУ, для обработки поверхностей при проведении профилактической дезинфекции на предприятиях общественного питания, коммунальных объектах, местах общего пользования детских учреждений.&quot;&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(123, 2, 'Аниос гель ', '&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;&lt;b&gt;Аниосгел&lt;/b&gt;&lt;b&gt;ь&lt;/b&gt;&lt;b&gt;&amp;nbsp;85 НПК&lt;/b&gt;&lt;b&gt;&amp;nbsp;–&amp;nbsp;&lt;/b&gt;готовый к применению гелеобразный антисептик для кожи рук.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;Фирма производитель - «Laboratoires ANIOS» (Франция).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;Активно действующим веществом&lt;b&gt;&amp;nbsp;Аниосгел&lt;/b&gt;&lt;b&gt;ь&lt;/b&gt;&lt;b&gt;&amp;nbsp;85 НПК&lt;/b&gt;&amp;nbsp;является этанол - 66,5% - 73,5%.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;&lt;b&gt;Аниосгел&lt;/b&gt;&lt;b&gt;ь&lt;/b&gt;&lt;b&gt;&amp;nbsp;85 НПК –&amp;nbsp;&lt;/b&gt;обладает широким спектром антимикробного действия: бактерицидным; туберкулоцидным; вирулицидным.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;&lt;b&gt;Аниосгел&lt;/b&gt;&lt;b&gt;ь&lt;/b&gt;&lt;b&gt;&amp;nbsp;85 НПК&amp;nbsp;&lt;/b&gt;– применяется в медицинских учреждениях, детских дошкольных учреждениях, на коммунальних предприятиях, на всех видах транспорта, предприятиях пищевой, фармацевтической, косметической, медицинской промышленности, торговли и др..&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(69, 69, 69); font-family: Arial, Geneva, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;&lt;b&gt;Хирургическая дезинфекция рук&amp;nbsp;&lt;/b&gt;направлена против приобретенных патогенных и присущим коже микроорганизмов и производится перед каждым оперативным вмешательством (хирургическим, акушерским), перед любой процедурой которая требует антисептики хирургического типа.&lt;/p&gt;\r\n', '', '', ''),
(125, 2, 'Тест-карточки на 10 видов наркотических веществ', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест на 10 видов наркотиков определяет амфетамин, марихуану, морфин (опиат), кокаин, барбитураты, метамфетамин, бензодиазепин, экстази, бупренорфин, метадон&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс-тесты Профитест&lt;/strong&gt;&amp;nbsp;на выявление наркотиков – это быстрые и качественные тесты для скринингового выявления наркотических веществ и/или продуктов их распада в моче человека. Уникальный дизайн позволяет тестировать образцы мочи на наличие разнообразных веществ за одно тестирование. Быстрый тест предназначен для использования в заведениях здравоохранения и в домашних условиях.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты&amp;nbsp;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Профитест&amp;nbsp;&lt;/strong&gt;просты в использовании и позволяют выявить от одного до 10 наркотиков одновременно в течении 3-8 минут.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Состав набора&lt;/strong&gt;:&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n-&amp;nbsp; Мультипанель погружного типа и пакетик с осушителем, герметично упакованные в упаковку из ламинированной алюминиевой фольги.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n- &amp;nbsp; Инструкция по применению.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Интерпретация результатов:&lt;/strong&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Отрицательный:&amp;nbsp;&lt;/strong&gt;&lt;/em&gt;появились две (2) розовые/пурпурные полосы. В дополнение к контрольной полосе, розовая/пурпурная полоса появилась в тестовой зоне.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Положительный:&amp;nbsp;&lt;/strong&gt;&lt;/em&gt;появилась только одна (1) полоса в контрольной зоне. В тестовой зоне нет ни одной полосы. Это говорит о том, что концентрация наркотического вещества в образце выше пороговой.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Ошибка тестирования:&amp;nbsp;&lt;/strong&gt;&lt;/em&gt;Если в контрольной зоне не появляется розовая/пурпурная полоса, результат тестирования считается ошибочным. Проведите повторное тестирование образца, используя другой тест-набор.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;В результате исследований была подтверждена точность результатов, которая составляет 99%, чувствительность – около 100%, специфичность – около 100%.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Экспресс тесты&amp;nbsp;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;«New Vision Diagnostics «Профитест»&amp;nbsp;&lt;/strong&gt;зарегистрированы Министерством Здравоохранения Украины.&lt;/p&gt;\r\n', '', '', ''),
(126, 2, 'Тест-карточки на 8 видов наркотических веществ', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест на 8 видов наркотиков определяет амфетамин, марихуану, морфин (опиат), кокаин, барбитуроты, метамфетамин, бензодиазепин, экстази.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс-тесты Профитест&lt;/strong&gt;&amp;nbsp;на выявление наркотиков – это быстрые и качественные тесты для скринингового выявления наркотических веществ и/или продуктов их распада в моче человека. В результате исследований была подтверждена точность результатов, которая составляет 99%, чувствительность – около 100%, специфичность – около 100%.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест просты в использовании и позволяют выявить от одного до 10 наркотиков одновременно в течении 3-8 минут.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест сертифицированы Министерством здравоохранения Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Принцип работы:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором наркотик (или его метаболиты), находящиеся в анализируемом образце мочи, конкурируют с реагентами (конъюгатами), иммобилизированными на пористой мембране иммунохроматографической полоски за ограниченное количество антител.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(127, 2, 'Тест-карточки на 6 видов наркотических веществ', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест на 6 видов наркотиков - быстрый и качественный тест для одновременного определения амфетамина, марихуаны, морфина(опиата), кокаина, барбитуротов, метамфет.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс-тесты Профитест&lt;/strong&gt;&amp;nbsp;на выявление наркотиков – это быстрые и качественные тесты для скринингового выявления наркотических веществ и/или продуктов их распада в моче человека. В результате исследований была подтверждена точность результатов, которая составляет 99%, чувствительность – около 100%, специфичность – около 100%.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест просты в использовании и позволяют выявить от одного до 10 наркотиков одновременно в течении 3-8 минут.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест сертифицированы Министерством здравоохранения Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Принцип работы:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором наркотик (или его метаболиты), находящиеся в анализируемом образце мочи, конкурируют с реагентами (конъюгатами), иммобилизированными на пористой мембране иммунохроматографической полоски за ограниченное количество антител.&lt;/p&gt;\r\n', '', '', ''),
(128, 2, 'Тест-карточки на 5 видов наркотических веществ', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Экспресс тест на 5 видов наркотиков - быстрый и качественный тест для одновременного определения амфетамина, марихуаны, морфина(опиата), кокаина, барбитуротов&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс-тесты Профитест&lt;/strong&gt;&amp;nbsp;на выявление наркотиков – это быстрые и качественные тесты для скринингового выявления наркотических веществ и/или продуктов их распада в моче человека. В результате исследований была подтверждена точность результатов, которая составляет 99%, чувствительность – около 100%, специфичность – около 100%.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест просты в использовании и позволяют выявить от одного до 10 наркотиков одновременно в течении 3-8 минут.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест сертифицированы Министерством здравоохранения Украины.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Принцип работы:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором наркотик (или его метаболиты), находящиеся в анализируемом образце мочи, конкурируют с реагентами (конъюгатами), иммобилизированными на пористой мембране иммунохроматографической полоски за ограниченное количество антител.&lt;/p&gt;\r\n', '', '', ''),
(129, 2, 'Тест-карточки на 4 вида наркотических веществ', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс тест на 4 вида наркотиков - быстрый и качественный тест для одновременного определения амфетамина, марихуаны, морфина (опиатов), метамфетамина&lt;/strong&gt;&lt;/em&gt;.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Экспресс-тесты New Vision Diagnostics ПРОФИТЕСТ&lt;/strong&gt;&amp;nbsp; на выявление наркотиков – это быстрые и качественные тесты для скринингового выявления наркотических веществ и/или продуктов их распада в моче человека. В результате исследований была подтверждена точность результатов, которая составляет 99%, чувствительность – около 100%, специфичность – около 100%.&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Быстрые иммунохроматографические тесты Профитест просты в использовании и позволяют выявить 4 вида наиболее распространенных наркотиков одновременно в течении 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Позволяет оперативно выявить употреблялся ли наркотик за предшествующие 5-7 суток.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Позволяет определить вид употребленного наркотика.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Легкая интерпретация результата.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;u style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Реагенты и материалы:&lt;/strong&gt;&lt;/u&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Тест-карточка в индивидуальной упаковке&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Инструкция&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Быстрые тесты&amp;nbsp;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;New Vision Diagnostics ПРОФИТЕСТ&lt;/strong&gt;&amp;nbsp;сертифицированы Министерством охраны здоровья Украины, а также зарегистрированы в Реестре оптово-отпускных цен на изделия медицинского назначения.&lt;/p&gt;\r\n', '', '', ''),
(130, 2, 'Тест-карточки для определения экстези', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест на определение наркотиков в моче человека прост в применении, не требует специальных навыков и оборудования.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест на определение экстази предназначен для in-vitro диагностики, быстрого качественного выявления methylenedioxymethamphetamine (МDМА) (первичный ингредиент Экстази) в моче человека методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;-секундомер;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n-пластиковая или стеклянная емкость, вместимостью 5,0 мл.&lt;/p&gt;\r\n', '', '', ''),
(131, 2, 'Тест-карточки для определения морфина', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Быстрое выявление морфина и наркотиков на его основе, включая героин, в моче человека. Тест выявляет наркотик в течении 5-7 суток с момента употребления.&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Тест прост в применении, не требует специальных навыков и оборудования.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Позволяет оперативно выявить употреблялся ли наркотик за предшествующие 5-7 суток.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест-полоска предназначена для одноэтапного быстрого качественного определения морфина (и его метаболитов) в моче человека методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором морфин (и его метаболиты), находящийся в анализируемом образце мочи, конкурирует с морфином (и его метаболитами), иммобилизованным на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце морфина (или его метаболитов) – «антиген», он вступает в реакцию со специфическими моноклональными антителами к морфину, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\nНаличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация морфина (или его метаболитов) в исследуемом образце мочи составляет 300 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи морфин (или его метаболиты) отсутствуют или же их концентрация ниже 300 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 300 нг/мл морфина (или его метаболитов).&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Каждая полоска предназначена для одного определения наличия морфина (или его метаболитов) в моче человека.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Полоска используется только для качественного определения морфина (или его метаболитов) и не предназначена для количественного определения морфина в моче, или степени опьянения.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Наличие в моче в концентрации 10 мкг/мл других наркотических веществ (бензоилэкгонин, каннабиол, амфетамин, деоксиэфедрин, метамфетамин, фенциклидин и фенобарбитал) не мешает определению морфина (или его метаболитов).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(132, 2, 'Тест-карточки для определения метадон', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест прост в применении, не требует специальных навыков и оборудования. Позволяет выявить употреблялся ли наркотик за предшествующие 5-7 суток.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Метадон (амидон, аданон, фенадон, долофин, физептон, гептадон) – является синтетическим опиоидом, лекарственное средство, применяется в том числе и для лечения «морфиновой» наркоманий, в больших дозах сам является наркотиком со всеми последствиями.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Экспресс тест на метадон предназначен для одноэтапного быстрого качественного определения метадона (и их метаболитов) в моче методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором метадон (и его метаболиты), находящийся в анализируемом образце мочи, конкурируют с метадоном (и его метаболитами), иммобилизованными на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце барбитуратов (или их метаболитов)-&quot;антиген», он вступает в реакцию со специфическими моноклональными антителами, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется. Наличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация метадона (или его метаболитов) в исследуемом образце мочи составляет 300 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи отсутствует метадон (или его метаболиты) или же их концентрация ниже 300 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку из ламинированной алюминиевой фольги.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 300 нг/мл метадона (или его метаболитов).&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Каждая полоска предназначена для одного определения наличия метадона (или его метаболитов) в моче.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Полоска используется только для качественного определения метадона (или его метаболитов) и не предназначена для количественного определения метадона в моче или степени опьянения.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Наличие в моче в концентрации 100 мкг/мл других соединений (4-ацетаминофенол, ампициллин, ацетилсалициловая кислота, амитриптилин, витамин С, атропин, кофеин, хлорфенирамин, хлороквин, декстрометорфан, 4-диметиламиноантипирин, эритромицин, эпинефрин, 3-гидрокситирамин, бромфенирамин, квафенизан, фенилпропаноламин, фуросемид, лидокаин, прокаин, изопростеренол, пенициллин-G, фенилпропаноламин, В-фенилэтиламин, ранитидин, эфедрин, налтрексон, налоксон, гвинитидин, тирамин, сулиндак, имипрамин, 6-метокси-2-метил 1-2-нафталенацетиловая кислота) не мешает определению метадона (или его метаболитов).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;секундомер;&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;пластмассовые или стеклянные стаканчики, вместимостью 30-50мл.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(133, 2, 'Тест-карточки для определения метадонаметамфетамин', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Быстрое (3 минуты) выявление метамфетамина в моче человека. Тест способен выявить наркотик в течении 5-7 суток с момента употребления.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест-полоска Профитест предназначена для одноэтапного быстрого качественного определения метамфетамина (и его метаболитов) в моче человека методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором метамфетамин (и его метаболиты), находящийся в анализируемом образце мочи, конкурирует с метамфетамином (и его метаболитами), иммобилизованным на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце метамфетамина (или его метаболитов) – «антиген», он вступает в реакцию со специфическими моноклональными антителами, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется. Наличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация метамфетамина (или его метаболитов) в исследуемом образце мочи составляет 500 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи отсутствует метамфетамин (или его метаболиты) или же их концентрация ниже 500 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку из ламинированной алюминиевой фольги.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 500 нг/мл метамфетамина (или его метаболитов).&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Каждая полоска предназначена для одного определения наличия метамфетамина (или его метаболитов) в моче человека.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Полоска используется только для качественного определения метамфетамина (или его метаболитов) и не предназначена для количественного определения метамфетамина в моче или степени опьянения.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Наличие в моче в концентрации 100 мкг/мл других соединений (4-ацетаминофенол, ампициллин, ацетилсалициловая кислота, амитриптилин, витамин С, атропин, кофеин, хлорфенирамин, хлороквин, декстрометорфан, 4-диметиламиноантипирин, эритромицин, эпинефрин, 3-гидрокситирамин, бромфенирамин, квафенизан, фенилпропаноламин, фуросемид, лидокаин, прокаин, изопростеренол, пенициллин-G, фенилпропаноламин, В-фенилэтиламин, ранитидин, эфедрин, налтрексон, налоксон, гвинитидин, тирамин, сулиндак, имипрамин, 6-метокси-2-метил 1-2-нафталенацетиловая кислота) не мешает определению метамфетамина (или его метаболитов).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;секундомер;&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;пластмассовые или стеклянные стаканчики, вместимостью 30-50мл.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(134, 2, 'Тест-карточки для определения марихуаны', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Быстрое (2 минуты) выявление марихуаны в моче человека, а также других наркотических веществ на основе каннабинов. Тест выявляет наркотик в течении 5-7 суток.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором марихуана (и ее метаболиты), находящаяся в анализируемом образце мочи, конкурирует с марихуаной (и ее метаболитами), иммобилизованной на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце марихуаны (или ее метаболитов) – «антиген», он вступает в реакцию со специфическими моноклональными антителами, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется. Наличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация марихуаны (или ее метаболитов) в исследуемом образце мочи составляет 50 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи марихуана (или ее метаболиты) отсутствуют или же их концентрация ниже 50 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 50 нг/мл марихуаны (или ее метаболитов).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждая полоска предназначена для одного определения наличия марихуаны (или ее метаболитов) в моче человека.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Полоска используется только для качественного определения марихуаны и не предназначена для количественного определения марихуаны в моче, или степени опьянения.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Наличие в моче в концентрации 10 мкг/мл других наркотических веществ (морфин, амфетамин, метамфетамин, деоксиэфедрин, фенциклидин и фенобарбитал) не мешает определению марихуаны (или ее метаболитов).&lt;/p&gt;\r\n', '', '', ''),
(135, 2, 'Тест-карточки для определения кокаина', '', '', '', ''),
(136, 2, 'Тест-карточки для определения бупренорфена', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тесты Профитест на определение наркотиков в моче человека просты в применении, не требуют специальных навыков и оборудования.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест на определение экстази предназначен для in-vitro диагностики, быстрого качественного выявления бупренорфина в моче человека методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;-секундомер;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n-пластиковая или стеклянная емкость, вместимостью 5,0 мл.&lt;/p&gt;\r\n', '', '', ''),
(137, 2, 'Тест-карточки для определения бензодеазелина', '', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(138, 2, 'Тест-карточки для определения барбитуроатов', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест прост в применении, не требует специальных навыков и оборудования. Позволяет выявить употреблялся ли наркотик за предшествующие 5-7 суток.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;em style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Барбитураты [производные кислоты: фенобарбитал, барбитал, мединал, этаминал-патрий, смесь Серейского, тардил, белласпоп, бромитал и др.] Обезболивающее, противосудорожное, успокаивающее и снотворное средство. Применяется внутрь и вводится инъекциями. Невнятная речь; дезориентация; нетрезвое состояние, но без запаха алкоголя.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Экспресс-тест для выявления барбитуратов предназначен для одноэтапного быстрого качественного определения барбитуратов (и их метаболитов) в моче методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором барбитураты (и их метаболиты), находящиеся в анализируемом образце мочи, конкурируют с барбитуратами (и их метаболитами), иммобилизованными на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце барбитуратов (или их метаболитов)-&quot;антиген», он вступает в реакцию со специфическими моноклональными антителами, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется. Наличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация барбитуратов (или их метаболитов) в исследуемом образце мочи составляет 300 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи отсутствуют барбитураты (или их метаболиты) или же их концентрация ниже 300 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку из ламинированной алюминиевой фольги.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 300 нг/мл барбитуратов (или их метаболитов).&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Каждая полоска предназначена для одного определения наличия барбитуратов (или их метаболитов) в моче.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Полоска используется только для качественного определения барбитуратов (или их метаболитов) и не предназначена для количественного определения барбитуратов в моче или степени опьянения.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Наличие в моче в концентрации 100 мкг/мл других соединений (4-ацетаминофенол, ампициллин, ацетилсалициловая кислота, амитриптилин, витамин С, атропин, кофеин, хлорфенирамин, хлороквин, декстрометорфан, 4-диметиламиноантипирин, эритромицин, эпинефрин, 3-гидрокситирамин, бромфенирамин, квафенизан, фенилпропаноламин, фуросемид, лидокаин, прокаин, изопростеренол, пенициллин-G, фенилпропаноламин, В-фенилэтиламин, ранитидин, эфедрин, налтрексон, налоксон, гвинитидин, тирамин, сулиндак, имипрамин, 6-метокси-2-метил 1-2-нафталенацетиловая кислота) не мешает определению барбитуратов (или его метаболитов).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;секундомер;&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;пластмассовые или стеклянные стаканчики, вместимостью 30-50мл.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(139, 2, 'Тест-карточки для определения амфетамина', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Быстрое (3 минуты) выявление метамфетамина в моче человека. Тест способен выявить наркотик в течении 5-7 суток с момента употребления.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Тест-полоска Профитест предназначена для одноэтапного быстрого качественного определения метамфетамина (и его метаболитов) в моче человека методом иммунохроматографического анализа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ПРИНЦИП РАБОТЫ ПОЛОСКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Определение основано на принципе иммунохроматографического анализа, при котором метамфетамин (и его метаболиты), находящийся в анализируемом образце мочи, конкурирует с метамфетамином (и его метаболитами), иммобилизованным на пористой мембране иммунохроматографической полоски за ограниченное количество антител. Испытуемый образец мочи всасывается поглощающими участками полоски и в случае наличия в образце метамфетамина (или его метаболитов) – «антиген», он вступает в реакцию со специфическими моноклональными антителами, связанными с частицами коллоидного золота, образуя комплекс «антиген-антитело». Этот комплекс не вступает в реакцию конкурентного связывания с антигеном, иммобилизованным в тестовой зоне полоски, при этом полоса розового цвета в тестовой зоне не выявляется. Наличие одной полосы розового цвета в контрольной зоне свидетельствует о том, что концентрация метамфетамина (или его метаболитов) в исследуемом образце мочи составляет 500 нг/мл или выше. Выявление двух параллельных полос розового цвета (в тестовой и контрольной зонах полоски) свидетельствует о том, что в исследуемом образце мочи отсутствует метамфетамин (или его метаболиты) или же их концентрация ниже 500 нг/мл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;СОСТАВ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Каждый комплект состоит из одной полоски, упакованной в индивидуальную вакуумную упаковку из ламинированной алюминиевой фольги.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;АНАЛИТИЧЕСКИЕ ХАРАКТЕРИСТИКИ&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Чувствительность определения (минимально определяемая концентрация) составляет – 500 нг/мл метамфетамина (или его метаболитов).&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Время проведения анализа – 3-8 минут.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Каждая полоска предназначена для одного определения наличия метамфетамина (или его метаболитов) в моче человека.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Полоска используется только для качественного определения метамфетамина (или его метаболитов) и не предназначена для количественного определения метамфетамина в моче или степени опьянения.&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Наличие в моче в концентрации 100 мкг/мл других соединений (4-ацетаминофенол, ампициллин, ацетилсалициловая кислота, амитриптилин, витамин С, атропин, кофеин, хлорфенирамин, хлороквин, декстрометорфан, 4-диметиламиноантипирин, эритромицин, эпинефрин, 3-гидрокситирамин, бромфенирамин, квафенизан, фенилпропаноламин, фуросемид, лидокаин, прокаин, изопростеренол, пенициллин-G, фенилпропаноламин, В-фенилэтиламин, ранитидин, эфедрин, налтрексон, налоксон, гвинитидин, тирамин, сулиндак, имипрамин, 6-метокси-2-метил 1-2-нафталенацетиловая кислота) не мешает определению метамфетамина (или его метаболитов).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;ОБОРУДОВАНИЕ И МАТЕРИАЛЫ, НЕОБХОДИМЫЕ ДЛЯ ПРОВЕДЕНИЯ АНАЛИЗА&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 8px 0px; padding-right: 20px; padding-left: 20px; list-style: none outside none; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;секундомер;&lt;/li&gt;\r\n	&lt;li style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;пластмассовые или стеклянные стаканчики, вместимостью 30-50мл.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(140, 2, 'Тест-реагент АНТИ-Kell 50 ', '', '', '', ''),
(141, 2, 'Тест-реагент АНТИ-С 3d/JgG ', '', '', '', ''),
(142, 2, 'Тест-реагент АНТИ-А', '', '', '', ''),
(143, 2, 'Тест-реагент АНТИ-С', '', '', '', ''),
(144, 2, 'Тест-реагент АНТИ-Д ', '', '', '', ''),
(145, 2, 'Тест-реагент АНТИ-АВ', '', '', '', ''),
(146, 2, 'Тест-реагент АНТИ-В', '', '', '', ''),
(147, 2, 'Тест-реагент АНТИ-А ', '', '', '', ''),
(148, 2, 'Контейнер для взятия крови стерильный', '&lt;p&gt;&lt;span style=&quot;color: rgb(38, 44, 48); font-family: Arial, Helvetica, sans-serif; line-height: 18px;&quot;&gt;Абсолютное внутреннее давление, которое выдерживает контейнер не менее 168 кПа. Контейнер устойчив к различным режимам центрифугирования, выдерживает замораживание без нагрузки до минус 80 °С. Ярлыки на контейнере содержат необходимые сведения об изделии, изготовителе, срок годности и номер серии. Контейнеры упакованы в новую современную упаковку - многослойную пленку на основе алюминиевой фольги.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(149, 2, 'Наконечники к дозаторам (от 100 до 1000 мкл), ', '&lt;p style=&quot;margin: 0px; padding: 0px 0px 8px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(82, 81, 81); font-family: Verdana; line-height: normal;&quot;&gt;Предназначен для работы с дозаторами 100-1000 мкл.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px 0px 8px; border: 0px; outline: 0px; vertical-align: baseline; color: rgb(82, 81, 81); font-family: Verdana; line-height: normal; &quot;&gt;Длина наконечника 7,1 см.&lt;/p&gt;\r\n', '', '', ''),
(150, 2, 'Наконечники к дозаторам (от 5 до 200 мкл)', '', '', '', ''),
(151, 2, 'Штатив для предметных стёкол на 50 мест ', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Предназначены для хранения микропрепаратов&amp;nbsp;на предметных стеклах размером 75х25±1 мм,&amp;nbsp;толщиной 1±0,1 мм.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Внутри - пронумерованные&amp;nbsp;таблицы для записи сопроводительных&amp;nbsp;комментариев.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(152, 2, 'Штатив для предметных стёкол на 25 мест ', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Предназначены для хранения микропрепаратов&amp;nbsp;на предметных стеклах размером 75х25±1 мм,&amp;nbsp;толщиной 1±0,1 мм.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Внутри - пронумерованные&amp;nbsp;таблицы для записи сопроводительных&amp;nbsp;комментариев.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(153, 2, 'Штатив для предметных стёкол на 2 стекла', '', '', '', ''),
(154, 2, 'Шпатель деревянный №100', '', '', '', ''),
(155, 2, 'Шпатель пластмассовый стерильный ', '&lt;p style=&quot;outline-width: 0pt; outline-style: none; margin: 0px 0px 1em; line-height: 1.4; font-family: ''Trebuchet MS'', Tahoma, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;&quot;&gt;Предназначен для осмотра полости рта и внутренних манипуляций.&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;outline-width: 0pt; outline-style: none; margin: 0.2em 0px 1.4em 0em; padding-right: 0px; padding-left: 0px; list-style-position: outside; font-family: ''Trebuchet MS'', Tahoma, Verdana, Arial, Helvetica, sans-serif; font-size: 13px; line-height: normal; text-align: justify;&quot;&gt;\r\n	&lt;li style=&quot;outline-width: 0pt; outline-style: none; overflow: hidden; padding: 0px 0px 0px 3em; list-style: none; background: url(http://medbuy.ru/Data/Sites/1/skins/med/images/marker.png) 2em 0.65em no-repeat;&quot;&gt;предназначен для однократного применения;&lt;/li&gt;\r\n	&lt;li style=&quot;outline-width: 0pt; outline-style: none; overflow: hidden; padding: 0px 0px 0px 3em; list-style: none; background: url(http://medbuy.ru/Data/Sites/1/skins/med/images/marker.png) 2em 0.65em no-repeat;&quot;&gt;индивидуальная бумажная стерильная упаковка;&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;outline-width: 0pt; outline-style: none; overflow: hidden; padding: 0px 0px 0px 3em; list-style: none; background: url(http://medbuy.ru/Data/Sites/1/skins/med/images/marker.png) 2em 0.65em no-repeat;&quot;&gt;изготовлен из акрилнитрилбутадиенстирола (пластиковый);&lt;/li&gt;\r\n	&lt;li style=&quot;outline-width: 0pt; outline-style: none; overflow: hidden; padding: 0px 0px 0px 3em; list-style: none; background: url(http://medbuy.ru/Data/Sites/1/skins/med/images/marker.png) 2em 0.65em no-repeat;&quot;&gt;гладкая поверхность позволяет избегать повреждений слизистой рта и языка;&amp;nbsp;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(156, 2, 'Пробирка &quot;Eppendorf&quot; ', '&lt;ul style=&quot;padding-right: 0px; padding-left: 0px; margin: 10px 20px; color: rgb(0, 0, 0); font-family: sans-serif; line-height: normal;&quot;&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;ПП, градуированные, с&amp;nbsp;полем для маркировки;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;крышка легко открывается и&amp;nbsp;фиксируется;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;автоклавируются;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;пробирки доступны в&amp;nbsp;3&amp;nbsp;степенях чистоты:\r\n	&lt;ul style=&quot;padding-right: 0px; padding-left: 0px; margin: 10px 20px;&quot;&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf Quality&lt;/b&gt;&amp;nbsp;— стандартное качество&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf&lt;/b&gt;;&lt;/li&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;&amp;nbsp;— сертифицированы на&amp;nbsp;отсутствие ДНК, ДНКаз, РНКаз и&amp;nbsp;ПЦР-ингибиторов;&lt;/li&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;&amp;nbsp;(только для серии&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Safe-Lock&lt;/b&gt;)&amp;nbsp;— сертифицированы на&amp;nbsp;стерильность и&amp;nbsp;отсутствие РНКаз, ДНК, АТФ, пирогенов.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Серия Safe-Lock с&amp;nbsp;надежным замком&lt;/b&gt;:&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;Обеспечивают наименьшее испарение при нагревании;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;градуировка; место для маркировки, в&amp;nbsp;т.ч. на&amp;nbsp;крышке;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;могут быть качества&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;&amp;nbsp;и&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;выдерживают центрифугирование до&amp;nbsp;30000×g (пробирки 0,5 и&amp;nbsp;1,5&amp;nbsp;мл&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf Quality&lt;/b&gt;&amp;nbsp;и&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;) и&amp;nbsp;до&amp;nbsp;22000×g (пробирки&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(157, 2, 'Пробирка »Eppendorf» 1,5 мл', '&lt;ul style=&quot;padding-right: 0px; padding-left: 0px; margin: 10px 20px; color: rgb(0, 0, 0); font-family: sans-serif; line-height: normal;&quot;&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;ПП, градуированные, с&amp;nbsp;полем для маркировки;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;крышка легко открывается и&amp;nbsp;фиксируется;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;автоклавируются;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;пробирки доступны в&amp;nbsp;3&amp;nbsp;степенях чистоты:\r\n	&lt;ul style=&quot;padding-right: 0px; padding-left: 0px; margin: 10px 20px;&quot;&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf Quality&lt;/b&gt;&amp;nbsp;— стандартное качество&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf&lt;/b&gt;;&lt;/li&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;&amp;nbsp;— сертифицированы на&amp;nbsp;отсутствие ДНК, ДНКаз, РНКаз и&amp;nbsp;ПЦР-ингибиторов;&lt;/li&gt;\r\n		&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;&amp;nbsp;(только для серии&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Safe-Lock&lt;/b&gt;)&amp;nbsp;— сертифицированы на&amp;nbsp;стерильность и&amp;nbsp;отсутствие РНКаз, ДНК, АТФ, пирогенов.&lt;/li&gt;\r\n	&lt;/ul&gt;\r\n	&lt;/li&gt;\r\n	&lt;li&gt;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Серия Safe-Lock с&amp;nbsp;надежным замком&lt;/b&gt;:&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;Обеспечивают наименьшее испарение при нагревании;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;градуировка; место для маркировки, в&amp;nbsp;т.ч. на&amp;nbsp;крышке;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;могут быть качества&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;&amp;nbsp;и&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;;&lt;/li&gt;\r\n	&lt;li style=&quot;padding: 0px; margin: 0px;&quot;&gt;выдерживают центрифугирование до&amp;nbsp;30000×g (пробирки 0,5 и&amp;nbsp;1,5&amp;nbsp;мл&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Eppendorf Quality&lt;/b&gt;&amp;nbsp;и&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;PCR clean&lt;/b&gt;) и&amp;nbsp;до&amp;nbsp;22000×g (пробирки&amp;nbsp;&lt;b style=&quot;padding: 0px; margin: 0px;&quot;&gt;Biopur&lt;/b&gt;).&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(158, 2, 'Плитка для определения групп крови', '&lt;p style=&quot;margin: 0px 0px 1em; padding: 0px; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Комплект поставки:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 0px 0px 1em; padding-right: 0px; padding-left: 1.5em; list-style-position: outside; list-style-image: initial; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px;&quot;&gt;Планшет – 5 шт.;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px;&quot;&gt;Шпатель – 30 шт.;&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px;&quot;&gt;Штатив для сывороток – 1шт.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1em; padding: 0px; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;Составные части комплекта (кроме крышки контейнера) изготовлены из ударопрочного, химически стойкого, нетоксичного полистирола УПМ-0508 ГОСТ 28250.&amp;nbsp;&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nКрышка изготовлена из темплена 201-02 ТУ 6-05-041-589.&lt;br style=&quot;margin: 0px; padding: 0px;&quot; /&gt;\r\nНаружные и внутренние поверхности комплекта устойчивы к дезинфекции химическим методом по ОСТ 42-21-2: 4% раствором перекиси водорода по ГОСТ 177 с добавлением 0,5% моющего средства типа «Лотос» по ГОСТ 25644 и 1% раствором хлорамина по ТУ6-01-4689387-16.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1em; padding: 0px; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Технические характеристики:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 1em; padding: 0px; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;Габаритные размеры составных частей комплекта, мм, не более:&lt;/p&gt;\r\n\r\n&lt;ul style=&quot;margin: 0px 0px 1em; padding-right: 0px; padding-left: 1.5em; list-style-position: outside; list-style-image: initial; color: rgb(175, 175, 175); font-family: Arial; line-height: 18px; background-color: rgb(251, 251, 251);&quot;&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px;&quot;&gt;планшета – 141х84х11 мм; штатив – 81х42,5х75 мм; шпателя – 100х3х8 мм&lt;/li&gt;\r\n	&lt;li style=&quot;margin: 0px; padding: 0px;&quot;&gt;Масса не более 200 гр.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(159, 2, 'Комплект для мазков &quot;БРИСА&quot; стерильный', '&lt;p&gt;&lt;u style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(245, 245, 245);&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Комплект мазков Бриса&lt;/strong&gt;&lt;/u&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(245, 245, 245);&quot;&gt;&amp;nbsp;представляет собой одноразовую стерильную пластикову пробирку с колпачком, в которую помещена деревянная палочка с ватной намоткой.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(160, 2, 'Комплект для мазков стерильный (дерев.палочка с ватной намоткой)', '&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;ВАТНЫЕ АППЛИКАТОРЫ&lt;/strong&gt;&amp;nbsp;- выполнены из двух основных частей – аппликатора, при производстве которого используют алюминий, дерево или пластик, и самого ватного тампона, который может быть выполнен из вискозы или хлопка, путем намотки волокна по специальной технологии, что придает ему каплевидную форму.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Эта технология позволяет исключить потерю волокон ватного тампона при взятии пробы.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: inherit; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Материалы аппликаторов:&lt;/span&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;а) деревянный аппликатор обычно имеет толщину от 2,2мм до 2,5мм, реже 3мм- 4мм. Такие аппликаторы отличает высокая термическая устойчивость, что позволяет неоднократно пропускать его через автоклав и сухожаровый шкаф. Использование таких аппликаторов нашло применение в пищевой промышленности, медицине особенно при отборах проб из горячих участков и работе с жидким азотом;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;Не рекомендуется использовать деревянные аппликаторы при отборе проб у человека, несмотря на его прочность, всегда есть вероятность того, что аппликатор сломается.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;б) пластиковый аппликатор обычно выполнен из полистирола или полипропилена, диаметром 2,5 мм- 4мм. Эти аппликаторы отличает довольно высокая прочность на излом. Сам материал аппликатора не имеет ограничений в применении, биологически безопасен для человека и животных. Рекомендован для применения в промышленности и медицине. Не рекомендуется применять в условиях с повышенной температурой;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: Verdana, sans-serif; font-stretch: inherit; line-height: 19px; vertical-align: baseline; color: rgb(65, 65, 65); text-align: justify;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; border: 0px; font-family: inherit; font-size: small; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; vertical-align: baseline;&quot;&gt;в) алюминиевый аппликатор имеет толщину приблизительно 1 мм, диаметр самого ватного тампона около 1,5 мм. Особенностью ватных тампонов с алюминиевым аппликатором является тот факт, что ему может быть задана лаборантом любая форма, позволяющая взять пробу с труднодоступных зон. Материал может применяться в любых областях промышленности и медицины, так как не имеет ограничений. Термоустойчив и биологически безопасен для человека и животных. Частое применение в урологии и гинекологии для взятия мазков.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(161, 2, 'Сосуд для мокроты,слюны 35 мл стерильный', '', '', '', ''),
(162, 2, 'Сосуд для кала 15 мл стерильный (прозрачный)', '', '', '', ''),
(163, 2, 'Сосуд для кала 15 мл н/с (непрозрачный)', '', '', '', ''),
(164, 2, 'Сосуд для проб 50 мл ', '', '', '', ''),
(165, 2, 'Сосуд для мочи 100 мл ', '', '', '', ''),
(166, 2, 'Сосуд для мочи 75 мл ', '', '', '', ''),
(167, 2, 'Пробирки d=16/100 с пробкой 10 мл', '&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Пробирка круглодонная&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;изготовлена из полипропилена&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;(ПП)&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;, прозрачностью уступает стеклу (от полупрозрачного до слегка опалесцирующего), обладает высокой механической прочностью и устойчивостью к деформации, выдерживает нагрузку при центрифугировании до&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;15000 g&lt;/em&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;. ПП химически устойчив к большинству реактивов, устойчивость к эфирам, кетонам, ароматическим и галогенизированным углеводородам ограничена, к сильным окислителям - низкая.Предназначена для однократного использования, однако может обрабатываться любыми штатными дезинфицирующими растворами, автоклавироваться при температуре +121 °С или подвергаться газовой или радиационной стерилизации.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp; Габариты : 16х100 мм, вместимость 10 мл.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(168, 2, 'Пробирки d=12/75 с пробкой', '&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Пробирка &lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;изготовлена из полистирола&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;(ПС)&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;, прозрачностью не уступает стеклу, механическая прочность невысока, нагрузка при центрифугировании до&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;7500 g&lt;/em&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;.&amp;nbsp;&lt;/span&gt;&lt;u style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&lt;strong&gt;ПС&amp;nbsp;&lt;/strong&gt;&lt;/u&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;химически устойчив к большинству реактивов, за исключением эфиров, кетонов, ароматических и галогенизированных углеводородов, сильных окислителей. Предназначена для однократного использования.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(169, 2, 'Пробирки d=16/100, 10 мл конусная', '&lt;p&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Пробирка коническая тип ФАЛЬКОН&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;изготовлена из полипропилена высокой прозрачности&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;(ПП)&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;, с герметично завинчивающейся крышкой, рельефной градуировкой. Обладает высокой механической прочностью и устойчивостью к деформации, выдерживает нагрузку при центрифугировании до&amp;nbsp;&lt;/span&gt;&lt;em style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;15000 g&lt;/em&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;.&amp;nbsp;&lt;/span&gt;&lt;u style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&lt;strong&gt;ПП&lt;/strong&gt;&lt;/u&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;химически устойчив к большинству реактивов, устойчивость к эфирам, кетонам, ароматическим и галогенизированным углеводородам ограничена, к сильным окислителям - низкая. На пробирку нанесена градуировка. Предназначена для однократного использования, однако может обрабатываться любыми штатными дезинфицирующими растворами, автоклавироваться при температуре +121 °С или подвергаться газовой или радиационной стерилизации. Предназначены для использования в иммунологии, микробиологии и других лабораторных областях.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp; Габариты : 16х100 мм, вместимость 10 мл, шаг градуировки - 0,5 мл, маркировочное поле - 10х30 мм.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(170, 2, 'Пробирки d=16/100', '', '', '', ''),
(171, 2, 'Пробирки d=16/50', '', '', '', ''),
(172, 2, 'Пробирки d=12/75, 4 мл ', '', '', '', ''),
(173, 2, 'Сжигатель игл и деструктор шприцев NULIFE DOTS', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Предназначен для утилизации использованных игл и шприцов, благодаря встроенному сжигателю и ножу для отрезания канюли шприца.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Безопасный и компактный настольный прибор, с помощью которого можно легко утилизировать использованные иглы и шприцы, благодаря встроенному сжигателю и ножу для отрезания канюли шприца.&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; В сравнении с механическими устройствами для деструкции игл, где иглы режутся, но все равно остаются острыми, инфицированными и могут быть причиной проникновения инфекции в организм здорового человека,&amp;nbsp;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Nulife DOTS&lt;/strong&gt;&amp;nbsp;сжигает иглу, обеззараживает ее и разрушает шприц.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Прибор предназначен, главным образом, для применения в лабораторных условиях. &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218);&quot;&gt;Принцип действия:&lt;/strong&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\nИгла, находящаяся на шприце вводится в отверстие на верхней поверхности устройства. Игла замыкает верхний, и расположенный на небольшом от него расстоянии, нижний электроды, в результате чего игла нагревается и начинает плавиться. Весь процесс, в зависимости от длины и диаметра иглы, занимает 2-3 сек. Остатки уничтоженных игл в виде гранул металла собираются в отдельном контейнере.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;&lt;strong style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;При использовании данного прибора, соблюдайте следующие меры предосторожности:&amp;nbsp;&lt;/strong&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;1) Перед подсоединением прибора, проверьте на индикаторе, совпадает ли напряжение прибора с напряжением приборов на вашем рабочем месте.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;2) Никогда не опускайте провод и штепсель в воду.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;3) Отключайте прибор, если он не используется, а так же перед очисткой.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;4) Выключайте прибор перед изъятием накопительного подноса.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;5) Чистить прибор сверху, протирая его только мягкой сухой тряпкой. После изъятия накопительного подноса, он должен быть очищен с дезинфекцией.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;6) Если для прибора требуется удлинитель, то следует использовать шнур для тока в 5А. Шнур, маркированный меньшими амперами, может сгореть.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;7) Разместите прибор так, чтобы провод не мешал работе.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;8) Прибор предназначен только для сжигания игл от 19g до 31g, с последующим срезанием канюли шприца. Данный прибор для уничтожения других металлических предметов не предназначен. Не пробуйте уничтожать стеклянные и металлические шприцы: это может привести к серьёзной поломке лезвия прибора.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;9) Не используйте прибор при наличии летучих газов и других летучих субстанций.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;10) Не вставляйте палец в прибор.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;11) Для лучшей защиты используйте плавкий предохранитель, соответствующий номиналу предохранителя прибора.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;12) Не ломайте иглу резаком.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;13) Иглы тоньше, чем 19g сжигайте в другой машине.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;14) Сжигайте максимум 2 иглы в минуту.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218);&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(174, 2, 'Облучатель кварцевый «Проминь»', '&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;Аппарат ультрафиолетового облучения &quot;Проминь&quot;&amp;nbsp;&lt;/strong&gt;предназначен для компенсации ультрафиолетовой недостаточности, особенно в северных широтах.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;Кварцеватель может с успехом использоваться для лечебных и профилактических облучений взрослых и детей в домашних условиях, лечебных и профилактических учреждениях, в физиотерапевтических кабинетах, детских садах, яслях, санаториях, а также для кварцевания жилых помещений, уничтожения вирусов, неприятных запахов и грибковых образований в помещениях.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;Облучатель может использоваться как для повышения &quot;D&quot; витамино-образования, так и для получения&amp;nbsp;&lt;strong style=&quot;margin: 0px; padding: 0px;&quot;&gt;эффекта загара&lt;/strong&gt;.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;Совместное облучение в диапазоне ультрафиолетовых и инфракрасных лучей оказывает благоприятное воздействие на поверхность кожи.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;В облучателе &quot;Проминь&quot; ультрафиолетовое излучение обеспечивается разрядной лампой высокого давления, а инфракрасное - с помощью нагревательных элементов.&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 18px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Tahoma, sans-serif; line-height: 18px;&quot;&gt;&lt;span style=&quot;margin: 0px; padding: 0px; color: rgb(34, 34, 34); line-height: 18.015625px;&quot;&gt;В комплекте с лампой поставляются защитные очки.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(175, 2, 'Облучатель передвижной ОРБП ( 5лх30w)', '', '', '', ''),
(176, 2, 'Облучатель передвижной ОБПе 6-30', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 18.2000007629395px; text-align: justify; text-indent: 20px;&quot;&gt;Передвижной бактерицидный облучатель ОБПе-225м используется для быстрого обеззараживания воздуха и поверхностей в помещениях большого и среднего объема. Благодаря своей конструкции и легкости перемещении&amp;nbsp; рекомендуется для поочередной дезинфекции нескольких помещений. Корпус облучателя изготовлен из высококачественной стали, окрашенной порошковой краской. Облучатель комплектуется тремя открытыми&amp;nbsp; бактерицидными лампами мощностью&amp;nbsp; 30Вт. Для удобства перемещения и защиты ламп от удара на стойке&amp;nbsp; установлена металлическая ручка.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(177, 2, 'Облучатель передвижной ОБПе 3-30', '&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Предназначен для обеззараживания воздуха и поверхностей помещений в отсутствии людей. Эффективное средство для профилактики и борьбы с инфекционными болезнями, микробами, бактериями, вирусами. Дополняют обязательное соблюдение действующих санитарных норм и правил по устройству и содержанию помещений в системе здравоохранения, в лечебно-профилактических, санаторно-курортных и детских учреждениях, в спортивных комплексах.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Принцип действия основан на бактерицидном воздействии&amp;nbsp;УФ-С излучения с длиной волны 254 нм, которое обеспечивается использованием в облучателях безозонових ламп TUV30 производства фирмы Philips.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Передвижные облучатели предназначены для обеззараживания воздуха в помещениях с большой площадью. Круговое размещение ламп способствует увеличению эффективности обеззараживания. Возможен вариант изготовления с таймером по желанию клиента.&lt;/p&gt;\r\n', '', '', ''),
(178, 2, 'Облучатель передвижной ОБПе 3-30 ', '&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Предназначен для обеззараживания воздуха и поверхностей помещений в отсутствии людей. Эффективное средство для профилактики и борьбы с инфекционными болезнями, микробами, бактериями, вирусами. Дополняют обязательное соблюдение действующих санитарных норм и правил по устройству и содержанию помещений в системе здравоохранения, в лечебно-профилактических, санаторно-курортных и детских учреждениях, в спортивных комплексах.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Принцип действия основан на бактерицидном воздействии&amp;nbsp;УФ-С излучения с длиной волны 254 нм, которое обеспечивается использованием в облучателях безозонових ламп TUV30 производства фирмы Philips.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;line-height: 1.5em; margin-top: 1em; margin-bottom: 1em; color: rgb(76, 76, 76); font-family: Verdana, Arial, Helvetica, sans-serif; text-align: justify;&quot;&gt;Передвижные облучатели предназначены для обеззараживания воздуха в помещениях с большой площадью. Круговое размещение ламп способствует увеличению эффективности обеззараживания. Возможен вариант изготовления с таймером по желанию клиента.&lt;/p&gt;\r\n', '', '', ''),
(179, 2, 'Облучатель рециркулятор ОРБ 5-30', '&lt;p&gt;Облучатель-рециркулятор закрытого типа ОРБПе 5-30 предназначен для обеззараживания воздуха помещений как в отсутствии так и в присутствии людей.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Облучатель-рециркулятор закрытого типа передвижной ОРБПе 5-30 используют для профилактики и борьбы с инфекционными болезнями, микробами, бактериями, вирусами. Дополняют обязательное соблюдение действующих санитарных норм и правил по устройству и содержанию помещений в системе здравоохранения, в лечебно-профилактических, санаторно-курортных и детских учреждениях, в спортивных комплексах и т.д.&lt;/p&gt;\r\n\r\n&lt;p&gt;Принцип действия рециркуляторов основан на покачивании воздуха вдоль безозоновых бактерицидных ламп фирмы «Philips» (длина волны 254 нм). Воздух, нагнетаемый в корпус вентиляторами, попадает под бактерицидное облучение, которое нейтрализует активность присутствующих в воздухе микроорганизмов. Эффективность дезинфекции повышается за счет того, что бактерии и микроорганизмы находясь в хаотическом движении в замкнутом контуре, подвергаются многократной обработке.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Напольный облучатель-рециркулятор ОРБПе 5-30 разработан и изготовлен с использованием современных материалов и комплектующих. На передней панели установлен пульт управления с таймером, в котором запрограммированы функции: суммирование наработки часов горения бактерицидных ламп; увеличение в автоматическом режиме времени обеззараживания в зависимости от снижения бактерицидного потока ламп после 1/3 и 2/3 часов их горения, индикатор показывает наработку часов ламп.&lt;/p&gt;\r\n\r\n&lt;p&gt;Не имеет аналогов в Украине. Незаменим в реанимационных палатах, ожоговых центрах, на станциях переливания крови, в родильных залах, везде где есть необходимость обработки больших объемов воздуха в присутствии людей.&lt;/p&gt;\r\n', '', '', ''),
(180, 2, 'Облучатель рециркулятор ОРБ 2-30', '&lt;p&gt;Бактерицидные облучатели - рециркуляторы закрытого типа&lt;/p&gt;\r\n\r\n&lt;p&gt;Облучатель-рециркуляторы закрытого типа ОРБ 2-30 «Фиолет 03» и ОРБ 2-30 «Фиолет Т04»&lt;/p&gt;\r\n\r\n&lt;p&gt;Предназначены для обеззараживания воздуха помещений как в отсутствии так и в присутствии людей. Используют для профилактики и борьбы с инфекционными болезнями, микробами, бактериями, вирусами. Дополняют обязательное соблюдение действующих санитарных норм и правил по устройству и содержанию помещений в системе здравоохранения, в лечебно-профилактических, санаторно- курортных и детских учреждениях, в спортивных комплексах и т.д&lt;/p&gt;\r\n\r\n&lt;p&gt;Принцип действия рециркуляторов основан на покачивании воздуха вдоль безозоновых бактерицидных ламп фирмы «Philips» (длина волны 254 нм). Воздух, нагнетаемый в корпус вентиляторами, попадает под бактерицидное облучение, которое нейтрализует активность присутствующих в воздухе микроорганизмов. Эффективность дезинфекции повышается за счет того, что бактерии и микроорганизмы находясь в хаотическом движении в замкнутом контуре, подвергаются многократной обработке.&lt;/p&gt;\r\n', '', '', ''),
(181, 2, 'Облучатель рециркулятор ОРБ 2-30', '&lt;p&gt;Бактерицидные облучатели - рециркуляторы закрытого типа&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Облучатель-рециркуляторы закрытого типа ОРБ 2-30 «Фиолет 03» и ОРБ 2-30 «Фиолет Т04»&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Предназначены для обеззараживания воздуха помещений как в отсутствии так и в присутствии людей. Используют для профилактики и борьбы с инфекционными болезнями, микробами, бактериями, вирусами. Дополняют обязательное соблюдение действующих санитарных норм и правил по устройству и содержанию помещений в системе здравоохранения, в лечебно-профилактических, санаторно- курортных и детских учреждениях, в спортивных комплексах и т.д.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Принцип действия рециркуляторов основан на покачивании воздуха вдоль безозоновых бактерицидных ламп фирмы «Philips» (длина волны 254 нм). Воздух, нагнетаемый в корпус вентиляторами, попадает под бактерицидное облучение, которое нейтрализует активность присутствующих в воздухе микроорганизмов. Эффективность дезинфекции повышается за счет того, что бактерии и микроорганизмы находясь в хаотическом движении в замкнутом контуре, подвергаются многократной обработке.&lt;/p&gt;\r\n', '', '', ''),
(182, 2, 'Фильтр обеззоленный d=18 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Характеристики:&lt;/span&gt;&lt;br style=&quot;border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Повышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(183, 2, 'Фильтр обеззоленный d=15 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', ''),
(184, 2, 'Фильтр обеззоленный d=12,5 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(185, 2, 'Фильтр обеззоленный d=11 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', ''),
(186, 2, 'Фильтр обеззоленный d=9 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', ''),
(187, 2, 'Фильтр обеззоленный d=7 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', ''),
(188, 2, 'Фильтр обеззоленный d=5,5 см (белая, красная, синяя лента) (уп.100 шт)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Фильтры используются в лабораториях научно-исследовательских организаций, предприятий нефтехимической, фармацевтической, парфюмерной, пищевой, электронной и оборонной промышленности, производстве ювелирных изделий, а также в школьных лабораториях.&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nХарактеристики:&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\nПовышенная устойчивость при фильтровании горячих кислых, щелочных и нейтральных растворов. Пониженная зольность, не содержит железа.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФС — «Белая лента» — средней фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 45 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФБ — «Красная лента» — быстрой фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 25 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;Марка ФМ — «Синяя лента» — медленной фильтрации&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n1. Фильтрующая способность — не более 100 секунд&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n2. Фильтры задерживают осадок углекислого цинка&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n3. Фильтры нейтральные&lt;br style=&quot;border-color: rgb(52, 84, 128);&quot; /&gt;\r\n4. Зольность одного фильтра, (г. не более):&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;при диаметре фильтра 125 мм — 0,00040 г&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 8px 0px; border-color: rgb(52, 84, 128); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(207, 205, 210);&quot;&gt;5. Упаковка — 100 шт.&lt;/p&gt;\r\n', '', '', ''),
(189, 2, 'Трубка медицинская тип Т-1 (гладкая) d=5х1,5', '&lt;p&gt;&lt;strong style=&quot;box-sizing: border-box; outline: none; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Трубка медицинская резиновая (тип 1) предназначена&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;&amp;nbsp;для изготовления систем при получении компонентов и препаратов крови и использования в инъекционных узлах устройств переливания крови и ее компонентов (однократного применения). Размеры, мм: внутренний диаметр - 5,0; толщина стенки - 1,5.&lt;/span&gt;&lt;br style=&quot;box-sizing: border-box; outline: none; color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, sans-serif; font-size: 13px; line-height: 16.8999996185303px;&quot;&gt;Т(экспл.)= -20 + 70 С.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(190, 2, 'Трубка медицинская соединительная Т-6', '&lt;p style=&quot;color: rgb(138, 138, 138); font-family: Tahoma, Geneva, sans-serif; line-height: 18px;&quot;&gt;Страна - производитель:&amp;nbsp;&lt;span class=&quot;black&quot; style=&quot;color: rgb(67, 67, 67) !important;&quot;&gt;Россия&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(138, 138, 138); font-family: Tahoma, Geneva, sans-serif; line-height: 18px;&quot;&gt;ТС-Т-6 – это соединительная трубка, имеющая Т-образную форму, диаметром 6 мм, сс отводом в середине под углом 90°. На концах отсутствуют шлифы, но есть небольшие утолщения для надежного закрепления резиновых трубок.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(138, 138, 138); font-family: Tahoma, Geneva, sans-serif; line-height: 18px;&quot;&gt;Изделие используется в качестве разветвителя при сборке различных химических установок. Изготовлено по ГОСТ 25336-82, что обуславливает его полную совместимость с любым лабораторным оборудованием и сосудами от разных производителей.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;color: rgb(138, 138, 138); font-family: Tahoma, Geneva, sans-serif; line-height: 18px;&quot;&gt;Трубка выполнена из стекла ХС3 или НС3, подходит для агрессивных реагентов.&lt;/p&gt;\r\n', '', '', ''),
(191, 2, 'Сумка-холодильник мед.на 25 л', '&lt;p&gt;&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Предназначена для транспортировки медицинских иммунобилогических и других, требующих пониженной температуры препаратов.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Время удерживания температуры в диапазоне от 0 град.С до +8 град. не менее 8 часов при температуре окружающей среды не более +43 град.С.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;В сумке имеются специальные карманы для размещения охлаждающих элементов. После их загрузки - не более чем, через 20 мин. внутри пустой сумки-холодильника устанавливается температура - не ниже 0 град.С. Хладоэлементы хранятся в морозильнике бытового холодильника, чтобы они всегда были готовы к использованию.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Стенки сумок изготавливаются из термоизолирующего, токсикологически безопасного материала. Может дополнительно комплектоваться термоиндикатором &quot;BOMMAPK&quot;.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(192, 2, 'Сумка-холодильник мед.на 10 л', '&lt;p&gt;&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Предназначена для транспортировки медицинских иммунобилогических и других, требующих пониженной температуры препаратов.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Время удерживания температуры в диапазоне от 0 град.С до +8 град. не менее 8 часов при температуре окружающей среды не более +43 град.С.&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;В сумке имеются специальные карманы для размещения охлаждающих элементов. После их загрузки - не более чем, через 20 мин. внутри пустой сумки-холодильника устанавливается температура - не ниже 0 град.С. Хладоэлементы хранятся в морозильнике бытового холодильника, чтобы они всегда были готовы к использованию.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;br style=&quot;margin: 0px; padding: 0px; font-family: Tahoma; line-height: 15px;&quot; /&gt;\r\n&lt;span style=&quot;font-family: Tahoma; line-height: 15px;&quot;&gt;Стенки сумок изготавливаются из термоизолирующего, токсикологически безопасного материала. Может дополнительно комплектоваться термоиндикатором &quot;BOMMAPK&quot;.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(193, 2, 'Спиртовка стеклянная', '&lt;ul class=&quot;tx&quot; style=&quot;margin: 0px 0px 0px 10px; padding-right: 0px; padding-left: 10px; top: 2px; bottom: 10px; clip: rect(2px auto 10px auto); font-family: Arial, Helvetica, sans-serif; font-size: medium; color: rgb(0, 51, 102); line-height: normal;&quot;&gt;\r\n	&lt;li style=&quot;margin-left: 0px; padding-left: 0px;&quot;&gt;Стеклянная колба спиртовки СЛ-1 комплектуется втулкой, фитилем и стеклянным колпачком.&lt;/li&gt;\r\n	&lt;li style=&quot;margin-left: 0px; padding-left: 0px;&quot;&gt;Стеклянная колба спиртовки СЛ-2 комплектуется металлическим держателем, втулкой, фитилем и фенопластовым колпачком.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '', ''),
(194, 2, 'Скарификатор-копьё не стерильный', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana; line-height: normal;&quot;&gt;Скарификатор-копье предназначен для прокалывания пальца при заборе проб крови в лабораториях лечебных учреждений.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(195, 2, 'Скарификатор-копьё (стерильный)', '&lt;p&gt;&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;Скарификатор-копье - медицинский инструмент, предназначенный для прокалывания кожи пальца при взятии проб крови на анализ. Скарификаторы изготовлены из нержавеющей стали, групповая и транспортная упаковки снабжены штрих-кодами. Газовая стерилизация окисью этилена, срок годности 3 года. Скарификаторы в индивидуальной упаковке стерильны, апирогенны,&lt;/span&gt;&lt;br style=&quot;margin: 0px; padding: 0px; color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(68, 68, 68); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: normal;&quot;&gt;не токсичны, инструкция по применению размещена на коробке.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(196, 2, 'Пробка резиновая к штативу СОЭ', '&lt;p&gt;&lt;span style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot;&gt;Пробки к СОЭ-метру резиновые (Аппарату Панченкова) полые с взаимозаменяемым конусом предназначены для использования в сборе с приборами и аппаратами.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot;&gt;Пробки к СОЭ-метру типа 4 52-599/1 предназначены для установки микропипеток к СОЭ-метру в штативе к СОЭ-метру. Материал – резина, цвет – светло-серый.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot;&gt;Пробки массивные и полые с взаимозаменяемым конусом предназначены для использования в сборе с приборами и аппаратами.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot;&gt;Применяются для укупоривания различной лабораторной посуды: склянок, колб, цилиндров, пробирок и т. д.&lt;/span&gt;&lt;br style=&quot;color: rgb(61, 60, 62); font-family: Arial, Helvetica, sans-serif; font-size: 13px; line-height: 17px;&quot; /&gt;\r\n&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(197, 2, 'Пробка резиновая d=12,5 мм ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Пробки массивные и полые с взаимозаменяемым конусом предназначены для использования в сборе с приборами и аппаратами.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Применяются для укупоривания различной лабораторной посуды: склянок, колб,&amp;nbsp;цилиндров, пробирок и т. д.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(198, 2, 'Пробка резиновая d=10 мм ', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Пробки массивные и полые с взаимозаменяемым конусом предназначены для использования в сборе с приборами и аппаратами.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Применяются для укупоривания различной лабораторной посуды: склянок, колб,&amp;nbsp;цилиндров, пробирок и т. д.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(199, 2, 'Петля микробиологическая с алюминиевым держателем', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial; line-height: normal;&quot;&gt;Размеры нихромовой петли: диаметр проволоки 0,5мм; длина проволоки 90 мм ручки-держателя: диаметр проволоки 2,5-3мм; длина проволоки 200 мм Общая длина 290 мм. Изготовлены из: петля - нихром, ручка-держатель - алюминиевый сплав и силиконовая трубка. Упаковка 2 шт. Стерильна. Цельная, неразъемная конструкция.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(200, 2, 'Плита электрическая 1-конфорочная ', '&lt;div class=&quot;b-user-content&quot; data-extend=&quot;FlexibleTable&quot; id=&quot;Z57A8C311-6423-47FE-87B4-77F84291106C&quot; itemprop=&quot;description&quot; style=&quot;margin: 0px; padding: 0px; zoom: 1; font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Плита электрическая 1-конфорочная настольная. Мощность 3 кВт, Напряжение 220 В. Габаритные размеры 548х422х230 мм&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Плиты электрические промышленные настольные – модель ПЕ-Н, выпускаются с 1-й, 2-я или 4-я прямоугольными конфорками. Благодаря своим небольшим размерам настольные плиты – это идеальное решение для организации небольшой кухни ресторана, кафе, бара&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Основные элементы выполнены из нержавеющей стали.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Плиты производятся с прямоугольными конфорками размером 415х294мм.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Ступенчатые переключатели обеспечивают удобное переключение режимов нагрева конфорок.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Плоская рабочая поверхность позволяет удобно и легко перемещать наплитную посуду за счет сплошной ровной поверхности конфорок.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Ножки-опоры плиты регулируются по высоте.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;Модель ПЕ-1 Н&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;мощность 3 кВт, напряжение 220 В, вес 23 кг,&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;габаритные размеры 548х422х230,&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin: 0px 0px 0.75em; padding: 0px;&quot;&gt;квадратные конфорки&lt;/p&gt;\r\n\r\n&lt;div&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(201, 2, 'Планшет для определения групп крови', '&lt;p&gt;&lt;span style=&quot;font-family: arial, tahoma, sans-serif; line-height: 16px; text-align: justify; background-color: rgb(206, 206, 206);&quot;&gt;Планшеты предназначены для определения группы крови на плоскости по системе АВ0 и «Резус» с помощью цоликлонов. Планшеты изготовлены из покрытого белой эмалью алюминия или молочно-белого пластика. Мы предлагаем два типа конфигурации: на 70 лунок для проведения 10 исследований и на 4 лунки для типирования группы крови отдельного пациента. Планшет на 10 исследований имеет овальные лунки специальной глубины, позволяющей смешивать реагент и кровь покачиванием без использования стеклянной палочки или металлических шариков. Планшет для определения группы крови одного пациента имеет круглые лунки и рассчитан на однократное использование&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(202, 2, 'Планшет серологический 72 лунких 2 мл', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 21.7856006622314px; background-color: rgb(233, 242, 220);&quot;&gt;Планшет для серологических реакций представляет собой полистирольную пластину с 72 круглодонными лунками. Планшет предназначен для проведения иммунологических реакций агглютинации или преципитации. Дно ячейки круглое. Коэффициент светопропускания дна ячейки не менее 88%.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(203, 2, 'Планшет 96 лунок V образный', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Tahoma, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;Планшеты изготовлены из полистирола. Имеют 96 лунок различной формы. Бывают стерильные и не стерильные. Стерильные планшеты идут в комплекте с крышкой. Размер 86х128мм.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(204, 2, 'Пипетка-контейнер со скарификатором', '&lt;p&gt;&lt;span style=&quot;font-family: Arial, Tahoma, Helvetica, ''Liberation Sans'', sans-serif; font-size: 13px; line-height: 16.25px;&quot;&gt;Пипетка-контейнер для забора крови одноразовая со скарификатором, стерильно&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(205, 2, 'Перчатки латексные н/с', '&lt;p&gt;Перчатки латексные для стерильного осмотра.&lt;/p&gt;\r\n', '', '', ''),
(206, 2, 'Наконечник 200 мкл универсальный (уп.1000 шт)', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;strong style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;Универсальный &amp;nbsp;наконечник для автоматических пипеток 200 мкл (жёлтый).&lt;/strong&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;Наконечники специально разработаны для использования с дозаторами ведущих мировых производителей. Упаковка 1000 штук.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(207, 2, 'Иммерсионное масло 100мл', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;В микроскопии, метод погружения в масло, используется для увеличения разрешающей способности микроскопа. Это достигается путем погружения объектива и образца в прозрачное масло с высоким индексом преломления, тем самым увеличивая апертуру объектива.&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;Удельный вес: 0,93&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;Показатель преломления при 20°С: 1,5152&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;Величина светопропускания р-ра масла, % не менее: 90&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;Вязкость при 20°С: 385&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;br style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 14px; line-height: 21px;&quot;&gt;Соответствует ГОСТу 13739-78&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(208, 2, 'Лупа с ручкой', '&lt;p&gt;Лупа для увеличения элементов, помогает точнее рассмотреть проблему, если таковая имеется.&lt;/p&gt;\r\n', '', '', ''),
(209, 2, 'Кювета 100 мм (к Кфк, КФО, ФЭК)', '&lt;p style=&quot;margin: 8px 0px; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Надёжные кюветы&amp;nbsp;высотой 40 мм, ширина&amp;nbsp;24 мм, длина оптического пути&amp;nbsp;L=100мм. Стандартные кюветы для фотометров КФК-2, КФК-3 и их современных модификаций.&amp;nbsp;Используются&amp;nbsp;для измерений оптической плотности растворов в диапазоне 320-2500 нм.&lt;/p&gt;\r\n', '', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(210, 2, 'Кювета 50 мм(к Кфк, КФО, ФЭК)', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Кюветы изготовлены из специального оптического стекла, по технологии спекания.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Конструкция кюветы состоит из трёх элементов: U-образный элемент и две боковые стенки.&lt;/span&gt;&lt;br style=&quot;border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Новая технология гарантирует прочность кювет и долгий срок службы, в отличии от кювет состоящих из пяти элементов: дно и 4 боковые стенки. Химически устойчивы к действию кислот (кроме плавиковой кислоты).&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(211, 2, 'Кювета  30 мм(к Кфк, КФО, ФЭК)', '&lt;p&gt;&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Кюветы изготовлены из специального оптического стекла, по технологии спекания.&lt;/span&gt;&lt;br style=&quot;text-align: justify; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Конструкция кюветы состоит из трёх элементов: U-образный элемент и две боковые стенки.&lt;/span&gt;&lt;br style=&quot;text-align: justify; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Новая технология гарантирует прочность кювет и долгий срок службы, в отличии от кювет состоящих из пяти элементов: дно и 4 боковые стенки. Химически устойчивы к действию кислот (кроме плавиковой кислоты).&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(212, 2, 'Кювета 5 мм(Кфк, КФО,ФЭК)', '&lt;p&gt;&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Кюветы изготовлены из специального оптического стекла, по технологии спекания.&lt;/span&gt;&lt;br style=&quot;text-align: justify; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Конструкция кюветы состоит из трёх элементов: U-образный элемент и две боковые стенки.&lt;/span&gt;&lt;br style=&quot;text-align: justify; border-color: rgb(157, 185, 218); color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot; /&gt;\r\n&lt;span style=&quot;text-align: justify; color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px;&quot;&gt;Новая технология гарантирует прочность кювет и долгий срок службы, в отличии от кювет состоящих из пяти элементов: дно и 4 боковые стенки. Химически устойчивы к действию кислот (кроме плавиковой кислоты).&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(213, 2, 'Контейнер для хранения и транспортировки предметных стёкол на 25 ячеек', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp; Контейнер для &amp;nbsp;транспортировки и хранения предметных стёкол на&amp;nbsp;25 мест, надёжно защищают от ударов, царапин, удобные для пересылки. Материал -полипропилен.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(214, 2, 'Контейнер для хранения и транспортировки предметных стёкол на 50 ячеек', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; line-height: normal;&quot;&gt;&amp;nbsp;Контейнер для &amp;nbsp;транспортировки и хранения предметных стёкол на&amp;nbsp;50 мест, надёжно защищают от ударов, царапин, удобные для пересылки. Материал -полипропилен.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(253, 2, 'Шприц 20 мл Chirana', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Arial, sans-serif; font-size: 13px; line-height: 18.0160808563232px; background-color: rgb(245, 245, 245);&quot;&gt;Стерильный одноразовый шприц 20мл, предназначен для введения инъекций, ТМ &quot;Chirana T.Injecta a.s.&quot; производства Словакии.&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(254, 2, 'Шприц &quot;Гемопласт&quot;', '&lt;p&gt;Используется для внутривенных и внутримышечных инъекций.&lt;/p&gt;\r\n', '', '', ''),
(255, 2, ' Пипетка мерная с делениями на полный слив', '', '', '', ''),
(256, 2, ' Пипетка к эритрогенометру Сали', '', '', '', ''),
(257, 2, ' Пипетка к СОЭ — метру (капилляр Панченкова)', '', '', '', ''),
(258, 2, 'Пипетка Пастера', '', '', '', ''),
(259, 2, 'Шприц ВД', '&lt;p&gt;Используется для инъекций&lt;/p&gt;\r\n', '', '', ''),
(260, 2, ' Пипетка без делений Мора', '', '', '', ''),
(261, 2, 'Пикнометр', '', '', '', ''),
(262, 2, ' Микропипетка капиллярная', '', '', '', ''),
(263, 2, 'Универсальная индикаторная бумага ', '', '', '', ''),
(264, 2, 'Микробюретка ', '', '', '', ''),
(265, 2, 'ОК-тест', '', '', '', ''),
(266, 2, 'Мензурка', '', '', '', ''),
(267, 2, 'Тетрафан', '', '', '', ''),
(268, 2, 'Рулон (без липкой ленты со складкой) ', '', '', '', ''),
(269, 2, 'Кювета для фотометрии', '', '', '', ''),
(270, 2, 'Пентафан', '', '', '', ''),
(271, 2, 'нонафан', '', '', '', ''),
(272, 2, 'Кетофан', '', '', '', ''),
(273, 2, 'Иктофан', '', '', '', ''),
(274, 2, 'декафан', '', '', '', ''),
(275, 2, 'Гексофан', '', '', '', ''),
(276, 2, 'Альбуфан', '', '', '', ''),
(277, 2, 'Колба мерная', '', '', '', ''),
(278, 2, 'Кетотест', '', '', '', ''),
(279, 2, 'Глюкотест', '', '', '', ''),
(280, 2, 'Гемоглан', '', '', '', ''),
(281, 2, 'Камера Фукса-Розенталя', '', '', '', ''),
(282, 2, 'Ацетон-тест', '', '', '', ''),
(283, 2, 'Тест-системы DIA HСV ', '', '', '', ''),
(284, 2, 'Камера Горяева секционная', '', '', '', ''),
(285, 2, 'Тест-системы DIA HBV ', '', '', '', ''),
(286, 2, 'Набор контрольных растворов гемоглобинцианида ', '', '', '', ''),
(287, 2, 'Контроль суспензий эритроцитов ', '', '', '', ''),
(288, 2, 'Контроль суспензий лейкоцитов ', '', '', '', ''),
(289, 2, 'Биоконт С', '', '', '', ''),
(290, 2, 'Биоконт ГК', '', '', '', ''),
(291, 2, 'Трость деревянная с прямой ручкой', '', '', '', ''),
(292, 2, 'Костыли деревянные для детей', '', '', '', ''),
(293, 2, 'Костыли деревянные для подростков', '', '', '', ''),
(294, 2, 'Костыли деревянные для взрослых', '', '', '', ''),
(295, 2, 'Ходунки для взрослых', '&lt;p&gt;Не складывающиеся, регулируемые по высоте.&lt;/p&gt;\r\n', '', '', ''),
(296, 2, 'Ходунки для взрослых на колесах', '&lt;p&gt;Складывающиеся, регулируемые по высоте.&lt;/p&gt;\r\n', '', '', ''),
(297, 2, 'Ходунки для взрослых КРС', '&lt;p&gt;Складывающиеся, регулируемые по высоте, передвижные.&lt;/p&gt;\r\n', '', '', ''),
(298, 2, 'Ходунки для взрослых ', '&lt;p&gt;не складные, не регулируемые&lt;/p&gt;\r\n', '', '', ''),
(299, 2, ' Костыль локтевой детский с раздвижной ручкой', '', '', '', ''),
(300, 2, ' Костыль локтевой регулируемый по высоте 4-х опорный', '', '', '', ''),
(301, 2, ' Трость регулируемая по высоте 4-х опорная', '', '', '', ''),
(302, 2, ' Трость стальная ', '', '', '', ''),
(303, 2, ' Трость алюминиевая  с УПС', '', '', '', ''),
(304, 2, ' Трость алюминиевая телескопическая С УПС', '', '', '', ''),
(305, 2, ' Трость алюминиевая телескопическая', '', '', '', ''),
(306, 2, 'Трость алюминиевая', '', '', '', ''),
(307, 2, 'Трость деревянная', '', '', '', ''),
(308, 2, ' Костыль локтевой с раздвижной ручкой', '', '', '', ''),
(309, 2, ' Костыль подмышечный для детей алюминиевый', '', '', '', ''),
(310, 2, ' Костыль подмышечный для подростка алюминиевый', '', '', '', ''),
(311, 2, 'Костыль подмышечный для взрослых стальной', '', '', '', ''),
(312, 2, 'Экстракт кормовых дрожжей ', '', '', '', ''),
(313, 2, 'Сахароза', '', '', '', ''),
(314, 2, 'Пептон ферментативный', '', '', '', ''),
(315, 2, 'Эозин по Май-Грюнвальду', '', '', '', ''),
(316, 2, 'Азур-эозин по Романовскому', '', '', '', ''),
(317, 2, 'Титановый желтый индикатор', '', '', '', ''),
(318, 2, 'Хлороформ', '', '', '', ''),
(319, 2, 'Уксусная кислота ледяная', '', '', '', ''),
(320, 2, 'Трихлоруксусная кислота', '', '', '', ''),
(321, 2, 'Тальк', '', '', '', ''),
(322, 2, 'Сульфосалициловая кислота', '', '', '', ''),
(323, 2, 'Спирт изопропиловый', '', '', '', ''),
(324, 2, 'Сода пищевая', '', '', '', ''),
(325, 2, 'Салициловая кислота', '', '', '', ''),
(326, 2, 'Реактив Эрлиха ', '', '', '', ''),
(327, 2, 'Реактив Несслера', '', '', '', ''),
(328, 2, 'Реактив Гисса', '', '', '', ''),
(329, 2, 'Полиэтиленгликоль ', '', '', '', ''),
(330, 2, 'Перекись водорода 35% ', '', '', '', ''),
(331, 2, 'Парафин', '', '', '', ''),
(332, 2, 'О-фосфорная кислота', '', '', '', ''),
(333, 2, 'Озокерит', '', '', '', ''),
(334, 2, 'Натрий хлористый', '', '', '', ''),
(335, 2, 'Натрий углекислый', '', '', '', ''),
(336, 2, 'Натрий фосфорнокислый 2-х замещенный', '', '', '', ''),
(337, 2, 'Натрий тетроборнокислый,10-водный', '', '', '', ''),
(338, 2, 'Натрий лимоннокислый 3-х замещенный', '', '', '', ''),
(339, 2, 'Натрий едкий', '', '', '', ''),
(340, 2, 'Натрий азотнокислый ', '', '', '', ''),
(341, 2, 'Муравьиная кислота', '', '', '', ''),
(342, 2, 'Медный купорос', '', '', '', ''),
(343, 2, 'Магний сернокислый', '', '', '', ''),
(344, 2, 'Лимонная кислота', '', '', '', ''),
(345, 2, 'Крахмал водорастворимый ', '', '', '', ''),
(346, 2, 'Калий хлористый', '', '', '', ''),
(347, 2, 'Калий фосфорнокислый 2 х-замещенный', '', '', '', ''),
(348, 2, 'Калий фосфорнокислый 1 замещенный', '', '', '', ''),
(349, 2, 'Калий лимоннокислый 3-х замещенный', '', '', '', ''),
(350, 2, 'Калий едкий', '', '', '', ''),
(351, 2, 'Йод кристаллический', '', '', '', ''),
(352, 2, 'Йод кристаллический', '', '', '', ''),
(353, 2, 'Глицерин', '', '', '', ''),
(354, 2, 'Гидроксиламин солянокислый', '', '', '', ''),
(355, 2, 'Вазелиновое масло', '', '', '', ''),
(356, 2, 'Борная кислота', '', '', '', ''),
(357, 2, 'Ацетилацетон', '', '', '', ''),
(358, 2, 'Аммоний молибденовокислый', '', '', '', ''),
(359, 2, 'Аммиак водный', '', '', '', ''),
(360, 2, 'Азотная кислота', '', '', '', ''),
(361, 2, 'Электрод-прищепка', '', '', '', ''),
(362, 2, 'Электрод-присоска', '', '', '', ''),
(363, 2, 'Электрокардиограф I канальный ', '', '', '', ''),
(364, 2, 'Тонометр полуавтомат', '', '', '', ''),
(365, 2, 'Тонометр автоматический  с индикатором аритмии ', '', '', '', ''),
(366, 2, 'Тонометр механический ', '&lt;p&gt;с фонендоскопом с увеличенной манжетой&lt;/p&gt;\r\n', '', '', ''),
(367, 2, 'Тонометр механический с фонендоскопом', '', '', '', ''),
(368, 2, 'Тонометр механический с фонендоскопом', '', '', '', ''),
(369, 2, 'Тонометр внутриглазного давления Маклакова', '', '', '', ''),
(370, 2, 'Таблица Рабкина', '', '', '', ''),
(371, 2, 'Стетоскоп акушерский деревянный', '', '', '', ''),
(372, 2, 'Стетоскоп педиатрический 2-х сторонний', '', '', '', ''),
(373, 2, 'Стетофонендоскоп Раппопорт', '', '', '', ''),
(374, 2, 'Рефлектор лобный Симановского', '', '', '', ''),
(375, 2, 'Отсасыватель медицинский электрический ', '', '', '', ''),
(376, 2, 'Оправа пробная для линз универсальная', '', '', '', ''),
(377, 2, 'Негатоскоп ', '', '', '', ''),
(378, 2, 'Набор пробных линз', '', '', '', ''),
(379, 2, 'Мундштук к Алкотестеру ', '', '', '', ''),
(380, 2, 'Манжета большая для плеча к тонометру', '', '', '', ''),
(381, 2, 'Манжета для младенцев ', '', '', '', ''),
(382, 2, 'Манжета детская ', '', '', '', ''),
(383, 2, 'Индикатор внутриглазного давления', '', '', '', ''),
(384, 2, 'Весы электронные для новорожденных ', '', '', '', ''),
(385, 2, 'Весы медицинские', '', '', '', ''),
(386, 2, 'Аппарат Ротта с осветителем', '', '', '', ''),
(387, 2, 'Аппарат для лечения псориаза', '', '', '', ''),
(388, 2, 'Аппарат для определения алкоголя', '', '', '', ''),
(389, 2, 'Аппарат для определения уровня сахара в крови ', '', '', '', ''),
(390, 2, 'Электроды для электротерапии', '', '', '', ''),
(391, 2, 'Часы процедурные ', '', '', '', ''),
(392, 2, 'Тубусы к аппарату  ', '', '', '', ''),
(393, 2, 'Тубусы к аппарату ', '', '', '', ''),
(394, 2, 'Стельки магнитные', '', '', '', ''),
(395, 2, 'Ростомер с электронными весами', '', '', '', ''),
(396, 2, 'Ростомер напольный', '', '', '', ''),
(397, 2, 'Ростомер для новорождённых', '', '', '', ''),
(398, 2, 'Парафинонагреватель ', '', '', '', ''),
(399, 2, 'Очки защитные (для солярия)', '', '', '', ''),
(400, 2, 'Облучатель ультразвуковой переносной  ', '', '', '', ''),
(401, 2, 'Облучатель ртутно-кварцевый на штативе ', '', '', '', ''),
(402, 2, 'Облучатель ртутно-кварцевыйнастольный', '', '', '', ''),
(403, 2, 'Облучатель физиотерапевтический ', '', '', '', ''),
(404, 2, 'Облучатель Мишина (синяя лампа)', '', '', '', ''),
(405, 2, 'Маска к ингаляторам ', '', '', '', ''),
(406, 2, 'Ингалятор-набулайзер &quot;Omron&quot;', '', '', '', ''),
(407, 2, 'Ингалятор ультразвуковой ', '', '', '', ''),
(408, 2, 'Ингалятор компрессорный ', '', '', '', ''),
(409, 2, 'Ингалятор ультразвуковой на 2 пациента ', '', '', '', ''),
(410, 2, 'Ингалятор ультразвуковой (Россия)', '', '', '', ''),
(411, 2, 'Ингалятор ультразвуковой Туман-1', '', '', '', ''),
(412, 2, 'Грелка электрическая ', '', '', '', ''),
(413, 2, 'Аромамедальон', '', '', '', ''),
(414, 2, 'Аппарат Долфин ', '&lt;p&gt;Для промывания носа&lt;/p&gt;\r\n', '', '', ''),
(415, 2, 'Аппарат Фролова', '', '', '', ''),
(416, 2, 'Аппарат УФО кварцевый ', '', '', '', ''),
(417, 2, 'Аппарат диодинамический (ДДТ)', '', '', '', ''),
(418, 2, 'Аппарат Боброва с притёртой пробкой ', '', '', '', ''),
(419, 2, 'Аппарат УВЧ-70', '', '', '', ''),
(420, 2, 'Аппарат ультразвуковой терапии (универсальный)', '', '', '', ''),
(421, 2, 'Аппарат портативный магнитотерапевтический ', '', '', '', ''),
(422, 2, 'Аппарат магнитотерапевтический с бегущим импульсным полем', '', '', '', ''),
(423, 2, 'Аппарат для магнитотерапии и магнитофореза', '', '', '', ''),
(424, 2, 'Аппарат квантовой терапии ', '', '', '', ''),
(425, 2, 'Аппарат ультразвуковой терапии ', '', '', '', ''),
(426, 2, 'Аппарат для УВЧ-терапии ', '', '', '', ''),
(427, 2, 'Аппарат для дарсонвализации (портативный)', '', '', '', ''),
(428, 2, 'Аппарат для дарсонвализации (стационарный)', '', '', '', ''),
(429, 2, 'Аппарат для гальванизации и электрофореза  (Завет)', '', '', '', ''),
(430, 2, 'Аппарат &quot;Интратон-3&quot;', '', '', '', ''),
(431, 2, 'Аппарат &quot;Амплипульс-5&quot;', '', '', '', ''),
(432, 2, 'Алкотестер &quot;Алконт 01-СУ&quot;', '', '', '', ''),
(433, 2, 'Шпатель № 3 фарфоровый', '', '', '', ''),
(434, 2, 'Чаша выпарительная фарфоровая', '', '', '', ''),
(435, 2, 'Тигель  фарфоровый', '', '', '', ''),
(436, 2, 'Ступка  фарфоровая', '', '', '', ''),
(437, 2, 'Пестик фарфоровый', '', '', '', ''),
(438, 2, 'Ложка фарфоровая', '', '', '', ''),
(439, 2, 'Кружка с ручкой фарфоровая', '', '', '', ''),
(440, 2, 'Эксикатор с краном 210 мм  ', '', '', '', ''),
(441, 2, 'Эксикатор без крана ', '', '', '', ''),
(442, 2, 'Чашка Петри', '', '', '', ''),
(443, 2, 'Холодильник шариковый', '', '', '', ''),
(444, 2, 'Холодильник спиральный', '', '', '', ''),
(445, 2, 'Стекло предметное с 1 лункой', '', '', '', ''),
(446, 2, 'Стекло предметное с полем для записи ', '', '', '', ''),
(447, 2, 'Стекло предметное ', '', '', '', ''),
(448, 2, 'Стекло покровное к камере Горяева ', '', '', '', ''),
(449, 2, 'Стекло покровное 18х18;24х24', '', '', '', ''),
(450, 2, 'Спиртовка лабораторная', '', '', '', ''),
(451, 2, 'Часы сигнальные', '', '', '', ''),
(452, 2, 'Центрифуга лабораторная', '', '', '', ''),
(453, 2, 'Центрифуга лабораторная  &quot;Элекон&quot;', '', '', '', ''),
(454, 2, 'ТЭН’ы к дистилятору', '', '', '', ''),
(455, 2, 'ТЭН’ы к дистилятору', '', '', '', ''),
(456, 2, 'Тест-полоски к »Глюкофоту плюс»', '', '', '', ''),
(457, 2, 'Термостат электрический суховоздушный', '', '', '', ''),
(458, 2, 'Термостат с прозрачными стенками', '', '', '', ''),
(459, 2, 'Термостат водяной', '', '', '', ''),
(460, 2, 'Счётчик механический лейкоцитарный формулы крови клавишный', '', '', '', ''),
(461, 2, 'Счётчик электронный »Стимул+» лейкоцитарный формулы крови', '', '', '', ''),
(462, 2, 'Сумка-укладка лаборанта', '', '', '', ''),
(463, 2, 'Секундомер', '', '', '', ''),
(464, 2, 'Разновесы', '', '', '', ''),
(465, 2, 'Очки защитные', '', '', '', ''),
(466, 2, 'Наконечники универсальные (уп.1000 шт)', '', '', '', ''),
(467, 2, 'Микроскоп бинокулярный XSM', '', '', '', ''),
(468, 2, ' Микроскоп монокулярный (аналог Р11)', '', '', '', ''),
(469, 2, 'Лупа с подсветкой', '', '', '', ''),
(470, 2, ' Лупа на подставке', '', '', '', ''),
(471, 2, ' Лупа с ручкой', '', '', '', ''),
(472, 2, 'Зажим Гофмана; зажим Мора (для резиновых трубок)', '', '', '', ''),
(473, 2, ' Дозатор 8-ми канальный от 30 до 300 мкл', '', '', '', ''),
(474, 2, ' Дозатор переменного объёма', '', '', '', ''),
(475, 2, 'Дозатор постоянного объёма 10 мкл; 20 мкл; 1000 мкл', '', '', '', ''),
(476, 2, 'Глюкометр »Глюкофот плюс»', '', '', '', ''),
(477, 2, 'Гири 0,5 кг; 1 кг; 2 кг', '', '', '', ''),
(478, 2, 'Гигрометр ВИТ-1; ВИТ-2', '', '', '', ''),
(479, 2, 'Гемоглобинометр »Минигем-540»', '', '', '', ''),
(480, 2, 'Весы ВР-1, ВР-5', '', '', '', ''),
(481, 2, 'Весы ВТ-200', '', '', '', ''),
(482, 2, 'Баня водяная с электроподогревом', '', '', '', ''),
(483, 2, ' Аквадистиллятор ДЭ-25М »Завет»', '', '', '', ''),
(484, 2, ' Аквадистиллятор ДЭ-10М »Завет» ', '', '', '', ''),
(485, 2, ' Аквадистиллятор ДЭ-04М »Завет»', '', '', '', ''),
(486, 2, ' Аквадистиллятор ДЭ-25 ', '', '', '', ''),
(487, 2, ' Аквадистиллятор ДЭ-10', '', '', '', ''),
(488, 2, ' Аквадистиллятор ДЭ4-02', '', '', '', ''),
(489, 2, ' Языкодержатель', '', '', '', ''),
(490, 2, 'Штопор для захватывания фибромиом матки №2;№3', '', '', '', ''),
(491, 2, 'Щипцы гортанные для извлечения инородного тела', '', '', '', ''),
(492, 2, ' Щипцы геморроидальные окончатые прямые;изогнутые', '', '', '', ''),
(493, 2, ' Щипцы Кагаловского для захватывания плевры', '', '', '', ''),
(494, 2, 'Щипцы кишечные окончатые для взрослых', '', '', '', ''),
(495, 2, 'Щипцы тампонные носовые ', '', '', '', ''),
(496, 2, 'Щипцы – пулёвки однозубые', '', '', '', ''),
(497, 2, 'Щипцы маточные двухзубчатые пр.(по Мюзо) №1;№2', '', '', '', ''),
(498, 2, 'Щипцы-кусачки костные шарнирные по Листону ', '', '', '', ''),
(499, 2, 'Щипцы-кусачки костные с прямыми губками из.по плоскости по Листону ', '', '', '', ''),
(500, 2, 'Щипцы-кусачки по Янсену', '', '', '', ''),
(501, 2, 'Щипцы для захватывания и удержания трубчатых костей', '', '', '', ''),
(502, 2, 'Щипцы для извлечения осколков кости ', '', '', '', ''),
(503, 2, 'Шприц многоразовый 1мл;2 мл;5 мл; 10 мл; 20', '', '', '', ''),
(504, 2, 'Шприц Жанэ', '', '', '', ''),
(505, 2, ' Шприц для внутриматочных вливаний (компл.)', '', '', '', ''),
(506, 2, 'Шприц для внутригортанных вливаний', '', '', '', ''),
(507, 2, 'Шпатель для цемента', '', '', '', ''),
(508, 2, 'Шпатель металлический двухсторонний прямой для языка ', '', '', '', ''),
(509, 2, 'Шпатель гинекологический типа Эйра', '', '', '', ''),
(510, 2, 'Шина Крамера на руку', '', '', '', ''),
(511, 2, 'Шина Крамера лестничная', '', '', '', ''),
(512, 2, 'Угревыдавливатель', '', '', '', ''),
(513, 2, 'Трубка трахеотомическая №3,4 металлическая', '', '', '', ''),
(514, 2, 'Трубка трахеотомическая №1-6 пласт.', '', '', '', ''),
(515, 2, 'Пакет самогерметизируемый  для стерилизации', '', '', '', ''),
(516, 2, 'Камера ультрафиолетовая «Стандарт» (для хранения стерильных инструментов)', '', '', '', ''),
(517, 2, 'Облучатель бактерицидный ОБН-150 с 2шт. Лампами Китай', '', '', '', ''),
(518, 2, 'Облучатель бактерицидный ОБН-75 с лампой ', '', '', '', ''),
(519, 2, 'Лоток', '', '', '', ''),
(520, 2, 'Лоток прямоугольный эмалированный ', '', '', '', ''),
(521, 2, 'Лоток почкообразный эмалированный', '', '', '', ''),
(522, 2, 'Лампа бактерицидная TUV — 30 ', '', '', '', ''),
(523, 2, 'Лампа бактерицидная TUV — 15 ', '', '', '', ''),
(524, 2, 'Коробка стерилизационная круглая КСК', '', '', '', ''),
(525, 2, 'Емкость пластиковая', '', '', '', ''),
(526, 2, 'Емкость для хранения термометров', '', '', '', ''),
(527, 2, 'Емкость для хранения и дезинфекции использованных игл', '', '', '', ''),
(528, 2, 'Кипятильник єлектрический Э-40', '', '', '', ''),
(529, 2, 'Кипятильник стерилизационный', '', '', '', ''),
(530, 2, 'Индикатор стерилизации» Стеритест» (для внутр.проверки) 120*, 132*,160*, 180* (1000 опр.)', '', '', '', ''),
(531, 2, 'Индикатор стерилизации 120*, 132*,160*, 180* (1000 опр.)', '', '', '', ''),
(532, 2, 'Пробирка  химическая', '', '', '', ''),
(533, 2, 'ЕДПО 10л длин. Для эндоскопов', '', '', '', ''),
(534, 2, 'Троакар полостной', '', '', '', ''),
(535, 2, 'Пипетка мерная с делениями на полный слив ', '', '', '', ''),
(536, 2, 'Тазомер металлический', '', '', '', ''),
(537, 2, 'Пипетка к эритрогенометру Сали', '', '', '', ''),
(538, 2, 'Стетоскоп деревянный акушерский', '', '', '', ''),
(539, 2, 'Скобки Мишеля (уп. — 100 шт.)', '', '', '', ''),
(540, 2, 'ЕДПО', '', '', '', ''),
(541, 2, 'Пипетка к СОЭ — метру ', '', '', '', ''),
(542, 2, 'Делатест фл 100 мл.', '', '', '', ''),
(543, 2, 'Скальпель для операций в глубоких полостях', '', '', '', ''),
(544, 2, 'Скальпель глазной средний СБ-3 и СОЗ', '', '', '', ''),
(545, 2, 'Пипетка мора', '', '', '', ''),
(546, 2, 'Бумага для стерилизации «Крафт»', '', '', '', ''),
(547, 2, ' Скальпель о/к брюшистый средний', '', '', '', ''),
(548, 2, 'Роторасширитель винтовой', '', '', '', ''),
(549, 2, 'Азопирамовая проба', '', '', '', ''),
(550, 2, 'Микропипетки капиллярные ', '', '', '', ''),
(551, 2, 'Ранорасширитель нейрохирургический с острыми губками', '', '', '', ''),
(552, 2, 'Капрон крученый в косичках (синий,белый), моток 50м,все размеры', '', '', '', ''),
(553, 2, 'Капрон хирургический стерильный без иглы L=1,25м', '', '', '', ''),
(554, 2, 'Ранорасширитель реечный для грудной полости ', '', '', '', ''),
(555, 2, 'Расширитель канала шейки матки по Гигару №3-17', '', '', '', ''),
(556, 2, 'Шёлк хирургический стерильный без иглы L=1,25м', '', '', '', ''),
(557, 2, 'Ранорасширитель нейрохирургич.универсальный Егорова-Фрайдина', '', '', '', ''),
(558, 2, 'Колбы мерные ', '', '', '', ''),
(559, 2, 'Шёлк стерильный с атравматической иглой L=0,75м (размеры 1; 2 ; 3 ; 4 ; 6 ; 8)', '', '', '', ''),
(560, 2, 'Капрон стерильный с атравматической иглой L=0,75м (размеры 1,5 ; 2,5 ; 4 ; 5)', '', '', '', ''),
(561, 2, 'Проводник для проволочных пил', '', '', '', ''),
(562, 2, 'Кетгут полированный стерильный без иглы L=1,0м все размеры', '', '', '', ''),
(563, 2, 'Кетгут полированный стерильный с атравматической иглой L=0,75м все размеры', '', '', '', ''),
(564, 2, 'Пила листовая с пластмассовой ручкой', '', '', '', ''),
(565, 2, 'Бюретка  без крана', '', '', '', ''),
(566, 2, 'Пила Джигли', '', '', '', ''),
(567, 2, 'Пинцет эпиляционный', '', '', '', ''),
(568, 2, 'Пинцет зубчато-лапчатый', '', '', '', ''),
(569, 2, 'Капрон хирургический н/с (размер 2,5 ; 4,5)', '', '', '', ''),
(570, 2, 'Пинцет стоматологический горизонтально-изогнутый', '', '', '', ''),
(571, 2, 'Пинцет', '', '', '', ''),
(572, 2, 'Игла хирургическая шовная', '', '', '', ''),
(573, 2, 'Термометр электроконтактный ТПК', '', '', '', ''),
(574, 2, 'Ножницы для рассечения мягких тканей в глубоких полостях ', '', '', '', ''),
(575, 2, 'Термометр комнатный', '', '', '', ''),
(576, 2, 'Ножницы хирургические тупоконечные прямые, в/изогнутые', '', '', '', ''),
(577, 2, 'Термометр для холодильника ТБ-3-М1(-20+30°)', '', '', '', ''),
(578, 2, 'Ножницы для разрезания гипсовых повязок ', '', '', '', ''),
(579, 2, 'Термометр для воды', '', '', '', ''),
(580, 2, 'Ножницы для перевязочного материала', '', '', '', ''),
(581, 2, 'Термометр медицинский', '', '', '', ''),
(582, 2, 'Ножницы пуговчатые', '', '', '', ''),
(583, 2, 'Ножницы сосудистые нейрохирургические изогн.под углом ', '', '', '', ''),
(584, 2, 'Ножницы сосудистые о/к в/из нейрохирургические', '', '', '', ''),
(585, 2, 'Гигрометр психометрический ВИТ-2 (15-40°)', '', '', '', ''),
(586, 2, 'Гигрометр психометрический ВИТ-1 (0-240°)', '', '', '', ''),
(587, 2, 'Ножницы сосудистые прямые ', '', '', '', ''),
(588, 2, 'Ножницы сосудистые изогнутые по радиусу;изогнутые под углом ', '', '', '', ''),
(589, 2, 'Ареометр для спирта 0-40;40-70;70-100°', '', '', '', ''),
(590, 2, 'Ареометр для урины 1000:1050', '', '', '', ''),
(591, 2, 'Ножницы о/к,т/к прямые, изогнутые', '', '', '', ''),
(592, 2, 'Мочеприёмник педиатрический', '', '', '', ''),
(593, 2, 'Пайпель внутриматочный js (уп.25 шт)', '', '', '', ''),
(594, 2, 'Пелёнка впитывающая 40х60 №25', '', '', '', ''),
(595, 2, 'Маточное кольцо №3', '', '', '', ''),
(596, 2, 'Маточное кольцо №1', '', '', '', ''),
(597, 2, 'Шпатель эндоцервикальный (уп.100 шт)', '', '', '', ''),
(598, 2, 'Судно подкладное эмалированное', '', '', '', ''),
(599, 2, 'Маска наркозная взрослая (Италия,Англия)', '', '', '', ''),
(600, 2, 'Ножницы о/к прямые, изогнутые', '', '', '', ''),
(601, 2, 'Ножницы глазные тупоконечные прямые, изогнутые', '', '', '', ''),
(602, 2, 'Ножницы глазные о/к прямые, изогнутые', '', '', '', ''),
(603, 2, 'Набор для расширения канала шейки матки (Гигара) 25 шт (№3-№14)', '', '', '', ''),
(604, 2, 'Нож резикционный брюшистый', '', '', '', ''),
(605, 2, 'Нож ампутационный малый', '', '', '', ''),
(606, 2, 'Нож ампутационный большой', '', '', '', ''),
(607, 2, 'Мочеприёмник со сливным клапаном 2,0 л стерильный (TRODG)', '', '', '', ''),
(608, 2, 'Ацетон-мульти,зонд урологенитальный (уп.1 шт) (Китай)', '', '', '', ''),
(609, 2, 'Шпатель однократного применения ', '', '', '', ''),
(610, 2, 'Щёточка коническая №1', '', '', '', ''),
(611, 2, 'Щёточка эндоцервикальная №1', '', '', '', ''),
(612, 2, 'Зеркало гинекологическое стерильное одноразовое (Vogt Medical)', '', '', '', ''),
(613, 2, 'Электролампочка 75W; 100W', '', '', '', ''),
(614, 2, 'Уайт-спирит (бут.1 л)', '', '', '', ''),
(615, 2, 'Средство для унитазов', '', '', '', ''),
(616, 2, 'Средство для мытья посуды', '', '', '', ''),
(617, 2, 'Средство для мытья окон 500 мл', '', '', '', ''),
(618, 2, 'Розетка внутренняя/наружная', '', '', '', ''),
(619, 2, 'Порошок стиральный &quot;Лотос-М&quot; (мешок 20 кг)', '', '', '', ''),
(620, 2, 'Мыло хозяйственное ', '', '', '', ''),
(621, 2, 'Метла-дереза', '', '', '', ''),
(622, 2, 'Макловица 13 см', '', '', '', ''),
(623, 2, 'Краска эм. ПФ-115', '', '', '', ''),
(624, 2, 'Кисти в ассортименте', '', '', '', ''),
(625, 2, 'Известь (уп.2 кг или 10 кг)', '', '', '', ''),
(626, 2, 'Евророзетка', '', '', '', ''),
(627, 2, 'Держак к граблям', '', '', '', ''),
(628, 2, 'Грабли обыкновенные', '', '', '', ''),
(629, 2, 'Грабли веерные', '', '', '', ''),
(630, 2, 'Выключатель внутренний/наружный', '', '', '', ''),
(631, 2, 'Веник', '', '', '', ''),
(632, 2, 'Столик для внутривенных вливаний', '', '', '', ''),
(633, 2, 'Кресло-коляска малогабаритное', '', '', '', ''),
(634, 2, 'Кресло-коляска складное для взрослых', '', '', '', ''),
(635, 2, 'Кресло-каталка комбинированное взрослое', '', '', '', ''),
(636, 2, 'Подставка для стерилизационных коробок', '', '', '', ''),
(637, 2, 'Стул офисный,кресла', '', '', '', ''),
(638, 2, 'Стол компьютерный', '', '', '', ''),
(639, 2, 'Шкаф для одежды', '', '', '', ''),
(640, 2, 'Штатив для длительных вливаний ШДВ', '', '', '', ''),
(641, 2, 'Шкаф медицинский I дверный ШМ-1', '', '', '', ''),
(642, 2, 'Ширма II-секционная', '', '', '', ''),
(643, 2, 'Ширма I-секционная', '', '', '', ''),
(644, 2, 'Табурет винтовой жёсткий стационарный', '', '', '', ''),
(645, 2, 'Стул винтовой мягкий передвижной', '', '', '', ''),
(646, 2, 'Столик манипуляционный нержавеющий/крашеный', '', '', '', ''),
(647, 2, 'Столик инструментальный СИ', '', '', '', ''),
(648, 2, 'Стол пеленальный', '', '', '', ''),
(649, 2, 'Кушетка смотровая', '', '', '', ''),
(650, 2, 'Нож хрящевой реберный', '', '', '', ''),
(651, 2, 'Кушетка массажная (регулирующаяся по высоте)', '', '', '', ''),
(652, 2, ' Молоток хирургический металлический', '', '', '', ''),
(653, 2, 'Молоток неврологический (игла,щетка)', '', '', '', ''),
(654, 2, 'Кресло гинекологическое КГ-2', '', '', '', ''),
(655, 2, 'Лопатка Буяльского для оттеснения внутренностей', '', '', '', ''),
(656, 2, 'Щиток защитный для лица пластиковый', '', '', '', ''),
(657, 2, 'Ложка гинекологическая двухсторонняя (Фолькмана)', '', '', '', ''),
(658, 2, 'Щётка для мытья рук', '', '', '', ''),
(659, 2, 'Крючок хирургический (2-х зубый,3-х зубый остр.и тупой разных размеров)', '', '', '', ''),
(660, 2, 'Крючок пластинчатый по Фарабеху', '', '', '', ''),
(661, 2, 'Кюретка акушерская с зубчиком № 1-№ 6', '', '', '', ''),
(662, 2, 'Корцанг прямой,изогнутый', '', '', '', ''),
(663, 2, 'Штатив к СОЭметру', '', '', '', ''),
(664, 2, 'Конхотом в ассортименте', '', '', '', ''),
(665, 2, 'Штатив для пробирок Эппендорфа 1,5 мл', '', '', '', ''),
(666, 2, 'Комплект для акупунктуры (уп.21 шт)', '', '', '', ''),
(667, 2, 'Коловорот КВ- 2 и комплект фрез', '', '', '', ''),
(668, 2, 'Канюля переходник «Луер-Рекорд»', '', '', '', ''),
(669, 2, 'Канюля для промывания аттика', '', '', '', ''),
(670, 2, 'Игла Куликовского (для прокола гайморовой пазухи)', '', '', '', ''),
(671, 2, 'Игла для пункции и дренирования гайморовой пазухи', '', '', '', ''),
(672, 2, ' Игла иньекционная', '', '', '', ''),
(673, 2, ' Игла иньекционная', '', '', '', ''),
(674, 2, 'Игла-нож для удаления инородных тел из роговицы', '', '', '', ''),
(675, 2, 'Штатив для пробирок на 40 гнёзд пластмассовый/алюминиевый', '', '', '', ''),
(676, 2, 'Игла для взятия крови (по Дюфо)', '', '', '', ''),
(677, 2, 'Игла для отсасывания плазмы', '', '', '', ''),
(678, 2, 'Игла для впуска воздуха Г-20х180х12', '', '', '', ''),
(679, 2, 'Штатив для пробирок на 20 гнёзд пластмассовый/алюминиевый', '', '', '', ''),
(680, 2, 'Игла для спино-мозговой пункции ', '', '', '', ''),
(681, 2, 'Штатив для пробирок на 10 гнёзд пластмассовый/алюминиевый', '', '', '', ''),
(682, 2, 'Игла костно-мозговая с упором с мет.рукояткой (Кассирского)', '', '', '', ''),
(683, 2, 'Часы процедурные', '', '', '', ''),
(684, 2, 'Игла для инъекции в полость околосердечной сумки', '', '', '', ''),
(685, 2, 'Часы песочные', '', '', '', ''),
(686, 2, 'Игла для пунции сердца (комплект)', '', '', '', ''),
(687, 2, 'Иглодержатель глазной с фиксатором для пальца', '', '', '', ''),
(688, 2, 'Хладоэлемент многоразовый к сумке-контейнеру', '', '', '', ''),
(689, 2, 'Иглодержатель ', '', '', '', ''),
(690, 2, 'Зонд анатомический трупный с делениями ', '', '', '', ''),
(691, 2, 'Зонд хирургический жолобоватый ', '', '', '', ''),
(692, 2, 'Зонд пуговчатый с ушком', '', '', '', ''),
(693, 2, 'Зонд ушной по Воячеку', '', '', '', ''),
(694, 2, 'Зонд для аттика ', '', '', '', ''),
(695, 2, 'Зеркало носовое с дл.губок ', '', '', '', ''),
(696, 2, 'Зеркало гортанное и носоглоточное', '', '', '', ''),
(697, 2, 'Зонд маточный с делениями пр.из.', '', '', '', ''),
(698, 2, 'Зеркало по ОТТУ №3, 4 (плоское)', '', '', '', ''),
(699, 2, 'Зеркало по ОТТУ № 1, 2 (плоское)', '', '', '', ''),
(700, 2, 'Зеркало по Симсу № 1, 2, 3, 4, 5', '', '', '', ''),
(701, 2, 'Зеркало по Куско № 1, 2, 3', '', '', '', ''),
(702, 2, 'Зажим (Федорова) для почечной ножки изогнутый по радиусу большой ', '', '', '', ''),
(703, 2, 'Зажим (Федорова) для почечной ножки изогнутый по радиусу мал', '', '', '', ''),
(704, 2, 'Зажим кишечный эластичный прямой,изогнизогнутый', '', '', '', ''),
(705, 2, 'Зажим кишечный жесткий', '', '', '', ''),
(706, 2, 'Зажим для бронхов средний ', '', '', '', ''),
(707, 2, 'Зажим-цапка', '', '', '', ''),
(708, 2, 'Зажим к/о (Микулича) для прикрепления белья к брюшине ', '', '', '', ''),
(709, 2, 'Зажим кровоостанавливающий для глубоких полостей', '', '', '', ''),
(710, 2, 'Зажим к/о »Москит»прямой ', '', '', '', ''),
(711, 2, 'Зажим к/о »Москит» изогнутый по ребру ', '', '', '', ''),
(712, 2, 'Зажим к/о »Москит» изогнутый по плоскости', '', '', '', ''),
(713, 2, 'Зажим к/о »Пиана», »Бильрота» зубчатый изогнутый ', '', '', '', ''),
(714, 2, 'Зажим к/о »Пиана», »Бильрота» зубчатый прямой ', '', '', '', ''),
(715, 2, 'Зажим к/о 1х2 зубый “Кохер” зубчатый вертикально изогнутый', '', '', '', ''),
(716, 2, 'Зажим к/о 1х2 зубый “Кохер” зубчатый прямой', '', '', '', ''),
(717, 2, 'Долото с рифлёной ручкой плоское ', '', '', '', ''),
(719, 2, 'Диссектор сосудистый', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(71, 9),
(71, 34),
(74, 12),
(74, 35),
(84, 11),
(84, 34),
(86, 12),
(86, 34);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=340 ;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `option_value`, `required`) VALUES
(227, 57, 13, '', 1),
(228, 218, 14, '', 1),
(229, 219, 13, '', 1),
(230, 220, 13, '', 1),
(231, 222, 14, '', 1),
(232, 223, 14, '', 1),
(233, 225, 14, '', 1),
(234, 226, 14, '', 1),
(235, 228, 14, '', 1),
(317, 718, 15, '', 1),
(237, 231, 14, '', 1),
(238, 233, 13, '', 1),
(239, 234, 15, '', 1),
(240, 237, 14, '', 1),
(241, 241, 13, '', 1),
(243, 244, 14, '', 1),
(244, 246, 14, '', 1),
(245, 247, 13, '', 1),
(246, 249, 13, '', 1),
(247, 250, 13, '', 1),
(248, 253, 13, '', 1),
(249, 254, 13, '', 1),
(250, 101, 13, '', 1),
(251, 255, 13, '', 1),
(253, 256, 13, '', 1),
(254, 259, 13, '', 1),
(255, 260, 13, '', 1),
(256, 261, 13, '', 1),
(257, 262, 13, '', 1),
(258, 264, 13, '', 1),
(259, 266, 13, '', 1),
(260, 268, 14, '', 1),
(261, 269, 15, '', 1),
(262, 277, 13, '', 1),
(263, 284, 17, '', 1),
(264, 283, 18, '', 1),
(265, 285, 18, '', 1),
(266, 377, 15, '', 1),
(267, 377, 16, '', 1),
(268, 378, 19, '', 1),
(269, 398, 13, '', 1),
(270, 418, 13, '', 1),
(271, 434, 13, '', 1),
(272, 435, 13, '', 1),
(273, 436, 20, '', 1),
(274, 437, 15, '', 1),
(275, 438, 15, '', 1),
(276, 515, 14, '', 1),
(277, 517, 19, '', 1),
(278, 517, 21, '', 1),
(279, 518, 21, '', 1),
(281, 519, 14, '', 1),
(282, 520, 14, '', 1),
(283, 522, 21, '', 1),
(284, 523, 21, '', 1),
(285, 524, 22, '', 1),
(286, 525, 13, '', 1),
(287, 529, 23, '', 1),
(288, 534, 20, '', 1),
(289, 535, 13, '', 1),
(290, 537, 13, '', 1),
(291, 540, 13, '', 1),
(292, 545, 13, '', 1),
(293, 550, 13, '', 1),
(294, 554, 24, '', 1),
(295, 558, 13, '', 1),
(296, 562, 15, '', 1),
(297, 568, 15, '', 1),
(299, 571, 25, '', 1),
(300, 591, 15, '', 1),
(301, 598, 26, '', 1),
(302, 599, 21, '', 1),
(303, 601, 15, '', 1),
(304, 602, 15, '', 1),
(305, 609, 27, '', 1),
(306, 620, 28, '', 1),
(307, 623, 29, '', 1),
(308, 672, 14, '', 1),
(309, 673, 14, '', 1),
(310, 680, 14, '', 1),
(311, 685, 31, '', 1),
(312, 689, 15, '', 1),
(313, 695, 15, '', 1),
(314, 714, 15, '', 1),
(315, 713, 15, '', 1),
(316, 715, 15, '', 1),
(318, 119, 13, '', 1),
(319, 122, 13, '', 1),
(320, 105, 13, '', 1),
(321, 111, 13, '', 1),
(322, 110, 13, '', 1),
(323, 108, 13, '', 1),
(324, 123, 13, '', 1),
(325, 118, 13, '', 1),
(326, 115, 13, '', 1),
(327, 113, 13, '', 1),
(328, 112, 13, '', 1),
(329, 289, 13, '', 1),
(330, 439, 13, '', 1),
(331, 353, 13, '', 1),
(332, 56, 13, '', 1),
(333, 318, 13, '', 1),
(334, 565, 13, '', 1),
(335, 719, 15, '', 1),
(336, 563, 15, '', 1),
(337, 559, 15, '', 1),
(339, 556, 15, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`),
  KEY `option_value_id` (`option_value_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=306 ;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(23, 227, 57, 13, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 227, 57, 13, 53, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 227, 57, 13, 49, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 227, 57, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 227, 57, 13, 51, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 227, 57, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 57, 13, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 228, 218, 14, 56, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 229, 219, 13, 57, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 230, 220, 13, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(27, 231, 222, 14, 58, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 232, 223, 14, 58, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 233, 225, 14, 59, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 234, 226, 14, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(31, 235, 228, 14, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(280, 317, 718, 15, 217, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(34, 238, 233, 13, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(35, 239, 234, 15, 63, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(39, 240, 237, 14, 64, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(38, 240, 237, 14, 66, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(37, 240, 237, 14, 65, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(36, 240, 237, 14, 67, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(44, 241, 241, 13, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(43, 241, 241, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(42, 241, 241, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(41, 241, 241, 13, 68, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(40, 241, 241, 13, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(45, 243, 244, 14, 70, 1, 1, '13.0000', '+', 0, '+', '0.00000000', '+'),
(46, 243, 244, 14, 69, 1, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(47, 243, 244, 14, 71, 1, 1, '7.5000', '+', 0, '+', '0.00000000', '+'),
(48, 243, 244, 14, 72, 1, 1, '6.0000', '+', 0, '+', '0.00000000', '+'),
(49, 243, 244, 14, 73, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(50, 243, 244, 14, 74, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(52, 244, 246, 14, 76, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(51, 244, 246, 14, 75, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(58, 245, 247, 13, 77, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(54, 245, 247, 13, 68, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(55, 246, 249, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(56, 246, 249, 13, 57, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(57, 246, 249, 13, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(53, 245, 247, 13, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(60, 247, 250, 13, 51, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(59, 247, 250, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(61, 247, 250, 13, 78, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(62, 248, 253, 13, 80, 12, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(63, 248, 253, 13, 79, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(64, 248, 253, 13, 57, 3, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(65, 248, 253, 13, 81, 34, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(66, 249, 254, 13, 79, 10, 1, '1.0000', '+', 0, '+', '0.00000000', '+'),
(67, 249, 254, 13, 80, 10, 1, '1.5000', '+', 0, '+', '0.00000000', '+'),
(68, 249, 254, 13, 57, 10, 1, '2.7500', '+', 0, '+', '0.00000000', '+'),
(69, 249, 254, 13, 81, 10, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(70, 250, 101, 13, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(71, 250, 101, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(72, 250, 101, 13, 68, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(73, 251, 255, 13, 83, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(74, 251, 255, 13, 82, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(75, 251, 255, 13, 79, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(76, 251, 255, 13, 80, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(77, 251, 255, 13, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(78, 253, 256, 13, 85, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(79, 253, 256, 13, 84, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(80, 253, 256, 13, 83, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(82, 254, 259, 13, 79, 3, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(81, 254, 259, 13, 81, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(88, 255, 260, 13, 81, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(87, 255, 260, 13, 77, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(86, 255, 260, 13, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(85, 255, 260, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(83, 254, 259, 13, 80, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(84, 254, 259, 13, 57, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(93, 256, 261, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(89, 255, 260, 13, 57, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(90, 255, 260, 13, 80, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(91, 255, 260, 13, 79, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(92, 255, 260, 13, 82, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(95, 257, 262, 13, 86, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(94, 257, 262, 13, 83, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(96, 258, 264, 13, 82, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(97, 258, 264, 13, 79, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(98, 258, 264, 13, 80, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(103, 259, 266, 13, 55, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(102, 259, 266, 13, 52, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(99, 259, 266, 13, 54, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(100, 259, 266, 13, 68, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(101, 259, 266, 13, 50, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(104, 260, 268, 14, 91, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(105, 260, 268, 14, 92, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(107, 261, 269, 15, 93, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(106, 261, 269, 15, 97, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(108, 261, 269, 15, 94, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(109, 261, 269, 15, 99, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(110, 261, 269, 15, 96, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(111, 261, 269, 15, 98, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(112, 261, 269, 15, 95, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(119, 262, 277, 13, 77, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(118, 262, 277, 13, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(117, 262, 277, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(116, 262, 277, 13, 78, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(115, 262, 277, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(114, 262, 277, 13, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(113, 262, 277, 13, 54, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(121, 263, 284, 17, 106, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(120, 263, 284, 17, 105, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(122, 264, 283, 18, 107, 23, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(123, 264, 283, 18, 108, 25, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(124, 265, 285, 18, 107, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(125, 265, 285, 18, 108, 15, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(126, 266, 377, 15, 109, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(127, 266, 377, 15, 110, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(128, 266, 377, 15, 111, 14, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(131, 267, 377, 16, 112, 13, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(130, 267, 377, 16, 113, 14, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(129, 267, 377, 16, 112, 12, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(132, 268, 378, 19, 114, 12, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(133, 268, 378, 19, 115, 14, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(134, 269, 398, 13, 117, 12, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(135, 269, 398, 13, 116, 15, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(136, 270, 418, 13, 54, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(137, 270, 418, 13, 118, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(138, 271, 434, 13, 51, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(139, 271, 434, 13, 55, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(140, 272, 435, 13, 120, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(141, 272, 435, 13, 119, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(142, 273, 436, 20, 121, 9, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(143, 273, 436, 20, 123, 9, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(144, 273, 436, 20, 122, 9, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(145, 274, 437, 15, 125, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(146, 274, 437, 15, 126, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(147, 274, 437, 15, 124, 7, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(148, 275, 438, 15, 127, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(149, 275, 438, 15, 125, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(150, 275, 438, 15, 63, 8, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(151, 276, 515, 14, 100, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(152, 276, 515, 14, 101, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(153, 276, 515, 14, 102, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(154, 276, 515, 14, 103, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(155, 276, 515, 14, 128, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(156, 276, 515, 14, 129, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(157, 277, 517, 19, 130, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(158, 278, 517, 21, 132, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(159, 278, 517, 21, 131, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(160, 279, 518, 21, 132, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(161, 279, 518, 21, 131, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(163, 281, 519, 14, 137, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(164, 281, 519, 14, 134, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(165, 281, 519, 14, 135, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(166, 281, 519, 14, 136, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(167, 282, 520, 14, 141, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(168, 282, 520, 14, 140, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(169, 283, 522, 21, 132, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(170, 283, 522, 21, 131, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(171, 284, 523, 21, 132, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(172, 285, 524, 22, 146, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(173, 285, 524, 22, 145, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(174, 285, 524, 22, 144, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(175, 285, 524, 22, 143, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(176, 285, 524, 22, 142, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(177, 286, 525, 13, 147, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(178, 286, 525, 13, 149, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(179, 286, 525, 13, 148, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(180, 287, 529, 23, 152, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(181, 287, 529, 23, 151, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(182, 287, 529, 23, 150, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(183, 245, 247, 13, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(184, 245, 247, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(185, 245, 247, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(189, 288, 534, 20, 156, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(188, 288, 534, 20, 154, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(187, 288, 534, 20, 155, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(186, 288, 534, 20, 153, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(190, 289, 535, 13, 82, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(191, 289, 535, 13, 79, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(192, 289, 535, 13, 80, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(193, 289, 535, 13, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(194, 290, 537, 13, 85, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(195, 290, 537, 13, 84, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(196, 291, 540, 13, 157, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(197, 291, 540, 13, 158, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(198, 291, 540, 13, 159, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(199, 291, 540, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(200, 292, 545, 13, 82, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(201, 292, 545, 13, 79, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(202, 292, 545, 13, 80, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(203, 292, 545, 13, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(204, 292, 545, 13, 81, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(205, 292, 545, 13, 77, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(206, 292, 545, 13, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(207, 292, 545, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(208, 293, 550, 13, 83, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(209, 293, 550, 13, 86, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(210, 294, 554, 24, 163, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(211, 294, 554, 24, 162, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(212, 295, 558, 13, 77, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(213, 295, 558, 13, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(214, 295, 558, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(215, 295, 558, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(216, 295, 558, 13, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(217, 295, 558, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(220, 296, 562, 15, 166, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(219, 296, 562, 15, 164, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(218, 296, 562, 15, 165, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(221, 297, 568, 15, 63, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(222, 297, 568, 15, 127, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(228, 299, 571, 25, 169, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(227, 299, 571, 25, 168, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(226, 299, 571, 25, 170, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(229, 300, 591, 15, 171, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(230, 300, 591, 15, 172, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(231, 301, 598, 26, 175, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(232, 301, 598, 26, 176, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(233, 302, 599, 21, 173, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(234, 302, 599, 21, 174, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(235, 303, 601, 15, 177, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(236, 303, 601, 15, 178, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(238, 304, 602, 15, 179, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(237, 304, 602, 15, 177, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(239, 305, 609, 27, 184, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(240, 305, 609, 27, 180, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(241, 305, 609, 27, 181, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(242, 305, 609, 27, 183, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(243, 305, 609, 27, 182, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(244, 306, 620, 28, 186, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(245, 306, 620, 28, 185, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(246, 307, 623, 29, 191, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(247, 307, 623, 29, 187, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(248, 307, 623, 29, 188, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(249, 307, 623, 29, 190, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(250, 307, 623, 29, 189, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(251, 308, 672, 14, 195, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(252, 308, 672, 14, 197, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(253, 308, 672, 14, 196, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(254, 309, 673, 14, 195, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(255, 309, 673, 14, 197, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(256, 309, 673, 14, 196, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(258, 310, 680, 14, 198, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(257, 310, 680, 14, 61, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(262, 311, 685, 31, 202, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(261, 311, 685, 31, 199, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(260, 311, 685, 31, 200, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(259, 311, 685, 31, 201, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(263, 311, 685, 31, 204, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(264, 311, 685, 31, 203, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(265, 311, 685, 31, 205, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(268, 312, 689, 15, 206, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(267, 312, 689, 15, 207, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(266, 312, 689, 15, 63, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(271, 313, 695, 15, 209, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(270, 313, 695, 15, 208, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(269, 313, 695, 15, 99, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(33, 237, 231, 14, 62, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(273, 314, 714, 15, 63, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(272, 314, 714, 15, 213, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(274, 314, 714, 15, 215, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(275, 315, 713, 15, 63, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(276, 315, 713, 15, 216, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(277, 316, 715, 15, 215, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(278, 316, 715, 15, 63, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(279, 317, 718, 15, 218, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(281, 233, 225, 14, 219, 1, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(282, 318, 119, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(283, 319, 122, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(285, 320, 105, 13, 220, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(284, 320, 105, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(286, 321, 111, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(287, 322, 110, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(288, 322, 110, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(289, 323, 108, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(291, 324, 123, 13, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(290, 324, 123, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(292, 325, 118, 13, 159, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(293, 326, 115, 13, 221, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(294, 327, 113, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(295, 328, 112, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(296, 329, 289, 13, 222, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(297, 330, 439, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(298, 331, 353, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(299, 332, 56, 13, 51, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(300, 333, 318, 13, 160, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(301, 334, 565, 13, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(302, 335, 719, 15, 213, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(303, 336, 563, 15, 165, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(304, 337, 559, 15, 165, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(305, 339, 556, 15, 223, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_profile`
--

CREATE TABLE IF NOT EXISTS `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2077 ;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(586, 70, 1, 0),
(595, 78, 1, 0),
(596, 79, 1, 0),
(592, 75, 1, 0),
(588, 72, 1, 0),
(585, 69, 1, 0),
(584, 68, 1, 0),
(594, 77, 1, 0),
(603, 85, 1, 0),
(598, 81, 1, 0),
(597, 80, 1, 0),
(593, 76, 1, 0),
(753, 84, 1, 0),
(751, 86, 1, 0),
(599, 82, 1, 0),
(769, 71, 1, 0),
(589, 73, 1, 0),
(758, 74, 2, 0),
(601, 83, 1, 0),
(558, 52, 1, 0),
(560, 53, 1, 0),
(562, 54, 1, 0),
(563, 55, 1, 0),
(2059, 56, 1, 0),
(1346, 57, 2, 0),
(567, 58, 1, 0),
(568, 59, 1, 0),
(569, 60, 1, 0),
(572, 61, 1, 0),
(575, 62, 1, 0),
(576, 63, 1, 0),
(578, 64, 1, 0),
(1991, 65, 1, 0),
(580, 66, 1, 0),
(583, 67, 1, 0),
(605, 87, 1, 0),
(606, 88, 1, 0),
(607, 89, 1, 0),
(608, 90, 1, 0),
(609, 91, 1, 0),
(610, 92, 1, 0),
(611, 93, 1, 0),
(612, 94, 1, 0),
(613, 95, 1, 0),
(1993, 96, 1, 0),
(1995, 97, 1, 0),
(618, 98, 1, 0),
(2050, 112, 2, 0),
(2036, 101, 2, 0),
(622, 102, 1, 0),
(2012, 103, 2, 0),
(2028, 105, 2, 0),
(626, 106, 1, 0),
(627, 107, 1, 0),
(2033, 108, 1, 0),
(2034, 108, 2, 0),
(2032, 110, 2, 0),
(2029, 111, 1, 0),
(2049, 112, 1, 0),
(2047, 113, 1, 0),
(636, 114, 1, 0),
(2045, 115, 1, 0),
(639, 116, 1, 0),
(640, 117, 1, 0),
(2044, 118, 2, 0),
(2015, 119, 1, 0),
(643, 120, 1, 0),
(786, 121, 2, 0),
(2018, 122, 2, 0),
(2040, 123, 2, 0),
(2046, 115, 2, 0),
(648, 125, 1, 0),
(649, 126, 1, 0),
(650, 127, 1, 0),
(651, 128, 1, 0),
(652, 129, 1, 0),
(653, 130, 1, 0),
(654, 131, 1, 0),
(655, 132, 1, 0),
(656, 133, 1, 0),
(657, 134, 1, 0),
(658, 135, 1, 0),
(659, 136, 1, 0),
(660, 137, 1, 0),
(661, 138, 1, 0),
(663, 139, 1, 0),
(664, 140, 1, 0),
(666, 141, 1, 0),
(667, 142, 1, 0),
(668, 143, 1, 0),
(669, 144, 1, 0),
(671, 145, 1, 0),
(672, 146, 1, 0),
(673, 147, 1, 0),
(674, 148, 1, 0),
(676, 149, 1, 0),
(677, 150, 1, 0),
(679, 151, 1, 0),
(681, 152, 1, 0),
(682, 153, 1, 0),
(683, 154, 1, 0),
(684, 155, 1, 0),
(685, 156, 1, 0),
(2001, 157, 1, 0),
(687, 158, 1, 0),
(688, 159, 1, 0),
(689, 160, 1, 0),
(690, 161, 1, 0),
(692, 162, 1, 0),
(694, 163, 1, 0),
(695, 164, 1, 0),
(696, 165, 1, 0),
(697, 166, 1, 0),
(699, 167, 1, 0),
(700, 168, 1, 0),
(701, 169, 1, 0),
(705, 170, 1, 0),
(706, 171, 1, 0),
(707, 172, 1, 0),
(708, 173, 1, 0),
(709, 174, 1, 0),
(710, 175, 1, 0),
(711, 176, 1, 0),
(712, 177, 1, 0),
(713, 178, 1, 0),
(714, 179, 1, 0),
(716, 180, 1, 0),
(717, 181, 1, 0),
(718, 182, 1, 0),
(719, 183, 1, 0),
(720, 184, 1, 0),
(721, 185, 1, 0),
(722, 186, 1, 0),
(723, 187, 1, 0),
(724, 188, 1, 0),
(725, 189, 1, 0),
(726, 190, 1, 0),
(727, 191, 1, 0),
(728, 192, 1, 0),
(729, 193, 1, 0),
(730, 194, 1, 0),
(731, 195, 1, 0),
(732, 196, 1, 0),
(733, 197, 1, 0),
(734, 198, 1, 0),
(735, 199, 1, 0),
(736, 200, 1, 0),
(737, 201, 1, 0),
(738, 202, 1, 0),
(739, 203, 1, 0),
(740, 204, 1, 0),
(741, 205, 1, 0),
(742, 206, 1, 0),
(743, 207, 1, 0),
(744, 208, 1, 0),
(745, 209, 1, 0),
(746, 210, 1, 0),
(747, 211, 1, 0),
(748, 212, 1, 0),
(749, 213, 1, 0),
(750, 214, 1, 0),
(2039, 123, 1, 0),
(2043, 118, 1, 0),
(752, 86, 2, 0),
(754, 84, 2, 0),
(757, 74, 1, 0),
(2035, 101, 1, 0),
(770, 71, 2, 0),
(2048, 113, 2, 0),
(2060, 56, 2, 0),
(785, 121, 1, 0),
(792, 216, 2, 0),
(791, 216, 1, 0),
(1345, 57, 1, 0),
(793, 217, 1, 0),
(794, 217, 2, 0),
(820, 218, 2, 0),
(819, 218, 1, 0),
(824, 219, 2, 0),
(823, 219, 1, 0),
(822, 220, 2, 0),
(821, 220, 1, 0),
(807, 221, 1, 0),
(808, 221, 2, 0),
(818, 222, 2, 0),
(817, 222, 1, 0),
(816, 223, 2, 0),
(815, 223, 1, 0),
(825, 224, 1, 0),
(826, 224, 2, 0),
(1984, 225, 2, 0),
(1983, 225, 1, 0),
(831, 226, 1, 0),
(832, 226, 2, 0),
(833, 227, 1, 0),
(834, 227, 2, 0),
(1894, 228, 2, 0),
(1893, 228, 1, 0),
(1970, 718, 2, 0),
(1969, 718, 1, 0),
(839, 230, 1, 0),
(840, 230, 2, 0),
(1962, 231, 2, 0),
(1961, 231, 1, 0),
(843, 232, 1, 0),
(844, 232, 2, 0),
(845, 233, 1, 0),
(846, 233, 2, 0),
(1990, 234, 2, 0),
(1989, 234, 1, 0),
(853, 235, 1, 0),
(854, 235, 2, 0),
(858, 236, 2, 0),
(857, 236, 1, 0),
(1520, 237, 2, 0),
(1519, 237, 1, 0),
(866, 238, 2, 0),
(865, 238, 1, 0),
(1988, 239, 2, 0),
(1987, 239, 1, 0),
(871, 240, 1, 0),
(872, 240, 2, 0),
(1522, 241, 2, 0),
(1521, 241, 1, 0),
(875, 242, 1, 0),
(876, 242, 2, 0),
(880, 243, 2, 0),
(879, 243, 1, 0),
(1882, 244, 2, 0),
(1881, 244, 1, 0),
(883, 245, 1, 0),
(884, 245, 2, 0),
(1526, 246, 2, 0),
(1525, 246, 1, 0),
(1528, 247, 2, 0),
(1527, 247, 1, 0),
(895, 248, 1, 0),
(896, 248, 2, 0),
(897, 249, 1, 0),
(898, 249, 2, 0),
(904, 250, 2, 0),
(903, 250, 1, 0),
(905, 251, 1, 0),
(906, 251, 2, 0),
(907, 252, 1, 0),
(908, 252, 2, 0),
(912, 253, 2, 0),
(911, 253, 1, 0),
(913, 254, 1, 0),
(914, 254, 2, 0),
(923, 255, 1, 0),
(924, 255, 2, 0),
(928, 256, 2, 0),
(927, 256, 1, 0),
(929, 257, 1, 0),
(930, 257, 2, 0),
(931, 258, 1, 0),
(932, 258, 2, 0),
(938, 259, 2, 0),
(937, 259, 1, 0),
(942, 260, 2, 0),
(941, 260, 1, 0),
(939, 261, 1, 0),
(940, 261, 2, 0),
(948, 262, 2, 0),
(947, 262, 1, 0),
(945, 263, 1, 0),
(946, 263, 2, 0),
(949, 264, 1, 0),
(950, 264, 2, 0),
(951, 265, 1, 0),
(952, 265, 2, 0),
(1572, 266, 2, 0),
(1571, 266, 1, 0),
(955, 267, 1, 0),
(956, 267, 2, 0),
(959, 268, 1, 0),
(960, 268, 2, 0),
(966, 269, 2, 0),
(965, 269, 1, 0),
(963, 270, 1, 0),
(964, 270, 2, 0),
(967, 271, 1, 0),
(968, 271, 2, 0),
(969, 272, 1, 0),
(970, 272, 2, 0),
(971, 273, 1, 0),
(972, 273, 2, 0),
(973, 274, 1, 0),
(974, 274, 2, 0),
(1986, 275, 2, 0),
(1985, 275, 1, 0),
(977, 276, 1, 0),
(978, 276, 2, 0),
(982, 277, 2, 0),
(981, 277, 1, 0),
(983, 278, 1, 0),
(984, 278, 2, 0),
(985, 279, 1, 0),
(986, 279, 2, 0),
(987, 280, 1, 0),
(988, 280, 2, 0),
(989, 281, 1, 0),
(990, 281, 2, 0),
(991, 282, 1, 0),
(992, 282, 2, 0),
(998, 283, 2, 0),
(997, 283, 1, 0),
(1604, 284, 2, 0),
(1603, 284, 1, 0),
(999, 285, 1, 0),
(1000, 285, 2, 0),
(1001, 286, 1, 0),
(1002, 286, 2, 0),
(1003, 287, 1, 0),
(1004, 287, 2, 0),
(1005, 288, 1, 0),
(1006, 288, 2, 0),
(2054, 289, 2, 0),
(2053, 289, 1, 0),
(1009, 290, 1, 0),
(1010, 290, 2, 0),
(1011, 291, 1, 0),
(1012, 291, 2, 0),
(1013, 292, 1, 0),
(1014, 292, 2, 0),
(1015, 293, 1, 0),
(1016, 293, 2, 0),
(1017, 294, 1, 0),
(1018, 294, 2, 0),
(1019, 295, 1, 0),
(1020, 295, 2, 0),
(1024, 296, 2, 0),
(1023, 296, 1, 0),
(1025, 297, 1, 0),
(1026, 297, 2, 0),
(1027, 298, 1, 0),
(1028, 298, 2, 0),
(1029, 299, 1, 0),
(1030, 299, 2, 0),
(1031, 300, 1, 0),
(1032, 300, 2, 0),
(1033, 301, 1, 0),
(1034, 301, 2, 0),
(1035, 302, 1, 0),
(1036, 302, 2, 0),
(1037, 303, 1, 0),
(1038, 303, 2, 0),
(1039, 304, 1, 0),
(1040, 304, 2, 0),
(1041, 305, 1, 0),
(1042, 305, 2, 0),
(1043, 306, 1, 0),
(1044, 306, 2, 0),
(1045, 307, 1, 0),
(1046, 307, 2, 0),
(1047, 308, 1, 0),
(1048, 308, 2, 0),
(1049, 309, 1, 0),
(1050, 309, 2, 0),
(1051, 310, 1, 0),
(1052, 310, 2, 0),
(1053, 311, 1, 0),
(1054, 311, 2, 0),
(1058, 312, 2, 0),
(1057, 312, 1, 0),
(1059, 313, 1, 0),
(1060, 313, 2, 0),
(1061, 314, 1, 0),
(1062, 314, 2, 0),
(1063, 315, 1, 0),
(1064, 315, 2, 0),
(1065, 316, 1, 0),
(1066, 316, 2, 0),
(1067, 317, 1, 0),
(1068, 317, 2, 0),
(2062, 318, 2, 0),
(2061, 318, 1, 0),
(1071, 319, 1, 0),
(1072, 319, 2, 0),
(1073, 320, 1, 0),
(1074, 320, 2, 0),
(1075, 321, 1, 0),
(1076, 321, 2, 0),
(1077, 322, 1, 0),
(1078, 322, 2, 0),
(1079, 323, 1, 0),
(1080, 323, 2, 0),
(1081, 324, 1, 0),
(1082, 324, 2, 0),
(1083, 325, 1, 0),
(1084, 325, 2, 0),
(1085, 326, 1, 0),
(1086, 326, 2, 0),
(1087, 327, 1, 0),
(1088, 327, 2, 0),
(1089, 328, 1, 0),
(1090, 328, 2, 0),
(1091, 329, 1, 0),
(1092, 329, 2, 0),
(1093, 330, 1, 0),
(1094, 330, 2, 0),
(1095, 331, 1, 0),
(1096, 331, 2, 0),
(1102, 332, 2, 0),
(1101, 332, 1, 0),
(1099, 333, 1, 0),
(1100, 333, 2, 0),
(1103, 334, 1, 0),
(1104, 334, 2, 0),
(1108, 335, 2, 0),
(1107, 335, 1, 0),
(1109, 336, 1, 0),
(1110, 336, 2, 0),
(1111, 337, 1, 0),
(1112, 337, 2, 0),
(1113, 338, 1, 0),
(1114, 338, 2, 0),
(1115, 339, 1, 0),
(1116, 339, 2, 0),
(1117, 340, 1, 0),
(1118, 340, 2, 0),
(1119, 341, 1, 0),
(1120, 341, 2, 0),
(1121, 342, 1, 0),
(1122, 342, 2, 0),
(1123, 343, 1, 0),
(1124, 343, 2, 0),
(1125, 344, 1, 0),
(1126, 344, 2, 0),
(1127, 345, 1, 0),
(1128, 345, 2, 0),
(1129, 346, 1, 0),
(1130, 346, 2, 0),
(1131, 347, 1, 0),
(1132, 347, 2, 0),
(1133, 348, 1, 0),
(1134, 348, 2, 0),
(1135, 349, 1, 0),
(1136, 349, 2, 0),
(1137, 350, 1, 0),
(1138, 350, 2, 0),
(1139, 351, 1, 0),
(1140, 351, 2, 0),
(1141, 352, 1, 0),
(1142, 352, 2, 0),
(2058, 353, 2, 0),
(2057, 353, 1, 0),
(1145, 354, 1, 0),
(1146, 354, 2, 0),
(1147, 355, 1, 0),
(1148, 355, 2, 0),
(1149, 356, 1, 0),
(1150, 356, 2, 0),
(1151, 357, 1, 0),
(1152, 357, 2, 0),
(1153, 358, 1, 0),
(1154, 358, 2, 0),
(1155, 359, 1, 0),
(1156, 359, 2, 0),
(1157, 360, 1, 0),
(1158, 360, 2, 0),
(1159, 361, 1, 0),
(1160, 361, 2, 0),
(1161, 362, 1, 0),
(1162, 362, 2, 0),
(1163, 363, 1, 0),
(1164, 363, 2, 0),
(1165, 364, 1, 0),
(1166, 364, 2, 0),
(1167, 365, 1, 0),
(1168, 365, 2, 0),
(1169, 366, 1, 0),
(1170, 366, 2, 0),
(1171, 367, 1, 0),
(1172, 367, 2, 0),
(1173, 368, 1, 0),
(1174, 368, 2, 0),
(1175, 369, 1, 0),
(1176, 369, 2, 0),
(1177, 370, 1, 0),
(1178, 370, 2, 0),
(1179, 371, 1, 0),
(1180, 371, 2, 0),
(1181, 372, 1, 0),
(1182, 372, 2, 0),
(1183, 373, 1, 0),
(1184, 373, 2, 0),
(1185, 374, 1, 0),
(1186, 374, 2, 0),
(1187, 375, 1, 0),
(1188, 375, 2, 0),
(1189, 376, 1, 0),
(1190, 376, 2, 0),
(2052, 377, 2, 0),
(2051, 377, 1, 0),
(1197, 378, 1, 0),
(1198, 378, 2, 0),
(1199, 379, 1, 0),
(1200, 379, 2, 0),
(1201, 380, 1, 0),
(1202, 380, 2, 0),
(1203, 381, 1, 0),
(1204, 381, 2, 0),
(1205, 382, 1, 0),
(1206, 382, 2, 0),
(1207, 383, 1, 0),
(1208, 383, 2, 0),
(1209, 384, 1, 0),
(1210, 384, 2, 0),
(1211, 385, 1, 0),
(1212, 385, 2, 0),
(1213, 386, 1, 0),
(1214, 386, 2, 0),
(1215, 387, 1, 0),
(1216, 387, 2, 0),
(1217, 388, 1, 0),
(1218, 388, 2, 0),
(1219, 389, 1, 0),
(1220, 389, 2, 0),
(1221, 390, 1, 0),
(1222, 390, 2, 0),
(1223, 391, 1, 0),
(1224, 391, 2, 0),
(1225, 392, 1, 0),
(1226, 392, 2, 0),
(1227, 393, 1, 0),
(1228, 393, 2, 0),
(1229, 394, 1, 0),
(1230, 394, 2, 0),
(1231, 395, 1, 0),
(1232, 395, 2, 0),
(1233, 396, 1, 0),
(1234, 396, 2, 0),
(1235, 397, 1, 0),
(1236, 397, 2, 0),
(1240, 398, 2, 0),
(1239, 398, 1, 0),
(1241, 399, 1, 0),
(1242, 399, 2, 0),
(1243, 400, 1, 0),
(1244, 400, 2, 0),
(1245, 401, 1, 0),
(1246, 401, 2, 0),
(1247, 402, 1, 0),
(1248, 402, 2, 0),
(1249, 403, 1, 0),
(1250, 403, 2, 0),
(1251, 404, 1, 0),
(1252, 404, 2, 0),
(1253, 405, 1, 0),
(1254, 405, 2, 0),
(1255, 406, 1, 0),
(1256, 406, 2, 0),
(1257, 407, 1, 0),
(1258, 407, 2, 0),
(1259, 408, 1, 0),
(1260, 408, 2, 0),
(1261, 409, 1, 0),
(1262, 409, 2, 0),
(1263, 410, 1, 0),
(1264, 410, 2, 0),
(1265, 411, 1, 0),
(1266, 411, 2, 0),
(1267, 412, 1, 0),
(1268, 412, 2, 0),
(1269, 413, 1, 0),
(1270, 413, 2, 0),
(1271, 414, 1, 0),
(1272, 414, 2, 0),
(1273, 415, 1, 0),
(1274, 415, 2, 0),
(1275, 416, 1, 0),
(1276, 416, 2, 0),
(1277, 417, 1, 0),
(1278, 417, 2, 0),
(1282, 418, 2, 0),
(1281, 418, 1, 0),
(1283, 419, 1, 0),
(1284, 419, 2, 0),
(1285, 420, 1, 0),
(1286, 420, 2, 0),
(1287, 421, 1, 0),
(1288, 421, 2, 0),
(1289, 422, 1, 0),
(1290, 422, 2, 0),
(1291, 423, 1, 0),
(1292, 423, 2, 0),
(1293, 424, 1, 0),
(1294, 424, 2, 0),
(1295, 425, 1, 0),
(1296, 425, 2, 0),
(1297, 426, 1, 0),
(1298, 426, 2, 0),
(1299, 427, 1, 0),
(1300, 427, 2, 0),
(1301, 428, 1, 0),
(1302, 428, 2, 0),
(1303, 429, 1, 0),
(1304, 429, 2, 0),
(1305, 430, 1, 0),
(1306, 430, 2, 0),
(1307, 431, 1, 0),
(1308, 431, 2, 0),
(1309, 432, 1, 0),
(1310, 432, 2, 0),
(1314, 433, 2, 0),
(1313, 433, 1, 0),
(1315, 434, 1, 0),
(1316, 434, 2, 0),
(1317, 435, 1, 0),
(1318, 435, 2, 0),
(1319, 436, 1, 0),
(1320, 436, 2, 0),
(1321, 437, 1, 0),
(1322, 437, 2, 0),
(1323, 438, 1, 0),
(1324, 438, 2, 0),
(2056, 439, 2, 0),
(2055, 439, 1, 0),
(1327, 440, 1, 0),
(1328, 440, 2, 0),
(1329, 441, 1, 0),
(1330, 441, 2, 0),
(1331, 442, 1, 0),
(1332, 442, 2, 0),
(1333, 443, 1, 0),
(1334, 443, 2, 0),
(1335, 444, 1, 0),
(1336, 444, 2, 0),
(1337, 445, 1, 0),
(1338, 445, 2, 0),
(1339, 446, 1, 0),
(1340, 446, 2, 0),
(1341, 447, 1, 0),
(1342, 447, 2, 0),
(1343, 448, 1, 0),
(1344, 448, 2, 0),
(1347, 449, 1, 0),
(1348, 449, 2, 0),
(1349, 450, 1, 0),
(1350, 450, 2, 0),
(1351, 451, 1, 0),
(1352, 451, 2, 0),
(1353, 452, 1, 0),
(1354, 452, 2, 0),
(1355, 453, 1, 0),
(1356, 453, 2, 0),
(1357, 454, 1, 0),
(1358, 454, 2, 0),
(1359, 455, 1, 0),
(1360, 455, 2, 0),
(1361, 456, 1, 0),
(1362, 456, 2, 0),
(1363, 457, 1, 0),
(1364, 457, 2, 0),
(1365, 458, 1, 0),
(1366, 458, 2, 0),
(1367, 459, 1, 0),
(1368, 459, 2, 0),
(1369, 460, 1, 0),
(1370, 460, 2, 0),
(1371, 461, 1, 0),
(1372, 461, 2, 0),
(1373, 462, 1, 0),
(1374, 462, 2, 0),
(1375, 463, 1, 0),
(1376, 463, 2, 0),
(1377, 464, 1, 0),
(1378, 464, 2, 0),
(1379, 465, 1, 0),
(1380, 465, 2, 0),
(1381, 466, 1, 0),
(1382, 466, 2, 0),
(1383, 467, 1, 0),
(1384, 467, 2, 0),
(1385, 468, 1, 0),
(1386, 468, 2, 0),
(1387, 469, 1, 0),
(1388, 469, 2, 0),
(1389, 470, 1, 0),
(1390, 470, 2, 0),
(1391, 471, 1, 0),
(1392, 471, 2, 0),
(1393, 472, 1, 0),
(1394, 472, 2, 0),
(1395, 473, 1, 0),
(1396, 473, 2, 0),
(1397, 474, 1, 0),
(1398, 474, 2, 0),
(1399, 475, 1, 0),
(1400, 475, 2, 0),
(1401, 476, 1, 0),
(1402, 476, 2, 0),
(1403, 477, 1, 0),
(1404, 477, 2, 0),
(1405, 478, 1, 0),
(1406, 478, 2, 0),
(1407, 479, 1, 0),
(1408, 479, 2, 0),
(1409, 480, 1, 0),
(1410, 480, 2, 0),
(1411, 481, 1, 0),
(1412, 481, 2, 0),
(1413, 482, 1, 0),
(1414, 482, 2, 0),
(1415, 483, 1, 0),
(1416, 483, 2, 0),
(1417, 484, 1, 0),
(1418, 484, 2, 0),
(1964, 485, 2, 0),
(1963, 485, 1, 0),
(1421, 486, 1, 0),
(1422, 486, 2, 0),
(1423, 487, 1, 0),
(1424, 487, 2, 0),
(1425, 488, 1, 0),
(1426, 488, 2, 0),
(1427, 489, 1, 0),
(1428, 489, 2, 0),
(1429, 490, 1, 0),
(1430, 490, 2, 0),
(1431, 491, 1, 0),
(1432, 491, 2, 0),
(1433, 492, 1, 0),
(1434, 492, 2, 0),
(1435, 493, 1, 0),
(1436, 493, 2, 0),
(1437, 494, 1, 0),
(1438, 494, 2, 0),
(1439, 495, 1, 0),
(1440, 495, 2, 0),
(1441, 496, 1, 0),
(1442, 496, 2, 0),
(1443, 497, 1, 0),
(1444, 497, 2, 0),
(1445, 498, 1, 0),
(1446, 498, 2, 0),
(1447, 499, 1, 0),
(1448, 499, 2, 0),
(1449, 500, 1, 0),
(1450, 500, 2, 0),
(1451, 501, 1, 0),
(1452, 501, 2, 0),
(1453, 502, 1, 0),
(1454, 502, 2, 0),
(1455, 503, 1, 0),
(1456, 503, 2, 0),
(1457, 504, 1, 0),
(1458, 504, 2, 0),
(1459, 505, 1, 0),
(1460, 505, 2, 0),
(1461, 506, 1, 0),
(1462, 506, 2, 0),
(1463, 507, 1, 0),
(1464, 507, 2, 0),
(1465, 508, 1, 0),
(1466, 508, 2, 0),
(1467, 509, 1, 0),
(1468, 509, 2, 0),
(1469, 510, 1, 0),
(1470, 510, 2, 0),
(1471, 511, 1, 0),
(1472, 511, 2, 0),
(1473, 512, 1, 0),
(1474, 512, 2, 0),
(1475, 513, 1, 0),
(1476, 513, 2, 0),
(1477, 514, 1, 0),
(1478, 514, 2, 0),
(1479, 515, 1, 0),
(1480, 515, 2, 0),
(1481, 516, 1, 0),
(1482, 516, 2, 0),
(1486, 517, 2, 0),
(1485, 517, 1, 0),
(1487, 518, 1, 0),
(1488, 518, 2, 0),
(1492, 519, 2, 0),
(1491, 519, 1, 0),
(1493, 520, 1, 0),
(1494, 520, 2, 0),
(1495, 521, 1, 0),
(1496, 521, 2, 0),
(1497, 522, 1, 0),
(1498, 522, 2, 0),
(1499, 523, 1, 0),
(1500, 523, 2, 0),
(1501, 524, 1, 0),
(1502, 524, 2, 0),
(1503, 525, 1, 0),
(1504, 525, 2, 0),
(1505, 526, 1, 0),
(1506, 526, 2, 0),
(1507, 527, 1, 0),
(1508, 527, 2, 0),
(1509, 528, 1, 0),
(1510, 528, 2, 0),
(1511, 529, 1, 0),
(1512, 529, 2, 0),
(1513, 530, 1, 0),
(1514, 530, 2, 0),
(1515, 531, 1, 0),
(1516, 531, 2, 0),
(1517, 532, 1, 0),
(1518, 532, 2, 0),
(1529, 533, 1, 0),
(1530, 533, 2, 0),
(1536, 534, 2, 0),
(1535, 534, 1, 0),
(1533, 535, 1, 0),
(1534, 535, 2, 0),
(1537, 536, 1, 0),
(1538, 536, 2, 0),
(1539, 537, 1, 0),
(1540, 537, 2, 0),
(1541, 538, 1, 0),
(1542, 538, 2, 0),
(1543, 539, 1, 0),
(1544, 539, 2, 0),
(1545, 540, 1, 0),
(1546, 540, 2, 0),
(1547, 541, 1, 0),
(1548, 541, 2, 0),
(1549, 542, 1, 0),
(1550, 542, 2, 0),
(1551, 543, 1, 0),
(1552, 543, 2, 0),
(1553, 544, 1, 0),
(1554, 544, 2, 0),
(1555, 545, 1, 0),
(1556, 545, 2, 0),
(1557, 546, 1, 0),
(1558, 546, 2, 0),
(1559, 547, 1, 0),
(1560, 547, 2, 0),
(1561, 548, 1, 0),
(1562, 548, 2, 0),
(1563, 549, 1, 0),
(1564, 549, 2, 0),
(1565, 550, 1, 0),
(1566, 550, 2, 0),
(1567, 551, 1, 0),
(1568, 551, 2, 0),
(1569, 552, 1, 0),
(1570, 552, 2, 0),
(1576, 553, 2, 0),
(1575, 553, 1, 0),
(1577, 554, 1, 0),
(1578, 554, 2, 0),
(1579, 555, 1, 0),
(1580, 555, 2, 0),
(2076, 556, 2, 0),
(2075, 556, 1, 0),
(1583, 557, 1, 0),
(1584, 557, 2, 0),
(1585, 558, 1, 0),
(1586, 558, 2, 0),
(2072, 559, 2, 0),
(2071, 559, 1, 0),
(1589, 560, 1, 0),
(1590, 560, 2, 0),
(1591, 561, 1, 0),
(1592, 561, 2, 0),
(2070, 562, 2, 0),
(2069, 562, 1, 0),
(2068, 563, 2, 0),
(2067, 563, 1, 0),
(1597, 564, 1, 0),
(1598, 564, 2, 0),
(2064, 565, 2, 0),
(2063, 565, 1, 0),
(1601, 566, 1, 0),
(1602, 566, 2, 0),
(1605, 567, 1, 0),
(1606, 567, 2, 0),
(1609, 568, 1, 0),
(1610, 568, 2, 0),
(1611, 569, 1, 0),
(1612, 569, 2, 0),
(1613, 570, 1, 0),
(1614, 570, 2, 0),
(1622, 571, 2, 0),
(1621, 571, 1, 0),
(1617, 572, 1, 0),
(1618, 572, 2, 0),
(1623, 573, 1, 0),
(1624, 573, 2, 0),
(1625, 574, 1, 0),
(1626, 574, 2, 0),
(1627, 575, 1, 0),
(1628, 575, 2, 0),
(1629, 576, 1, 0),
(1630, 576, 2, 0),
(1631, 577, 1, 0),
(1632, 577, 2, 0),
(1633, 578, 1, 0),
(1634, 578, 2, 0),
(1635, 579, 1, 0),
(1636, 579, 2, 0),
(1637, 580, 1, 0),
(1638, 580, 2, 0),
(1639, 581, 1, 0),
(1640, 581, 2, 0),
(1641, 582, 1, 0),
(1642, 582, 2, 0),
(1643, 583, 1, 0),
(1644, 583, 2, 0),
(1645, 584, 1, 0),
(1646, 584, 2, 0),
(1647, 585, 1, 0),
(1648, 585, 2, 0),
(1649, 586, 1, 0),
(1650, 586, 2, 0),
(1651, 587, 1, 0),
(1652, 587, 2, 0),
(1653, 588, 1, 0),
(1654, 588, 2, 0),
(1655, 589, 1, 0),
(1656, 589, 2, 0),
(1657, 590, 1, 0),
(1658, 590, 2, 0),
(1659, 591, 1, 0),
(1660, 591, 2, 0),
(1661, 592, 1, 0),
(1662, 592, 2, 0),
(1663, 593, 1, 0),
(1664, 593, 2, 0),
(1665, 594, 1, 0),
(1666, 594, 2, 0),
(1667, 595, 1, 0),
(1668, 595, 2, 0),
(1669, 596, 1, 0),
(1670, 596, 2, 0),
(1671, 597, 1, 0),
(1672, 597, 2, 0),
(1673, 598, 1, 0),
(1674, 598, 2, 0),
(1675, 599, 1, 0),
(1676, 599, 2, 0),
(1677, 600, 1, 0),
(1678, 600, 2, 0),
(1679, 601, 1, 0),
(1680, 601, 2, 0),
(1684, 602, 2, 0),
(1683, 602, 1, 0),
(1685, 603, 1, 0),
(1686, 603, 2, 0),
(1687, 604, 1, 0),
(1688, 604, 2, 0),
(1689, 605, 1, 0),
(1690, 605, 2, 0),
(1691, 606, 1, 0),
(1692, 606, 2, 0),
(1693, 607, 1, 0),
(1694, 607, 2, 0),
(1695, 608, 1, 0),
(1696, 608, 2, 0),
(1697, 609, 1, 0),
(1698, 609, 2, 0),
(1699, 610, 1, 0),
(1700, 610, 2, 0),
(1701, 611, 1, 0),
(1702, 611, 2, 0),
(1703, 612, 1, 0),
(1704, 612, 2, 0),
(1705, 613, 1, 0),
(1706, 613, 2, 0),
(1707, 614, 1, 0),
(1708, 614, 2, 0),
(1709, 615, 1, 0),
(1710, 615, 2, 0),
(1711, 616, 1, 0),
(1712, 616, 2, 0),
(1716, 617, 2, 0),
(1715, 617, 1, 0),
(1717, 618, 1, 0),
(1718, 618, 2, 0),
(1719, 619, 1, 0),
(1720, 619, 2, 0),
(1721, 620, 1, 0),
(1722, 620, 2, 0),
(1723, 621, 1, 0),
(1724, 621, 2, 0),
(1725, 622, 1, 0),
(1726, 622, 2, 0),
(1727, 623, 1, 0),
(1728, 623, 2, 0),
(1729, 624, 1, 0),
(1730, 624, 2, 0),
(1731, 625, 1, 0),
(1732, 625, 2, 0),
(1733, 626, 1, 0),
(1734, 626, 2, 0),
(1735, 627, 1, 0),
(1736, 627, 2, 0),
(1737, 628, 1, 0),
(1738, 628, 2, 0),
(1739, 629, 1, 0),
(1740, 629, 2, 0),
(1741, 630, 1, 0),
(1742, 630, 2, 0),
(1743, 631, 1, 0),
(1744, 631, 2, 0),
(1745, 632, 1, 0),
(1746, 632, 2, 0),
(1747, 633, 1, 0),
(1748, 633, 2, 0),
(1749, 634, 1, 0),
(1750, 634, 2, 0),
(1751, 635, 1, 0),
(1752, 635, 2, 0),
(1753, 636, 1, 0),
(1754, 636, 2, 0),
(1755, 637, 1, 0),
(1756, 637, 2, 0),
(1757, 638, 1, 0),
(1758, 638, 2, 0),
(1759, 639, 1, 0),
(1760, 639, 2, 0),
(1761, 640, 1, 0),
(1762, 640, 2, 0),
(1763, 641, 1, 0),
(1764, 641, 2, 0),
(1765, 642, 1, 0),
(1766, 642, 2, 0),
(1767, 643, 1, 0),
(1768, 643, 2, 0),
(1769, 644, 1, 0),
(1770, 644, 2, 0),
(1771, 645, 1, 0),
(1772, 645, 2, 0),
(1773, 646, 1, 0),
(1774, 646, 2, 0),
(1775, 647, 1, 0),
(1776, 647, 2, 0),
(1777, 648, 1, 0),
(1778, 648, 2, 0),
(1779, 649, 1, 0),
(1780, 649, 2, 0),
(1781, 650, 1, 0),
(1782, 650, 2, 0),
(1783, 651, 1, 0),
(1784, 651, 2, 0),
(1785, 652, 1, 0),
(1786, 652, 2, 0),
(1787, 653, 1, 0),
(1788, 653, 2, 0),
(1789, 654, 1, 0),
(1790, 654, 2, 0),
(1791, 655, 1, 0),
(1792, 655, 2, 0),
(1793, 656, 1, 0),
(1794, 656, 2, 0),
(1795, 657, 1, 0),
(1796, 657, 2, 0),
(1797, 658, 1, 0),
(1798, 658, 2, 0),
(1799, 659, 1, 0),
(1800, 659, 2, 0),
(1801, 660, 1, 0),
(1802, 660, 2, 0),
(1803, 661, 1, 0),
(1804, 661, 2, 0),
(1805, 662, 1, 0),
(1806, 662, 2, 0),
(1807, 663, 1, 0),
(1808, 663, 2, 0),
(1809, 664, 1, 0),
(1810, 664, 2, 0),
(1811, 665, 1, 0),
(1812, 665, 2, 0),
(1813, 666, 1, 0),
(1814, 666, 2, 0),
(1815, 667, 1, 0),
(1816, 667, 2, 0),
(1817, 668, 1, 0),
(1818, 668, 2, 0),
(1819, 669, 1, 0),
(1820, 669, 2, 0),
(1821, 670, 1, 0),
(1822, 670, 2, 0),
(1823, 671, 1, 0),
(1824, 671, 2, 0),
(1825, 672, 1, 0),
(1826, 672, 2, 0),
(1827, 673, 1, 0),
(1828, 673, 2, 0),
(1829, 674, 1, 0),
(1830, 674, 2, 0),
(1831, 675, 1, 0),
(1832, 675, 2, 0),
(1833, 676, 1, 0),
(1834, 676, 2, 0),
(1835, 677, 1, 0),
(1836, 677, 2, 0),
(1837, 678, 1, 0),
(1838, 678, 2, 0),
(1839, 679, 1, 0),
(1840, 679, 2, 0),
(1846, 680, 2, 0),
(1845, 680, 1, 0),
(1843, 681, 1, 0),
(1844, 681, 2, 0),
(1847, 682, 1, 0),
(1848, 682, 2, 0),
(1849, 683, 1, 0),
(1850, 683, 2, 0),
(1851, 684, 1, 0),
(1852, 684, 2, 0),
(1860, 685, 2, 0),
(1859, 685, 1, 0),
(1855, 686, 1, 0),
(1856, 686, 2, 0),
(1857, 687, 1, 0),
(1858, 687, 2, 0),
(1861, 688, 1, 0),
(1862, 688, 2, 0),
(1866, 689, 2, 0),
(1865, 689, 1, 0),
(1867, 690, 1, 0),
(1868, 690, 2, 0),
(1869, 691, 1, 0),
(1870, 691, 2, 0),
(1871, 692, 1, 0),
(1872, 692, 2, 0),
(1873, 693, 1, 0),
(1874, 693, 2, 0),
(1875, 694, 1, 0),
(1876, 694, 2, 0),
(1898, 695, 2, 0),
(1897, 695, 1, 0),
(1901, 696, 1, 0),
(1902, 696, 2, 0),
(1903, 697, 1, 0),
(1904, 697, 2, 0),
(1907, 698, 1, 0),
(1908, 698, 2, 0),
(1909, 699, 1, 0),
(1910, 699, 2, 0),
(1911, 700, 1, 0),
(1912, 700, 2, 0),
(1913, 701, 1, 0),
(1914, 701, 2, 0),
(1915, 702, 1, 0),
(1916, 702, 2, 0),
(1917, 703, 1, 0),
(1918, 703, 2, 0),
(1919, 704, 1, 0),
(1920, 704, 2, 0),
(1921, 705, 1, 0),
(1922, 705, 2, 0),
(1923, 706, 1, 0),
(1924, 706, 2, 0),
(1925, 707, 1, 0),
(1926, 707, 2, 0),
(1927, 708, 1, 0),
(1928, 708, 2, 0),
(1929, 709, 1, 0),
(1930, 709, 2, 0),
(1931, 710, 1, 0),
(1932, 710, 2, 0),
(1933, 711, 1, 0),
(1934, 711, 2, 0),
(1935, 712, 1, 0),
(1936, 712, 2, 0),
(1948, 713, 2, 0),
(1947, 713, 1, 0),
(1946, 714, 2, 0),
(1945, 714, 1, 0),
(1949, 715, 1, 0),
(1950, 715, 2, 0),
(1951, 716, 1, 0),
(1952, 716, 2, 0),
(1953, 717, 1, 0),
(1954, 717, 2, 0),
(2066, 719, 2, 0),
(2065, 719, 1, 0),
(1992, 65, 2, 0),
(1994, 96, 2, 0),
(1996, 97, 2, 0),
(2030, 111, 2, 0),
(2027, 105, 1, 0),
(2002, 157, 2, 0),
(2017, 122, 1, 0),
(2011, 103, 1, 0),
(2031, 110, 1, 0),
(2016, 119, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=465 ;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(464, 123, 1, 1, '111.0000', '2014-12-05', '2014-12-08'),
(444, 244, 1, 0, '7.0000', '2014-11-20', '2014-12-30'),
(457, 231, 1, 0, '0.4800', '2014-11-20', '2014-12-30'),
(456, 231, 2, 0, '0.4800', '2014-11-20', '2014-12-30'),
(450, 228, 1, 0, '0.4800', '2014-11-20', '2014-12-30'),
(459, 225, 1, 0, '0.7200', '2014-11-20', '2014-12-30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(55, 91),
(56, 90),
(58, 70),
(59, 70),
(60, 70),
(61, 88),
(62, 86),
(63, 77),
(64, 77),
(65, 77),
(66, 88),
(67, 88),
(68, 88),
(69, 88),
(70, 88),
(71, 88),
(72, 88),
(73, 88),
(74, 88),
(75, 88),
(76, 88),
(77, 88),
(78, 88),
(79, 88),
(80, 88),
(81, 88),
(82, 88),
(83, 88),
(84, 88),
(85, 88),
(86, 88),
(87, 88),
(88, 88),
(89, 88),
(90, 88),
(91, 88),
(92, 88),
(93, 62),
(94, 62),
(95, 62),
(96, 62),
(97, 62),
(98, 60),
(101, 60),
(102, 60),
(103, 60),
(105, 60),
(106, 60),
(107, 60),
(108, 60),
(110, 60),
(111, 60),
(112, 60),
(113, 60),
(114, 60),
(115, 60),
(116, 60),
(117, 60),
(118, 60),
(119, 60),
(120, 60),
(121, 60),
(122, 60),
(123, 60),
(125, 76),
(126, 76),
(127, 76),
(128, 76),
(129, 76),
(130, 76),
(131, 76),
(132, 76),
(133, 76),
(134, 76),
(135, 76),
(136, 76),
(137, 76),
(138, 76),
(139, 76),
(140, 76),
(141, 76),
(142, 76),
(143, 76),
(144, 76),
(145, 76),
(146, 76),
(147, 76),
(148, 91),
(149, 91),
(150, 91),
(151, 91),
(152, 91),
(153, 91),
(154, 91),
(155, 91),
(156, 91),
(157, 91),
(158, 91),
(159, 91),
(160, 91),
(161, 91),
(162, 91),
(163, 91),
(164, 91),
(165, 91),
(166, 91),
(167, 91),
(168, 91),
(169, 91),
(170, 91),
(171, 91),
(172, 91),
(173, 71),
(174, 71),
(175, 71),
(176, 71),
(177, 71),
(178, 71),
(179, 71),
(180, 71),
(181, 71),
(182, 73),
(183, 73),
(184, 73),
(185, 73),
(186, 73),
(187, 73),
(188, 73),
(189, 91),
(190, 69),
(191, 69),
(192, 69),
(193, 89),
(194, 69),
(195, 69),
(196, 69),
(197, 91),
(198, 91),
(199, 91),
(200, 69),
(201, 91),
(202, 91),
(203, 91),
(204, 91),
(205, 91),
(206, 91),
(207, 91),
(208, 89),
(209, 89),
(210, 89),
(211, 89),
(212, 89),
(213, 73),
(214, 73),
(216, 73),
(217, 73),
(218, 69),
(218, 89),
(219, 69),
(219, 89),
(220, 69),
(220, 89),
(221, 69),
(222, 69),
(222, 89),
(223, 69),
(223, 89),
(224, 62),
(225, 69),
(225, 89),
(226, 69),
(226, 89),
(227, 73),
(228, 69),
(228, 89),
(230, 62),
(231, 89),
(232, 62),
(233, 89),
(234, 89),
(235, 62),
(236, 97),
(237, 97),
(238, 62),
(239, 89),
(240, 62),
(241, 89),
(242, 89),
(243, 62),
(244, 89),
(245, 62),
(246, 89),
(247, 89),
(248, 95),
(250, 89),
(251, 95),
(252, 86),
(253, 86),
(254, 86),
(255, 89),
(256, 89),
(257, 89),
(258, 89),
(259, 86),
(260, 89),
(261, 89),
(262, 89),
(263, 73),
(264, 89),
(265, 73),
(266, 89),
(267, 73),
(268, 71),
(269, 89),
(270, 65),
(271, 65),
(272, 65),
(273, 65),
(274, 65),
(275, 65),
(276, 65),
(277, 89),
(278, 65),
(279, 65),
(280, 65),
(281, 89),
(282, 65),
(283, 65),
(284, 89),
(285, 65),
(286, 65),
(287, 65),
(288, 65),
(289, 65),
(290, 65),
(291, 66),
(292, 82),
(293, 80),
(294, 80),
(295, 81),
(296, 81),
(297, 81),
(298, 81),
(299, 81),
(300, 81),
(301, 66),
(302, 66),
(303, 66),
(304, 66),
(305, 66),
(306, 66),
(307, 66),
(308, 81),
(309, 82),
(310, 80),
(311, 80),
(312, 74),
(313, 74),
(314, 74),
(315, 74),
(316, 74),
(317, 74),
(318, 74),
(319, 74),
(320, 74),
(321, 90),
(322, 74),
(323, 74),
(324, 74),
(325, 74),
(326, 90),
(327, 90),
(328, 90),
(329, 90),
(330, 74),
(331, 74),
(332, 74),
(333, 90),
(334, 90),
(335, 90),
(336, 90),
(337, 90),
(338, 90),
(339, 90),
(340, 90),
(341, 74),
(342, 90),
(343, 90),
(344, 74),
(345, 90),
(346, 90),
(347, 90),
(348, 90),
(349, 90),
(350, 90),
(351, 90),
(352, 90),
(353, 90),
(354, 90),
(355, 90),
(356, 74),
(357, 74),
(358, 90),
(359, 90),
(360, 74),
(361, 99),
(362, 99),
(363, 99),
(364, 99),
(365, 99),
(366, 99),
(367, 99),
(368, 99),
(369, 99),
(370, 99),
(371, 99),
(372, 99),
(373, 99),
(374, 99),
(375, 99),
(376, 99),
(377, 99),
(378, 99),
(379, 99),
(380, 99),
(381, 99),
(382, 99),
(383, 99),
(384, 99),
(385, 99),
(386, 99),
(387, 99),
(388, 99),
(389, 99),
(390, 77),
(391, 77),
(392, 77),
(393, 77),
(394, 77),
(395, 77),
(396, 77),
(397, 77),
(398, 77),
(399, 77),
(400, 77),
(401, 77),
(402, 77),
(403, 77),
(404, 77),
(405, 77),
(406, 77),
(407, 77),
(408, 77),
(409, 77),
(410, 77),
(411, 77),
(412, 77),
(413, 77),
(414, 77),
(415, 77),
(416, 77),
(417, 77),
(418, 77),
(419, 77),
(420, 77),
(421, 77),
(422, 77),
(423, 77),
(424, 77),
(425, 77),
(426, 77),
(427, 77),
(428, 77),
(429, 77),
(430, 77),
(431, 77),
(432, 77),
(433, 77),
(434, 69),
(435, 69),
(436, 89),
(437, 69),
(438, 97),
(439, 97),
(440, 89),
(441, 89),
(442, 89),
(443, 89),
(444, 89),
(445, 89),
(446, 89),
(447, 89),
(448, 89),
(449, 89),
(450, 89),
(451, 69),
(452, 69),
(453, 69),
(454, 69),
(455, 69),
(456, 69),
(457, 95),
(458, 95),
(459, 95),
(460, 95),
(461, 95),
(462, 69),
(463, 69),
(464, 69),
(465, 69),
(466, 73),
(467, 69),
(468, 69),
(469, 69),
(470, 69),
(471, 69),
(472, 88),
(473, 69),
(474, 69),
(475, 69),
(476, 95),
(477, 64),
(478, 69),
(479, 95),
(480, 64),
(481, 95),
(482, 95),
(483, 95),
(484, 95),
(485, 95),
(486, 95),
(488, 95),
(489, 64),
(490, 64),
(491, 64),
(494, 64),
(495, 64),
(496, 64),
(497, 64),
(499, 64),
(500, 64),
(501, 64),
(502, 64),
(503, 64),
(504, 64),
(505, 64),
(506, 64),
(507, 64),
(508, 64),
(509, 64),
(510, 73),
(511, 73),
(512, 64),
(513, 64),
(514, 64),
(515, 71),
(516, 71),
(517, 71),
(518, 71),
(519, 71),
(520, 71),
(521, 71),
(522, 71),
(523, 71),
(524, 71),
(525, 71),
(526, 71),
(527, 71),
(528, 71),
(529, 71),
(530, 71),
(531, 71),
(532, 89),
(533, 71),
(534, 64),
(535, 89),
(536, 64),
(537, 89),
(538, 64),
(539, 64),
(540, 71),
(541, 89),
(542, 71),
(543, 64),
(544, 64),
(545, 89),
(546, 71),
(547, 64),
(548, 64),
(549, 71),
(550, 89),
(552, 79),
(553, 79),
(554, 64),
(555, 64),
(556, 79),
(557, 64),
(558, 89),
(559, 79),
(560, 79),
(561, 64),
(562, 79),
(563, 79),
(564, 64),
(565, 89),
(566, 64),
(567, 64),
(568, 64),
(569, 79),
(570, 64),
(571, 64),
(572, 79),
(573, 75),
(574, 64),
(575, 75),
(576, 64),
(577, 75),
(578, 64),
(579, 75),
(580, 64),
(581, 75),
(582, 64),
(583, 64),
(584, 64),
(585, 75),
(586, 75),
(587, 64),
(588, 64),
(589, 75),
(590, 75),
(591, 64),
(592, 59),
(593, 59),
(594, 59),
(595, 59),
(596, 59),
(597, 59),
(598, 59),
(599, 59),
(600, 64),
(601, 64),
(602, 64),
(603, 64),
(604, 64),
(605, 64),
(606, 64),
(607, 59),
(608, 59),
(609, 59),
(610, 59),
(611, 59),
(612, 59),
(613, 78),
(614, 78),
(615, 78),
(616, 78),
(617, 78),
(618, 78),
(619, 78),
(620, 78),
(621, 78),
(622, 78),
(623, 78),
(624, 78),
(625, 78),
(626, 78),
(627, 78),
(628, 78),
(629, 78),
(630, 78),
(631, 78),
(632, 70),
(633, 70),
(634, 70),
(635, 70),
(636, 70),
(637, 70),
(638, 70),
(639, 70),
(640, 70),
(641, 70),
(642, 70),
(643, 70),
(644, 70),
(646, 70),
(647, 70),
(648, 70),
(649, 70),
(650, 64),
(651, 70),
(652, 64),
(653, 64),
(654, 70),
(655, 64),
(656, 73),
(657, 64),
(658, 73),
(659, 64),
(660, 64),
(661, 64),
(662, 64),
(663, 73),
(664, 64),
(665, 73),
(666, 64),
(667, 64),
(668, 64),
(670, 64),
(671, 64),
(672, 64),
(673, 64),
(674, 64),
(675, 73),
(676, 64),
(677, 64),
(678, 64),
(679, 73),
(680, 64),
(681, 73),
(682, 64),
(683, 73),
(684, 64),
(685, 73),
(686, 64),
(687, 64),
(688, 73),
(689, 64),
(690, 64),
(691, 64),
(692, 64),
(693, 64),
(694, 64),
(695, 64),
(696, 64),
(697, 64),
(698, 64),
(699, 64),
(700, 64),
(701, 64),
(702, 64),
(703, 64),
(704, 64),
(705, 64),
(706, 64),
(707, 64),
(708, 64),
(709, 64),
(710, 64),
(711, 64),
(712, 64),
(713, 64),
(714, 64),
(715, 64),
(716, 64),
(717, 64),
(718, 64),
(719, 64);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(101, 0),
(102, 0),
(103, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(214, 0),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(225, 0),
(226, 0),
(227, 0),
(228, 0),
(230, 0),
(231, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(242, 0),
(243, 0),
(244, 0),
(245, 0),
(246, 0),
(247, 0),
(248, 0),
(249, 0),
(250, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 0),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 0),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(312, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0),
(318, 0),
(319, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 0),
(324, 0),
(325, 0),
(326, 0),
(327, 0),
(328, 0),
(329, 0),
(330, 0),
(331, 0),
(332, 0),
(333, 0),
(334, 0),
(335, 0),
(336, 0),
(337, 0),
(338, 0),
(339, 0),
(340, 0),
(341, 0),
(342, 0),
(343, 0),
(344, 0),
(345, 0),
(346, 0),
(347, 0),
(348, 0),
(349, 0),
(350, 0),
(351, 0),
(352, 0),
(353, 0),
(354, 0),
(355, 0),
(356, 0),
(357, 0),
(358, 0),
(359, 0),
(360, 0),
(361, 0),
(362, 0),
(363, 0),
(364, 0),
(365, 0),
(366, 0),
(367, 0),
(368, 0),
(369, 0),
(370, 0),
(371, 0),
(372, 0),
(373, 0),
(374, 0),
(375, 0),
(376, 0),
(377, 0),
(378, 0),
(379, 0),
(380, 0),
(381, 0),
(382, 0),
(383, 0),
(384, 0),
(385, 0),
(386, 0),
(387, 0),
(388, 0),
(389, 0),
(390, 0),
(391, 0),
(392, 0),
(393, 0),
(394, 0),
(395, 0),
(396, 0),
(397, 0),
(398, 0),
(399, 0),
(400, 0),
(401, 0),
(402, 0),
(403, 0),
(404, 0),
(405, 0),
(406, 0),
(407, 0),
(408, 0),
(409, 0),
(410, 0),
(411, 0),
(412, 0),
(413, 0),
(414, 0),
(415, 0),
(416, 0),
(417, 0),
(418, 0),
(419, 0),
(420, 0),
(421, 0),
(422, 0),
(423, 0),
(424, 0),
(425, 0),
(426, 0),
(427, 0),
(428, 0),
(429, 0),
(430, 0),
(431, 0),
(432, 0),
(433, 0),
(434, 0),
(435, 0),
(436, 0),
(437, 0),
(438, 0),
(439, 0),
(440, 0),
(441, 0),
(442, 0),
(443, 0),
(444, 0),
(445, 0),
(446, 0),
(447, 0),
(448, 0),
(449, 0),
(450, 0),
(451, 0),
(452, 0),
(453, 0),
(454, 0),
(455, 0),
(456, 0),
(457, 0),
(458, 0),
(459, 0),
(460, 0),
(461, 0),
(462, 0),
(463, 0),
(464, 0),
(465, 0),
(466, 0),
(467, 0),
(468, 0),
(469, 0),
(470, 0),
(471, 0),
(472, 0),
(473, 0),
(474, 0),
(475, 0),
(476, 0),
(477, 0),
(478, 0),
(479, 0),
(480, 0),
(481, 0),
(482, 0),
(483, 0),
(484, 0),
(485, 0),
(486, 0),
(487, 0),
(488, 0),
(489, 0),
(490, 0),
(491, 0),
(492, 0),
(493, 0),
(494, 0),
(495, 0),
(496, 0),
(497, 0),
(498, 0),
(499, 0),
(500, 0),
(501, 0),
(502, 0),
(503, 0),
(504, 0),
(505, 0),
(506, 0),
(507, 0),
(508, 0),
(509, 0),
(510, 0),
(511, 0),
(512, 0),
(513, 0),
(514, 0),
(515, 0),
(516, 0),
(517, 0),
(518, 0),
(519, 0),
(520, 0),
(521, 0),
(522, 0),
(523, 0),
(524, 0),
(525, 0),
(526, 0),
(527, 0),
(528, 0),
(529, 0),
(530, 0),
(531, 0),
(532, 0),
(533, 0),
(534, 0),
(535, 0),
(536, 0),
(537, 0),
(538, 0),
(539, 0),
(540, 0),
(541, 0),
(542, 0),
(543, 0),
(544, 0),
(545, 0),
(546, 0),
(547, 0),
(548, 0),
(549, 0),
(550, 0),
(551, 0),
(552, 0),
(553, 0),
(554, 0),
(555, 0),
(556, 0),
(557, 0),
(558, 0),
(559, 0),
(560, 0),
(561, 0),
(562, 0),
(563, 0),
(564, 0),
(565, 0),
(566, 0),
(567, 0),
(568, 0),
(569, 0),
(570, 0),
(571, 0),
(572, 0),
(573, 0),
(574, 0),
(575, 0),
(576, 0),
(577, 0),
(578, 0),
(579, 0),
(580, 0),
(581, 0),
(582, 0),
(583, 0),
(584, 0),
(585, 0),
(586, 0),
(587, 0),
(588, 0),
(589, 0),
(590, 0),
(591, 0),
(592, 0),
(593, 0),
(594, 0),
(595, 0),
(596, 0),
(597, 0),
(598, 0),
(599, 0),
(600, 0),
(601, 0),
(602, 0),
(603, 0),
(604, 0),
(605, 0),
(606, 0),
(607, 0),
(608, 0),
(609, 0),
(610, 0),
(611, 0),
(612, 0),
(613, 0),
(614, 0),
(615, 0),
(616, 0),
(617, 0),
(618, 0),
(619, 0),
(620, 0),
(621, 0),
(622, 0),
(623, 0),
(624, 0),
(625, 0),
(626, 0),
(627, 0),
(628, 0),
(629, 0),
(630, 0),
(631, 0),
(632, 0),
(633, 0),
(634, 0),
(635, 0),
(636, 0),
(637, 0),
(638, 0),
(639, 0),
(640, 0),
(641, 0),
(642, 0),
(643, 0),
(644, 0),
(645, 0),
(646, 0),
(647, 0),
(648, 0),
(649, 0),
(650, 0),
(651, 0),
(652, 0),
(653, 0),
(654, 0),
(655, 0),
(656, 0),
(657, 0),
(658, 0),
(659, 0),
(660, 0),
(661, 0),
(662, 0),
(663, 0),
(664, 0),
(665, 0),
(666, 0),
(667, 0),
(668, 0),
(669, 0),
(670, 0),
(671, 0),
(672, 0),
(673, 0),
(674, 0),
(675, 0),
(676, 0),
(677, 0),
(678, 0),
(679, 0),
(680, 0),
(681, 0),
(682, 0),
(683, 0),
(684, 0),
(685, 0),
(686, 0),
(687, 0),
(688, 0),
(689, 0),
(690, 0),
(691, 0),
(692, 0),
(693, 0),
(694, 0),
(695, 0),
(696, 0),
(697, 0),
(698, 0),
(699, 0),
(700, 0),
(701, 0),
(702, 0),
(703, 0),
(704, 0),
(705, 0),
(706, 0),
(707, 0),
(708, 0),
(709, 0),
(710, 0),
(711, 0),
(712, 0),
(713, 0),
(714, 0),
(715, 0),
(716, 0),
(717, 0),
(718, 0),
(719, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile`
--

CREATE TABLE IF NOT EXISTS `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_profile_description`
--

CREATE TABLE IF NOT EXISTS `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7709 ;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(508, 0, 'shipping', 'shipping_sort_order', '1', 0),
(519, 0, 'cod', 'cod_status', '1', 0),
(4125, 0, 'total', 'total_sort_order', '10', 0),
(4124, 0, 'total', 'total_status', '0', 0),
(1646, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(518, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(517, 0, 'cod', 'cod_order_status_id', '1', 0),
(516, 0, 'cod', 'cod_total', '0.01', 0),
(507, 0, 'shipping', 'shipping_status', '1', 0),
(506, 0, 'shipping', 'shipping_estimator', '1', 0),
(3325, 0, 'coupon', 'coupon_sort_order', '5', 0),
(3324, 0, 'coupon', 'coupon_status', '0', 0),
(499, 0, 'novaposhta', 'novaposhta_status', '1', 0),
(7707, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:9:{s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:2:"10";}}', 1),
(4700, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"8";s:11:"image_width";s:3:"150";s:12:"image_height";s:3:"170";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4123, 0, 'sub_total', 'sub_total_sort_order', '', 0),
(7594, 0, 'category', 'category_module', 'a:9:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(3959, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(4817, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(520, 0, 'cod', 'cod_sort_order', '5', 0),
(4122, 0, 'sub_total', 'sub_total_status', '1', 0),
(1645, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(1644, 0, 'free_checkout', 'free_checkout_order_status_id', '7', 0),
(4117, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"8";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"3";}}', 1),
(7588, 0, 'simple', 'simple_googleapi_key', '', 0),
(7587, 0, 'simple', 'simple_googleapi', '0', 0),
(7704, 0, 'config', 'ls_noresults', 'Нет результатов', 0),
(7703, 0, 'config', 'ls_searchindesc', '1', 0),
(7702, 0, 'config', 'ls_model', '0', 0),
(7701, 0, 'config', 'ls_prices', '1', 0),
(7700, 0, 'config', 'ls_images', '1', 0),
(7699, 0, 'config', 'ls_more', 'Больше', 0),
(7698, 0, 'config', 'ls_limit_results', '3', 0),
(7697, 0, 'config', 'config_google_analytics', '', 0),
(7696, 0, 'config', 'config_error_filename', 'error.txt', 0),
(7695, 0, 'config', 'config_error_log', '1', 0),
(7690, 0, 'config', 'config_maintenance', '0', 0),
(7694, 0, 'config', 'config_error_display', '0', 0),
(7691, 0, 'config', 'config_password', '1', 0),
(7692, 0, 'config', 'config_encryption', 'b1e0364c04e1d7854c626cb23cc82320', 0),
(7693, 0, 'config', 'config_compression', '0', 0),
(7687, 0, 'config', 'config_seo_url', '1', 0),
(7688, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(7689, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(7685, 0, 'config', 'config_shared', '0', 0),
(7686, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(7684, 0, 'config', 'config_secure', '0', 0),
(7683, 0, 'config', 'config_fraud_status_id', '7', 0),
(7682, 0, 'config', 'config_fraud_score', '', 0),
(7680, 0, 'config', 'config_fraud_detection', '0', 0),
(7681, 0, 'config', 'config_fraud_key', '', 0),
(7679, 0, 'config', 'config_alert_emails', '', 0),
(7678, 0, 'config', 'config_account_mail', '0', 0),
(7677, 0, 'config', 'config_alert_mail', '0', 0),
(500, 0, 'novaposhta', 'novaposhta_sort_order', '1', 0),
(497, 0, 'novaposhta', 'novaposhta_delivery_price', '30', 0),
(498, 0, 'novaposhta', 'novaposhta_geo_zone_id', '5', 0),
(503, 0, 'pickup', 'pickup_sort_order', '2', 0),
(502, 0, 'pickup', 'pickup_status', '1', 0),
(501, 0, 'pickup', 'pickup_geo_zone_id', '6', 0),
(496, 0, 'novaposhta', 'novaposhta_min_total_for_free_delivery', '500', 0),
(495, 0, 'courier_ua', 'courier_ua_sort_order', '3', 0),
(493, 0, 'courier_ua', 'courier_ua_geo_zone_id', '6', 0),
(494, 0, 'courier_ua', 'courier_ua_status', '1', 0),
(7708, 0, 'tm_slideshow', 'tm_slideshow_module', 'a:13:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"530";s:6:"height";s:3:"291";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:9:"banner_id";s:2:"10";s:5:"width";s:3:"528";s:6:"height";s:2:"63";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:3;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:4;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:5;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:6;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:7;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:8;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:9;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:10;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:11;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}i:12;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"6";}}', 1),
(7671, 0, 'config', 'config_mail_parameter', '', 0),
(7672, 0, 'config', 'config_smtp_host', 'ssl://smtp.gmail.com', 0),
(7673, 0, 'config', 'config_smtp_username', 'abcmedtehnik@gmail.com', 0),
(3975, 0, 'information', 'information_module', 'a:6:{i:0;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(2097, 0, 'liqpay', 'liqpay_merchant', 'тб', 0),
(7676, 0, 'config', 'config_smtp_timeout', '5', 0),
(7584, 0, 'simple', 'restore', '0', 0),
(7585, 0, 'simple', 'simple_payment_titles', 'a:3:{s:3:"cod";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:36:"Оплата при доставке";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:13:"free_checkout";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:13:"Free Checkout";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:6:"liqpay";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:6:"LIQPAY";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}}', 1),
(7586, 0, 'simple', 'simple_shipping_titles', 'a:4:{s:10:"courier_ua";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:37:"Курьерская доставка";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:4:"flat";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:62:"Фиксированная стоимость доставки";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:10:"novaposhta";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:40:"Отправка Новой Почтой";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:6:"pickup";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:18:"Самовывоз";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}}', 1),
(7675, 0, 'config', 'config_smtp_port', '465', 0),
(7674, 0, 'config', 'config_smtp_password', '1q@W3e$R', 0),
(7582, 0, 'simple', 'simple_header_tag', 'h3', 0),
(7583, 0, 'simple', 'simple_headers', 'a:2:{s:11:"header_main";a:3:{s:2:"id";s:11:"header_main";s:5:"label";a:1:{s:2:"ru";s:37:"Основная информация";}s:5:"place";s:8:"customer";}s:14:"header_address";a:3:{s:2:"id";s:14:"header_address";s:5:"label";a:1:{s:2:"ru";s:10:"Адрес";}s:5:"place";s:8:"customer";}}', 1),
(7580, 0, 'simple', 'simple_joomla_path', '', 0),
(7581, 0, 'simple', 'simple_joomla_route', '', 0),
(7579, 0, 'simple', 'simple_set_account_address', 'a:1:{s:5:"group";a:2:{i:1;s:67:"main_country_id,main_zone_id,main_city,main_postcode,main_address_1";i:2;s:67:"main_country_id,main_zone_id,main_city,main_postcode,main_address_1";}}', 1),
(7578, 0, 'simple', 'simple_set_account_info', 'a:1:{s:5:"group";a:2:{i:1;s:54:"main_email,main_firstname,main_lastname,main_telephone";i:2;s:57:"main_email,custom_resp_Name,custom_company,main_telephone";}}', 1),
(7577, 0, 'simple', 'simple_account_view_customer_type', '0', 0),
(7575, 0, 'simple', 'simple_registration_view_customer_type', '1', 0),
(7576, 0, 'simple', 'simple_set_registration', 'a:1:{s:5:"group";a:2:{i:1;s:66:"header_main,main_email,main_firstname,main_lastname,main_telephone";i:2;s:69:"header_main,main_email,custom_resp_Name,custom_company,main_telephone";}}', 1),
(7568, 0, 'simple', 'simple_registration_password_length_max', '20', 0),
(7569, 0, 'simple', 'simple_registration_agreement_id', '0', 0),
(7570, 0, 'simple', 'simple_registration_agreement_checkbox', '1', 0),
(7571, 0, 'simple', 'simple_registration_agreement_checkbox_init', '0', 0),
(7572, 0, 'simple', 'simple_registration_captcha', '0', 0),
(7573, 0, 'simple', 'simple_registration_subscribe', '2', 0),
(7574, 0, 'simple', 'simple_registration_subscribe_init', '1', 0),
(7563, 0, 'simple', 'placeholder_ru', '', 0),
(7564, 0, 'simple', 'simple_registration_view_email_confirm', '0', 0),
(7565, 0, 'simple', 'simple_registration_generate_password', '0', 0),
(7567, 0, 'simple', 'simple_registration_password_length_min', '4', 0),
(7705, 0, 'filterpro', 'filterpro_setting', 'a:58:{s:12:"price_slider";s:1:"1";s:20:"display_manufacturer";s:8:"checkbox";s:16:"display_option_2";s:8:"checkbox";s:16:"display_option_1";s:8:"checkbox";s:16:"display_option_5";s:8:"checkbox";s:17:"display_option_11";s:8:"checkbox";s:17:"display_option_31";s:8:"checkbox";s:17:"display_option_20";s:8:"checkbox";s:17:"display_option_15";s:8:"checkbox";s:17:"display_option_19";s:8:"checkbox";s:17:"display_option_22";s:8:"checkbox";s:17:"display_option_18";s:8:"checkbox";s:17:"display_option_26";s:8:"checkbox";s:17:"display_option_30";s:8:"checkbox";s:17:"display_option_13";s:8:"checkbox";s:17:"display_option_23";s:8:"checkbox";s:17:"display_option_25";s:8:"checkbox";s:17:"display_option_21";s:8:"checkbox";s:17:"display_option_14";s:8:"checkbox";s:17:"display_option_24";s:8:"checkbox";s:17:"display_option_28";s:8:"checkbox";s:17:"display_option_27";s:8:"checkbox";s:17:"display_option_29";s:8:"checkbox";s:17:"display_option_17";s:8:"checkbox";s:17:"display_option_16";s:8:"checkbox";s:20:"display_attribute_20";s:8:"checkbox";s:20:"display_attribute_28";s:8:"checkbox";s:20:"display_attribute_38";s:8:"checkbox";s:20:"display_attribute_36";s:8:"checkbox";s:20:"display_attribute_37";s:8:"checkbox";s:20:"display_attribute_19";s:8:"checkbox";s:20:"display_attribute_24";s:8:"checkbox";s:20:"display_attribute_25";s:8:"checkbox";s:20:"display_attribute_18";s:8:"checkbox";s:20:"display_attribute_27";s:8:"checkbox";s:20:"display_attribute_32";s:8:"checkbox";s:20:"display_attribute_35";s:8:"checkbox";s:20:"display_attribute_33";s:4:"none";s:20:"display_attribute_34";s:8:"checkbox";s:20:"display_attribute_29";s:8:"checkbox";s:20:"display_attribute_22";s:8:"checkbox";s:20:"display_attribute_31";s:8:"checkbox";s:20:"display_attribute_21";s:8:"checkbox";s:20:"display_attribute_26";s:8:"checkbox";s:20:"display_attribute_30";s:4:"none";s:20:"display_attribute_23";s:4:"none";s:20:"display_attribute_17";s:8:"checkbox";s:20:"display_attribute_16";s:8:"checkbox";s:20:"display_attribute_15";s:8:"checkbox";s:14:"attr_delimeter";s:1:":";s:11:"option_mode";s:2:"or";s:14:"attribute_mode";s:2:"or";s:11:"sku_display";s:1:"0";s:13:"model_display";s:1:"0";s:13:"brand_display";s:1:"0";s:16:"location_display";s:1:"0";s:11:"upc_display";s:1:"0";s:13:"stock_display";s:1:"0";}', 1),
(7566, 0, 'simple', 'simple_registration_password_confirm', '0', 0),
(7562, 0, 'simple', 'mask', '', 0),
(7561, 0, 'simple', 'save_to', '', 0),
(7560, 0, 'simple', 'validation_error_ru', '', 0),
(7559, 0, 'simple', 'validation_regexp', '', 0),
(7558, 0, 'simple', 'validation_max', '', 0),
(7557, 0, 'simple', 'validation_min', '', 0),
(7556, 0, 'simple', 'validation_type', '0', 0),
(7555, 0, 'simple', 'values_ru', '', 0),
(7554, 0, 'simple', 'date_only_for', '', 0),
(7553, 0, 'simple', 'date_end', '', 0),
(7552, 0, 'simple', 'date_max', '', 0),
(7551, 0, 'simple', 'date_start', '', 0),
(7550, 0, 'simple', 'date_min', '', 0),
(7549, 0, 'simple', 'place', 'customer', 0),
(7548, 0, 'simple', 'type', 'text', 0),
(7547, 0, 'simple', 'object_field', '', 0),
(7545, 0, 'simple', 'label_ru', '', 0),
(7546, 0, 'simple', 'object_type', 'order', 0),
(7544, 0, 'simple', 'id', '', 0),
(7540, 0, 'simple', 'simple_group_payment', 'a:2:{i:1;s:10:"cod,liqpay";i:2;s:3:"cod";}', 1),
(7541, 0, 'simple', 'simple_group_shipping', 'a:2:{i:1;s:28:"courier_ua,novaposhta,pickup";i:2;s:4:"flat";}', 1),
(7542, 0, 'simple', 'simple_fields_main', 'a:15:{s:10:"main_email";a:16:{s:2:"id";s:10:"main_email";s:5:"label";a:1:{s:2:"ru";s:6:"E-mail";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"3";s:17:"validation_regexp";s:56:"/^[a-z0-9_\\.\\-]{1,20}@[a-z0-9\\.\\-]{1,20}\\.[a-z]{2,4}$/si";s:16:"validation_error";a:1:{s:2:"ru";s:62:"Ошибка в адресе электронной почты";}s:7:"save_to";s:5:"email";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_firstname";a:18:{s:2:"id";s:14:"main_firstname";s:5:"label";a:1:{s:2:"ru";s:6:"Имя";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:60:"Имя должно быть от 1 до 30 символов";}s:7:"save_to";s:9:"firstname";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:13:"main_lastname";a:18:{s:2:"id";s:13:"main_lastname";s:5:"label";a:1:{s:2:"ru";s:14:"Фамилия";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:68:"Фамилия должно быть от 1 до 30 символов";}s:7:"save_to";s:8:"lastname";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_telephone";a:18:{s:2:"id";s:14:"main_telephone";s:5:"label";a:1:{s:2:"ru";s:14:"Телефон";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:2:"32";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:69:"Телефон должен быть от 3 до 32 символов!";}s:7:"save_to";s:9:"telephone";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:8:"main_fax";a:18:{s:2:"id";s:8:"main_fax";s:5:"label";a:1:{s:2:"ru";s:8:"Факс";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:3:"fax";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_company";a:18:{s:2:"id";s:12:"main_company";s:5:"label";a:1:{s:2:"ru";s:16:"Компания";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:7:"company";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:15:"main_company_id";a:18:{s:2:"id";s:15:"main_company_id";s:5:"label";a:1:{s:2:"ru";s:10:"Company ID";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:10:"company_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:11:"main_tax_id";a:18:{s:2:"id";s:11:"main_tax_id";s:5:"label";a:1:{s:2:"ru";s:6:"Tax ID";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:6:"tax_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_address_1";a:18:{s:2:"id";s:14:"main_address_1";s:5:"label";a:1:{s:2:"ru";s:10:"Адрес";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:65:"Адрес должен быть от 3 до 128 символов";}s:7:"save_to";s:9:"address_1";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_address_2";a:18:{s:2:"id";s:14:"main_address_2";s:5:"label";a:1:{s:2:"ru";s:35:"Адрес (продолжение)";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:9:"address_2";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:13:"main_postcode";a:18:{s:2:"id";s:13:"main_postcode";s:5:"label";a:1:{s:2:"ru";s:12:"Индекс";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:2:"10";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:83:"Почтовый индекс должен быть от 2 до 10 символов";}s:7:"save_to";s:8:"postcode";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:15:"main_country_id";a:18:{s:2:"id";s:15:"main_country_id";s:5:"label";a:1:{s:2:"ru";s:12:"Страна";}s:4:"type";s:6:"select";s:6:"values";s:9:"countries";s:4:"init";s:1:"0";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:1:{s:2:"ru";s:50:"Пожалуйста выберите страну";}s:7:"save_to";s:10:"country_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_zone_id";a:18:{s:2:"id";s:12:"main_zone_id";s:5:"label";a:1:{s:2:"ru";s:12:"Регион";}s:4:"type";s:6:"select";s:6:"values";s:5:"zones";s:4:"init";s:1:"0";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:1:{s:2:"ru";s:50:"Пожалуйста выберите регион";}s:7:"save_to";s:7:"zone_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:9:"main_city";a:18:{s:2:"id";s:9:"main_city";s:5:"label";a:1:{s:2:"ru";s:10:"Город";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:65:"Город должен быть от 2 до 128 символов";}s:7:"save_to";s:4:"city";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_comment";a:18:{s:2:"id";s:12:"main_comment";s:5:"label";a:1:{s:2:"ru";s:22:"Комментарий";}s:4:"type";s:8:"textarea";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:7:"comment";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}}', 1),
(7543, 0, 'simple', 'simple_fields_custom', 'a:2:{s:14:"custom_company";a:21:{s:2:"id";s:14:"custom_company";s:5:"label";a:1:{s:2:"ru";s:39:"Название предприятия";}s:11:"object_type";s:8:"customer";s:12:"object_field";s:14:"custom_company";s:4:"type";s:4:"text";s:5:"place";s:8:"customer";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"1";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:54:"Введите название предприятия";}s:7:"save_to";s:0:"";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:16:"custom_resp_Name";a:21:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";a:1:{s:2:"ru";s:29:"Контактное лицо";}s:11:"object_type";s:8:"customer";s:12:"object_field";s:9:"firstname";s:4:"type";s:4:"text";s:5:"place";s:8:"customer";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"1";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:59:"Введите имя ответственного лица";}s:7:"save_to";s:0:"";s:10:"save_label";s:1:"1";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}}', 1),
(7526, 0, 'simple', 'simple_address_hide_if_logged', '0', 0),
(7527, 0, 'simple', 'simple_show_shipping_address', '1', 0),
(7528, 0, 'simple', 'simple_show_shipping_address_same_init', '1', 0),
(7529, 0, 'simple', 'simple_show_shipping_address_same_show', '1', 0),
(7530, 0, 'simple', 'simple_shipping_view_address_select', '1', 0),
(7531, 0, 'simple', 'simple_shipping_address_use_geo_selector', '0', 0),
(7532, 0, 'simple', 'simple_shipping_address_geo_selector_type', '1', 0),
(7533, 0, 'simple', 'simple_set_checkout_address', 'a:3:{s:5:"group";a:2:{i:1;s:96:"main_firstname,main_lastname,main_country_id,main_zone_id,main_city,main_postcode,main_address_1";i:2;s:67:"main_country_id,main_zone_id,main_city,main_postcode,main_address_1";}s:8:"shipping";a:2:{i:1;a:4:{s:10:"courier_ua";s:0:"";s:4:"flat";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}i:2;a:4:{s:10:"courier_ua";s:0:"";s:4:"flat";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}}s:7:"payment";a:2:{i:1;a:3:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";s:6:"liqpay";s:0:"";}i:2;a:3:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";s:6:"liqpay";s:0:"";}}}', 1),
(7539, 0, 'simple', 'simple_links_2', 'a:5:{s:10:"courier_ua";s:0:"";s:4:"flat";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";s:19:"simple_links_2_stub";s:0:"";}', 1),
(7534, 0, 'simple', 'shipping_code_for_customer_1', '', 0),
(7535, 0, 'simple', 'shipping_code_for_customer_2', '', 0),
(7536, 0, 'simple', 'shipping_code_for_shipping_1', '', 0),
(7537, 0, 'simple', 'shipping_code_for_shipping_2', '', 0),
(7538, 0, 'simple', 'simple_links', 'a:3:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";s:6:"liqpay";s:0:"";}', 1),
(7670, 0, 'config', 'config_mail_protocol', 'mail', 0),
(7669, 0, 'config', 'config_ftp_status', '0', 0),
(7668, 0, 'config', 'config_ftp_root', '', 0),
(7667, 0, 'config', 'config_ftp_password', '', 0),
(7666, 0, 'config', 'config_ftp_username', '', 0),
(7665, 0, 'config', 'config_ftp_port', '21', 0),
(7664, 0, 'config', 'config_ftp_host', 'localhost', 0),
(7663, 0, 'config', 'config_image_cart_height', '47', 0),
(7662, 0, 'config', 'config_image_cart_width', '47', 0),
(7661, 0, 'config', 'config_image_wishlist_height', '47', 0),
(7660, 0, 'config', 'config_image_wishlist_width', '47', 0),
(7659, 0, 'config', 'config_image_compare_height', '170', 0),
(2098, 0, 'liqpay', 'liqpay_signature', 'тб', 0),
(2099, 0, 'liqpay', 'liqpay_type', 'liqpay', 0),
(2100, 0, 'liqpay', 'liqpay_total', '', 0),
(2101, 0, 'liqpay', 'liqpay_order_status_id', '3', 0),
(2102, 0, 'liqpay', 'liqpay_geo_zone_id', '0', 0),
(2103, 0, 'liqpay', 'liqpay_status', '1', 0),
(2104, 0, 'liqpay', 'liqpay_sort_order', '', 0),
(7658, 0, 'config', 'config_image_compare_width', '150', 0),
(7657, 0, 'config', 'config_image_related_height', '250', 0),
(7656, 0, 'config', 'config_image_related_width', '250', 0),
(7655, 0, 'config', 'config_image_additional_height', '170', 0),
(7654, 0, 'config', 'config_image_additional_width', '150', 0),
(7653, 0, 'config', 'config_image_product_height', '80', 0),
(7652, 0, 'config', 'config_image_product_width', '80', 0),
(7651, 0, 'config', 'config_image_popup_height', '500', 0),
(7650, 0, 'config', 'config_image_popup_width', '500', 0),
(7649, 0, 'config', 'config_image_thumb_height', '250', 0),
(7648, 0, 'config', 'config_image_thumb_width', '250', 0),
(7646, 0, 'config', 'config_image_category_width', '550', 0),
(7647, 0, 'config', 'config_image_category_height', '124', 0),
(7645, 0, 'config', 'config_icon', 'data/icon.png', 0),
(7644, 0, 'config', 'config_logo', 'data/logo3.png', 0),
(7643, 0, 'config', 'config_return_status_id', '2', 0),
(7642, 0, 'config', 'config_return_id', '0', 0),
(7641, 0, 'config', 'config_commission', '5', 0),
(7640, 0, 'config', 'config_affiliate_id', '0', 0),
(7639, 0, 'config', 'config_stock_status_id', '5', 0),
(7638, 0, 'config', 'config_stock_checkout', '0', 0),
(7637, 0, 'config', 'config_stock_warning', '1', 0),
(7636, 0, 'config', 'config_stock_display', '0', 0),
(7525, 0, 'simple', 'simple_set_checkout_customer', 'a:3:{s:5:"group";a:2:{i:1;s:162:"header_main,main_email,main_firstname,main_lastname,main_telephone,header_address,main_country_id,main_zone_id,main_city,main_postcode,main_address_1,main_comment";i:2;s:165:"header_main,custom_resp_Name,custom_company,main_email,main_telephone,header_address,main_country_id,main_zone_id,main_city,main_address_1,main_postcode,main_comment";}s:8:"shipping";a:2:{i:1;a:4:{s:10:"courier_ua";s:0:"";s:4:"flat";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}i:2;a:4:{s:10:"courier_ua";s:0:"";s:4:"flat";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}}s:7:"payment";a:2:{i:1;a:3:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";s:6:"liqpay";s:0:"";}i:2;a:3:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";s:6:"liqpay";s:0:"";}}}', 1),
(7524, 0, 'simple', 'simple_customer_view_customer_type', '0', 0),
(7523, 0, 'simple', 'simple_customer_geo_selector_type', '1', 0),
(7522, 0, 'simple', 'simple_customer_use_geo_selector', '0', 0),
(7521, 0, 'simple', 'simple_customer_view_address_select', '1', 0),
(7518, 0, 'simple', 'simple_customer_action_subscribe', '2', 0),
(7519, 0, 'simple', 'simple_customer_view_customer_subscribe_init', '1', 0),
(7520, 0, 'simple', 'simple_customer_view_login', '1', 0),
(7517, 0, 'simple', 'simple_customer_view_password_length_max', '20', 0),
(7516, 0, 'simple', 'simple_customer_view_password_length_min', '4', 0),
(7514, 0, 'simple', 'simple_customer_generate_password', '0', 0),
(7515, 0, 'simple', 'simple_customer_view_password_confirm', '0', 0),
(7513, 0, 'simple', 'simple_customer_view_customer_register_init', '0', 0),
(7512, 0, 'simple', 'simple_customer_view_email_confirm', '0', 0),
(7508, 0, 'simple', 'simple_customer_hide_if_logged', '0', 0),
(7509, 0, 'simple', 'simple_show_will_be_registered', '1', 0),
(7510, 0, 'simple', 'simple_customer_action_register', '2', 0),
(7511, 0, 'simple', 'simple_customer_view_email', '2', 0),
(7635, 0, 'config', 'config_complete_status_id', '5', 0),
(4699, 0, 'featured', 'featured_product', '120,177,52,138,65,56,127,96', 0),
(4698, 0, 'featured', 'product', '', 0),
(3980, 0, 'product_viewed', 'product_viewed_module', 'a:3:{i:0;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:1;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:2;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(4705, 0, 'bestseller', 'bestseller_module', 'a:8:{i:0;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:7:{s:5:"limit";s:1:"3";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:7;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(4706, 0, 'watermark', 'watermark', 'a:14:{s:6:"status";s:1:"1";s:4:"type";s:3:"img";s:5:"image";s:42:"data/водяной знак лого2.png";s:14:"watermark_text";s:0:"";s:14:"watermark_font";s:9:"arial.ttf";s:19:"watermark_font_size";s:2:"12";s:5:"color";s:5:"0,0,0";s:5:"angle";s:1:"0";s:8:"position";s:6:"middle";s:6:"offset";a:2:{s:1:"x";s:1:"0";s:1:"y";s:1:"0";}s:7:"scaling";a:2:{s:5:"width";s:3:"550";s:6:"height";s:4:"none";}s:7:"opacity";s:2:"50";s:3:"min";a:2:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";}s:7:"folders";a:1:{i:0;s:9:"data/demo";}}', 1),
(7634, 0, 'config', 'config_order_status_id', '1', 0),
(7633, 0, 'config', 'config_invoice_prefix', 'INV-2014-00', 0),
(7632, 0, 'config', 'config_order_edit', '3', 0),
(7631, 0, 'config', 'config_checkout_id', '0', 0),
(7630, 0, 'config', 'config_guest_checkout', '1', 0),
(7625, 0, 'config', 'config_customer_group_id', '1', 0),
(7626, 0, 'config', 'config_customer_group_display', 'a:2:{i:0;s:1:"1";i:1;s:1:"2";}', 1),
(7627, 0, 'config', 'config_customer_price', '0', 0),
(7628, 0, 'config', 'config_account_id', '0', 0),
(7629, 0, 'config', 'config_cart_weight', '0', 0),
(7624, 0, 'config', 'config_customer_online', '0', 0),
(7623, 0, 'config', 'config_tax_customer', 'shipping', 0),
(7622, 0, 'config', 'config_tax_default', '', 0),
(7621, 0, 'config', 'config_vat', '0', 0),
(7620, 0, 'config', 'config_tax', '0', 0),
(7619, 0, 'config', 'config_voucher_max', '1000', 0),
(7618, 0, 'config', 'config_voucher_min', '1', 0),
(7617, 0, 'config', 'config_download', '1', 0),
(7616, 0, 'config', 'config_review_status', '0', 0),
(7614, 0, 'config', 'config_admin_limit', '20', 0),
(7615, 0, 'config', 'config_product_count', '1', 0),
(7613, 0, 'config', 'config_catalog_limit', '15', 0),
(7612, 0, 'config', 'config_weight_class_id', '1', 0),
(7611, 0, 'config', 'config_length_class_id', '1', 0),
(7610, 0, 'config', 'config_currency_auto', '0', 0),
(7609, 0, 'config', 'config_currency', 'UAH', 0),
(7608, 0, 'config', 'config_admin_language', 'ru', 0),
(7607, 0, 'config', 'config_language', 'ru', 0),
(7605, 0, 'config', 'config_country_id', '220', 0),
(7606, 0, 'config', 'config_zone_id', '3487', 0),
(7604, 0, 'config', 'config_layout_id', '4', 0),
(7603, 0, 'config', 'config_template', 'OPC040084', 0),
(7602, 0, 'config', 'config_meta_description', 'ABC-Медтехника', 0),
(7601, 0, 'config', 'config_title', 'ABC-Медтехника', 0),
(7600, 0, 'config', 'config_fax', '+38 (057) 716-41-13', 0),
(7597, 0, 'config', 'config_address', 'г. Харьков, пр. 50 лет СССР, 56/3', 0),
(7599, 0, 'config', 'config_telephone', '+38 (097) 979-38-29', 0),
(7598, 0, 'config', 'config_email', 'abcmedtehnik@gmail.com', 0),
(4818, 0, 'flat', 'flat_cost', '', 0),
(4819, 0, 'flat', 'flat_tax_class_id', '0', 0),
(4820, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(4821, 0, 'flat', 'flat_status', '1', 0),
(4822, 0, 'flat', 'flat_sort_order', '4', 0),
(7506, 0, 'simple', 'simple_payment_view_autoselect_first', '0', 0),
(7507, 0, 'simple', 'simple_payment_view_address_full', 'a:3:{s:3:"cod";s:1:"0";s:13:"free_checkout";s:1:"0";s:6:"liqpay";s:1:"0";}', 1),
(7504, 0, 'simple', 'simple_payment_methods_hide', '0', 0),
(7505, 0, 'simple', 'simple_payment_view_address_empty', '1', 0),
(7503, 0, 'simple', 'simple_shipping_view_address_full', 'a:4:{s:10:"courier_ua";s:1:"0";s:4:"flat";s:1:"0";s:10:"novaposhta";s:1:"0";s:6:"pickup";s:1:"0";}', 1),
(7502, 0, 'simple', 'simple_shipping_view_autoselect_first', '0', 0),
(7494, 0, 'simple', 'simple_common_view_agreement_text', '0', 0),
(7495, 0, 'simple', 'simple_common_view_agreement_checkbox', '0', 0),
(7496, 0, 'simple', 'simple_common_view_agreement_checkbox_init', '0', 0),
(7497, 0, 'simple', 'simple_common_view_help_id', '0', 0),
(7498, 0, 'simple', 'simple_common_view_help_text', '0', 0),
(7499, 0, 'simple', 'simple_shipping_methods_hide', '0', 0),
(7500, 0, 'simple', 'simple_shipping_view_title', '1', 0),
(7501, 0, 'simple', 'simple_shipping_view_address_empty', '1', 0),
(7493, 0, 'simple', 'simple_common_view_agreement_id', '0', 0),
(7492, 0, 'simple', 'simple_max_weight', '', 0),
(7491, 0, 'simple', 'simple_min_weight', '', 0),
(7490, 0, 'simple', 'simple_max_quantity', '', 0),
(7489, 0, 'simple', 'simple_min_quantity', '', 0),
(7488, 0, 'simple', 'simple_max_amount', '', 0),
(7487, 0, 'simple', 'simple_min_amount', '', 0),
(7486, 0, 'simple', 'simple_show_weight', '0', 0),
(7485, 0, 'simple', 'simple_use_total', '0', 0),
(7484, 0, 'simple', 'simple_childs_payment_first', '0', 0),
(7483, 0, 'simple', 'simple_minify', '0', 0),
(7482, 0, 'simple', 'simple_comment_target', '', 0),
(7481, 0, 'simple', 'simple_customer_group_id_after_reg', '1', 0),
(7480, 0, 'simple', 'simple_type_of_selection_of_group', 'radio', 0),
(7479, 0, 'simple', 'simple_geoip_mode', '1', 0),
(7475, 0, 'simple', 'simple_use_cookies', '0', 0),
(7476, 0, 'simple', 'simple_show_back', '0', 0),
(7477, 0, 'simple', 'simple_checkout_asap_for_not_logged', '1', 0),
(7478, 0, 'simple', 'simple_checkout_asap_for_logged', '1', 0),
(7474, 0, 'simple', 'simple_set_for_reload', 'main_country_id,main_zone_id,main_city,main_postcode,main_address_1', 0),
(7473, 0, 'simple', 'simple_empty_email', '', 0),
(7472, 0, 'simple', 'simple_disable_guest_checkout', '0', 0),
(7471, 0, 'simple', 'simple_debug', '0', 0),
(7468, 0, 'simple', 'simple_common_template', '{help}{customer}{shipping}{payment}{cart}{agreement}{payment_form}', 0),
(7706, 0, 'filterpro', 'filterpro_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(7596, 0, 'config', 'config_owner', 'Malibu', 0),
(7469, 0, 'simple', 'simple_steps', '0', 0),
(7470, 0, 'simple', 'simple_steps_summary', '0', 0),
(7595, 0, 'config', 'config_name', 'ABC-Медтехника', 0),
(7589, 0, 'simple', 'simple_customer_two_column', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'На складе'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, 'Под заказ');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2014-11-01 15:55:31'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2014-11-01 15:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=793 ;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(730, 'manufacturer_id=8', 'apple'),
(785, 'information_id=4', 'about_us'),
(791, 'category_id=59', 'акушерство'),
(792, 'category_id=60', 'Дезинфекция');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '97c0ba14aa4449319f43684e8974321a684f7e73', '1018e0b4b', '', '', 'admin@example.com', '', '194.24.187.151', 1, '2014-11-01 10:33:37'),
(2, 11, 'editor', 'a885a103768adca1e7fc81d0cc7c11dca32a50e4', '90898097a', 'Редактор', 'Редактор', 'editor@email.com', '', '194.24.187.151', 1, '2014-12-12 04:31:20');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Администратор', 'a:2:{s:6:"access";a:169:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:19:"shipping/courier_ua";i:122;s:14:"shipping/fedex";i:123;s:13:"shipping/flat";i:124;s:13:"shipping/free";i:125;s:13:"shipping/item";i:126;s:19:"shipping/novaposhta";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:14:"payment/liqpay";i:149;s:14:"module/special";i:150;s:13:"module/latest";i:151;s:13:"module/filter";i:152;s:17:"module/bestseller";i:153;s:19:"module/tm_slideshow";i:154;s:15:"total/sub_total";i:155;s:16:"module/magnorcms";i:156;s:17:"module/bestseller";i:157;s:18:"module/information";i:158;s:17:"module/bestseller";i:159;s:14:"payment/liqpay";i:160;s:16:"module/watermark";i:161;s:13:"module/simple";i:162;s:21:"module/product_viewed";i:163;s:14:"module/special";i:164;s:13:"module/filter";i:165;s:14:"module/welcome";i:166;s:15:"module/category";i:167;s:13:"shipping/flat";i:168;s:16:"module/filterpro";}s:6:"modify";a:169:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:19:"shipping/courier_ua";i:122;s:14:"shipping/fedex";i:123;s:13:"shipping/flat";i:124;s:13:"shipping/free";i:125;s:13:"shipping/item";i:126;s:19:"shipping/novaposhta";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:14:"payment/liqpay";i:149;s:14:"module/special";i:150;s:13:"module/latest";i:151;s:13:"module/filter";i:152;s:17:"module/bestseller";i:153;s:19:"module/tm_slideshow";i:154;s:15:"total/sub_total";i:155;s:16:"module/magnorcms";i:156;s:17:"module/bestseller";i:157;s:18:"module/information";i:158;s:17:"module/bestseller";i:159;s:14:"payment/liqpay";i:160;s:16:"module/watermark";i:161;s:13:"module/simple";i:162;s:21:"module/product_viewed";i:163;s:14:"module/special";i:164;s:13:"module/filter";i:165;s:14:"module/welcome";i:166;s:15:"module/category";i:167;s:13:"shipping/flat";i:168;s:16:"module/filterpro";}}'),
(11, 'Редактор', 'a:2:{s:6:"access";a:160:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:20:"module/adsattributes";i:40;s:16:"module/affiliate";i:41;s:29:"module/amazon_checkout_layout";i:42;s:13:"module/banner";i:43;s:17:"module/bestseller";i:44;s:15:"module/carousel";i:45;s:15:"module/category";i:46;s:18:"module/ebaydisplay";i:47;s:15:"module/featured";i:48;s:13:"module/filter";i:49;s:16:"module/filterpro";i:50;s:18:"module/google_talk";i:51;s:18:"module/information";i:52;s:13:"module/latest";i:53;s:16:"module/magnorcms";i:54;s:17:"module/openbaypro";i:55;s:16:"module/pp_layout";i:56;s:21:"module/product_viewed";i:57;s:13:"module/simple";i:58;s:16:"module/slideshow";i:59;s:14:"module/special";i:60;s:12:"module/store";i:61;s:19:"module/tm_slideshow";i:62;s:16:"module/watermark";i:63;s:14:"module/welcome";i:64;s:14:"openbay/amazon";i:65;s:22:"openbay/amazon_listing";i:66;s:22:"openbay/amazon_product";i:67;s:16:"openbay/amazonus";i:68;s:24:"openbay/amazonus_listing";i:69;s:24:"openbay/amazonus_product";i:70;s:20:"openbay/ebay_profile";i:71;s:21:"openbay/ebay_template";i:72;s:15:"openbay/openbay";i:73;s:23:"payment/amazon_checkout";i:74;s:24:"payment/authorizenet_aim";i:75;s:21:"payment/bank_transfer";i:76;s:14:"payment/cheque";i:77;s:11:"payment/cod";i:78;s:15:"payment/factura";i:79;s:21:"payment/free_checkout";i:80;s:22:"payment/klarna_account";i:81;s:22:"payment/klarna_invoice";i:82;s:14:"payment/liqpay";i:83;s:20:"payment/moneybookers";i:84;s:14:"payment/nochex";i:85;s:15:"payment/paymate";i:86;s:16:"payment/paypoint";i:87;s:13:"payment/payza";i:88;s:26:"payment/perpetual_payments";i:89;s:18:"payment/pp_express";i:90;s:25:"payment/pp_payflow_iframe";i:91;s:14:"payment/pp_pro";i:92;s:21:"payment/pp_pro_iframe";i:93;s:17:"payment/pp_pro_pf";i:94;s:17:"payment/pp_pro_uk";i:95;s:19:"payment/pp_standard";i:96;s:18:"payment/privat24gs";i:97;s:15:"payment/sagepay";i:98;s:22:"payment/sagepay_direct";i:99;s:18:"payment/sagepay_us";i:100;s:20:"payment/shoputils_ik";i:101;s:19:"payment/twocheckout";i:102;s:28:"payment/web_payment_software";i:103;s:16:"payment/worldpay";i:104;s:27:"report/affiliate_commission";i:105;s:22:"report/customer_credit";i:106;s:22:"report/customer_online";i:107;s:21:"report/customer_order";i:108;s:22:"report/customer_reward";i:109;s:24:"report/product_purchased";i:110;s:21:"report/product_viewed";i:111;s:18:"report/sale_coupon";i:112;s:17:"report/sale_order";i:113;s:18:"report/sale_return";i:114;s:20:"report/sale_shipping";i:115;s:15:"report/sale_tax";i:116;s:14:"sale/affiliate";i:117;s:12:"sale/contact";i:118;s:11:"sale/coupon";i:119;s:13:"sale/customer";i:120;s:20:"sale/customer_ban_ip";i:121;s:19:"sale/customer_group";i:122;s:10:"sale/order";i:123;s:14:"sale/recurring";i:124;s:11:"sale/return";i:125;s:12:"sale/voucher";i:126;s:18:"sale/voucher_theme";i:127;s:15:"setting/setting";i:128;s:13:"setting/store";i:129;s:16:"shipping/auspost";i:130;s:17:"shipping/citylink";i:131;s:19:"shipping/courier_ua";i:132;s:14:"shipping/fedex";i:133;s:13:"shipping/flat";i:134;s:13:"shipping/free";i:135;s:13:"shipping/item";i:136;s:19:"shipping/novaposhta";i:137;s:23:"shipping/parcelforce_48";i:138;s:15:"shipping/pickup";i:139;s:19:"shipping/royal_mail";i:140;s:12:"shipping/ups";i:141;s:13:"shipping/usps";i:142;s:15:"shipping/weight";i:143;s:11:"tool/backup";i:144;s:14:"tool/error_log";i:145;s:12:"total/coupon";i:146;s:12:"total/credit";i:147;s:14:"total/handling";i:148;s:16:"total/klarna_fee";i:149;s:19:"total/low_order_fee";i:150;s:12:"total/reward";i:151;s:14:"total/shipping";i:152;s:15:"total/sub_total";i:153;s:9:"total/tax";i:154;s:11:"total/total";i:155;s:13:"total/voucher";i:156;s:9:"user/user";i:157;s:20:"user/user_permission";i:158;s:20:"module/adsattributes";i:159;s:16:"module/affiliate";}s:6:"modify";a:93:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:19:"catalog/information";i:4;s:20:"catalog/manufacturer";i:5;s:14:"catalog/option";i:6;s:15:"catalog/product";i:7;s:15:"catalog/profile";i:8;s:18:"common/filemanager";i:9;s:13:"design/banner";i:10;s:19:"design/custom_field";i:11;s:13:"design/layout";i:12;s:14:"extension/feed";i:13;s:17:"extension/manager";i:14;s:16:"extension/module";i:15;s:17:"extension/payment";i:16;s:18:"extension/shipping";i:17;s:15:"extension/total";i:18;s:16:"feed/google_base";i:19;s:19:"feed/google_sitemap";i:20;s:20:"localisation/country";i:21;s:21:"localisation/currency";i:22;s:21:"localisation/geo_zone";i:23;s:21:"localisation/language";i:24;s:25:"localisation/length_class";i:25;s:25:"localisation/order_status";i:26;s:26:"localisation/return_action";i:27;s:26:"localisation/return_reason";i:28;s:26:"localisation/return_status";i:29;s:25:"localisation/stock_status";i:30;s:25:"localisation/weight_class";i:31;s:17:"localisation/zone";i:32;s:14:"module/account";i:33;s:20:"module/adsattributes";i:34;s:13:"module/banner";i:35;s:17:"module/bestseller";i:36;s:15:"module/carousel";i:37;s:15:"module/category";i:38;s:15:"module/featured";i:39;s:16:"module/filterpro";i:40;s:18:"module/google_talk";i:41;s:18:"module/information";i:42;s:13:"module/latest";i:43;s:21:"module/product_viewed";i:44;s:13:"module/simple";i:45;s:16:"module/slideshow";i:46;s:14:"module/special";i:47;s:12:"module/store";i:48;s:19:"module/tm_slideshow";i:49;s:16:"module/watermark";i:50;s:14:"module/welcome";i:51;s:21:"payment/bank_transfer";i:52;s:14:"payment/cheque";i:53;s:11:"payment/cod";i:54;s:15:"payment/factura";i:55;s:21:"payment/free_checkout";i:56;s:14:"payment/liqpay";i:57;s:18:"payment/privat24gs";i:58;s:22:"report/customer_online";i:59;s:21:"report/customer_order";i:60;s:24:"report/product_purchased";i:61;s:21:"report/product_viewed";i:62;s:17:"report/sale_order";i:63;s:18:"report/sale_return";i:64;s:20:"report/sale_shipping";i:65;s:12:"sale/contact";i:66;s:13:"sale/customer";i:67;s:20:"sale/customer_ban_ip";i:68;s:19:"sale/customer_group";i:69;s:10:"sale/order";i:70;s:14:"sale/recurring";i:71;s:11:"sale/return";i:72;s:15:"setting/setting";i:73;s:13:"setting/store";i:74;s:17:"shipping/citylink";i:75;s:19:"shipping/courier_ua";i:76;s:13:"shipping/flat";i:77;s:13:"shipping/free";i:78;s:13:"shipping/item";i:79;s:19:"shipping/novaposhta";i:80;s:23:"shipping/parcelforce_48";i:81;s:15:"shipping/pickup";i:82;s:15:"shipping/weight";i:83;s:11:"tool/backup";i:84;s:14:"tool/error_log";i:85;s:14:"total/handling";i:86;s:14:"total/shipping";i:87;s:15:"total/sub_total";i:88;s:9:"total/tax";i:89;s:11:"total/total";i:90;s:9:"user/user";i:91;s:20:"module/adsattributes";i:92;s:16:"module/affiliate";}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(2, 2, 'Граммы', 'г'),
(1, 2, 'Килограммы', 'кг');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4034 ;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3480, 220, 'Черкасская область', 'CK', 1),
(3481, 220, 'Черниговская область', 'CH', 1),
(3482, 220, 'Черновицкая область', 'CV', 1),
(3483, 220, 'Автономная Республика Крым', 'CR', 1),
(3484, 220, 'Днепропетровская область', 'DN', 1),
(3485, 220, 'Донецкая область', 'DO', 1),
(3486, 220, 'Ивано-Франковская область', 'IV', 1),
(3487, 220, 'Харьковская область', 'HK', 1),
(3488, 220, 'Хмельницкая область', 'KM', 1),
(3489, 220, 'Кировоградская область', 'KR', 1),
(3490, 220, 'Киевская область', 'KV', 1),
(3492, 220, 'Луганская область', 'LU', 1),
(3493, 220, 'Львовская область', 'LV', 1),
(3494, 220, 'Николаевская область', 'MY', 1),
(3495, 220, 'Одесская область', 'OD', 1),
(3496, 220, 'Полтавская область', 'PO', 1),
(3497, 220, 'Ровенская область', 'RI', 1),
(3499, 220, 'Сумская область', 'SU', 1),
(3500, 220, 'Тернопольская область', 'TE', 1),
(3501, 220, 'Винницкая область', 'VI', 1),
(3502, 220, 'Волынская область', 'VO', 1),
(3503, 220, 'Закарпатская область', 'ZK', 1),
(3504, 220, 'Запорожская область', 'ZA', 1),
(3505, 220, 'Житомирская область', 'ZH', 1),
(4033, 220, 'Херсонская область', 'HR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(84, 220, 0, 5, '2014-11-01 16:03:03', '0000-00-00 00:00:00'),
(83, 220, 3487, 6, '2014-11-01 16:02:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `simple_custom_data`
--

CREATE TABLE IF NOT EXISTS `simple_custom_data` (
  `object_type` tinyint(4) NOT NULL,
  `object_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`object_type`,`object_id`,`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `simple_custom_data`
--

INSERT INTO `simple_custom_data` (`object_type`, `object_id`, `customer_id`, `data`) VALUES
(2, 1, 1, 'a:0:{}'),
(3, 1, 1, 'a:0:{}'),
(2, 2, 2, 'a:0:{}'),
(3, 2, 2, 'a:0:{}'),
(1, 1, 2, 'a:0:{}'),
(1, 2, 0, 'a:0:{}'),
(1, 3, 0, 'a:0:{}'),
(1, 4, 0, 'a:0:{}'),
(1, 5, 0, 'a:0:{}'),
(1, 6, 0, 'a:0:{}'),
(1, 7, 0, 'a:0:{}'),
(1, 8, 0, 'a:0:{}'),
(1, 9, 0, 'a:0:{}'),
(1, 10, 0, 'a:0:{}'),
(2, 13, 13, 'a:2:{s:16:"custom_resp_Name";a:9:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";s:29:"Контактное лицо";s:5:"value";s:29:"Контактное лицо";s:6:"values";a:0:{}s:4:"text";s:29:"Контактное лицо";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:16:"custom_resp_Name";}s:14:"custom_company";a:9:{s:2:"id";s:14:"custom_company";s:5:"label";s:39:"Название предприятия";s:5:"value";s:39:"Название предприятия";s:6:"values";a:0:{}s:4:"text";s:39:"Название предприятия";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:14:"custom_company";}}'),
(3, 13, 13, 'a:0:{}'),
(2, 14, 14, 'a:2:{s:16:"custom_resp_Name";a:9:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";s:29:"Контактное лицо";s:5:"value";s:8:"фффф";s:6:"values";a:0:{}s:4:"text";s:8:"фффф";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:16:"custom_resp_Name";}s:14:"custom_company";a:9:{s:2:"id";s:14:"custom_company";s:5:"label";s:39:"Название предприятия";s:5:"value";s:10:"фыфвф";s:6:"values";a:0:{}s:4:"text";s:10:"фыфвф";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:14:"custom_company";}}'),
(3, 14, 14, 'a:0:{}'),
(1, 11, 0, 'a:0:{}'),
(1, 12, 0, 'a:0:{}'),
(1, 13, 0, 'a:0:{}'),
(2, 15, 15, 'a:0:{}'),
(3, 15, 15, 'a:0:{}'),
(2, 16, 16, 'a:2:{s:16:"custom_resp_Name";a:9:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";s:29:"Контактное лицо";s:5:"value";s:6:"Eugene";s:6:"values";a:0:{}s:4:"text";s:6:"Eugene";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:16:"custom_resp_Name";}s:14:"custom_company";a:9:{s:2:"id";s:14:"custom_company";s:5:"label";s:39:"Название предприятия";s:5:"value";s:10:"Eugene INC";s:6:"values";a:0:{}s:4:"text";s:10:"Eugene INC";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:14:"custom_company";}}'),
(3, 16, 16, 'a:0:{}'),
(1, 14, 1, 'a:0:{}'),
(1, 15, 1, 'a:0:{}'),
(2, 17, 17, 'a:0:{}'),
(3, 17, 17, 'a:0:{}'),
(2, 18, 18, 'a:2:{s:16:"custom_resp_Name";a:9:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";s:29:"Контактное лицо";s:5:"value";s:17:"ЧП Иванов";s:6:"values";a:0:{}s:4:"text";s:17:"ЧП Иванов";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:16:"custom_resp_Name";}s:14:"custom_company";a:9:{s:2:"id";s:14:"custom_company";s:5:"label";s:39:"Название предприятия";s:5:"value";s:19:"Иванов Мед";s:6:"values";a:0:{}s:4:"text";s:19:"Иванов Мед";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:14:"custom_company";}}'),
(3, 18, 18, 'a:0:{}'),
(2, 19, 19, 'a:2:{s:16:"custom_resp_Name";a:9:{s:2:"id";s:16:"custom_resp_Name";s:5:"label";s:29:"Контактное лицо";s:5:"value";s:17:"ЧП Иванов";s:6:"values";a:0:{}s:4:"text";s:17:"ЧП Иванов";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:16:"custom_resp_Name";}s:14:"custom_company";a:9:{s:2:"id";s:14:"custom_company";s:5:"label";s:39:"Название предприятия";s:5:"value";s:19:"Иванов Мед";s:6:"values";a:0:{}s:4:"text";s:19:"Иванов Мед";s:4:"type";s:4:"text";s:3:"set";s:8:"customer";s:4:"from";s:12:"registration";s:8:"field_id";s:14:"custom_company";}}'),
(3, 19, 19, 'a:0:{}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
