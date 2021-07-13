/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.20 : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `book`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bid` int(20) NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) NOT NULL,
  `bauthor` varchar(20) NOT NULL,
  `bnum` int(20) NOT NULL,
  `bcbs` varchar(20) DEFAULT NULL COMMENT '出版社',
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`bid`,`bname`,`bauthor`,`bnum`,`bcbs`) values (1,'红楼梦','曹雪芹',19,'人文出版社'),(2,'西游记','吴承恩',9,'科学出版社'),(3,'web教学用书','小明',4,NULL);

/*Table structure for table `records` */

DROP TABLE IF EXISTS `records`;

CREATE TABLE `records` (
  `rid` int(20) NOT NULL AUTO_INCREMENT,
  `rbid` int(11) NOT NULL,
  `ruid` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `records` */

insert  into `records`(`rid`,`rbid`,`ruid`,`rdate`) values (3,3,'1801','2021-58-12 08:58:42'),(4,2,'1801','2021-58-12 08:58:43'),(5,1,'1801','2021-58-12 08:58:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(20) NOT NULL,
  `ubnum` int(20) DEFAULT NULL COMMENT '当前结束数量',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`uid`,`uname`,`upwd`,`ubnum`) values (1801,'yzx','yzx',NULL),(1802,'admin','123',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
