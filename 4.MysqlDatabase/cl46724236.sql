-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl46724236
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl46724236`
--

/*!40000 DROP DATABASE IF EXISTS `cl46724236`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl46724236` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl46724236`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszixishixinxi`
--

DROP TABLE IF EXISTS `discusszixishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszixishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自习室信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszixishixinxi`
--

LOCK TABLES `discusszixishixinxi` WRITE;
/*!40000 ALTER TABLE `discusszixishixinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszixishixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-03-24 04:58:59','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common44\",\"menu\":\"公告信息\",\"unicode\":\"&#xef28;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"首页总数\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"}],\"fontClass\":\"icon-user8\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9e;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"查看评论\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"},{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"自习室类型\",\"menuJump\":\"列表\",\"tableName\":\"zixishileixing\"}],\"fontClass\":\"icon-common50\",\"menu\":\"自习室信息管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\",\"审核\",\"学习时间统计\",\"首页总数\",\"首页统计\"],\"menu\":\"预约订单\",\"menuJump\":\"列表\",\"tableName\":\"yuyuedingdan\"}],\"fontClass\":\"icon-common50\",\"menu\":\"预约订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common50\",\"menu\":\"取消订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"评价信息\",\"menuJump\":\"列表\",\"tableName\":\"pingjiaxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"评价信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-wenzi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common50\",\"menu\":\"轮播图管理\",\"unicode\":\"&#xef96;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"预约\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"}],\"menu\":\"自习室信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-pay\",\"buttons\":[\"查看\",\"删除\",\"支付\",\"取消订单\",\"评价\",\"学习时间统计\",\"首页统计\",\"首页总数\"],\"menu\":\"预约订单\",\"menuJump\":\"列表\",\"tableName\":\"yuyuedingdan\"}],\"fontClass\":\"icon-common50\",\"menu\":\"预约订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-flashlightopen\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"取消订单\",\"menuJump\":\"列表\",\"tableName\":\"quxiaodingdan\"}],\"fontClass\":\"icon-common50\",\"menu\":\"取消订单管理\",\"unicode\":\"&#xef96;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"评价信息\",\"menuJump\":\"列表\",\"tableName\":\"pingjiaxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"评价信息管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common17\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedfe;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"menu\":\"公告信息\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-link\",\"buttons\":[\"查看\",\"预约\"],\"menu\":\"自习室信息\",\"menuJump\":\"列表\",\"tableName\":\"zixishixinxi\"}],\"menu\":\"自习室信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2024-03-24 04:58:59','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(32,'2024-03-24 04:58:59','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(33,'2024-03-24 04:58:59','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(34,'2024-03-24 04:58:59','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(35,'2024-03-24 04:58:59','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(36,'2024-03-24 04:58:59','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingjiaxinxi`
--

DROP TABLE IF EXISTS `pingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishimingcheng` varchar(200) DEFAULT NULL COMMENT '自习室名称',
  `zixishiweizhi` varchar(200) DEFAULT NULL COMMENT '自习室位置',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `meixiaoshijia` double DEFAULT NULL COMMENT '每小时价',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='评价信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingjiaxinxi`
--

LOCK TABLES `pingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `pingjiaxinxi` DISABLE KEYS */;
INSERT INTO `pingjiaxinxi` VALUES (91,'2024-03-24 04:58:59','自习室名称1','自习室位置1','开放时间1',1,'座位号1','自习室类型1','用户账号1','用户姓名1','评价内容1','2024-03-24 12:58:59'),(92,'2024-03-24 04:58:59','自习室名称2','自习室位置2','开放时间2',2,'座位号2','自习室类型2','用户账号2','用户姓名2','评价内容2','2024-03-24 12:58:59'),(93,'2024-03-24 04:58:59','自习室名称3','自习室位置3','开放时间3',3,'座位号3','自习室类型3','用户账号3','用户姓名3','评价内容3','2024-03-24 12:58:59'),(94,'2024-03-24 04:58:59','自习室名称4','自习室位置4','开放时间4',4,'座位号4','自习室类型4','用户账号4','用户姓名4','评价内容4','2024-03-24 12:58:59'),(95,'2024-03-24 04:58:59','自习室名称5','自习室位置5','开放时间5',5,'座位号5','自习室类型5','用户账号5','用户姓名5','评价内容5','2024-03-24 12:58:59'),(96,'2024-03-24 04:58:59','自习室名称6','自习室位置6','开放时间6',6,'座位号6','自习室类型6','用户账号6','用户姓名6','评价内容6','2024-03-24 12:58:59');
/*!40000 ALTER TABLE `pingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quxiaodingdan`
--

DROP TABLE IF EXISTS `quxiaodingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quxiaodingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zixishimingcheng` varchar(200) DEFAULT NULL COMMENT '自习室名称',
  `zixishiweizhi` varchar(200) DEFAULT NULL COMMENT '自习室位置',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='取消订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quxiaodingdan`
--

LOCK TABLES `quxiaodingdan` WRITE;
/*!40000 ALTER TABLE `quxiaodingdan` DISABLE KEYS */;
INSERT INTO `quxiaodingdan` VALUES (81,'2024-03-24 04:58:59','1111111111','自习室名称1','自习室位置1','开放时间1','自习室类型1','座位号1','用户账号1','用户姓名1','2024-03-24 12:58:59'),(82,'2024-03-24 04:58:59','2222222222','自习室名称2','自习室位置2','开放时间2','自习室类型2','座位号2','用户账号2','用户姓名2','2024-03-24 12:58:59'),(83,'2024-03-24 04:58:59','3333333333','自习室名称3','自习室位置3','开放时间3','自习室类型3','座位号3','用户账号3','用户姓名3','2024-03-24 12:58:59'),(84,'2024-03-24 04:58:59','4444444444','自习室名称4','自习室位置4','开放时间4','自习室类型4','座位号4','用户账号4','用户姓名4','2024-03-24 12:58:59'),(85,'2024-03-24 04:58:59','5555555555','自习室名称5','自习室位置5','开放时间5','自习室类型5','座位号5','用户账号5','用户姓名5','2024-03-24 12:58:59'),(86,'2024-03-24 04:58:59','6666666666','自习室名称6','自习室位置6','开放时间6','自习室类型6','座位号6','用户账号6','用户姓名6','2024-03-24 12:58:59');
/*!40000 ALTER TABLE `quxiaodingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','q04zoelhgkbsjsx2srb89cyj3oe25b3s','2024-03-24 05:07:54','2024-03-24 06:07:54'),(2,41,'用户账号1','yonghu','用户','8nfua03zur4i4qv6l6ijt478khycddki','2024-03-24 05:08:21','2024-03-24 06:08:21');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-03-24 04:58:59','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2024-03-24 04:58:59','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111'),(42,'2024-03-24 04:58:59','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112'),(43,'2024-03-24 04:58:59','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113'),(44,'2024-03-24 04:58:59','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114'),(45,'2024-03-24 04:58:59','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115'),(46,'2024-03-24 04:58:59','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuedingdan`
--

DROP TABLE IF EXISTS `yuyuedingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuedingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zixishimingcheng` varchar(200) DEFAULT NULL COMMENT '自习室名称',
  `zixishiweizhi` varchar(200) DEFAULT NULL COMMENT '自习室位置',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `zuoweihao` varchar(200) DEFAULT NULL COMMENT '座位号',
  `meixiaoshijia` double NOT NULL COMMENT '每小时价',
  `kaishishijian` datetime NOT NULL COMMENT '开始时间',
  `likaishijian` datetime NOT NULL COMMENT '离开时间',
  `yuyueshizhang` double NOT NULL COMMENT '预约时长',
  `zongjia` double DEFAULT NULL COMMENT '总价',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) DEFAULT NULL COMMENT '是否支付',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='预约订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuedingdan`
--

LOCK TABLES `yuyuedingdan` WRITE;
/*!40000 ALTER TABLE `yuyuedingdan` DISABLE KEYS */;
INSERT INTO `yuyuedingdan` VALUES (71,'2024-03-24 04:58:59','1111111111','自习室名称1','自习室位置1','开放时间1','自习室类型1','座位号1',1,'2024-03-24 12:58:59','2024-03-24 12:58:59',1,1,'用户账号1','用户姓名1','未支付','是',''),(72,'2024-03-24 04:58:59','2222222222','自习室名称2','自习室位置2','开放时间2','自习室类型2','座位号2',2,'2024-03-24 12:58:59','2024-03-24 12:58:59',2,2,'用户账号2','用户姓名2','未支付','是',''),(73,'2024-03-24 04:58:59','3333333333','自习室名称3','自习室位置3','开放时间3','自习室类型3','座位号3',3,'2024-03-24 12:58:59','2024-03-24 12:58:59',3,3,'用户账号3','用户姓名3','未支付','是',''),(74,'2024-03-24 04:58:59','4444444444','自习室名称4','自习室位置4','开放时间4','自习室类型4','座位号4',4,'2024-03-24 12:58:59','2024-03-24 12:58:59',4,4,'用户账号4','用户姓名4','未支付','是',''),(75,'2024-03-24 04:58:59','5555555555','自习室名称5','自习室位置5','开放时间5','自习室类型5','座位号5',5,'2024-03-24 12:58:59','2024-03-24 12:58:59',5,5,'用户账号5','用户姓名5','未支付','是',''),(76,'2024-03-24 04:58:59','6666666666','自习室名称6','自习室位置6','开放时间6','自习室类型6','座位号6',6,'2024-03-24 12:58:59','2024-03-24 12:58:59',6,6,'用户账号6','用户姓名6','未支付','是','');
/*!40000 ALTER TABLE `yuyuedingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishileixing`
--

DROP TABLE IF EXISTS `zixishileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixishileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishileixing` varchar(200) NOT NULL COMMENT '自习室类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zixishileixing` (`zixishileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='自习室类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishileixing`
--

LOCK TABLES `zixishileixing` WRITE;
/*!40000 ALTER TABLE `zixishileixing` DISABLE KEYS */;
INSERT INTO `zixishileixing` VALUES (61,'2024-03-24 04:58:59','自习室类型1'),(62,'2024-03-24 04:58:59','自习室类型2'),(63,'2024-03-24 04:58:59','自习室类型3'),(64,'2024-03-24 04:58:59','自习室类型4'),(65,'2024-03-24 04:58:59','自习室类型5'),(66,'2024-03-24 04:58:59','自习室类型6');
/*!40000 ALTER TABLE `zixishileixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zixishixinxi`
--

DROP TABLE IF EXISTS `zixishixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zixishixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zixishimingcheng` varchar(200) NOT NULL COMMENT '自习室名称',
  `zixishileixing` varchar(200) DEFAULT NULL COMMENT '自习室类型',
  `zixishiweizhi` varchar(200) DEFAULT NULL COMMENT '自习室位置',
  `tupian` longtext COMMENT '图片',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `zuoweishu` varchar(200) DEFAULT NULL COMMENT '座位数',
  `meixiaoshijia` double NOT NULL COMMENT '每小时价',
  `zuoweihao` varchar(200) NOT NULL COMMENT '座位号',
  `shebeishishe` longtext COMMENT '设备施设',
  `xiangqing` longtext COMMENT '详情',
  `yuyuezhuangtai` varchar(200) DEFAULT NULL COMMENT '预约状态',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='自习室信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zixishixinxi`
--

LOCK TABLES `zixishixinxi` WRITE;
/*!40000 ALTER TABLE `zixishixinxi` DISABLE KEYS */;
INSERT INTO `zixishixinxi` VALUES (51,'2024-03-24 04:58:59','自习室名称1','自习室类型1','自习室位置1','file/zixishixinxiTupian1.jpg,file/zixishixinxiTupian2.jpg,file/zixishixinxiTupian3.jpg','开放时间1','座位数1',1,'座位号1','设备施设1','详情1','已预约',1),(52,'2024-03-24 04:58:59','自习室名称2','自习室类型2','自习室位置2','file/zixishixinxiTupian2.jpg,file/zixishixinxiTupian3.jpg,file/zixishixinxiTupian4.jpg','开放时间2','座位数2',2,'座位号2','设备施设2','详情2','已预约',2),(53,'2024-03-24 04:58:59','自习室名称3','自习室类型3','自习室位置3','file/zixishixinxiTupian3.jpg,file/zixishixinxiTupian4.jpg,file/zixishixinxiTupian5.jpg','开放时间3','座位数3',3,'座位号3','设备施设3','详情3','已预约',3),(54,'2024-03-24 04:58:59','自习室名称4','自习室类型4','自习室位置4','file/zixishixinxiTupian4.jpg,file/zixishixinxiTupian5.jpg,file/zixishixinxiTupian6.jpg','开放时间4','座位数4',4,'座位号4','设备施设4','详情4','已预约',4),(55,'2024-03-24 04:58:59','自习室名称5','自习室类型5','自习室位置5','file/zixishixinxiTupian5.jpg,file/zixishixinxiTupian6.jpg,file/zixishixinxiTupian7.jpg','开放时间5','座位数5',5,'座位号5','设备施设5','详情5','已预约',5),(56,'2024-03-24 04:58:59','自习室名称6','自习室类型6','自习室位置6','file/zixishixinxiTupian6.jpg,file/zixishixinxiTupian7.jpg,file/zixishixinxiTupian8.jpg','开放时间6','座位数6',6,'座位号6','设备施设6','<p>详情6</p>','未预约',6);
/*!40000 ALTER TABLE `zixishixinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-25 15:12:32
