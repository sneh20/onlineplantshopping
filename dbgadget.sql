-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2019 at 01:22 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Bamboo'),
(2, 'Bonsai'),
(3, 'Cacti & Succulents'),
(4, 'Ferns'),
(5, 'Medicinal Plant'),
(6, 'Flowers'),
(7, 'Roses');
-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `amount`, `status`, `dateOrdered`, `dateDelivered`) VALUES
(1, 'sneha', '09465795229', 'A-89 new delhi', 'sneh@gmail.com', '(2) Bamboo, (1) Bonsai, ', '320', 'confirmed', '03/02/19', '03/03/19'),
(2, 'neeraj', '09465795289', 'A-49, uttar pradesh', 'neeraj@gmail.com', '(1) Yellow Rose, ', '125', 'confirmed', '03/01/19', '03/03/19'),
(3, 'abhi', '09465795890', 'B-87,sahibabad,Uttar pradesh', 'abhi@gmail.com', '(5) carom, (7) Bamboo', '1020', 'confirmed', '03/08/19', '03/10/14 08:04:28 AM'),
(4, 'John', '09465795777', 'B-76, Rajnagar,Uttar pradesh', 'john@gmail.com', '(2) coriander, ', '80', 'confirmed', '03/10/19 12:02:57 AM', '03/12/19 09:31:08 PM'),
(5, 'Payal', '9876567890', 'C-54,Pasonda Uttar pradesh', 'p_03@gmail.com', '(3) Fat Cactus, (1) Cactus, ', '395', 'confirmed', '03/12/19 08:05:35 AM', '03/13/19 08:15:25 AM'),
(6, 'Ruhi', '9123456709', 'B-990 Shadipur New delhi', 'ruhu123@gmail.com', '(1) Money Plant, ', '120', 'confirmed', '03/14/19 09:23:34 PM', '03/16/19 09:31:04 PM'),
(7, 'Shaym', '876543219', 'A-896 Rajghat ,New delhi', 'shaym56@gmail.com', '(1) Vanda, ', '90', 'confirmed', '03/16/19 11:15:59 AM', '03/17/19 09:52:56 AM'),
(8, 'Ram', '8767895679', 'C-981 Rajandra Palace New delhi', 'ram89@gmail.com', '(1) Red Velvet Rose, ', '130', 'confirmed', '03/15/19 11:34:45 AM', '03/17/19 09:52:38 AM'),
(9, 'Hari', '867689890', 'A-892 Karampurs,New Delhi', 'Hari90@gmail.com', '(1) Red Rose, ', '120', 'confirmed', '03/19/19 09:53:36 AM', '03/21/19 09:53:56 AM'),
(10, 'Abhisha', '9123409870', 'D-10 Patel Nagar,New Delhi', 'Abhisha765@gmail.com', '(1) Mint Plant, (2) Tulsi, ', '280', 'confirmed', '03/22/19 10:02:11 AM', '03/24/19 07:30:46 PM'),
(11, 'shaan', '9341265450', 'D-10 Okhla New Delhi', 'shaan222@gmail.com', '(5)Lucky Bamboo , ', '600', 'delivered', '03/21/19 07:27:53 PM', '03/23/19 07:30:40 PM');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `imgUrl` text NOT NULL,
  `Product` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `Product`, `Description`, `Price`, `Category`) VALUES
(1, 'bamboo.jpg', 'Bamboo', 'EASY TO GROW, HARD TO KILL - Grows in water like cut flowers, but will last for years', 110, 'Bamboo'),
(2, 'bamb.jpg', 'Lucky Bamboo', 'Believed to bring good luck to its new owner, hence the name "lucky bamboo".In Asian culture, lucky bamboo has been considered a symbol of good fortune', 120, 'Bamboo'),
(3, 'bb.jpg', 'Hrash Bamboo', 'Makes for perfect home or office decor, display on an home or office desk, counter, tabletop, or anywhere out of direct sunlight', 100, 'Bamboo'),
(4, 'bonsai.jpg', 'Japnese Bonsai ', 'This one comes fully grown and healthy looking. It never needs to be watered, trimmed or taken out to the sun.', 100, 'Bonsai'),
(5, 'bonsai2.jpg', 'Juniper Bonsai ', 'Features the power and tranquility of bonsai but in a very small size. Can be easily trained into shapes.', 110, 'Bonsai'),
(6, 'bonsai3.jpg', 'Brussel Bonsai ', 'Beautiful in Looks and very Attractive', 140, 'Bonsai'),
(7, 'artificial cactus.jpg', 'Cactus ', 'Dont need water to grow and also dont need the cool environment', 95, 'Cacti & Succulents'),
(8, 'fatplant.jpg', 'Fat Cactus ', 'Attractive and big in size,do not need favorable condition to grow ', 100, 'Cacti & Succulents'),
(9, 'boston fern.jpg', 'Boston Fern ', 'The Boston fern is a classic houseplant overflowing with evergreen tiny leaves giving the plant a full and luscious look.  ', 100, 'Ferns'),
(10, 'queenfern.jpg', 'Queen Fern ', 'This fern is a showy addition to any room. The lush green fronds add life and vibrancy to your home office, kitchen, bedroom, or in the warmer months, your patio or front porch. ', 150, 'Ferns'),
(11, 'mother fern.jpg', 'Mother Fern ', 'Mother fern is a showy addition to any room. The lush green fronds add life and vibrancy to your home office, kitchen, bedroom, or in the warmer months, your patio or front porch. ', 130, 'Ferns'),
(12, 'aleovera.jpg', 'Aleo Vera ', 'Helps to treat acne,pimples and all skin related problems.Also it is beneficial to treat suger,and it is also considerd as one of the best natural medicine  ', 90, 'Medicinal Plant'),
(13, 'mint plant.jpg', 'Mint Plant ', 'Herb which is generally known to increases freshness,although it is also used as cooking purpose ', 90, 'Medicinal Plant'),
(14, 'tulsi.jpg', 'Tulsi ', 'Herb with several beneits,generally used to treat cough and cold and it is also considerd as "pavitra"as relogious purpose ', 95, 'Medicinal Plant'),
(15, 'carom.jpg', 'Carom (Ajwain)', 'Considerd as lucky and also used for cooking purpose and also suitable to treat digestive problems ', 50, 'Medicinal Plant'),
(16, 'corriander.jpg', 'Coriander ', 'Green leaves with intense freshness.It is generally used for garnishing and also suitable for skin ', 40, 'Medicinal Plant'),
(17, 'lemon plant.jpg', 'Lemon Plant ', 'Rich in vitamin C and used to increase taste of your food and also provide you a sweet fragnence. ', 100, 'Flowers'),
(18, 'money plant.jpg', 'money plant ', 'Money plant is considerd as lucky and brings Fortune to your lives.Also attractive in looks. ', 120, 'Flowers'),
(19, 'vanda.jpg', 'Vanda ', 'Needs special care and it increases the beauty of your house it is reddish orange in color which look fabulas. ', 90, 'Flowers'),
(20, 'miniatum.jpg', 'Miniatum ', 'Attractive and Beautiful.small in size and easy to grow make your place beautiful. ', 140, 'Flowers'),
(21, 'mogra.jpg', 'White Jaismine(Mogra) ', 'White in color and rich in sweet fragnence it makes your home to feel like heaven with its fragnence. ', 125, 'Flowers'),
(22, 'pine river pink.jpg', 'Pine River Pink ', 'Attractive and Beautiful .it is pink in colour and worth to buy it. ', 120, 'Flowers'),
(23, 'wax.jpg', 'Pue Wax Blue ', 'Little purple in colour and quite attractive. It is small in size and easy to take care of it it aslo do not require any special type of soil to grow', 160, 'Flowers'),
(24, 'redrose.jpg', 'Red Rose ', 'Best thing to gift anyone "A RED ROSE"  ', 120, 'Roses'),
(25, 'redvelvet.jpg', 'Red Velvet Rose ', 'Attractive and Beautiful .it is dark red in colour which increases the beauty of your house.', 130, 'Roses'),
(26, 'white rose.jpg', 'White Rose ', 'Quite attractive and looks exactly like a "Moonlight" in night  ', 100, 'Roses'),
(27, 'rose4.jpg', 'Queen Rose ', 'Queen rose seems to be royal.it is light pinkish red in colour and can be chosen as a best decorative material ', 140, 'Roses'),
(28, 'rose3.jpg', 'Yellow Rose ', 'Beautiful and easy to grow and can be used as a  best decorative. ', 125, 'Roses'),
(29, 'jairak_white.jpg', 'Jairak White ', 'Attractive and medium in size,do not need favorable condition to grow ', 110, 'Flowers'),
(30, 'lemon plant.jpg', 'Lemon Plant ', 'Rich in vitamin C and used to increase taste of your food and also provide you a sweet fragnence.', 100, 'Medicinal Plant');
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
