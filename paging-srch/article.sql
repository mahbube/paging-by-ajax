-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2012 at 07:14 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paging`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title_farsi` varchar(2048) NOT NULL,
  `title_english` varchar(2048) NOT NULL,
  `responsible` varchar(32) NOT NULL,
  `melli_cod` varchar(16) NOT NULL,
  `file1_name` varchar(512) NOT NULL,
  `file1_url` varchar(512) NOT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'نامشخص',
  `idea` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title_farsi`, `title_english`, `responsible`, `melli_cod`, `file1_name`, `file1_url`, `status`, `idea`) VALUES
(3, 'شبکه­ های کامپیوتری', 'DAdsa acascsac', 'fsdfsdfs', '4234324324', 'DSC00094.JPG', '../article/DSC00094.JPG', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(4, ' ثبت دامنه', 'cascsac asac', 'ghgh', '535635354', '', '', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(6, 'ماکروسافت مترو', 'fdhfdhdfh xcaxax', 'hdfhdh', '123456', 'mips_db.sql', '../article/mips_db.sql', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(8, 'معرفی یک Widget', 'adas dasda xaxxax', 'adsadasd', '2132321', 'firfox.png', '../article/firfox.png', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(9, 'ewrwer', '', 'rwerewr', '12345', '4.jpg', '../article/4.jpg', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(10, 'Solid Explorer', 'Solid Explorer', 'vmbv', '4356435', 'ramezan.png', '../article/ramezan.png', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(11, 'روش های نفوذ از طریق بلوتوث', 'xxaax', 'fgdgf', '2342', 'New Text Document.txt', '../article/New Text Document.txt', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(12, 'مدیریت محتوای WordPress', 'axaXax', 'hgjh', '654645', '201.jpg', '../article/201.jpg', 'تایید', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(13, 'ویکیپدیا و ابونتو را ', 'xaxAXa', 'tyty', '757567', 'ec87533197e539202cede9835118ba20.png', '../article/ec87533197e539202cede9835118ba20.png', 'نامشخص', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(14, 'مسابقات روبوکاپ ایران, ', 'adwcdasc csacsa', 'لقف', '5655467', 'sample2.jpg', '../article/sample2.jpg', 'تایید', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(15, ' انتشار اطلاعات در شبکه های حسگر بیسیم ', 'cacsacsac v sacvsa s ds ', 'hkhk', '886787676876', 'sample2.jpg', '../article/sample2.jpg', 'تایید اولیه', 'مقاله شما افتضاححححححححح است'),
(16, ' از تهدیدات كامپیوتری در سه ماهه سوم ', 'sasaS  AS SA ', 'gdfgdfg', '564546464', 'sample.jpg', '../article/sample.jpg', 'تایید اولیه', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(17, 'هوش مصنوعی', 'Artificial intelligence', 'hgfhfh', '656456456', 'sample.jpg', '../article/sample.jpg', 'عدم تایید', 'u67u7u7uu uju'),
(18, 'سرگی برین، نابغه کامپیوتر،', 'dfhdfhdfhdfh ccsc', 'dfhdfhdfh', '646546546', '201.jpg', '../article/201.jpg', 'عدم تایید', 'trtrgytrghrthrt '),
(19, 'شبکه خانگی بیسیم ', 'csacsac  asvsac', 'khgkhkgh', '5435345345', 'Herfe Fan - Home.png', '../article/Herfe Fan - Home.png', 'عدم تایید', 'بررسی ها روی مقاله شما هنوز کامل نشده است.'),
(20, 'شبکه های بیسیم', 'Wireless Network', 'fhfghg', '43434343', 'Final Quiz.docx', '../article/Final Quiz.docx', 'تایید اولیه', 'برای بررسی های بیشتر روی مقاله شما نیاز به نسخه زبان انگلیسی مقاله می باشد. لطفا آن را با استفاده از فرم زیر ارسال کنید.'),
(21, 'ممیزهای به کار گرفته شده http لیست', 'svsavadv', 'uyguytu', '312324243', 'Capture.2.JPG', '../article/Capture.2.JPG', 'تایید', 'gregergerg gergreger rgerg'),
(22, 'مهندسی اجتماعی', 'social engineering', 'afsfsdfsfsdf', '43243434', 'cc6983d5c60225359db5-300.jpg', '../article/cc6983d5c60225359db5-300.jpg', 'تایید اولیه', '4 ta file dariiiiiiiiiiiiiiii'),
(23, 'hfffhf v svsdvsd', 'vsdvsdvds', 'fhfhfh', '57565656', '8dddddddddddddddb.jpg', '../article/8dddddddddddddddb.jpg', 'عدم تایید', 'بررسی ها روی مقاله شما هنوز کامل نشده است.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
