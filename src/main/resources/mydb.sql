/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.26 : Database - mydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET gbk */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mydb`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                         `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                         PRIMARY KEY (`id`),
                         UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `admin` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
                            `uid` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            `status` int NOT NULL DEFAULT '0',
                            `uuid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                            PRIMARY KEY (`uid`),
                            UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `customer` */

/*Table structure for table `dish` */

DROP TABLE IF EXISTS `dish`;

CREATE TABLE `dish` (
                        `did` int NOT NULL AUTO_INCREMENT,
                        `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
                        `photoUrl` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
                        `price` decimal(10,0) DEFAULT NULL,
                        `discount` int DEFAULT '100',
                        `info` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
                        PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `dish` */

insert  into `dish`(`did`,`name`,`photoUrl`,`price`,`discount`,`info`) values
                                                                           (1,'东坡肉','images/东坡肉.jpeg',40,85,'东坡肉是浙江省杭州市的一道特色名菜，属于浙菜系。东坡肉是以苏东坡的名字命名的菜肴'),
                                                                           (2,'宫保鸡丁','images/宫保鸡丁.jpeg',39,80,'是一道闻名中外的特色传统名菜，在鲁菜、川菜、贵州菜中都有收录，其原料、做法有差别。该菜式的起源与鲁菜中的酱爆鸡丁、贵州菜中的胡辣子鸡丁有关'),
                                                                           (3,'红烧大裙翅','images/红烧大群翅.jpeg',208,100,'红烧大群翅是广东地区特色传统名菜，属于粤菜系，售价昂贵，大群翅取自大鲨鱼，分三围，近头部的脊翅称头围，近尾的脊翅称二围，尾部末端称三围'),
                                                                           (4,'红烧大虾','images/红烧大虾.jpeg',65,90,'红烧大虾是山东胶东风味名菜，属于鲁菜系。制作材料有大对虾、白糖、鸡汤等。色泽红润油亮，虾肉鲜嫩，滋味鲜美。历来是鲁菜中脍炙人口的名菜佳肴，其色泽之美、口味之佳，久为人们所称道'),
                                                                           (5,'清蒸加力鱼','images/清蒸加力鱼.jpeg',70,95,'肉香味美，色泽诱人，滋补强壮，口感甚佳，令人垂涎的现代菜肴。老少皆宜。'),
                                                                           (6,'四喜丸子','images/四喜丸子.jpeg',45,70,'四喜丸子（Braised pork balls in gravy），是经典的中国传统名菜之一，属于鲁菜菜系。由四个色、香、味俱佳的肉丸组成，寓人生福、禄、寿、喜四大喜事。'),
                                                                           (7,'糖醋排骨','images/糖醋排骨.jpeg',56,100,'糖醋排骨（Sweet and Sour Spare Ribs），是糖醋味型中具有代表性的一道大众喜爱的特色传统名菜。它选用新鲜猪子排作主料，肉质鲜嫩，成菜色泽红亮油润。'),
                                                                           (8,'香芋扣肉','images/香芋扣肉.jpeg',41,96,'香芋扣肉此菜又称“中秋叠肉”，是珠三角地区名菜之一，当地人逢年过节必做的一道菜。'),
                                                                           (9,'鱼香肉丝','images/鱼香肉丝.jpeg',39,80,'鱼香肉丝（Yuxiang shredded pork），是四川的一道特色名菜，该菜品以泡辣椒、子姜、大蒜、糖和醋炒制猪里脊肉丝而成，由民国时期的一位川菜大厨所创制，相传灵感来自泡椒肉丝'),
                                                                           (10,'黑加仑树莓汁','images/blackcurrant-raspberry.jpg',31,100,'黑树莓中含有丰富的抗氧化物成分，是红树莓和黑莓的三倍。黑树莓的纯天然防癌物质“鞣花酸”成分超出蓝莓居各种可食材之首'),
                                                                           (11,'美式咖啡','images/caffe-americano.jpg',39,99,'一杯精心调理的咖啡应该像准备它的过程一样细细的加以品尝。花点时间闻一闻它的香气。'),
                                                                           (12,'绿茶口味法布奇诺','images/green-tea-frappuccino.jpg',39,100,'綠茶星巴樂 GREEN TEA FRAPPUCCINO'),
                                                                           (13,'王老吉','images/王老吉.png',5,100,'正宗凉茶王老吉！'),
                                                                           (14,'雪碧','images/雪碧.jpeg',5,100,'雪碧透心凉心飞扬'),
                                                                           (15,'美式煎饼','images/american-style-pancakes.jpg',10,100,'早餐的营养不能少,但是早上喜欢赖床的人还是很多的。那就试试这个煎饼吧,简单快捷,而且搭配牛奶吃,很完美了哦'),
                                                                           (16,'蓝莓饼芝士蛋糕','images/123.jpg',15,100,'蓝莓的清香和芝士的香甜碰撞在一起的蛋糕，总会有意想不到的结果，味道鲜香可口，非常吸引人！'),
                                                                           (17,'三重黑巧克力蛋糕','images/triple-dark-chocolate-cake.jpg',13,100,' 三种源自法国和比利时的纯正黑巧融合而成,不同产地的巧克力带来更加纯正浓郁的可可风味'),
                                                                           (18,'法式汉堡','images/2.jpg',16,100,'传统味道，一次满足！'),
                                                                           (19,'炸豆腐','images/4.jpg',7,100,'好吃不贵，小时候的味道~'),
                                                                           (20,'彩虹泡芙','images/macaron.jpg',15,100,'碰上彩虹，吃定彩虹~'),
                                                                           (21,'牛角面包','images/french-butter-croissant.jpg',9,100,'是法国人通称的“维也纳甜面包或甜点”(Viennoiserie)，有点类似我们的甜甜圈或美式Donuts'),
                                                                           (22,'卡布奇诺','images/cappuccino.jpg',21,100,'给阿姨倒一杯”cappuccino“'),
                                                                           (23,'摩卡咖啡','images/caffe-mocha.jpg',25,100,'摩卡咖啡（Mocha Cafe）是由意大利浓缩咖啡、巧克力酱、鲜奶油和牛奶混合而成的一种古老的咖啡'),
                                                                           (24,'焦糖玛奇朵','images/caramel-macchiato.jpg',29,100,'甜蜜的滋味在口中慢慢融化,焦糖与咖啡混合后完美的味觉,就像是恋人般的甜腻,让人沉沦'),
                                                                           (25,'白切鸡','images/白切鸡.jpg',45,100,'白斩鸡形状美观，皮黄肉白，肥嫩鲜美，滋味异常鲜...'),
                                                                           (26,'剁椒鱼头','images/剁椒鱼头.jpg',29,100,'是湖南省的传统名菜，属于湘菜系。据传，起源和清代文人黄宗宪有关。通常以鳙鱼鱼头、剁椒为主料，配以豉油、姜、葱、蒜等辅料蒸制而成。菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口'),
                                                                           (27,'佛跳墙','images/佛跳墙.jpg',29999,100,'“坛启荤香飘四邻，佛闻弃禅跳墙来。”'),
                                                                           (28,'锅包肉','images/锅包肉.jpg',59,100,'原名锅爆肉，光绪年间始创自哈尔滨道台府府尹杜学瀛厨师郑兴文之手。成菜后，色泽金黄，口味酸甜'),
                                                                           (29,'口水鸭','images/口水鸭.jpg',59,100,'皮爽口弹牙，肉鲜嫩多汁'),
                                                                           (30,'老北京片皮鸭','images/老北京片皮鸭.jpg',69,100,'全聚德烤鸭的制作方法是挂炉烤制。首先要用独家拥有的佐料涂于生鸭之上。然后是掌握火候。火欠则生，火过则黑。烤好的鸭子色呈枣红，鲜艳油亮，皮脆肉嫩'),
                                                                           (31,'麻婆豆腐','images/麻婆豆腐.jpeg',29,100,'麻婆豆腐远渡重洋，在美国、加拿大、英国、法国、越南、新加坡、马来西亚、日本、澳大利亚等国安家落户，从一味家常小菜一跃而登上大雅之堂，成了国际名菜。'),
                                                                           (33,'清炒时蔬','images/清炒时蔬.jpg',19,100,'当季新鲜蔬菜'),
                                                                           (34,'清蒸多宝鱼','images/清蒸多宝鱼.jpg',69,100,'是一道用多宝鱼、姜、葱等材料制作的一道菜品。多宝鱼是一种优质水产品，肌肉丰厚白嫩，胶质蛋白含量高，具有很好的滋润皮肤和美容作用...'),
                                                                           (35,'五谷丰登','images/五谷丰登.jpg',45,100,'食材丰富，颜色艳丽冰纷，诱人食欲，是春节家宴餐桌必不可少的一道营养健康素菜，而且寓意吉祥，寓意着新的一年事事顺利，硕果累累，学业事业大丰收，人们生活富足安宁');

/*Table structure for table `dish_tag` */

DROP TABLE IF EXISTS `dish_tag`;

CREATE TABLE `dish_tag` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `tid` int DEFAULT NULL,
                            `did` int DEFAULT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `dish_tag` */

insert  into `dish_tag`(`id`,`tid`,`did`) values
                                              (1,1,1),
                                              (2,1,2),
                                              (3,1,3),
                                              (4,1,4),
                                              (5,1,5),
                                              (6,1,6),
                                              (7,1,7),
                                              (8,1,8),
                                              (9,1,9),
                                              (10,2,10),
                                              (11,2,11),
                                              (12,2,12),
                                              (13,2,13),
                                              (14,2,14),
                                              (15,3,15),
                                              (16,3,16),
                                              (17,3,17),
                                              (18,4,18),
                                              (19,4,19),
                                              (36,5,3),
                                              (37,5,4),
                                              (38,5,5),
                                              (39,6,11),
                                              (40,6,22),
                                              (41,6,23),
                                              (42,7,16),
                                              (43,7,17),
                                              (44,1,25),
                                              (45,1,26),
                                              (46,1,27),
                                              (47,1,28),
                                              (48,1,29),
                                              (49,1,30),
                                              (50,1,31),
                                              (52,1,33),
                                              (53,1,34),
                                              (54,1,35);

/*Table structure for table `dishcart` */

DROP TABLE IF EXISTS `dishcart`;

CREATE TABLE `dishcart` (
                            `id` int NOT NULL AUTO_INCREMENT,
                            `uid` int NOT NULL,
                            `did` int NOT NULL,
                            `number` int NOT NULL,
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `dishcart` */

/*Table structure for table `dishorder` */

DROP TABLE IF EXISTS `dishorder`;

CREATE TABLE `dishorder` (
                             `id` int NOT NULL AUTO_INCREMENT,
                             `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                             `time` bigint NOT NULL,
                             `pretime` int NOT NULL DEFAULT '0',
                             `uid` int DEFAULT NULL,
                             `did` int DEFAULT NULL,
                             `number` int DEFAULT '1',
                             `status` int NOT NULL DEFAULT '0',
                             PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `dishorder` */

/*Table structure for table `dishtable` */

DROP TABLE IF EXISTS `dishtable`;

CREATE TABLE `dishtable` (
                             `dtid` int NOT NULL AUTO_INCREMENT,
                             `status` int NOT NULL DEFAULT '0',
                             `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin default 0,
                             PRIMARY KEY (`dtid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `dishtable` */

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
                       `tid` int NOT NULL AUTO_INCREMENT,
                       `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
                       PRIMARY KEY (`tid`),
                       UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

/*Data for the table `tag` */

insert  into `tag`(`tid`,`name`) values
                                     (1,'中餐'),
                                     (6,'咖啡'),
                                     (3,'小吃'),
                                     (5,'海鲜'),
                                     (7,'甜品'),
                                     (4,'西餐'),
                                     (2,'饮品');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
