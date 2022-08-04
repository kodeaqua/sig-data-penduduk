/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.6.16 : Database - disduk
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`disduk` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `disduk`;

/*Table structure for table `kec_dpk` */

DROP TABLE IF EXISTS `kec_dpk`;

CREATE TABLE `kec_dpk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Table structure for table `penduduk` */

DROP TABLE IF EXISTS `penduduk`;

CREATE TABLE `penduduk` (
  `No` int(255) NOT NULL AUTO_INCREMENT,
  `Kecamatan` varchar(255) DEFAULT NULL,
  `Desa` varchar(255) DEFAULT NULL,
  `Jumlah` int(12) DEFAULT NULL,
  `Lat` float(12,6) DEFAULT NULL,
  `Long` float(12,6) DEFAULT NULL,
  `Tahun` year(4) DEFAULT NULL,
  `Kondisi` enum('Beroperasi','Tidak beroperasi') DEFAULT 'Tidak beroperasi',
  PRIMARY KEY (`No`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`user`,`pass`) values (1,'admin','$2y$10$eGUO6VqNURgWOwnaZwPlxuzOhRw.YYHQ5xikDWzyg3XhQIrhOXN3u');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
