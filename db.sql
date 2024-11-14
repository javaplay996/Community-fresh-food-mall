/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shequshengxianshangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shequshengxianshangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shequshengxianshangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620788139132 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-12 22:39:58',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-05-12 22:39:58',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-05-12 22:39:58',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-05-12 22:39:58',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-05-12 22:39:58',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-05-12 22:39:58',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614156093768,'2021-05-12 16:41:33',11,'河北省保定市易县蔡家峪乡117乡道','123','12312312312','是'),(1620788139131,'2021-05-12 10:55:38',1620788069421,'广东省河源市东源县锡场镇东宝岭桂山风景区','123','12312312312','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620788117547 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1614156187674,'2021-05-12 16:43:07','shangpinxinxi',11,32,'商品名称2','http://localhost:8080/shequshengxianshangcheng/upload/1614151861843.jpg',1,99.9,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shequshengxianshangcheng/upload/1620786953007.jpg'),(2,'picture2','http://localhost:8080/shequshengxianshangcheng/upload/1620786957839.jpg'),(3,'picture3','http://localhost:8080/shequshengxianshangcheng/upload/1620786964774.jpg'),(6,'homepage','http://localhost:8080/shequshengxianshangcheng/upload/1620786971177.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-05-12 22:39:58','标题11111','http://localhost:8080/shequshengxianshangcheng/upload/1620786907398.jpg','内容111111\r\n'),(82,'2021-05-12 22:39:58','标题2','http://localhost:8080/shequshengxianshangcheng/upload/news_picture2.jpg','内容2<img id=\"pictureImg\" src=\"http://localhost:8080/shequshengxianshangcheng/upload/news_picture2.jpg\" width=\"100\" height=\"100\">\r\n'),(83,'2021-05-12 22:39:58','标题3','http://localhost:8080/shequshengxianshangcheng/upload/1620786915131.jpg','内容3\r\n'),(84,'2021-05-12 22:39:58','标题4','http://localhost:8080/shequshengxianshangcheng/upload/1620786939965.jpg','内容4\r\n');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620788167582 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1620788150991,'2021-05-12 10:55:50','202151210555020334092','shangpinxinxi',1620788069421,31,'商品名称1','http://localhost:8080/shequshengxianshangcheng/upload/1620786830356.webp',1,99.9,99.9,99.9,99.9,1,'已完成','广东省河源市东源县锡场镇东宝岭桂山风景区'),(1620788167581,'2021-05-12 10:56:06','20215121056670167051','shangpinxinxi',1620788069421,32,'商品名称2','http://localhost:8080/shequshengxianshangcheng/upload/1620786839216.webp',1,99.9,99.9,99.9,99.9,1,'已支付','广东省河源市东源县锡场镇东宝岭桂山风景区');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-05-12 22:39:58','商品分类1'),(22,'2021-05-12 22:39:58','商品分类2'),(23,'2021-05-12 22:39:58','商品分类3'),(24,'2021-05-12 22:39:58','商品分类4'),(25,'2021-05-12 22:39:58','商品分类5'),(26,'2021-05-12 22:39:58','商品分类6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614155884171 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`) values (31,'2021-05-12 22:39:58','商品编号1','商品名称1','商品分类1','数量1','品牌1','规格1','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786830357.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786830357.webp\">详情1\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786830356.webp','2021-05-12 10:55:50',21,99.9),(32,'2021-05-12 22:39:58','商品编号2','商品名称2','商品分类2','数量2','品牌2','规格2','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786839216.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786839216.webp\">详情2\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786839216.webp','2021-05-12 10:56:06',24,99.9),(33,'2021-05-12 22:39:58','商品编号3','商品名称3','商品分类3','数量3','品牌3','规格3','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786852484.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786852484.webp\">详情3\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786852484.webp','2021-05-12 10:57:22',8,99.9),(34,'2021-05-12 22:39:58','商品编号4','商品名称4','商品分类4','数量4','品牌4','规格4','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786864881.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786864881.webp\">详情4\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786864881.webp','2021-05-12 10:34:17',9,99.9),(35,'2021-05-12 22:39:58','商品编号5','商品名称5','商品分类5','数量5','品牌5','规格5','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786877865.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786877865.webp\">详情5\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786877864.webp','2021-05-12 10:34:34',9,99.9),(36,'2021-05-12 22:39:58','商品编号6','商品名称6','商品分类6','数量6','品牌6','规格6','<img src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786885653.webp\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/shequshengxianshangcheng/upload/1620786885653.webp\">详情6\r\n','http://localhost:8080/shequshengxianshangcheng/upload/1620786885653.webp','2021-05-12 10:34:44',10,99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620788146954 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620788146953,'2021-05-12 10:55:46',1620788069421,31,'shangpinxinxi','商品名称1','http://localhost:8080/shequshengxianshangcheng/upload/1620786830356.webp');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','i4awmxktqwoc6cugwecx4rxntsw6wj8n','2021-05-12 15:20:24','2021-05-12 11:53:35'),(2,11,'1','yonghu','用户','j8v7bqr80oqoo28rsq4xzrhgiwvqm1z7','2021-05-12 15:22:36','2021-05-12 11:49:57'),(3,1620788069421,'123','yonghu','用户','zs0ftsx3blwez9w9de7b4492vdau0nng','2021-05-12 10:54:51','2021-05-12 11:54:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-05-12 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620788069422 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`) values (11,'2021-05-12 22:39:58','111','用户姓名1','111','男','13823888881','773890001@qq.com',426425000),(12,'2021-05-12 22:39:58','222','用户姓名2','222','男','13823888882','773890002@qq.com',100),(13,'2021-05-12 22:39:58','333','用户姓名3','333','男','13823888883','773890003@qq.com',100),(14,'2021-05-12 22:39:58','444','用户姓名4','444','男','13823888884','773890004@qq.com',100),(15,'2021-05-12 22:39:58','555','用户姓名5','555','男','13823888885','773890005@qq.com',100),(16,'2021-05-12 22:39:58','666','用户姓名6','666','男','13823888886','773890006@qq.com',100),(1620788069421,'2021-05-12 10:54:29','123','123','123','男','12312312312','123@qq.com',244.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
