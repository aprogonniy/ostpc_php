
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------



DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) collate utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=20 ;



INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(13, 'skider-banner', 1);

-- --------------------------------------------------------


DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL auto_increment,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) collate utf8_bin NOT NULL,
  `image` varchar(255) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=160 ;



INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(159, 13, 'index.php?route=product/category&amp;path=57', 'data/slide-5.jpg'),
(158, 13, 'index.php?route=product/category&amp;path=70', 'data/slide-4.jpg'),
(157, 13, 'index.php?route=product/category&amp;path=18', 'data/slide-3.jpg'),
(156, 13, 'index.php?route=product/category&amp;path=20', 'data/slide-2.jpg'),
(155, 13, 'index.php?route=product/category&amp;path=17', 'data/slide-1.jpg');

-- --------------------------------------------------------



DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` longtext collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;


INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(159, 1, 13, '&lt;h2&gt;Lorem Ipsum&lt;span&gt;(2012)&lt;/span&gt;&lt;/h2&gt; &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;/p&gt;&lt;a href=&quot;index.php?route=product/category&amp;path=57&quot;&gt;&lt;/a&gt;'),
(158, 1, 13, '&lt;h2&gt;Lorem Ipsum&lt;span&gt;(2012)&lt;/span&gt;&lt;/h2&gt; &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;/p&gt;&lt;a href=&quot;index.php?route=product/category&amp;path=70&quot;&gt;&lt;/a&gt;'),
(157, 1, 13, '&lt;h2&gt;Lorem Ipsum&lt;span&gt;(2012)&lt;/span&gt;&lt;/h2&gt; &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;/p&gt;&lt;a href=&quot;index.php?route=product/category&amp;path=18&quot;&gt;&lt;/a&gt;'),
(156, 1, 13, '&lt;h2&gt;Lorem Ipsum&lt;span&gt;(2012)&lt;/span&gt;&lt;/h2&gt; &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;/p&gt;&lt;a href=&quot;index.php?route=product/category&amp;path=20&quot;&gt;&lt;/a&gt;'),
(155, 1, 13, '&lt;h2&gt;Lorem Ipsum&lt;span&gt;(2012)&lt;/span&gt;&lt;/h2&gt; &lt;p&gt;Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. &lt;/p&gt;&lt;a href=&quot;index.php?route=product/category&amp;path=17&quot;&gt;&lt;/a&gt;');

-- --------------------------------------------------------



DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) collate utf8_bin NOT NULL,
  `code` varchar(32) collate utf8_bin NOT NULL,
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=439 ;


INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(410, 'module', 'banner'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(408, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(428, 'module', 'special'),
(429, 'module', 'latest'),
(430, 'module', 'information'),
(435, 'module', 'featured'),
(434, 'module', 'bestseller'),
(436, 'payment', 'cheque'),
(437, 'module', 'slideshow');

-- --------------------------------------------------------



DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `group` varchar(32) collate utf8_bin NOT NULL,
  `key` varchar(64) collate utf8_bin NOT NULL default '',
  `value` text collate utf8_bin NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26412 ;


INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(9457, 0, 'shipping', 'shipping_sort_order', '3', 0),
(3453, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3452, 0, 'sub_total', 'sub_total_status', '1', 0),
(272, 0, 'tax', 'tax_status', '1', 0),
(16013, 0, 'total', 'total_sort_order', '9', 0),
(16012, 0, 'total', 'total_status', '1', 0),
(273, 0, 'tax', 'tax_sort_order', '5', 0),
(19411, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(20444, 0, 'cod', 'cod_sort_order', '5', 0),
(20440, 0, 'cod', 'cod_total', '0.01', 0),
(20441, 0, 'cod', 'cod_order_status_id', '1', 0),
(20442, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(20443, 0, 'cod', 'cod_status', '1', 0),
(9456, 0, 'shipping', 'shipping_status', '1', 0),
(9455, 0, 'shipping', 'shipping_estimator', '1', 0),
(13801, 0, 'coupon', 'coupon_sort_order', '4', 0),
(13800, 0, 'coupon', 'coupon_status', '1', 0),
(26386, 0, 'config', 'config_mail_protocol', 'mail', 0),
(20422, 0, 'flat', 'flat_sort_order', '1', 0),
(20421, 0, 'flat', 'flat_status', '1', 0),
(20420, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(20419, 0, 'flat', 'flat_tax_class_id', '9', 0),
(20418, 0, 'flat', 'flat_cost', '5.00', 0),
(9444, 0, 'credit', 'credit_sort_order', '7', 0),
(9443, 0, 'credit', 'credit_status', '1', 0),
(26385, 0, 'config', 'config_image_cart_height', '68', 0),
(18432, 0, 'reward', 'reward_sort_order', '2', 0),
(18431, 0, 'reward', 'reward_status', '1', 0),
(26384, 0, 'config', 'config_image_cart_width', '47', 0),
(26315, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(26383, 0, 'config', 'config_image_wishlist_height', '68', 0),
(26382, 0, 'config', 'config_image_wishlist_width', '47', 0),
(26381, 0, 'config', 'config_image_compare_height', '130', 0),
(26380, 0, 'config', 'config_image_compare_width', '90', 0),
(16017, 0, 'voucher', 'voucher_sort_order', '8', 0),
(16016, 0, 'voucher', 'voucher_status', '1', 0),
(26379, 0, 'config', 'config_image_related_height', '202', 0),
(19410, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(19409, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(26378, 0, 'config', 'config_image_related_width', '140', 0),
(26377, 0, 'config', 'config_image_additional_height', '130', 0),
(26376, 0, 'config', 'config_image_additional_width', '90', 0),
(26375, 0, 'config', 'config_image_product_height', '216', 0),
(26374, 0, 'config', 'config_image_product_width', '150', 0),
(26373, 0, 'config', 'config_image_popup_height', '864', 0),
(26410, 0, 'latest', 'latest_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:3:"150";s:12:"image_height";s:3:"216";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(25837, 0, 'information', 'information_module', 'a:6:{i:0;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}i:4;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(26372, 0, 'config', 'config_image_popup_width', '600', 0),
(26313, 0, 'bestseller', 'bestseller_module', 'a:2:{i:0;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:3:"120";s:12:"image_height";s:3:"120";s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:5:"limit";s:2:"10";s:11:"image_width";s:2:"80";s:12:"image_height";s:2:"80";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(26216, 0, 'category', 'category_module', 'a:11:{i:0;a:5:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:5:{s:9:"layout_id";s:2:"10";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:5:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:5:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:4;a:5:{s:9:"layout_id";s:1:"8";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:5;a:5:{s:9:"layout_id";s:1:"4";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:6;a:5:{s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:7;a:5:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:8;a:5:{s:9:"layout_id";s:1:"5";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:9;a:5:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:10;a:5:{s:9:"layout_id";s:1:"9";s:8:"position";s:11:"column_left";s:5:"count";s:1:"0";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(26314, 0, 'account', 'account_module', 'a:3:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(26221, 0, 'featured', 'featured_product', '47,42,50,43,44,30,31,29', 0),
(26222, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:3:"125";s:12:"image_height";s:3:"180";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"9";}}', 1),
(26220, 0, 'featured', 'product', '', 0),
(26371, 0, 'config', 'config_image_thumb_height', '432', 0),
(26370, 0, 'config', 'config_image_thumb_width', '300', 0),
(26369, 0, 'config', 'config_image_category_height', '115', 0),
(26219, 0, 'slideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"13";s:5:"width";s:3:"763";s:6:"height";s:3:"498";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(26368, 0, 'config', 'config_image_category_width', '80', 0),
(26367, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(26411, 0, 'special', 'special_module', 'a:3:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:2:"70";s:12:"image_height";s:3:"100";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:2:"70";s:12:"image_height";s:3:"100";s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:7:{s:5:"limit";s:1:"2";s:11:"image_width";s:2:"70";s:12:"image_height";s:3:"100";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(26366, 0, 'config', 'config_logo', 'data/logo.png', 0),
(26365, 0, 'config', 'config_return_status_id', '2', 0),
(26364, 0, 'config', 'config_commission', '5', 0),
(26363, 0, 'config', 'config_affiliate_id', '4', 0),
(26362, 0, 'config', 'config_stock_status_id', '5', 0),
(26361, 0, 'config', 'config_stock_checkout', '0', 0),
(26360, 0, 'config', 'config_stock_warning', '0', 0),
(26359, 0, 'config', 'config_stock_display', '0', 0),
(26358, 0, 'config', 'config_complete_status_id', '5', 0),
(26357, 0, 'config', 'config_order_status_id', '1', 0),
(26356, 0, 'config', 'config_invoice_prefix', 'INV-2011-00', 0),
(26355, 0, 'config', 'config_order_edit', '100', 0),
(26354, 0, 'config', 'config_checkout_id', '5', 0),
(26353, 0, 'config', 'config_guest_checkout', '1', 0),
(26352, 0, 'config', 'config_cart_weight', '1', 0),
(26351, 0, 'config', 'config_account_id', '3', 0),
(26350, 0, 'config', 'config_customer_price', '0', 0),
(26349, 0, 'config', 'config_customer_group_id', '1', 0),
(26348, 0, 'config', 'config_tax_customer', 'shipping', 0),
(26347, 0, 'config', 'config_tax_default', 'shipping', 0),
(26346, 0, 'config', 'config_vat', '0', 0),
(26345, 0, 'config', 'config_tax', '1', 0),
(26344, 0, 'config', 'config_voucher_max', '100', 0),
(26343, 0, 'config', 'config_voucher_min', '1', 0),
(26342, 0, 'config', 'config_upload_allowed', 'jpg, JPG, jpeg, gif, png, txt', 0),
(26341, 0, 'config', 'config_download', '1', 0),
(26340, 0, 'config', 'config_review_status', '1', 0),
(26339, 0, 'config', 'config_product_count', '0', 0),
(26338, 0, 'config', 'config_admin_limit', '20', 0),
(26337, 0, 'config', 'config_catalog_limit', '12', 0),
(26336, 0, 'config', 'config_weight_class_id', '1', 0),
(26335, 0, 'config', 'config_length_class_id', '1', 0),
(26334, 0, 'config', 'config_currency_auto', '1', 0),
(26333, 0, 'config', 'config_currency', 'USD', 0),
(26332, 0, 'config', 'config_admin_language', 'en', 0),
(26331, 0, 'config', 'config_language', 'en', 0),
(26330, 0, 'config', 'config_zone_id', '3563', 0),
(26329, 0, 'config', 'config_country_id', '222', 0),
(26328, 0, 'config', 'config_layout_id', '4', 0),
(26327, 0, 'config', 'config_template', 'theme_free', 0),
(26326, 0, 'config', 'config_meta_description', 'Fishing Store', 0),
(26325, 0, 'config', 'config_title', 'Fishing Store', 0),
(26324, 0, 'config', 'config_fax', '+1 (234) 567-8901 ', 0),
(26323, 0, 'config', 'config_telephone', '+1 (234) 567-8901 ', 0),
(26322, 0, 'config', 'config_email', 'admin@admin.com', 0),
(26321, 0, 'config', 'config_address', 'The Company Name Inc. 9870 St Vincent Place,\r\nGlasgow, DC 45 Fr 45.', 0),
(26320, 0, 'config', 'config_owner', 'Your Name', 0),
(26319, 0, 'config', 'config_name', 'Fishing Store', 0),
(26387, 0, 'config', 'config_mail_parameter', '', 0),
(26388, 0, 'config', 'config_smtp_host', '', 0),
(26389, 0, 'config', 'config_smtp_username', '', 0),
(26390, 0, 'config', 'config_smtp_password', '', 0),
(26391, 0, 'config', 'config_smtp_port', '25', 0),
(26392, 0, 'config', 'config_smtp_timeout', '5', 0),
(26393, 0, 'config', 'config_alert_mail', '0', 0),
(26394, 0, 'config', 'config_account_mail', '0', 0),
(26395, 0, 'config', 'config_alert_emails', '', 0),
(26396, 0, 'config', 'config_fraud_detection', '0', 0),
(26397, 0, 'config', 'config_fraud_key', '', 0),
(26398, 0, 'config', 'config_fraud_score', '', 0),
(26399, 0, 'config', 'config_fraud_status_id', '7', 0),
(26400, 0, 'config', 'config_use_ssl', '0', 0),
(26401, 0, 'config', 'config_seo_url', '0', 0),
(26402, 0, 'config', 'config_maintenance', '0', 0),
(26403, 0, 'config', 'config_encryption', '10bf458e326dcd5b6440b30ff0707bd0', 0),
(26404, 0, 'config', 'config_compression', '0', 0),
(26405, 0, 'config', 'config_error_display', '1', 0),
(26406, 0, 'config', 'config_error_log', '1', 0),
(26407, 0, 'config', 'config_error_filename', 'error.txt', 0),
(26408, 0, 'config', 'config_google_analytics', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
