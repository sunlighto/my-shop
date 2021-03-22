-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2013 at 05:44 PM
-- Server version: 5.1.40
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apple`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1001 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `parent`) VALUES
(685, 'Комплектующие к Apple', 0),
(691, 'Запчасти iPad', 685),
(692, 'Запчасти iPhone', 685),
(693, 'Запчасти iPod', 685),
(694, 'Запчасти Mac', 685),
(695, 'iPad', 691),
(696, 'iPad 2', 691),
(697, 'iPad NEW (iPad 3)', 691),
(698, 'iPad 4', 691),
(699, 'iPad mini', 691),
(700, 'iPhone', 692),
(701, 'iPhone 3G/3GS', 692),
(702, 'iPhone 4', 692),
(703, 'iPhone 4S', 692),
(704, 'iPhone 5', 692),
(705, 'Микросхемы Apple', 685),
(836, 'Защитные плёнки на Apple', 0),
(840, 'iPad', 836),
(841, 'iPhone', 836),
(842, 'iPod', 836),
(843, 'Mac', 836),
(853, 'Оборудование для ремонта Apple', 0),
(876, 'Аксессуары для Apple', 0),
(877, 'Аксессуары iPad', 876),
(878, 'Аксессуары iPhone', 876),
(879, 'Аксессуары iPod', 876),
(880, 'Аксессуары Mac', 876),
(881, 'iPad', 877),
(882, 'iPad 2', 877),
(883, 'iPad NEW 3 / iPad 4', 877),
(884, 'iPad mini', 877),
(885, 'iPhone 3G / 3GS', 878),
(886, 'iPhone 4 / 4S', 878),
(887, 'iPhone 5', 878),
(888, 'Аксессуары для Apple', 876),
(895, 'iPhone 5 Lamborghini', 878);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `page_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `title`, `alias`, `description`, `keywords`, `text`, `position`) VALUES
(1, 'Главная', 'index', 'Описание главной', 'ключевики главной', 'Текст главной страницы', 1),
(2, 'О компании', 'about', 'Описание о компании', 'ключевики о компании', 'Текст страницы о компании', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'empty_thumb.jpg',
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13612 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `parent`, `content`, `image`, `price`) VALUES
(7582, 'LCD iPod Touch ', 693, '', 'empty_thumb.jpg', 22),
(7583, 'Len+Touchscreen iPod Touch ', 693, '', 'empty_thumb.jpg', 12),
(8833, 'Аккумулятор iPod Touch 1G ', 693, '', 'empty_thumb.jpg', 7.3),
(8834, 'Аккумулятор iPod Touch 2G ', 693, '', 'empty_thumb.jpg', 7.7),
(8935, 'Len+Touchscreen iPod Touch 2G', 693, '', 'empty_thumb.jpg', 15),
(8989, 'LCD iPod Touch 2G', 693, '', 'empty_thumb.jpg', 12),
(9087, 'Buzzer iPod Nano 5G', 693, '', 'empty_thumb.jpg', 2.7),
(9352, 'LCD iPod Nano 4G', 693, '', 'empty_thumb.jpg', 14),
(9353, 'Len iPod Nano 4G', 693, '', 'empty_thumb.jpg', 5.3),
(9508, 'Аккумулятор iPod Nano 2G', 693, '', 'empty_thumb.jpg', 7),
(9509, 'Аккумулятор iPod Nano 3G', 693, '', 'empty_thumb.jpg', 8.5),
(9918, 'LCD iPod Touch 4G+Touchscreen (black)', 693, '', 'empty_thumb.jpg', 24),
(9967, 'LCD iPod Nano 5G', 693, '', 'empty_thumb.jpg', 14),
(10390, 'LCD iPod Nano 6G', 693, '<p>\r\n	only lcd</p>\r\n', 'empty_thumb.jpg', 16),
(10486, 'Flat сable iPod nano 6G with on/off button and volume', 693, '', 'empty_thumb.jpg', 10.1),
(10733, 'Housing Cover iPod nano 3G (silver)', 693, '', 'empty_thumb.jpg', 8.5),
(11062, 'LCD iPod Touch 4G+Touchscreen (white)', 693, '', 'empty_thumb.jpg', 23),
(11629, 'Flat Cable on/off iPod touch 4G', 693, '', 'empty_thumb.jpg', 8.5),
(11630, 'Аккумулятор iPod Classic 616-0232(160gb)', 693, '', 'empty_thumb.jpg', 9),
(12100, 'LCD iPod Nano 2G', 693, '', 'empty_thumb.jpg', 14),
(12145, 'LCD iPod Nano 6G module', 693, '', 'empty_thumb.jpg', 50),
(12147, 'On/off outside home iPod Touch 4G (black)', 693, '', 'empty_thumb.jpg', 4),
(12148, 'On/off outside home iPod Touch 4G (white)', 693, '', 'empty_thumb.jpg', 4),
(12217, 'Аккумулятор iPod Nano 6G', 693, '', 'empty_thumb.jpg', 10.5),
(13219, 'Camera iPod Touch 4G', 693, '', 'empty_thumb.jpg', 12),
(12915, 'Housing iPod Touch 4G 32G/64G (silver)', 693, '', 'empty_thumb.jpg', 17.5),
(13003, 'Скотч для Touchscreen iPod Touch 4G', 693, '', 'empty_thumb.jpg', 1.1),
(13065, 'Аккумулятор iPod Classic 616-0229 (80gb/120gb)', 693, '', 'empty_thumb.jpg', 9),
(13094, 'Аккумулятор iPod Touch 4G', 693, '', 'empty_thumb.jpg', 13.4),
(13220, 'Hands-free connector iPod Touch 4G', 693, '', 'empty_thumb.jpg', 6.5),
(13295, 'LCD iPod Nano 7G', 693, '', 'empty_thumb.jpg', 20),
(10621, 'Glass Screen Cover for MacBook Pro 13.3"', 694, 'защитное стекло экрана', 'empty_thumb.jpg', 59),
(10622, 'Glass Screen Cover for MacBook Pro 15.4"', 694, 'защитное стекло экрана ', 'empty_thumb.jpg', 69),
(10623, 'Glass Screen Cover for MacBook Pro 17.1"', 694, 'защитное стекло экрана', 'empty_thumb.jpg', 77),
(9639, 'Клипсы для дисплея iPad ', 695, '', 'empty_thumb.jpg', 0.3),
(9780, 'Housing iPad 3G (silver)', 695, 'Корпус на iPad 3G серебристый', 'empty_thumb.jpg', 55),
(10162, 'Аккумулятор iPad ', 695, '', 'empty_thumb.jpg', 30),
(10373, 'Housing iPad  Wi-Fi', 695, 'Корпус для iPad 3 Wi-Fi', 'empty_thumb.jpg', 75),
(10462, 'Flat Cable iPad + HF connector', 695, 'Шлейф с разъёмом наушников на iPad', 'empty_thumb.jpg', 8.8),
(10131, 'Flat Cable iPad 2 with charger connector', 696, 'Шлейф на iPad 2 с системным разьемом.', 'empty_thumb.jpg', 8.5),
(10132, 'Flat Cable iPad 2 with switch on/off & switch vibro', 696, 'Шлейф с кнопками громкости и кнопкой включения', 'empty_thumb.jpg', 13.5),
(10133, 'Двухсторонний скотч для iPad 2 (комплект)', 696, '', 'empty_thumb.jpg', 3),
(10134, 'Flat Cable iPad 2 3G with sim & HF connector (black)', 696, 'Шлейф в комплекте с SIM-держателем и разьемом гарнитуры черного цвета ', 'empty_thumb.jpg', 9.99),
(10135, 'Flat Cable iPad 2 3G with sim & HF connector (white)', 696, 'Шлейф в комплекте с SIM-держателем и разьемом гарнитуры белого цвета ', 'empty_thumb.jpg', 9.99),
(10136, 'Flat Cable iPad 2 Wi-Fi with HF connector', 696, '', 'empty_thumb.jpg', 10),
(10161, 'LCD iPad 2  only lcd', 696, 'AB0970003013', 'empty_thumb.jpg', 70),
(10163, 'Touchscreen + Len iPad 2 (black)', 696, 'сенсорное стекло с чёрной рамкой', 'empty_thumb.jpg', 36),
(10164, 'Touchscreen + Len iPad 2 (white)', 696, 'сенсорное стекло с белой рамкой', 'empty_thumb.jpg', 36),
(10375, 'Camera iPad 2 big (front)', 696, 'камера передняя', 'empty_thumb.jpg', 4.8),
(10461, 'Mic iPad 2 (микрофон)', 696, 'микрофон на шлейфе с разъёмом для iPad 2', 'empty_thumb.jpg', 4.8),
(10463, 'Camera iPad 2 small (back)', 696, 'камера задняя', 'empty_thumb.jpg', 4.8),
(10563, 'On/off inside Home iPad 2', 696, 'центральная кнопка  (внутреняя) на плате для iPad 2.', 'empty_thumb.jpg', 3.99),
(10564, 'Button Home iPad 2 (black)', 696, 'Наружная кнопка главного меню на iPad 2 WiFi/iPad 2 WiFi+3G, чёрного цвета.', 'empty_thumb.jpg', 1.99),
(10565, 'Antenna iPad 2 bluetooth', 696, 'антенна блютуз', 'empty_thumb.jpg', 6.8),
(10566, 'Antenna iPad 2 Wi-Fi', 696, 'антенна Wi-Fi', 'empty_thumb.jpg', 6.2),
(10734, 'Touch socket iPad 2 (black) ', 696, 'Рамка под дисплей на iPad 2 чёрного цвета', 'empty_thumb.jpg', 3.9),
(10735, 'Touch socket iPad 2 (white) ', 696, 'Рамка под дисплей на iPad 2 белого цвета', 'empty_thumb.jpg', 3.9),
(10786, 'Sim card holder outside iPad 2', 696, '', 'empty_thumb.jpg', 3.5),
(10880, 'Аккумулятор iPad 2', 696, '', 'empty_thumb.jpg', 29),
(11061, 'Button Home iPad 2 (white)', 696, 'Наружная кнопка главного меню на iPad 2 WiFi/iPad 2 WiFi+3G, белого цвета.', 'empty_thumb.jpg', 1.99),
(12972, 'Touchscreen + Len iPad 2 (black) copy', 696, 'сенсорное стекло с чёрной рамкой', 'empty_thumb.jpg', 29),
(13211, 'Flat Cable iPad 2 on LCD', 696, 'дисплейный шлейф', 'empty_thumb.jpg', 5.99),
(13402, 'Housing iPad 2', 696, '', 'empty_thumb.jpg', 85),
(12149, 'LCD iPad NEW 3/4 only lcd', 697, '<p>\r\n	дисплей для iPad NEW 3 без сенсора</p>\r\n', 'empty_thumb.jpg', 72),
(12154, 'Touchscreen + Len iPad NEW 3/4 (black)', 697, 'Сенсорное стекло черного цвета для iPad 3', 'empty_thumb.jpg', 58),
(12263, 'Touchscreen + Len iPad NEW 3/4 (white)', 697, '<p>\r\n	Сенсорное стекло белого цвета для iPad 3</p>\r\n', 'empty_thumb.jpg', 58),
(12836, 'Camera iPad New 3 back', 697, 'камера задняя', 'empty_thumb.jpg', 25.5),
(12922, 'Housing iPad NEW 3 Wi-Fi 3G', 697, '<p>\r\n	Задняя крышка корпуса для iPad 3 WiFi серебристого цвета</p>\r\n', 'empty_thumb.jpg', 105),
(13118, 'Flat Cable NEW iPad 3 with switch volume on/off &amp; switch vibro', 697, '<p>\r\n	Шлейф для iPad New 3 с кнопками регулировки громкости и включения</p>\r\n', 'empty_thumb.jpg', 6),
(13209, 'Flat Cable iPad 3 with HF connector', 697, '', 'empty_thumb.jpg', 39.9),
(13251, 'Touchscreen + Len iPad NEW 3/4 (black) copy', 697, '', 'empty_thumb.jpg', 45),
(13252, 'Touchscreen + Len iPad NEW 3/4 (white) copy ', 697, '', 'empty_thumb.jpg', 45),
(13408, 'Flat Cable iPad NEW 3 with charger connector', 697, '<p>\r\n	Шлейф с системным коннектором для iPad NEW (iPad 3)</p>\r\n', 'empty_thumb.jpg', 7.4),
(13409, 'Buzzer iPad NEW 3 (2pcs) with frame', 697, '<p>\r\n	Динамик полифонический для iPad New 3 (2 шт) в рамке</p>\r\n', 'empty_thumb.jpg', 15.9),
(13417, 'Antenna iPad NEW 3 bluetooth', 697, '<p>\r\n	Антенна з блютузом для iPad 3</p>\r\n', 'empty_thumb.jpg', 4.8),
(13418, 'Antenna iPad NEW 3 GPS', 697, '<p>\r\n	Антенна для iPad 3 GPS</p>\r\n', 'empty_thumb.jpg', 4.8),
(13420, 'Antenna 3G iPad NEW 3 (2pcs)', 697, '<p>\r\n	Антенна 3G для iPad New 3 (правая и левая)</p>\r\n', 'empty_thumb.jpg', 6.8),
(13422, 'Flat Cable iPad NEW 3 with microphone', 697, '<p>\r\n	Шлейф для iPad New 3 c микрофоном</p>\r\n', 'empty_thumb.jpg', 3.8),
(13547, 'Camera iPad New 3 front', 697, '', 'empty_thumb.jpg', 12),
(12913, 'Touchscreen iPad mini (black)', 699, 'Сенсорное стекло на iPad mini чёрного цвета', 'empty_thumb.jpg', 99),
(12914, 'Touchscreen iPad mini (white)', 699, 'Сенсорное стекло на iPad mini белого цвета', 'empty_thumb.jpg', 99),
(12970, 'LCD iPad mini', 699, 'Дисплей на iPad mini', 'empty_thumb.jpg', 68),
(13410, 'Flat Cable iPad mini with connector system (white)', 699, '<p>\r\n	Шлейф с системным разьёмом белого цвета для iPad MINI.</p>\r\n', 'empty_thumb.jpg', 12.8),
(13412, 'Button Home iPad mini (black)', 699, '<p>\r\n	Кнопка главного меню чёрного цвета для iPad MINI.</p>\r\n', 'empty_thumb.jpg', 2.8),
(13411, 'Flat Cable iPad mini with connector system (black)', 699, '<p>\r\n	Шлейф с системным разьёмом чёрного цвета для iPad MINI</p>\r\n', 'empty_thumb.jpg', 12.8),
(13413, 'Button Home iPad mini (white)', 699, '<p>\r\n	Кнопка главного меню белого цвета для iPad MINI.</p>\r\n', 'empty_thumb.jpg', 2.8),
(13414, 'Flat Cable iPad mini with hands-free connector (black)', 699, '<p>\r\n	Шлейф с разьемом гарнитуры черного цвета для iPad MINI</p>\r\n', 'empty_thumb.jpg', 7.4),
(13415, 'Flat Cable iPad mini with hands-free connector (white)', 699, '<p>\r\n	Шлейф с разьемом гарнитуры белого цвета для iPad MINI</p>\r\n', 'empty_thumb.jpg', 7.4),
(13416, 'Flat Cable iPad mini microphone', 699, '<p>\r\n	Шлейф с микрофоном для iPad MINI</p>\r\n', 'empty_thumb.jpg', 4.8),
(7225, 'Housing iPhone 2G', 700, 'USED!!!black .silver ', 'empty_thumb.jpg', 24),
(7424, 'Sim card holder iPhone 2G', 700, 'silver', 'empty_thumb.jpg', 5),
(7425, 'Flat cable iPhone 2G for light sensor and speaker ', 700, 'with components', 'empty_thumb.jpg', 2.8),
(7426, 'Charger flat cable iPhone 2G', 700, 'Шлейф с разъемом заряда на iPhone 2G', 'empty_thumb.jpg', 6.5),
(7427, 'Housing cover iPhone 2G (крышка акб) ', 700, 'black, green, blue, red, pink, 8G, 16G', 'empty_thumb.jpg', 21),
(7428, 'Flat cable iPhone 2G with vibro ', 700, ' handsfree connector and on/off button', 'empty_thumb.jpg', 9.2),
(7597, 'Len iPhone 2G', 700, '', 'empty_thumb.jpg', 7),
(7806, 'Buzzer iPhone 2G ', 700, 'Полифонический динамик на iPhone 2G', 'empty_thumb.jpg', 2.2),
(8144, 'Аккумулятор iPhone 2G', 700, '', 'empty_thumb.jpg', 8.3),
(8197, 'Выталкиватель сим карты iPhone', 700, '', 'empty_thumb.jpg', 0.6),
(8215, 'Винтики iPhone 2G', 700, '', 'empty_thumb.jpg', 0.1),
(8238, 'Charger connector iPhone 2G', 700, 'Разъём заряда (системный разъём) на iPhone 2G', 'empty_thumb.jpg', 0.9),
(8311, 'Sim card holder inside iPhone 2G', 700, '', 'empty_thumb.jpg', 3.9),
(8509, 'Camera iPhone 2G', 700, 'Камера на iPhone 2G', 'empty_thumb.jpg', 5.5),
(9182, 'Металлическая основа под LCD iPhone 2G', 700, '', 'empty_thumb.jpg', 9),
(9183, 'Скотч под LCD iPhone 2G', 700, '', 'empty_thumb.jpg', 0.9),
(9356, 'Antenna block iPhone ', 700, 'Антенна на iPhone', 'empty_thumb.jpg', 5),
(9609, 'Mic iPhone 2G', 700, '', 'empty_thumb.jpg', 1.5),
(7581, 'Len iPhone 3G ', 701, 'стекло', 'empty_thumb.jpg', 9),
(7649, 'Housing cover iPhone 3G high copy (black)', 701, 'задняя крышка', 'empty_thumb.jpg', 36),
(7725, 'Sim card holder outside (tray) iPhone 3G/3GS (black)', 701, '', 'empty_thumb.jpg', 2.5),
(7867, 'Charger flat cable iPhone 3G ', 701, 'Шлейф с разъемом зарядки', 'empty_thumb.jpg', 4.5),
(7868, 'Antenna+buzzer iPhone 3G ', 701, 'with data connector', 'empty_thumb.jpg', 6.5),
(7925, 'Button Home  iPhone 3G/3GS white', 701, '<p>\r\n	центральная кнопка</p>\r\n', 'empty_thumb.jpg', 1.8),
(8145, 'Аккумулятор iPhone 3G', 701, '', 'empty_thumb.jpg', 7.6),
(8174, 'Touchscreen+Len iPhone 3G (black)', 701, '', 'empty_thumb.jpg', 11),
(8216, 'Screws iPhone 3G small', 701, 'винтики', 'empty_thumb.jpg', 0.1),
(8307, 'Charger flat cable iPhone 3GS', 701, 'Шлейф с разъемом зарядки', 'empty_thumb.jpg', 5.5),
(8308, 'Charger connector iPhone 3G/3GS', 701, 'разъём заряда', 'empty_thumb.jpg', 0.95),
(8310, 'Sim card holder inside iPhone 3G', 701, 'внутренний держатель сим карты', 'empty_thumb.jpg', 4.65),
(8338, 'Housing iPhone 3GS (black)', 701, 'задняя крышка', 'empty_thumb.jpg', 19.5),
(8390, 'Sim card contact iPhone 2G/3G/3GS', 701, 'контакты для сим карты', 'empty_thumb.jpg', 1.2),
(8391, 'On/off vibro mode iPhone 3G/3GS (black)', 701, '<p>\r\n	кнопка вкл/выкл беззвучного режима</p>\r\n', 'empty_thumb.jpg', 1),
(8392, 'Внутренний выталкиватель сим карты iPhone 3G/3GS', 701, '', 'empty_thumb.jpg', 1),
(8508, 'Sim card holder inside iPhone 3GS', 701, 'внутренний держатель сим карты', 'empty_thumb.jpg', 4.7),
(8640, 'Touchscreen+Len iPhone 3GS (black)', 701, '', 'empty_thumb.jpg', 11.8),
(8643, 'Flat cable on/off iPhone 3GS/3G + HF (black)', 701, '<p>\r\n	шлейф с разъёмам наушников</p>\r\n', 'empty_thumb.jpg', 5),
(8841, 'Button outside volume iPhone 3G/3GS', 701, 'кнопка регулировки громкости звука iPhone 3G/3GS', 'empty_thumb.jpg', 2),