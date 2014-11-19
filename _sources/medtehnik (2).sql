-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 16 2014 г., 17:23
-- Версия сервера: 5.6.20
-- Версия PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `medtehnik`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
`address_id` int(11) NOT NULL,
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
  `zone_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, 'Eugene', 'Kovaljov', '', '', '', 'sdfsf', '', 'Kharkov', '', 220, 3487);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
`affiliate_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
`affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
`attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8),
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
(33, 15, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed'),
(17, 2, 'Скорость движения бумаги'),
(15, 2, 'Тип электропитания'),
(16, 2, 'Длина кабеля'),
(18, 2, 'Объем в милилитрах'),
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
(33, 2, 'Преимущества');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
`attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Дамп данных таблицы `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4),
(7, 0),
(10, 0),
(9, 0),
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor'),
(7, 2, 'Работа с бумагой'),
(10, 2, 'Объем'),
(9, 2, 'Электропитание'),
(11, 2, 'Гарантия'),
(12, 2, 'Применение'),
(13, 2, 'Комплектация'),
(14, 2, 'Материал'),
(15, 2, 'Особенности'),
(16, 2, 'Диаметр'),
(17, 2, 'Пациенты');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
`banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(11, 'Баннер левой колонки', 1),
(8, 'Manufacturers', 0),
(9, 'Баннер на главной', 1),
(10, 'Дополнительный баннер', 1),
(12, 'Баннер правой колонки', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
`banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Дамп данных таблицы `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(90, 11, '', 'data/left-banner-1.png'),
(92, 12, '', 'data/right-banner-1.png'),
(83, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/demo/palm_logo.jpg'),
(82, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/demo/sony_logo.jpg'),
(81, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=9', 'data/demo/canon_logo.jpg'),
(80, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/demo/apple_logo.jpg'),
(79, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=5', 'data/demo/htc_logo.jpg'),
(84, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_logo.jpg'),
(86, 9, '', 'data/MainBanner-1.jpg'),
(87, 9, '', 'data/mainbanner-2.jpg'),
(88, 9, '', 'data/mainbanner-3.jpg'),
(89, 10, '', 'data/sub-banner-1.png');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(89, 2, 10, 'Дополнительный баннер'),
(88, 2, 9, 'Баннер 3'),
(87, 2, 9, 'Баннер 2'),
(86, 2, 9, 'Баннер 1'),
(90, 2, 11, 'Баннер левой колонки'),
(84, 2, 8, 'Hewlett-Packard'),
(83, 2, 8, 'Palm'),
(82, 2, 8, 'Sony'),
(81, 2, 8, 'Canon'),
(80, 2, 8, 'Apple'),
(79, 2, 8, 'HTC'),
(92, 2, 12, 'Баннер правой колонки');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
`category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=92 ;

--
-- Дамп данных таблицы `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(86, '', 64, 1, 1, 0, 1, '2014-11-14 00:06:43', '2014-11-14 00:13:46'),
(87, '', 64, 0, 1, 0, 1, '2014-11-14 00:07:02', '2014-11-14 00:07:02'),
(91, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:34', '2014-11-14 00:19:34'),
(90, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:19', '2014-11-14 00:19:19'),
(88, '', 64, 0, 1, 0, 1, '2014-11-14 00:17:01', '2014-11-14 00:17:01'),
(59, '', 0, 0, 1, 1, 1, '2014-11-13 23:00:01', '2014-11-13 23:00:01'),
(60, '', 0, 0, 1, 0, 1, '2014-11-13 23:01:29', '2014-11-13 23:01:29'),
(61, '', 0, 1, 1, 0, 1, '2014-11-13 23:06:38', '2014-11-13 23:57:36'),
(62, '', 0, 0, 1, 0, 1, '2014-11-13 23:07:01', '2014-11-13 23:07:01'),
(83, '', 61, 0, 1, 0, 1, '2014-11-13 23:53:09', '2014-11-13 23:53:09'),
(64, '', 0, 1, 1, 0, 1, '2014-11-13 23:17:47', '2014-11-14 00:15:28'),
(65, '', 0, 0, 1, 0, 1, '2014-11-13 23:18:01', '2014-11-13 23:18:01'),
(66, '', 0, 0, 1, 0, 1, '2014-11-13 23:18:13', '2014-11-13 23:18:13'),
(69, '', 0, 1, 1, 0, 1, '2014-11-13 23:19:35', '2014-11-14 00:19:55'),
(70, '', 0, 1, 1, 0, 1, '2014-11-13 23:20:02', '2014-11-14 00:26:43'),
(71, '', 0, 0, 1, 0, 1, '2014-11-13 23:20:21', '2014-11-13 23:20:21'),
(89, '', 69, 0, 1, 0, 1, '2014-11-14 00:19:04', '2014-11-14 00:19:04'),
(73, '', 0, 0, 1, 0, 1, '2014-11-13 23:21:46', '2014-11-13 23:21:46'),
(74, '', 0, 0, 1, 0, 1, '2014-11-13 23:21:57', '2014-11-13 23:21:57'),
(75, '', 0, 0, 1, 0, 1, '2014-11-13 23:22:18', '2014-11-13 23:22:18'),
(76, '', 0, 0, 1, 0, 1, '2014-11-13 23:22:30', '2014-11-13 23:22:30'),
(77, '', 0, 1, 1, 0, 1, '2014-11-13 23:22:43', '2014-11-14 00:26:09'),
(78, '', 0, 0, 1, 0, 1, '2014-11-13 23:23:01', '2014-11-13 23:23:01'),
(79, '', 0, 0, 1, 0, 1, '2014-11-13 23:23:24', '2014-11-13 23:23:24'),
(80, '', 66, 0, 1, 0, 1, '2014-11-13 23:49:35', '2014-11-13 23:49:35'),
(81, '', 66, 0, 1, 0, 1, '2014-11-13 23:49:55', '2014-11-13 23:49:55'),
(82, '', 66, 0, 1, 0, 1, '2014-11-13 23:50:10', '2014-11-13 23:50:10'),
(84, '', 61, 0, 1, 0, 1, '2014-11-13 23:54:01', '2014-11-14 19:43:43'),
(85, '', 61, 0, 1, 0, 1, '2014-11-13 23:55:00', '2014-11-13 23:55:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(88, 2, 'Зажимы', '', '', ''),
(86, 2, 'Шприцы', '', '', ''),
(87, 2, 'Щипцы', '', '', ''),
(90, 2, 'Реактивы', '', '', ''),
(91, 2, 'Посуда пластик', '', '', ''),
(59, 2, 'Акушерство и гинекология', '', '', ''),
(60, 2, 'Дезинфицирующие средства', '', '', ''),
(61, 2, 'Диагностика', '', '', ''),
(62, 2, 'Перевязка', '', '', ''),
(83, 2, 'Тонометры', '', '', ''),
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
(84, 2, 'Стетоскопы и стетофонендоскопы', '', '', ''),
(85, 2, 'Кардиографы', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(86, 64, 0),
(91, 69, 0),
(91, 91, 1),
(90, 90, 1),
(90, 69, 0),
(89, 89, 1),
(88, 88, 1),
(88, 64, 0),
(87, 87, 1),
(87, 64, 0),
(86, 86, 1),
(59, 59, 0),
(60, 60, 0),
(61, 61, 0),
(62, 62, 0),
(83, 61, 0),
(64, 64, 0),
(65, 65, 0),
(66, 66, 0),
(84, 61, 0),
(69, 69, 0),
(70, 70, 0),
(71, 71, 0),
(89, 69, 0),
(73, 73, 0),
(74, 74, 0),
(75, 75, 0),
(76, 76, 0),
(77, 77, 0),
(78, 78, 0),
(79, 79, 0),
(80, 66, 0),
(80, 80, 1),
(81, 66, 0),
(81, 81, 1),
(82, 66, 0),
(82, 82, 1),
(83, 83, 1),
(84, 84, 1),
(85, 61, 0),
(85, 85, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
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
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
`country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=252 ;

--
-- Дамп данных таблицы `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(220, 'Украина', 'UA', 'UKR', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
`coupon_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
`coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
`coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
`currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Гривна', 'UAH', '', ' грн.', '2', 1.00000000, 1, '2014-11-01 14:43:07');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
`customer_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, 'Eugene', 'Kovaljov', 'didevgen@gmail.com', '0635708068', '', 'a94f788d0790280da99efd14c6fc6a97227199b5', '4b1d4afd0', 'a:1:{s:4:"49::";i:1;}', '', 1, 1, 1, '::1', 1, 1, '', '2014-11-12 10:47:26');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
`customer_ban_ip_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_field`
--

CREATE TABLE IF NOT EXISTS `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
`customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Физ. лица', 'Группа покупателей по умолчанию');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
`customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
`customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2014-11-12 10:47:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
`customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
`customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
`custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
`custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
`download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
`extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=448 ;

--
-- Дамп данных таблицы `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(440, 'module', 'magnorcms'),
(435, 'module', 'latest'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(429, 'shipping', 'pickup'),
(438, 'module', 'tm_slideshow'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(439, 'total', 'sub_total'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(428, 'shipping', 'novaposhta'),
(442, 'module', 'information'),
(432, 'shipping', 'courier_ua'),
(443, 'module', 'bestseller'),
(444, 'payment', 'liqpay'),
(445, 'module', 'watermark'),
(446, 'module', 'simple'),
(447, 'module', 'product_viewed');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
`filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
`filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
`geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Украина', 'Территория Украины', '2014-11-01 16:03:03', '2014-11-01 15:26:39'),
(6, 'г. Харьков', 'Территория города Харькова', '2014-11-01 16:02:50', '2014-11-01 15:28:02');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
`information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n'),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n'),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n'),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(2, 'Русский', 'ru', 'ru,ru_RU,ru_RU.UTF-8', 'ru.png', 'russian', 'russian', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
`layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `oc_layout`
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
-- Структура таблицы `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
`layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Дамп данных таблицы `oc_layout_route`
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
-- Структура таблицы `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
`length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
`length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'Сантиметры', 'см'),
(2, 2, 'Миллиметры', 'мм'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
`manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `oc_manufacturer`
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
-- Структура таблицы `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_manufacturer_to_store`
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
-- Структура таблицы `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
`option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
`option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Дамп данных таблицы `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
`order_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_download`
--

CREATE TABLE IF NOT EXISTS `oc_order_download` (
`order_download_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_fraud`
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
`order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
`order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
`order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring` (
`order_recurring_id` int(11) NOT NULL,
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
  `profile_reference` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_recurring_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_order_recurring_transaction` (
`order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
`order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `oc_order_status`
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
-- Структура таблицы `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
`order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
`order_voucher_id` int(11) NOT NULL,
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
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
`product_id` int(11) NOT NULL,
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
  `viewed` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Дамп данных таблицы `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(52, 'АТ-1', '', '', '', '', '', '', 'Швейцария', 5, 5, 'data/demo/cardiovit.jpg', 0, 1, '22590.0000', 0, 0, '2014-11-13', '2.50000000', 1, '288.00000000', '210.00000000', '70.00000000', 2, 1, 1, 1, 1, '2014-11-14 19:07:48', '2014-11-14 19:36:41', 9),
(53, 'LD-71 ', '', '', '', '', '', '', 'Сингапур', 100, 5, 'data/demo/LD-71-A.jpg', 0, 1, '181.0000', 0, 0, '2014-11-13', '340.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:41:32', '2014-11-14 19:42:15', 5),
(54, 'ST-77', '', '', '', '', '', '', '', 500, 5, 'data/demo/st77.jpg', 0, 1, '200.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:47:59', '2014-11-14 19:48:36', 2),
(55, 'Пробирка &quot;Eppendorf&quot;', '', '', '', '', '', '', '', 50, 5, 'data/demo/tovar-1550151.jpg', 0, 1, '129.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 19:55:34', '0000-00-00 00:00:00', 6),
(56, '№4', '', '', '', '', '', '', '', 1000, 5, 'data/demo/resize.jpg', 0, 1, '10.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:30:18', '2014-11-14 20:30:51', 2),
(57, 'ТС', '', '', '', '', '', '', '', 23, 5, 'data/demo/71QU39-aPfL.200x200.jpg', 0, 1, '20.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:37:00', '0000-00-00 00:00:00', 0),
(58, 'ШМ-2', '', '', '', '', '', '', '', 17, 5, 'data/demo/x-Shkaf-medicinskij-dvuhstvorchatij-ShM-2.d01.jpg', 0, 1, '3090.0000', 0, 0, '2014-11-13', '0.00000000', 1, '40.00000000', '100.00000000', '160.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:41:26', '0000-00-00 00:00:00', 1),
(59, 'СВИ', '', '', '', '', '', '', '', 10, 5, 'data/demo/sotl_vnutriven.jpg', 0, 1, '1400.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:46:22', '0000-00-00 00:00:00', 0),
(60, 'ШДВ', '', '', '', '', '', '', '', 1, 5, 'data/demo/shtativ-dlya-dlitelnyh-vlivanii-evro-shdv-e.png', 0, 1, '295.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 20:49:33', '0000-00-00 00:00:00', 0),
(61, 'Москит', '', '', '', '', '', '', '', 100, 5, 'data/demo/Med_Instrument_mg_9867.jpg', 0, 1, '75.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:28:42', '2014-11-14 21:32:34', 2),
(62, 'IGAR-SHP-5', '', '', '', '', '', '', '', 1, 5, 'data/demo/shpricy-3-kompon.jpg', 0, 1, '0.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:39:39', '2014-11-14 21:40:12', 0),
(63, '&quot;МІТ-ЕФ2&quot;', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed11.jpg', 0, 1, '3040.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:54:29', '0000-00-00 00:00:00', 1),
(64, 'УЗТ-1.01Ф-МедТеКо', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed25.jpg', 0, 1, '16900.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 21:56:50', '2014-11-14 21:57:31', 3),
(65, 'Delphinus F1000', '', '', '', '', '', '', '', 1, 5, 'data/demo/endomed73.jpg', 0, 1, '2200.0000', 0, 0, '2014-11-13', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2014-11-14 22:02:42', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(52, 21, 2, 'Грудная клетка'),
(52, 17, 2, '25,0 мм в секунду и 50 мм в секунду;'),
(53, 19, 2, 'Манометр с нагнетателем,\r\nМанжета компрессионная со встроенным стетоскопом,\r\nРуководство по эксплуатации,\r\nУпаковка (виниловая сумочка, картонная коробка).'),
(53, 21, 2, 'Правая/ левая рука'),
(54, 20, 2, '1 год'),
(55, 24, 2, '1000'),
(56, 25, 2, 'Фарфор'),
(56, 18, 2, '150 мл'),
(57, 25, 2, 'Стекло'),
(57, 18, 2, '250 мл'),
(58, 26, 2, 'Не более 2 килограмм'),
(59, 27, 2, '0 градусов'),
(60, 28, 2, ' 650 мм.'),
(61, 29, 2, 'новорожденные и дети раннего возраста'),
(61, 30, 2, 'для гемостаза небольших сосудов при нейрохирургических операциях и в детской практике\r\n'),
(62, 31, 2, 'Одноразовый'),
(63, 30, 2, 'Применение аппарата наиболее эффективно при лечении:\r\n\r\n• поражений периферической нервной системы (межреберная невралгия, ишиас);\r\n• травматических повреждений;\r\n• функциональных заболеваний центральной нервной системы;\r\n• заболеваний сердечно-сосудистой системы;\r\n• заболеваний пищеварительной системы;\r\n• заболеваний органов опоры и движения;\r\n• ревматических поражений суставов, сухожилий;\r\n• заболеваний кожи и др.'),
(64, 32, 2, 'наличие микропроцессорного блока управления; индикация и контроль параметров.'),
(65, 33, 2, 'Экономайзер используется для экономии лекарственного препарата во время выдоха.Максимальное время работы ингалятора без выключения - 60 минут, после 20-минутного перерыва он снова готов к работе.');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
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
(65, 2, 'Ингалятор компрессорный для аэрозольной терапии Delphinus F1000', '&lt;p&gt;&lt;span style=&quot;color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;Ингалятор компрессорный для аэрозольной терапии Delphinus F1000 предназначен для проведения небулайзерной аэрозольтерапии;&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;margin: 0px; padding: 0px; color: rgb(61, 61, 61); font-family: Verdana; font-size: 13px; line-height: 19.5px;&quot;&gt;применяется при лечении острых и хронических заболеваний верхних и нижних дыхательных путей:&lt;/b&gt;&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
`product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=441 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
`product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2352 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
`product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=227 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
`product_option_value_id` int(11) NOT NULL,
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
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_profile`
--

CREATE TABLE IF NOT EXISTS `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_recurring`
--

CREATE TABLE IF NOT EXISTS `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
`product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=580 ;

--
-- Дамп данных таблицы `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(558, 52, 1, 0),
(560, 53, 1, 0),
(562, 54, 1, 0),
(563, 55, 1, 0),
(565, 56, 1, 0),
(566, 57, 1, 0),
(567, 58, 1, 0),
(568, 59, 1, 0),
(569, 60, 1, 0),
(572, 61, 1, 0),
(575, 62, 1, 0),
(576, 63, 1, 0),
(578, 64, 1, 0),
(579, 65, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
`product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=440 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(52, 85),
(53, 83),
(54, 84),
(55, 91),
(56, 90),
(58, 70),
(59, 70),
(60, 70),
(61, 88),
(62, 86),
(63, 77),
(64, 77),
(65, 77);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_product_to_store`
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
(65, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_profile`
--

CREATE TABLE IF NOT EXISTS `oc_profile` (
`profile_id` int(11) NOT NULL,
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
  `trial_cycle` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_profile_description`
--

CREATE TABLE IF NOT EXISTS `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
`return_id` int(11) NOT NULL,
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
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
`return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
`return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
`return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
`return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
`review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
`setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1152 ;

--
-- Дамп данных таблицы `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(508, 0, 'shipping', 'shipping_sort_order', '1', 0),
(519, 0, 'cod', 'cod_status', '1', 0),
(510, 0, 'total', 'total_sort_order', '10', 0),
(509, 0, 'total', 'total_status', '1', 0),
(523, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(518, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(517, 0, 'cod', 'cod_order_status_id', '1', 0),
(516, 0, 'cod', 'cod_total', '0.01', 0),
(507, 0, 'shipping', 'shipping_status', '1', 0),
(506, 0, 'shipping', 'shipping_estimator', '1', 0),
(512, 0, 'coupon', 'coupon_sort_order', '5', 0),
(511, 0, 'coupon', 'coupon_status', '1', 0),
(499, 0, 'novaposhta', 'novaposhta_status', '1', 0),
(38, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:10:{s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:2:"80";s:6:"height";s:2:"80";s:11:"resize_type";s:7:"default";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"1";s:10:"sort_order";s:2:"-1";}}', 1),
(844, 0, 'featured', 'product', '', 0),
(845, 0, 'featured', 'featured_product', '43,40,42,49,46,47,28', 0),
(846, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:3:"150";s:12:"image_height";s:3:"170";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(836, 0, 'sub_total', 'sub_total_sort_order', '', 0),
(850, 0, 'affiliate', 'affiliate_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(847, 0, 'category', 'category_module', 'a:9:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(851, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(953, 0, 'config', 'config_error_filename', 'error.txt', 0),
(952, 0, 'config', 'config_error_log', '1', 0),
(951, 0, 'config', 'config_error_display', '0', 0),
(950, 0, 'config', 'config_compression', '0', 0),
(949, 0, 'config', 'config_encryption', 'b1e0364c04e1d7854c626cb23cc82320', 0),
(948, 0, 'config', 'config_password', '1', 0),
(947, 0, 'config', 'config_maintenance', '0', 0),
(932, 0, 'config', 'config_smtp_port', '25', 0),
(933, 0, 'config', 'config_smtp_timeout', '5', 0),
(934, 0, 'config', 'config_alert_mail', '0', 0),
(935, 0, 'config', 'config_account_mail', '0', 0),
(936, 0, 'config', 'config_alert_emails', '', 0),
(937, 0, 'config', 'config_fraud_detection', '0', 0),
(938, 0, 'config', 'config_fraud_key', '', 0),
(939, 0, 'config', 'config_fraud_score', '', 0),
(940, 0, 'config', 'config_fraud_status_id', '7', 0),
(941, 0, 'config', 'config_secure', '0', 0),
(942, 0, 'config', 'config_shared', '0', 0),
(943, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(520, 0, 'cod', 'cod_sort_order', '5', 0),
(835, 0, 'sub_total', 'sub_total_status', '1', 0),
(522, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(521, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(833, 0, 'slideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"7";s:5:"width";s:3:"980";s:6:"height";s:3:"280";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(109, 0, 'banner', 'banner_module', 'a:1:{i:0;a:8:{s:9:"banner_id";s:1:"6";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:11:"resize_type";s:7:"default";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(946, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(945, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(944, 0, 'config', 'config_seo_url', '0', 0),
(931, 0, 'config', 'config_smtp_password', '', 0),
(930, 0, 'config', 'config_smtp_username', '', 0),
(929, 0, 'config', 'config_smtp_host', '', 0),
(928, 0, 'config', 'config_mail_parameter', '', 0),
(927, 0, 'config', 'config_mail_protocol', 'mail', 0),
(926, 0, 'config', 'config_ftp_status', '0', 0),
(925, 0, 'config', 'config_ftp_root', '', 0),
(924, 0, 'config', 'config_ftp_password', '', 0),
(923, 0, 'config', 'config_ftp_username', '', 0),
(922, 0, 'config', 'config_ftp_port', '21', 0),
(921, 0, 'config', 'config_ftp_host', 'localhost', 0),
(920, 0, 'config', 'config_image_cart_height', '47', 0),
(919, 0, 'config', 'config_image_cart_width', '47', 0),
(918, 0, 'config', 'config_image_wishlist_height', '47', 0),
(917, 0, 'config', 'config_image_wishlist_width', '47', 0),
(916, 0, 'config', 'config_image_compare_height', '170', 0),
(915, 0, 'config', 'config_image_compare_width', '150', 0),
(914, 0, 'config', 'config_image_related_height', '250', 0),
(913, 0, 'config', 'config_image_related_width', '250', 0),
(912, 0, 'config', 'config_image_additional_height', '170', 0),
(911, 0, 'config', 'config_image_additional_width', '150', 0),
(910, 0, 'config', 'config_image_product_height', '80', 0),
(909, 0, 'config', 'config_image_product_width', '80', 0),
(908, 0, 'config', 'config_image_popup_height', '500', 0),
(907, 0, 'config', 'config_image_popup_width', '500', 0),
(906, 0, 'config', 'config_image_thumb_height', '250', 0),
(905, 0, 'config', 'config_image_thumb_width', '250', 0),
(904, 0, 'config', 'config_image_category_height', '124', 0),
(903, 0, 'config', 'config_image_category_width', '550', 0),
(902, 0, 'config', 'config_icon', 'data/cart.png', 0),
(901, 0, 'config', 'config_logo', 'data/logo1.png', 0),
(900, 0, 'config', 'config_return_status_id', '2', 0),
(899, 0, 'config', 'config_return_id', '0', 0),
(898, 0, 'config', 'config_commission', '5', 0),
(897, 0, 'config', 'config_affiliate_id', '4', 0),
(896, 0, 'config', 'config_stock_status_id', '5', 0),
(895, 0, 'config', 'config_stock_checkout', '1', 0),
(894, 0, 'config', 'config_stock_warning', '1', 0),
(893, 0, 'config', 'config_stock_display', '0', 0),
(892, 0, 'config', 'config_complete_status_id', '5', 0),
(891, 0, 'config', 'config_order_status_id', '1', 0),
(890, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(889, 0, 'config', 'config_order_edit', '100', 0),
(888, 0, 'config', 'config_checkout_id', '5', 0),
(887, 0, 'config', 'config_guest_checkout', '1', 0),
(886, 0, 'config', 'config_cart_weight', '1', 0),
(885, 0, 'config', 'config_account_id', '3', 0),
(884, 0, 'config', 'config_customer_price', '0', 0),
(882, 0, 'config', 'config_customer_group_id', '1', 0),
(883, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(881, 0, 'config', 'config_customer_online', '0', 0),
(880, 0, 'config', 'config_tax_customer', 'shipping', 0),
(879, 0, 'config', 'config_tax_default', '', 0),
(878, 0, 'config', 'config_vat', '0', 0),
(877, 0, 'config', 'config_tax', '0', 0),
(876, 0, 'config', 'config_voucher_max', '1000', 0),
(875, 0, 'config', 'config_voucher_min', '1', 0),
(874, 0, 'config', 'config_download', '1', 0),
(873, 0, 'config', 'config_review_status', '1', 0),
(872, 0, 'config', 'config_product_count', '1', 0),
(871, 0, 'config', 'config_admin_limit', '20', 0),
(870, 0, 'config', 'config_catalog_limit', '15', 0),
(869, 0, 'config', 'config_weight_class_id', '1', 0),
(868, 0, 'config', 'config_length_class_id', '1', 0),
(867, 0, 'config', 'config_currency_auto', '0', 0),
(866, 0, 'config', 'config_currency', 'UAH', 0),
(865, 0, 'config', 'config_admin_language', 'ru', 0),
(864, 0, 'config', 'config_language', 'ru', 0),
(863, 0, 'config', 'config_zone_id', '3487', 0),
(862, 0, 'config', 'config_country_id', '220', 0),
(861, 0, 'config', 'config_layout_id', '4', 0),
(860, 0, 'config', 'config_template', 'OPC040084', 0),
(859, 0, 'config', 'config_meta_description', 'My Store', 0),
(858, 0, 'config', 'config_title', 'Медтехник', 0),
(857, 0, 'config', 'config_fax', '', 0),
(856, 0, 'config', 'config_telephone', '123456789', 0),
(855, 0, 'config', 'config_email', 'admin@example.com', 0),
(854, 0, 'config', 'config_address', 'Address 1', 0),
(853, 0, 'config', 'config_owner', 'Malibu', 0),
(852, 0, 'config', 'config_name', 'Медтехник', 0),
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
(955, 0, 'tm_slideshow', 'tm_slideshow_module', 'a:8:{i:0;a:7:{s:9:"banner_id";s:1:"9";s:5:"width";s:3:"530";s:6:"height";s:3:"291";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:9:"banner_id";s:2:"10";s:5:"width";s:3:"528";s:6:"height";s:2:"63";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:3;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"1";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:4;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:5;a:7:{s:9:"banner_id";s:2:"12";s:5:"width";s:3:"221";s:6:"height";s:3:"341";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"4";}i:6;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:7;a:7:{s:9:"banner_id";s:2:"11";s:5:"width";s:3:"221";s:6:"height";s:3:"245";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(843, 0, 'welcome', 'magnorcms_module', 'a:2:{i:1;a:6:{s:11:"headertitle";a:1:{i:2;s:18:"О нас блок";}s:11:"description";a:1:{i:2;s:481:"&lt;div class=&quot;static_inner&quot;&gt;\r\n&lt;h3 class=&quot;title_block&quot;&gt;About us&lt;/h3&gt;\r\n\r\n&lt;ul class=&quot;custom_block&quot;&gt;\r\n	&lt;li class=&quot;about_footer&quot;&gt;TemplateMela offers website templates, wordpress themes, professional joomla templates, eCommerce templates. TemplateMela offers website templates. &lt;a class=&quot;button&quot; href=&quot;#&quot; title=&quot;Read more&quot;&gt;Read More &lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n";}s:8:"position";s:14:"content_footer";s:6:"status";s:1:"1";s:9:"layout_id";s:1:"6";s:10:"sort_order";s:0:"";}i:2;a:6:{s:11:"headertitle";a:1:{i:2;s:25:"Контакты блок";}s:11:"description";a:1:{i:2;s:958:"&lt;div class=&quot;CMS2_main&quot;&gt;\r\n&lt;div class=&quot;column&quot; id=&quot;block_contact_infos&quot;&gt;\r\n&lt;h3 class=&quot;title_block&quot;&gt;Contact us&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Megnor Computer Private Limited 507-Union Trade Centre, Udhana Darwaja, Ring Road, Surat, India&lt;br /&gt;\r\n	Tel (91)-261 3023333&lt;br /&gt;\r\n	Email: &lt;a href=&quot;#&quot;&gt;admin@localhost.com&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;column&quot; id=&quot;social_block&quot;&gt;\r\n&lt;h3 class=&quot;title_block&quot;&gt;Follow us&lt;/h3&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li class=&quot;facebook&quot;&gt;&lt;a href=&quot;http://www.facebook.com&quot;&gt;Facebook&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;twitter&quot;&gt;&lt;a href=&quot;http://www.twitter.com&quot;&gt;Twitter&lt;/a&gt;&lt;/li&gt;\r\n	&lt;li class=&quot;rss&quot;&gt;&lt;a href=&quot;#&quot;&gt;RSS&lt;/a&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n";}s:8:"position";s:20:"content_footer_block";s:6:"status";s:1:"1";s:9:"layout_id";s:1:"6";s:10:"sort_order";s:0:"";}}', 1),
(848, 0, 'information', 'information_module', 'a:6:{i:0;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(849, 0, 'bestseller', 'bestseller_module', 'a:5:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}i:1;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}i:2;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}i:3;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}i:4;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(954, 0, 'config', 'config_google_analytics', '', 0),
(961, 0, 'watermark', 'watermark', 'a:14:{s:6:"status";s:1:"1";s:4:"type";s:3:"img";s:5:"image";s:13:"data/logo.png";s:14:"watermark_text";s:0:"";s:14:"watermark_font";s:9:"arial.ttf";s:19:"watermark_font_size";s:2:"12";s:5:"color";s:5:"0,0,0";s:5:"angle";s:1:"0";s:8:"position";s:8:"topright";s:6:"offset";a:2:{s:1:"x";s:1:"0";s:1:"y";s:1:"0";}s:7:"scaling";a:2:{s:5:"width";s:3:"250";s:6:"height";s:3:"250";}s:7:"opacity";s:1:"7";s:3:"min";a:2:{s:5:"width";s:0:"";s:6:"height";s:0:"";}s:7:"folders";a:1:{i:0;s:9:"data/demo";}}', 1),
(1083, 0, 'simple', 'simple_customer_action_subscribe', '2', 0),
(1084, 0, 'simple', 'simple_customer_view_customer_subscribe_init', '1', 0),
(1085, 0, 'simple', 'simple_customer_view_login', '1', 0),
(1086, 0, 'simple', 'simple_customer_view_address_select', '1', 0),
(1087, 0, 'simple', 'simple_customer_use_geo_selector', '0', 0),
(1088, 0, 'simple', 'simple_customer_geo_selector_type', '1', 0),
(1089, 0, 'simple', 'simple_customer_view_customer_type', '0', 0),
(1090, 0, 'simple', 'simple_set_checkout_customer', 'a:3:{s:5:"group";a:1:{i:1;s:174:"header_main,main_email,main_firstname,main_lastname,main_telephone,split_split,header_address,main_country_id,main_zone_id,main_city,main_postcode,main_address_1,main_comment";}s:8:"shipping";a:1:{i:1;a:3:{s:10:"courier_ua";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}}s:7:"payment";a:1:{i:1;a:2:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}}}', 1),
(1091, 0, 'simple', 'simple_address_hide_if_logged', '0', 0),
(1092, 0, 'simple', 'simple_show_shipping_address', '1', 0),
(1093, 0, 'simple', 'simple_show_shipping_address_same_init', '1', 0),
(1094, 0, 'simple', 'simple_show_shipping_address_same_show', '1', 0),
(1095, 0, 'simple', 'simple_shipping_view_address_select', '1', 0),
(1096, 0, 'simple', 'simple_shipping_address_use_geo_selector', '0', 0),
(1097, 0, 'simple', 'simple_shipping_address_geo_selector_type', '1', 0),
(1098, 0, 'simple', 'simple_set_checkout_address', 'a:3:{s:5:"group";a:1:{i:1;s:96:"main_firstname,main_lastname,main_country_id,main_zone_id,main_city,main_postcode,main_address_1";}s:8:"shipping";a:1:{i:1;a:3:{s:10:"courier_ua";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";}}s:7:"payment";a:1:{i:1;a:2:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}}}', 1),
(1099, 0, 'simple', 'shipping_code_for_customer_1', '', 0),
(1100, 0, 'simple', 'shipping_code_for_shipping_1', '', 0),
(1101, 0, 'simple', 'simple_links', 'a:2:{s:3:"cod";s:0:"";s:13:"free_checkout";s:0:"";}', 1),
(1102, 0, 'simple', 'simple_links_2', 'a:4:{s:10:"courier_ua";s:0:"";s:10:"novaposhta";s:0:"";s:6:"pickup";s:0:"";s:19:"simple_links_2_stub";s:0:"";}', 1),
(1103, 0, 'simple', 'simple_group_payment', 'a:1:{i:1;s:0:"";}', 1),
(1104, 0, 'simple', 'simple_group_shipping', 'a:1:{i:1;s:0:"";}', 1),
(1105, 0, 'simple', 'simple_fields_main', 'a:15:{s:10:"main_email";a:16:{s:2:"id";s:10:"main_email";s:5:"label";a:1:{s:2:"ru";s:6:"E-mail";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"3";s:17:"validation_regexp";s:56:"/^[a-z0-9_\\.\\-]{1,20}@[a-z0-9\\.\\-]{1,20}\\.[a-z]{2,4}$/si";s:16:"validation_error";a:1:{s:2:"ru";s:62:"Ошибка в адресе электронной почты";}s:7:"save_to";s:5:"email";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_firstname";a:18:{s:2:"id";s:14:"main_firstname";s:5:"label";a:1:{s:2:"ru";s:6:"Имя";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:60:"Имя должно быть от 1 до 30 символов";}s:7:"save_to";s:9:"firstname";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:13:"main_lastname";a:18:{s:2:"id";s:13:"main_lastname";s:5:"label";a:1:{s:2:"ru";s:14:"Фамилия";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"1";s:14:"validation_max";s:2:"30";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:68:"Фамилия должно быть от 1 до 30 символов";}s:7:"save_to";s:8:"lastname";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_telephone";a:18:{s:2:"id";s:14:"main_telephone";s:5:"label";a:1:{s:2:"ru";s:14:"Телефон";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:2:"32";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:69:"Телефон должен быть от 3 до 32 символов!";}s:7:"save_to";s:9:"telephone";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:8:"main_fax";a:18:{s:2:"id";s:8:"main_fax";s:5:"label";a:1:{s:2:"ru";s:8:"Факс";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:3:"fax";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_company";a:18:{s:2:"id";s:12:"main_company";s:5:"label";a:1:{s:2:"ru";s:16:"Компания";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:7:"company";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:15:"main_company_id";a:18:{s:2:"id";s:15:"main_company_id";s:5:"label";a:1:{s:2:"ru";s:10:"Company ID";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:10:"company_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:11:"main_tax_id";a:18:{s:2:"id";s:11:"main_tax_id";s:5:"label";a:1:{s:2:"ru";s:6:"Tax ID";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:6:"tax_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_address_1";a:18:{s:2:"id";s:14:"main_address_1";s:5:"label";a:1:{s:2:"ru";s:10:"Адрес";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"3";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:65:"Адрес должен быть от 3 до 128 символов";}s:7:"save_to";s:9:"address_1";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:14:"main_address_2";a:18:{s:2:"id";s:14:"main_address_2";s:5:"label";a:1:{s:2:"ru";s:35:"Адрес (продолжение)";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:9:"address_2";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:13:"main_postcode";a:18:{s:2:"id";s:13:"main_postcode";s:5:"label";a:1:{s:2:"ru";s:12:"Индекс";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:2:"10";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:83:"Почтовый индекс должен быть от 2 до 10 символов";}s:7:"save_to";s:8:"postcode";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:15:"main_country_id";a:18:{s:2:"id";s:15:"main_country_id";s:5:"label";a:1:{s:2:"ru";s:12:"Страна";}s:4:"type";s:6:"select";s:6:"values";s:9:"countries";s:4:"init";s:1:"0";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:1:{s:2:"ru";s:50:"Пожалуйста выберите страну";}s:7:"save_to";s:10:"country_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_zone_id";a:18:{s:2:"id";s:12:"main_zone_id";s:5:"label";a:1:{s:2:"ru";s:12:"Регион";}s:4:"type";s:6:"select";s:6:"values";s:5:"zones";s:4:"init";s:1:"0";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:15:"validation_type";s:1:"4";s:16:"validation_error";a:1:{s:2:"ru";s:50:"Пожалуйста выберите регион";}s:7:"save_to";s:7:"zone_id";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:9:"main_city";a:18:{s:2:"id";s:9:"main_city";s:5:"label";a:1:{s:2:"ru";s:10:"Город";}s:4:"type";s:4:"text";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"2";s:14:"validation_min";s:1:"2";s:14:"validation_max";s:3:"128";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:65:"Город должен быть от 2 до 128 символов";}s:7:"save_to";s:4:"city";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}s:12:"main_comment";a:18:{s:2:"id";s:12:"main_comment";s:5:"label";a:1:{s:2:"ru";s:22:"Комментарий";}s:4:"type";s:8:"textarea";s:6:"values";a:1:{s:2:"ru";s:0:"";}s:4:"init";s:0:"";s:8:"date_min";s:0:"";s:10:"date_start";s:0:"";s:8:"date_max";s:0:"";s:8:"date_end";s:0:"";s:13:"date_only_for";s:0:"";s:15:"validation_type";s:1:"0";s:14:"validation_min";s:0:"";s:14:"validation_max";s:0:"";s:17:"validation_regexp";s:0:"";s:16:"validation_error";a:1:{s:2:"ru";s:0:"";}s:7:"save_to";s:7:"comment";s:4:"mask";s:0:"";s:11:"placeholder";a:1:{s:2:"ru";s:0:"";}}}', 1),
(1079, 0, 'simple', 'simple_customer_generate_password', '0', 0),
(1080, 0, 'simple', 'simple_customer_view_password_confirm', '0', 0),
(1081, 0, 'simple', 'simple_customer_view_password_length_min', '4', 0),
(1082, 0, 'simple', 'simple_customer_view_password_length_max', '20', 0),
(1078, 0, 'simple', 'simple_customer_view_customer_register_init', '0', 0),
(1077, 0, 'simple', 'simple_customer_view_email_confirm', '0', 0),
(1073, 0, 'simple', 'simple_customer_hide_if_logged', '0', 0),
(1074, 0, 'simple', 'simple_show_will_be_registered', '1', 0),
(1075, 0, 'simple', 'simple_customer_action_register', '2', 0),
(1076, 0, 'simple', 'simple_customer_view_email', '2', 0),
(1072, 0, 'simple', 'simple_payment_view_address_full', 'a:2:{s:3:"cod";s:1:"0";s:13:"free_checkout";s:1:"0";}', 1),
(1069, 0, 'simple', 'simple_payment_methods_hide', '0', 0),
(1070, 0, 'simple', 'simple_payment_view_address_empty', '1', 0),
(1071, 0, 'simple', 'simple_payment_view_autoselect_first', '0', 0),
(1068, 0, 'simple', 'simple_shipping_view_address_full', 'a:3:{s:10:"courier_ua";s:1:"0";s:10:"novaposhta";s:1:"0";s:6:"pickup";s:1:"0";}', 1),
(1065, 0, 'simple', 'simple_shipping_view_title', '1', 0),
(1066, 0, 'simple', 'simple_shipping_view_address_empty', '1', 0),
(1067, 0, 'simple', 'simple_shipping_view_autoselect_first', '0', 0),
(1064, 0, 'simple', 'simple_shipping_methods_hide', '0', 0),
(1063, 0, 'simple', 'simple_common_view_help_text', '0', 0),
(1062, 0, 'simple', 'simple_common_view_help_id', '0', 0),
(1061, 0, 'simple', 'simple_common_view_agreement_checkbox_init', '0', 0),
(1060, 0, 'simple', 'simple_common_view_agreement_checkbox', '0', 0),
(1059, 0, 'simple', 'simple_common_view_agreement_text', '0', 0),
(1058, 0, 'simple', 'simple_common_view_agreement_id', '0', 0),
(1057, 0, 'simple', 'simple_max_weight', '', 0),
(1056, 0, 'simple', 'simple_min_weight', '', 0),
(1055, 0, 'simple', 'simple_max_quantity', '', 0),
(1054, 0, 'simple', 'simple_min_quantity', '', 0),
(1053, 0, 'simple', 'simple_max_amount', '', 0),
(1052, 0, 'simple', 'simple_min_amount', '', 0),
(1051, 0, 'simple', 'simple_show_weight', '0', 0),
(1050, 0, 'simple', 'simple_use_total', '0', 0),
(1049, 0, 'simple', 'simple_childs_payment_first', '0', 0),
(1048, 0, 'simple', 'simple_minify', '0', 0),
(1047, 0, 'simple', 'simple_comment_target', '', 0),
(1046, 0, 'simple', 'simple_customer_group_id_after_reg', '1', 0),
(1045, 0, 'simple', 'simple_type_of_selection_of_group', 'radio', 0),
(1044, 0, 'simple', 'simple_geoip_mode', '1', 0),
(1043, 0, 'simple', 'simple_checkout_asap_for_logged', '1', 0),
(1042, 0, 'simple', 'simple_checkout_asap_for_not_logged', '1', 0),
(1041, 0, 'simple', 'simple_show_back', '0', 0),
(1040, 0, 'simple', 'simple_use_cookies', '0', 0),
(1039, 0, 'simple', 'simple_set_for_reload', 'main_country_id,main_zone_id,main_city,main_postcode,main_address_1', 0),
(1038, 0, 'simple', 'simple_empty_email', '', 0),
(1037, 0, 'simple', 'simple_disable_guest_checkout', '0', 0),
(1036, 0, 'simple', 'simple_debug', '0', 0),
(1035, 0, 'simple', 'simple_steps_summary', '0', 0),
(1033, 0, 'simple', 'simple_common_template', '{help}{customer}{shipping}{payment}{cart}{agreement}{payment_form}', 0),
(1034, 0, 'simple', 'simple_steps', '0', 0),
(1032, 0, 'product_viewed', 'product_viewed_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"5";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(1106, 0, 'simple', 'id', '', 0),
(1107, 0, 'simple', 'label_ru', '', 0),
(1108, 0, 'simple', 'object_type', 'order', 0),
(1109, 0, 'simple', 'object_field', '', 0),
(1110, 0, 'simple', 'type', 'text', 0),
(1111, 0, 'simple', 'place', 'customer', 0),
(1112, 0, 'simple', 'date_min', '', 0),
(1113, 0, 'simple', 'date_start', '', 0),
(1114, 0, 'simple', 'date_max', '', 0),
(1115, 0, 'simple', 'date_end', '', 0),
(1116, 0, 'simple', 'date_only_for', '', 0),
(1117, 0, 'simple', 'values_ru', '', 0),
(1118, 0, 'simple', 'validation_type', '0', 0),
(1119, 0, 'simple', 'validation_min', '', 0),
(1120, 0, 'simple', 'validation_max', '', 0),
(1121, 0, 'simple', 'validation_regexp', '', 0),
(1122, 0, 'simple', 'validation_error_ru', '', 0),
(1123, 0, 'simple', 'save_to', '', 0),
(1124, 0, 'simple', 'mask', '', 0),
(1125, 0, 'simple', 'placeholder_ru', '', 0),
(1126, 0, 'simple', 'simple_registration_view_email_confirm', '0', 0),
(1127, 0, 'simple', 'simple_registration_generate_password', '0', 0),
(1128, 0, 'simple', 'simple_registration_password_confirm', '0', 0),
(1129, 0, 'simple', 'simple_registration_password_length_min', '4', 0),
(1130, 0, 'simple', 'simple_registration_password_length_max', '20', 0),
(1131, 0, 'simple', 'simple_registration_agreement_id', '0', 0),
(1132, 0, 'simple', 'simple_registration_agreement_checkbox', '1', 0),
(1133, 0, 'simple', 'simple_registration_agreement_checkbox_init', '0', 0),
(1134, 0, 'simple', 'simple_registration_captcha', '0', 0),
(1135, 0, 'simple', 'simple_registration_subscribe', '2', 0),
(1136, 0, 'simple', 'simple_registration_subscribe_init', '1', 0),
(1137, 0, 'simple', 'simple_registration_view_customer_type', '0', 0),
(1138, 0, 'simple', 'simple_set_registration', 'a:1:{s:5:"group";a:1:{i:1;s:135:"header_main,main_email,main_firstname,main_lastname,main_telephone,header_address,main_country_id,main_zone_id,main_city,main_address_1";}}', 1),
(1139, 0, 'simple', 'simple_account_view_customer_type', '0', 0),
(1140, 0, 'simple', 'simple_set_account_info', 'a:1:{s:5:"group";a:1:{i:1;s:63:"main_email,main_firstname,main_lastname,main_telephone,main_fax";}}', 1),
(1141, 0, 'simple', 'simple_set_account_address', 'a:1:{s:5:"group";a:1:{i:1;s:96:"main_firstname,main_lastname,main_country_id,main_zone_id,main_city,main_postcode,main_address_1";}}', 1),
(1142, 0, 'simple', 'simple_joomla_path', '', 0),
(1143, 0, 'simple', 'simple_joomla_route', '', 0),
(1144, 0, 'simple', 'simple_header_tag', 'h3', 0),
(1145, 0, 'simple', 'simple_headers', 'a:2:{s:11:"header_main";a:3:{s:2:"id";s:11:"header_main";s:5:"label";a:1:{s:2:"ru";s:37:"Основная информация";}s:5:"place";s:8:"customer";}s:14:"header_address";a:3:{s:2:"id";s:14:"header_address";s:5:"label";a:1:{s:2:"ru";s:10:"Адрес";}s:5:"place";s:8:"customer";}}', 1),
(1146, 0, 'simple', 'restore', '0', 0),
(1147, 0, 'simple', 'simple_payment_titles', 'a:2:{s:3:"cod";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:36:"Оплата при доставке";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:13:"free_checkout";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:13:"Free Checkout";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}}', 1),
(1148, 0, 'simple', 'simple_shipping_titles', 'a:3:{s:10:"courier_ua";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:37:"Курьерская доставка";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:10:"novaposhta";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:40:"Отправка Новой Почтой";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}s:6:"pickup";a:3:{s:4:"show";s:1:"0";s:5:"title";a:1:{s:2:"ru";s:18:"Самовывоз";}s:11:"description";a:1:{s:2:"ru";s:0:"";}}}', 1),
(1149, 0, 'simple', 'simple_googleapi', '0', 0),
(1150, 0, 'simple', 'simple_googleapi_key', '', 0),
(1151, 0, 'simple', 'simple_customer_two_column', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
`stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'На складе'),
(8, 2, 'Предзаказ'),
(5, 2, 'Нет в наличии'),
(6, 2, 'Под заказ');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
`store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
`tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed Stuff', '2009-01-06 23:21:53', '2014-11-01 15:55:31'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2014-11-01 15:55:28');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
`tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
`tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
`url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=777 ;

--
-- Дамп данных таблицы `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(774, 'category_id=59', 'акушерство'),
(775, 'category_id=60', 'Дезинфекция');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
`user_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '97c0ba14aa4449319f43684e8974321a684f7e73', '1018e0b4b', '', '', 'admin@example.com', '', '::1', 1, '2014-11-01 10:33:37');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
`user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Администратор', 'a:2:{s:6:"access";a:163:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:19:"shipping/courier_ua";i:122;s:14:"shipping/fedex";i:123;s:13:"shipping/flat";i:124;s:13:"shipping/free";i:125;s:13:"shipping/item";i:126;s:19:"shipping/novaposhta";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:14:"payment/liqpay";i:149;s:14:"module/special";i:150;s:13:"module/latest";i:151;s:13:"module/filter";i:152;s:17:"module/bestseller";i:153;s:19:"module/tm_slideshow";i:154;s:15:"total/sub_total";i:155;s:16:"module/magnorcms";i:156;s:17:"module/bestseller";i:157;s:18:"module/information";i:158;s:17:"module/bestseller";i:159;s:14:"payment/liqpay";i:160;s:16:"module/watermark";i:161;s:13:"module/simple";i:162;s:21:"module/product_viewed";}s:6:"modify";a:163:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:15:"catalog/profile";i:10;s:14:"catalog/review";i:11;s:18:"common/filemanager";i:12;s:13:"design/banner";i:13;s:19:"design/custom_field";i:14;s:13:"design/layout";i:15;s:14:"extension/feed";i:16;s:17:"extension/manager";i:17;s:16:"extension/module";i:18;s:17:"extension/openbay";i:19;s:17:"extension/payment";i:20;s:18:"extension/shipping";i:21;s:15:"extension/total";i:22;s:16:"feed/google_base";i:23;s:19:"feed/google_sitemap";i:24;s:20:"localisation/country";i:25;s:21:"localisation/currency";i:26;s:21:"localisation/geo_zone";i:27;s:21:"localisation/language";i:28;s:25:"localisation/length_class";i:29;s:25:"localisation/order_status";i:30;s:26:"localisation/return_action";i:31;s:26:"localisation/return_reason";i:32;s:26:"localisation/return_status";i:33;s:25:"localisation/stock_status";i:34;s:22:"localisation/tax_class";i:35;s:21:"localisation/tax_rate";i:36;s:25:"localisation/weight_class";i:37;s:17:"localisation/zone";i:38;s:14:"module/account";i:39;s:16:"module/affiliate";i:40;s:29:"module/amazon_checkout_layout";i:41;s:13:"module/banner";i:42;s:17:"module/bestseller";i:43;s:15:"module/carousel";i:44;s:15:"module/category";i:45;s:18:"module/ebaydisplay";i:46;s:15:"module/featured";i:47;s:13:"module/filter";i:48;s:18:"module/google_talk";i:49;s:18:"module/information";i:50;s:13:"module/latest";i:51;s:17:"module/openbaypro";i:52;s:16:"module/pp_layout";i:53;s:16:"module/slideshow";i:54;s:14:"module/special";i:55;s:12:"module/store";i:56;s:14:"module/welcome";i:57;s:14:"openbay/amazon";i:58;s:22:"openbay/amazon_listing";i:59;s:22:"openbay/amazon_product";i:60;s:16:"openbay/amazonus";i:61;s:24:"openbay/amazonus_listing";i:62;s:24:"openbay/amazonus_product";i:63;s:20:"openbay/ebay_profile";i:64;s:21:"openbay/ebay_template";i:65;s:15:"openbay/openbay";i:66;s:23:"payment/amazon_checkout";i:67;s:24:"payment/authorizenet_aim";i:68;s:21:"payment/bank_transfer";i:69;s:14:"payment/cheque";i:70;s:11:"payment/cod";i:71;s:21:"payment/free_checkout";i:72;s:22:"payment/klarna_account";i:73;s:22:"payment/klarna_invoice";i:74;s:14:"payment/liqpay";i:75;s:20:"payment/moneybookers";i:76;s:14:"payment/nochex";i:77;s:15:"payment/paymate";i:78;s:16:"payment/paypoint";i:79;s:13:"payment/payza";i:80;s:26:"payment/perpetual_payments";i:81;s:18:"payment/pp_express";i:82;s:25:"payment/pp_payflow_iframe";i:83;s:14:"payment/pp_pro";i:84;s:21:"payment/pp_pro_iframe";i:85;s:17:"payment/pp_pro_pf";i:86;s:17:"payment/pp_pro_uk";i:87;s:19:"payment/pp_standard";i:88;s:15:"payment/sagepay";i:89;s:22:"payment/sagepay_direct";i:90;s:18:"payment/sagepay_us";i:91;s:19:"payment/twocheckout";i:92;s:28:"payment/web_payment_software";i:93;s:16:"payment/worldpay";i:94;s:27:"report/affiliate_commission";i:95;s:22:"report/customer_credit";i:96;s:22:"report/customer_online";i:97;s:21:"report/customer_order";i:98;s:22:"report/customer_reward";i:99;s:24:"report/product_purchased";i:100;s:21:"report/product_viewed";i:101;s:18:"report/sale_coupon";i:102;s:17:"report/sale_order";i:103;s:18:"report/sale_return";i:104;s:20:"report/sale_shipping";i:105;s:15:"report/sale_tax";i:106;s:14:"sale/affiliate";i:107;s:12:"sale/contact";i:108;s:11:"sale/coupon";i:109;s:13:"sale/customer";i:110;s:20:"sale/customer_ban_ip";i:111;s:19:"sale/customer_group";i:112;s:10:"sale/order";i:113;s:14:"sale/recurring";i:114;s:11:"sale/return";i:115;s:12:"sale/voucher";i:116;s:18:"sale/voucher_theme";i:117;s:15:"setting/setting";i:118;s:13:"setting/store";i:119;s:16:"shipping/auspost";i:120;s:17:"shipping/citylink";i:121;s:19:"shipping/courier_ua";i:122;s:14:"shipping/fedex";i:123;s:13:"shipping/flat";i:124;s:13:"shipping/free";i:125;s:13:"shipping/item";i:126;s:19:"shipping/novaposhta";i:127;s:23:"shipping/parcelforce_48";i:128;s:15:"shipping/pickup";i:129;s:19:"shipping/royal_mail";i:130;s:12:"shipping/ups";i:131;s:13:"shipping/usps";i:132;s:15:"shipping/weight";i:133;s:11:"tool/backup";i:134;s:14:"tool/error_log";i:135;s:12:"total/coupon";i:136;s:12:"total/credit";i:137;s:14:"total/handling";i:138;s:16:"total/klarna_fee";i:139;s:19:"total/low_order_fee";i:140;s:12:"total/reward";i:141;s:14:"total/shipping";i:142;s:15:"total/sub_total";i:143;s:9:"total/tax";i:144;s:11:"total/total";i:145;s:13:"total/voucher";i:146;s:9:"user/user";i:147;s:20:"user/user_permission";i:148;s:14:"payment/liqpay";i:149;s:14:"module/special";i:150;s:13:"module/latest";i:151;s:13:"module/filter";i:152;s:17:"module/bestseller";i:153;s:19:"module/tm_slideshow";i:154;s:15:"total/sub_total";i:155;s:16:"module/magnorcms";i:156;s:17:"module/bestseller";i:157;s:18:"module/information";i:158;s:17:"module/bestseller";i:159;s:14:"payment/liqpay";i:160;s:16:"module/watermark";i:161;s:13:"module/simple";i:162;s:21:"module/product_viewed";}}'),
(11, 'Редактор', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
`voucher_id` int(11) NOT NULL,
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
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
`voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
`voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
`weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
`weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(2, 2, 'Граммы', 'г'),
(1, 2, 'Килограммы', 'кг');

-- --------------------------------------------------------

--
-- Структура таблицы `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
`zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4034 ;

--
-- Дамп данных таблицы `oc_zone`
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
-- Структура таблицы `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
`zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Дамп данных таблицы `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(84, 220, 0, 5, '2014-11-01 16:03:03', '0000-00-00 00:00:00'),
(83, 220, 3487, 6, '2014-11-01 16:02:50', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `simple_custom_data`
--

CREATE TABLE IF NOT EXISTS `simple_custom_data` (
  `object_type` tinyint(4) NOT NULL,
  `object_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `simple_custom_data`
--

INSERT INTO `simple_custom_data` (`object_type`, `object_id`, `customer_id`, `data`) VALUES
(2, 1, 1, 'a:0:{}'),
(3, 1, 1, 'a:0:{}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
 ADD PRIMARY KEY (`address_id`), ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
 ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
 ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
 ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
 ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
 ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
 ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
 ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
 ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
 ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
 ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
 ADD PRIMARY KEY (`category_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
 ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
 ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
 ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
 ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
 ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
 ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
 ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
 ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
 ADD PRIMARY KEY (`customer_ban_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_field`
--
ALTER TABLE `oc_customer_field`
 ADD PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
 ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
 ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
 ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
 ADD PRIMARY KEY (`customer_ip_id`), ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
 ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
 ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
 ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
 ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
 ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_to_customer_group`
--
ALTER TABLE `oc_custom_field_to_customer_group`
 ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
 ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
 ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
 ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
 ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
 ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
 ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
 ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
 ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
 ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
 ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
 ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
 ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
 ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
 ADD PRIMARY KEY (`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
 ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
 ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
 ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
 ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
 ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
 ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
 ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
 ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
 ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
 ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
 ADD PRIMARY KEY (`order_download_id`);

--
-- Indexes for table `oc_order_field`
--
ALTER TABLE `oc_order_field`
 ADD PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`);

--
-- Indexes for table `oc_order_fraud`
--
ALTER TABLE `oc_order_fraud`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
 ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
 ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
 ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
 ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
 ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
 ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
 ADD PRIMARY KEY (`order_total_id`), ADD KEY `idx_orders_total_orders_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
 ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
 ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
 ADD PRIMARY KEY (`product_discount_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
 ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
 ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
 ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
 ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_profile`
--
ALTER TABLE `oc_product_profile`
 ADD PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
 ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
 ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
 ADD PRIMARY KEY (`product_special_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
 ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
 ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
 ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_profile`
--
ALTER TABLE `oc_profile`
 ADD PRIMARY KEY (`profile_id`);

--
-- Indexes for table `oc_profile_description`
--
ALTER TABLE `oc_profile_description`
 ADD PRIMARY KEY (`profile_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
 ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
 ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
 ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
 ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
 ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
 ADD PRIMARY KEY (`review_id`), ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
 ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
 ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
 ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
 ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
 ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
 ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
 ADD PRIMARY KEY (`url_alias_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
 ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
 ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
 ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
 ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
 ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
 ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
 ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
 ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
 ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- Indexes for table `simple_custom_data`
--
ALTER TABLE `simple_custom_data`
 ADD PRIMARY KEY (`object_type`,`object_id`,`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_ban_ip`
--
ALTER TABLE `oc_customer_ban_ip`
MODIFY `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=448;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_download`
--
ALTER TABLE `oc_order_download`
MODIFY `order_download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2352;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=580;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=440;
--
-- AUTO_INCREMENT for table `oc_profile`
--
ALTER TABLE `oc_profile`
MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1152;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=777;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4034;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
