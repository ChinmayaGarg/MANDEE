/*
SQLyog - Free MySQL GUI v5.17
Host - 5.5.27 : Database - adhiraj bhayiya
*********************************************************************
Server version : 5.5.27
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `adhiraj bhayiya`;

USE `adhiraj bhayiya`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `BId` int(5) NOT NULL AUTO_INCREMENT,
  `CId` int(5) DEFAULT NULL,
  PRIMARY KEY (`BId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `CId` int(5) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT 'NA',
  `MobileNo.` varchar(10) DEFAULT 'NA',
  `Address` varchar(50) DEFAULT 'NA',
  `GSTIN` varchar(20) DEFAULT 'NA',
  `PAN` varchar(20) DEFAULT 'NA',
  `StateCode` varchar(5) DEFAULT 'NA',
  PRIMARY KEY (`CId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Username`,`Password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `sizes` */

DROP TABLE IF EXISTS `sizes`;

CREATE TABLE `sizes` (
  `pid` varchar(10) NOT NULL,
  `size` int(2) NOT NULL,
  `color` varchar(20) NOT NULL,
  `quantity` int(4) DEFAULT NULL,
  PRIMARY KEY (`pid`,`size`,`color`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `stocks` */

DROP TABLE IF EXISTS `stocks`;

CREATE TABLE `stocks` (
  `Pid` varchar(10) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `Sizes` int(2) NOT NULL,
  `Totalset` int(5) DEFAULT NULL,
  `Rate` int(10) NOT NULL,
  `Quantity` int(4) DEFAULT NULL,
  PRIMARY KEY (`Pid`,`Color`,`Sizes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
