/*
Navicat MySQL Data Transfer

Source Server         : allen
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : nanshigou

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2019-10-12 18:44:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `gid` int(8) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `pj` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('1307', '1', null, null);
INSERT INTO `cart` VALUES ('1330', '6', null, null);
INSERT INTO `cart` VALUES ('1323', '1', null, null);
INSERT INTO `cart` VALUES ('1315', '1', null, null);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `gid` int(8) DEFAULT NULL,
  `﻿color__img` varchar(255) DEFAULT NULL,
  `color__title` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('1306', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982354899298264_60.jpg', '黑色', 'S&M&L&XL&2XL&3XL&4XL');
INSERT INTO `item` VALUES ('1306', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982355179126842_60.jpg', '军绿色', '');
INSERT INTO `item` VALUES ('1307', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982353372811636_60.jpg', '军绿色', 'S&M&L&XL&2XL&3XL&4XL');
INSERT INTO `item` VALUES ('1307', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982353053204907_60.jpg', '蓝色', '');
INSERT INTO `item` VALUES ('1307', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982353921666555_60.jpg', '红色', '');
INSERT INTO `item` VALUES ('1308', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982351569257288_60.jpg', '绿色', 'S&M&L&XL&2XL&3XL&4XL');
INSERT INTO `item` VALUES ('1308', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982351287518959_60.jpg', '蓝色', '');
INSERT INTO `item` VALUES ('1308', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982351676857364_60.jpg', '紫色', '');
INSERT INTO `item` VALUES ('1309', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982349565989895_60.jpg', '灰色', 'S&M&L&XL&2XL&3XL&4XL');
INSERT INTO `item` VALUES ('1309', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982349290099899_60.jpg', '黑色', '');
INSERT INTO `item` VALUES ('1309', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982349603120482_60.jpg', '红色', '');

-- ----------------------------
-- Table structure for main
-- ----------------------------
DROP TABLE IF EXISTS `main`;
CREATE TABLE `main` (
  `﻿id` varchar(255) DEFAULT NULL,
  `er__imgurl` varchar(255) DEFAULT NULL,
  `er__title` varchar(255) DEFAULT NULL,
  `salePrice` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of main
-- ----------------------------
INSERT INTO `main` VALUES ('shouye0', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05977681498246100_240.jpg', '冬季胖子加厚棉衣男士加肥大码面包服韩版百搭棉袄外套个性潮男装 黑色 S', '178.10 ');
INSERT INTO `main` VALUES ('shouye0', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982346005548882_240.jpg', '冬季胖子棉衣男士灯芯绒加厚棉服韩版个性外套加肥大码潮男装棉袄 黄色 S', '169.00 ');
INSERT INTO `main` VALUES ('shouye0', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982349565989895_240.jpg', '冬季情侣连帽面包服男士帅气短款棉衣韩版休闲棉袄潮男装加厚外套 灰色 S', '189.00 ');
INSERT INTO `main` VALUES ('shouye0', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982354899298264_240.jpg', '冬季情侣连帽面包服男士帅气短款棉衣韩版宽松加厚棉袄潮男装外套 黑色 S', '169.00 ');
INSERT INTO `main` VALUES ('shouye1', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05960745627128595_240.jpg', '潮男秋冬季裤子男韩版潮流秋季加绒运动男士休闲裤宽松潮牌束脚工装裤 深灰色 M', '119.00 ');
INSERT INTO `main` VALUES ('shouye1', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05960739685357586_240.jpg', '裤子男韩版潮流秋冬季运动裤男士加绒宽松休闲束脚长裤潮牌工装裤 黑色 M', '119.00 ');
INSERT INTO `main` VALUES ('shouye1', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05599992122073239_240.jpg', '休闲裤男士裤子男冬季修身小脚韩版潮流秋冬款2017学生哈伦束脚裤 宝蓝 28', '125.00 ');
INSERT INTO `main` VALUES ('shouye1', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598228774481982_240.jpg', '2017秋季新款休闲裤男士加肥加大码束脚卫裤韩版青年小脚潮男裤子 黑色 M', '98.00 ');
INSERT INTO `main` VALUES ('shouye2', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05542521522860780_240.jpg', '薄款长袖卫衣长裤一套装青少年夏天外套运动衣服装男 白色 M', '128.00 ');
INSERT INTO `main` VALUES ('shouye2', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05539475467236705_240.jpg', '青少年夏季韩版修身背心男士运动学生短袖套装男潮流无袖T恤夏装 白色 M', '89.00 ');
INSERT INTO `main` VALUES ('shouye2', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05533655547367959_240.jpg', '夏天两件套装矮个子清爽褶皱休闲运动短袖系带5分裤 军绿 S', '128.00 ');
INSERT INTO `main` VALUES ('shouye2', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05532167381257098_240.jpg', '夏季男士无袖运动睡衣套装休闲背心短裤纯棉夏天背心家居服大码薄 灰色 M', '129.00 ');
INSERT INTO `main` VALUES ('shouye3', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071111289163602_240.jpg', '2019春季新款小白鞋男韩版板鞋男士白鞋百搭休闲鞋夏季增高男鞋子 白色 36', '89.00 ');
INSERT INTO `main` VALUES ('shouye3', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071103152844782_240.jpg', '2019春季透气阿甘鞋男小白鞋男士休闲帆布板鞋韩版潮流男鞋子潮鞋 白黑 36', '89.00 ');
INSERT INTO `main` VALUES ('shouye3', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071100369195301_240.jpg', '2019春季新款小白鞋男士板鞋男韩版潮鞋休闲鞋百搭白鞋男鞋子夏季 白色 36', '89.00 ');
INSERT INTO `main` VALUES ('shouye3', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06071097359425992_240.jpg', '2019春季新款小白鞋男鞋子韩版夏季板鞋男士百搭白鞋帆布休闲潮鞋 白色 36', '89.00 ');
INSERT INTO `main` VALUES ('shouye4', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05543981338282911_240.jpg', '潮男士宽松polo衫t恤oversize韩版短袖半袖五分袖 白色 M', '76.00 ');
INSERT INTO `main` VALUES ('shouye4', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05537733040500746_240.jpg', '中国风夏季修身款简约百搭短袖翻领t恤男青年POLO衫韩版学生上衣 黑色 M', '88.00 ');
INSERT INTO `main` VALUES ('shouye4', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05533670133624046_240.jpg', '男韩版修身翻领短袖T恤矮个子撞色polo衫 黑色 M', '105.00 ');
INSERT INTO `main` VALUES ('shouye4', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05512767271098682_240.jpg', '新款翻领polo衫简约白色 保罗衫修身帅气时尚有型男装 黑色 M', '89.00 ');
INSERT INTO `main` VALUES ('shouye5', 'https://www.nanshig.com/data/upload/shop/store/goods/16/16_05533837494926696_240.jpg', '夏季男款牛仔短裤薄款修身五分裤韩版时尚中裤夏天五分牛仔裤男潮 浅蓝 M', '69.00 ');
INSERT INTO `main` VALUES ('shouye5', 'https://www.nanshig.com/data/upload/shop/store/goods/14/14_05548284464900706_240.jpg', '彩色织带牛仔短裤男夏季2017潮流直筒百搭沙滩裤情侣装韩版五分裤 浅蓝色 M', '85.00 ');
INSERT INTO `main` VALUES ('shouye5', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05531681651489658_240.jpg', '短裤男夏天2017新款韩版潮流学生5五分裤青年时尚纯棉个性沙滩裤 黑色 M', '79.00 ');
INSERT INTO `main` VALUES ('shouye5', 'https://www.nanshig.com/data/upload/shop/store/goods/32/32_05503335029993919_240.jpg', '短裤男士韩版潮流夏天夏季五分四分裤男生港风休闲5分宽松半截裤 藏青 M', '75.00 ');
INSERT INTO `main` VALUES ('shouye6', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05943354852362407_240.jpg', '潮男鞋秋冬季新款男士高帮鞋男百搭休闲板鞋内增高街舞鞋8CM黑白马丁靴 白色 39', '112.00 ');
INSERT INTO `main` VALUES ('shouye6', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05943353450158107_240.jpg', '潮男鞋百搭潮鞋小白鞋高帮休闲鞋青少年运动学生板鞋6CM内增高男鞋8公分 白色 39', '106.00 ');
INSERT INTO `main` VALUES ('shouye6', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05943350610168912_240.jpg', '潮男鞋2018冬季新款保暖加绒棉鞋加厚韩版百搭学生休闲高帮男鞋冬天冬鞋 白黑 39', '98.56 ');
INSERT INTO `main` VALUES ('shouye6', 'https://www.nanshig.com/data/upload/shop/store/goods/42/42_05943346593585111_240.jpg', '潮男鞋秋冬季高帮板鞋男鞋时尚百搭潮鞋韩版英伦潮流休闲运动鞋小白鞋潮 白灰 39', '109.00 ');

-- ----------------------------
-- Table structure for shangyi
-- ----------------------------
DROP TABLE IF EXISTS `shangyi`;
CREATE TABLE `shangyi` (
  `id` int(11) DEFAULT NULL,
  `﻿gid` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `salePrice` float DEFAULT NULL,
  `marketPrice` float DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  `stock` int(5) DEFAULT NULL,
  PRIMARY KEY (`﻿gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shangyi
-- ----------------------------
INSERT INTO `shangyi` VALUES ('1305', '1305', 'https://www.nanshig.com/data/upload/shop/store/goods/47/47_06095305151751796_360.jpg', '男t恤五分袖ins夏季上衣服韩版潮流2019新款嘻哈潮牌帅气 黑色上衣 M', '89.1', '128', '潮男公社', '500');
INSERT INTO `shangyi` VALUES ('1306', '1306', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982354899298264_360.jpg', '冬季情侣连帽面包服男士帅气短款棉衣韩版宽松加厚棉袄潮男装外套 黑色 S', '169', '218', '好男孩潮品铺', '66');
INSERT INTO `shangyi` VALUES ('1307', '1307', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982353372811636_360.jpg', '冬季情侣连帽棉衣男士宽松帅气面包服韩版加厚棉袄潮男装外套棉服 军绿色 S', '179', '218', '好男孩潮品铺', '54');
INSERT INTO `shangyi` VALUES ('1308', '1308', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982351569257288_360.jpg', '冬季休闲工装棉服男士宽松拼接棉衣韩版百搭加厚棉袄潮流男装外套 绿色 S', '149', '189', '好男孩潮品铺', '52');
INSERT INTO `shangyi` VALUES ('1309', '1309', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982349565989895_360.jpg', '冬季情侣连帽面包服男士帅气短款棉衣韩版休闲棉袄潮男装加厚外套 灰色 S', '189', '218', '好男孩潮品铺', '20');
INSERT INTO `shangyi` VALUES ('1310', '1310', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05982346005548882_360.jpg', '冬季胖子棉衣男士灯芯绒加厚棉服韩版个性外套加肥大码潮男装棉袄 黄色 S', '169', '198', '好男孩潮品铺', '757');
INSERT INTO `shangyi` VALUES ('1311', '1311', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05977681498246100_360.jpg', '冬季胖子加厚棉衣男士加肥大码面包服韩版百搭棉袄外套个性潮男装 黑色 S', '178', '218', '好男孩潮品铺', '3453');
INSERT INTO `shangyi` VALUES ('1312', '1312', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05977679217962590_360.jpg', '冬季羊羔毛加绒加厚外套男士棉服韩版帅气棉衣潮流短款情侣装棉袄 黑色 S', '159', '198', '好男孩潮品铺', '24');
INSERT INTO `shangyi` VALUES ('1313', '1313', 'https://www.nanshig.com/data/upload/shop/store/goods/39/39_05977667423494467_360.jpg', '冬季加厚羊羔绒毛短款外套男士修身帅气棉衣韩版休闲情侣棉袄潮装 灰色 S', '169', '218', '好男孩潮品铺', '124');
INSERT INTO `shangyi` VALUES ('1314', '1314', 'https://www.nanshig.com/data/upload/shop/store/goods/34/34_05967532963793338_360.jpg', '秋冬装新款2018港风夹克男士外套韩版潮流休闲学生上衣纯色棒球服 黑色 M', '169', '218', '衣品家', '43');
INSERT INTO `shangyi` VALUES ('1315', '1315', 'https://www.nanshig.com/data/upload/shop/store/goods/34/34_05967528436656758_360.jpg', '2018新款男女情侣日系复古牛仔外套秋季韩版潮流时尚小清新夹克衫 深蓝色 M', '139', '198', '衣品家', '434');
INSERT INTO `shangyi` VALUES ('1316', '1316', 'https://www.nanshig.com/data/upload/shop/store/goods/34/34_05967525036632821_360.jpg', '2018秋季新款港风街头嘻哈加肥大码青少年个性夹克韩版休闲男装潮 花色 M', '159', '218', '衣品家', '535');
INSERT INTO `shangyi` VALUES ('1317', '1317', 'https://www.nanshig.com/data/upload/shop/store/goods/34/34_05967521268194174_360.jpg', '冬季ulzzang夹克男士外套棒球服学生韩版潮流运动外衣宽松胖男装 灰色 M', '189', '218', '衣品家', '3');
INSERT INTO `shangyi` VALUES ('1318', '1318', 'https://www.nanshig.com/data/upload/shop/store/goods/34/34_05962462680786488_360.jpg', '冬季男棉衣2018新款短款连帽棉袄韩版加厚休闲面包服男装潮牌外套 黑色 M', '178', '218', '衣品家', '3424');
INSERT INTO `shangyi` VALUES ('1319', '1319', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05961439678003802_360.jpg', '春秋季新款男士毛衣韩版套头薄款圆领针织衫休闲线衣外套潮流 黑色 M', '89', '89', '潮衣格', '324');
INSERT INTO `shangyi` VALUES ('1320', '1320', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05961435788059457_360.jpg', '冬季男士毛衣半高领针织衫2018新款潮流加绒加厚款毛衫韩版打底衫 黑色 M', '89', '138', '潮衣格', '34235');
INSERT INTO `shangyi` VALUES ('1321', '1321', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05960736607098325_360.jpg', '新款冬季男士外套春秋装休闲夹克ins加绒厚韩版潮流学生衣服 灰色 M', '159', '218', '潮男搭配师', '6236');
INSERT INTO `shangyi` VALUES ('1322', '1322', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05960729469786657_360.jpg', '冬季新款男士牛仔外套加绒加厚保暖棉衣韩版修身潮流大码夹克 黑色 M', '158', '398.5', '潮男搭配师', '72');
INSERT INTO `shangyi` VALUES ('1323', '1323', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05409995396529226_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05264793123278184_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05409995368926360_360.jpg&', '秋冬款日系圆领套头毛衣男韩版修身型针织衫青年潮流长袖拼色线衣 黑色 M', '98', '198', '潮衣格', '7326');
INSERT INTO `shangyi` VALUES ('1324', '1324', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05923387106302358_360.jpg', '卫衣男青少年学生早秋款韩版潮流修身秋季男士外套长袖T恤上衣服 黑色 M', '89', '158', '潮男搭配师', '82');
INSERT INTO `shangyi` VALUES ('1325', '1325', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05923385552023978_360.jpg', '2018早秋卫衣韩版潮流修身圆领套头衫青少年学生百搭春秋男士外套 黑色 M', '89', '158', '潮男搭配师', '37');
INSERT INTO `shangyi` VALUES ('1326', '1326', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05923383295317790_360.jpg', '男士卫衣连帽春秋款青少年学生秋装韩版潮流长袖T恤帅秋季上衣服 黑色 M', '89', '158', '潮男搭配师', '32');
INSERT INTO `shangyi` VALUES ('1327', '1327', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05923380156947849_360.jpg', '男士外套春秋韩版修身薄2018新款秋季潮流帅气男秋装百搭休闲夹克 灰色 M', '89', '168', '潮男搭配师', '27');
INSERT INTO `shangyi` VALUES ('1328', '1328', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05923376458900934_360.jpg', '秋装牛仔外套男迷彩学生港式bf风工装夹克潮流帅气男士牛仔褂上衣 灰色 M', '138', '198', '潮男搭配师', '27');
INSERT INTO `shangyi` VALUES ('1329', '1329', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05906254977134950_360.jpg', '春季2018新款马甲韩版棉衣背心男士修身棉服潮流冬季羽绒马夹外套 黑色 M', '118', '299', '潮男搭配师', '2346');
INSERT INTO `shangyi` VALUES ('1330', '1330', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05906251516314185_360.jpg', '春季2018新款马甲韩版棉衣背心男士修身棉服潮流冬季羽绒马夹外套 黑色 M', '108', '199', '潮男搭配师', '27');
INSERT INTO `shangyi` VALUES ('1331', '1331', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05906246257217290_360.jpg', '2018新款加厚加绒棉袄冬季男士外套个性棉衣修身韩版棉服潮流帅气 黑色 M反季折扣价 反季不买 当季被宰', '128', '299', '潮男搭配师', '247');
INSERT INTO `shangyi` VALUES ('1332', '1332', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05874393794974609_360.jpg', '斯潮 爆款新品大吉大利晚上吃鸡绝地求生短袖宽松潮流体t恤港风男 黑色 M', '69', '89', '潮男搭配师', '27');
INSERT INTO `shangyi` VALUES ('1333', '1333', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05874389236364258_360.jpg', '斯潮港风原宿情侣简约圆领字母印花短袖T恤韩版青少年百搭个性潮 蓝色 M', '68', '98', '潮男搭配师', '27');
INSERT INTO `shangyi` VALUES ('1334', '1334', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05860525139062365_360.jpg', '春夏季白色打底衫男韩版修身紧身健身纯棉短袖t恤男士体恤衫潮流 黑色 M', '78', '99', '潮男搭配师', '247');
INSERT INTO `shangyi` VALUES ('1335', '1335', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05852291601901769_360.jpg', '新款潮2018春夏男女纯棉情侣印花短袖T恤宽松半袖 港风 黑色 M', '79', '92', '潮男搭配师', '236');
INSERT INTO `shangyi` VALUES ('1336', '1336', 'https://www.nanshig.com/data/upload/shop/store/goods/45/45_05852281830449534_360.jpg', '斯潮 男士短袖抖音爆款夏季韩版潮流宽松文艺风T恤个性衣服五分袖 红色 S', '89', '96', '潮男搭配师', '236');
INSERT INTO `shangyi` VALUES ('1337', '1337', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285902647288_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285533371836_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675285922582370_360.jpg&', '冬季呢子外套男士毛呢大衣韩版潮流中长款男风衣双排扣西装领大衣 黑色 M', '178', '349', '潮衣格', '35');
INSERT INTO `shangyi` VALUES ('1338', '1338', 'https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675276340283591_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675277045075834_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/25/25_05675277053240062_360.jpg&', '秋冬新款男士毛呢大衣中长款韩版宽松chic外套男风衣呢子外套青年 黑色 M', '179', '369', '潮衣格', '36');
INSERT INTO `shangyi` VALUES ('1339', '1339', 'https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669550980859227_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669551311837333_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/29/29_05669551330558918_360.jpg&', '立领棉衣男长款冬季加厚外套韩版修身冬天保暖棉服男冬装青年棉袄 黑色 M', '198', '399', '衣品轩', '37');
INSERT INTO `shangyi` VALUES ('1340', '1340', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023215048189_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600022467387465_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600023158309144_360.jpg&', '夏季无袖t恤背心男运动宽松韩版大码棉麻坎肩亚麻沙滩休闲汗衫潮 白色 M', '59', '118', '顺兴男士潮流', '373');
INSERT INTO `shangyi` VALUES ('1341', '1341', 'https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600012650116550_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600012942964800_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/15/15_05600013006263937_360.jpg&', '原创设计迷彩套头连帽卫衣男外套青少年学生宽松嘻哈风秋冬季 迷彩色 M', '189', '369', '顺兴男士潮流', '342');
INSERT INTO `shangyi` VALUES ('1342', '1342', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598322019165313_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598322257817503_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598322518386229_360.jpg&', '牛仔外套男港仔个性拼色秋冬新款学生原宿bf宽松洗水牛仔夹克衣潮 蓝色 M', '139', '278', '顺潮服装', '623');
INSERT INTO `shangyi` VALUES ('1343', '1343', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598318851979418_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598319324368576_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598319581501819_360.jpg&', '韩版宽松牛仔外套男学生秋冬装新款原宿bf风简约青少年夹克上衣潮 蓝色 M', '139', '278', '顺潮服装', '36');
INSERT INTO `shangyi` VALUES ('1344', '1344', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598317733504200_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598317963350444_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598317997601072_360.jpg&', '秋冬新款牛仔外套男宽松破洞韩版潮流夹克原宿风外套牛仔衣 蓝色 M', '138', '276', '顺潮服装', '324');
INSERT INTO `shangyi` VALUES ('1345', '1345', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598312918264411_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598313241516180_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598313315950251_360.jpg&', '个性国潮风中长款牛仔外套男款青少年秋装日系宽松bf原宿夹克衫 黑色 M', '139', '278', '顺潮服装', '632');
INSERT INTO `shangyi` VALUES ('1346', '1346', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598198901255035_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598198398375179_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598199092995504_360.jpg&', '秋季新款虎头刺绣可拆卸领宽松ov舒适PU皮夹克男短款皮衣BF风外套 黑色 M', '169', '338', '顺潮服装', '234');
INSERT INTO `shangyi` VALUES ('1347', '1347', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598178196464532_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598177256240172_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598178374276703_360.jpg&', '男军绿色宽松工装夹克韩版原宿潮男时髦毛边贴布秋装外套 黑色 M', '139', '278', '顺潮服装', '623');
INSERT INTO `shangyi` VALUES ('1348', '1348', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598172561798497_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598173161451124_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598173368191497_360.jpg&', '男韩版秋装新款长袖皮夹克青年落肩袖机车服外穿短款皮衣潮 黑色 M', '169', '338', '顺潮服装', '325');
INSERT INTO `shangyi` VALUES ('1349', '1349', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598166078637780_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598165586832897_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598165893588494_360.jpg&', '秋季新款个性下摆磨破时尚潮男中长款牛仔风衣 水洗牛仔衣 深蓝色 M', '158', '316', '顺潮服装', '6236');
INSERT INTO `shangyi` VALUES ('1350', '1350', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598154453862773_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598153857671538_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598154280090257_360.jpg&', '秋装 原宿风做旧字母印花复古针织开衫潮男外搭毛衣外套 灰色 M', '138', '276', '顺潮服装', '326');
INSERT INTO `shangyi` VALUES ('1351', '1351', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598145130253366_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598144570847366_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598145007605425_360.jpg&', '秋冬季韩版男士中长款毛呢大衣宽松腰带呢子外套长款风衣潮 黑色 M', '190', '380', '顺潮服装', '326');
INSERT INTO `shangyi` VALUES ('1352', '1352', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598142108121562_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598142461698471_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598142518579545_360.jpg&', '秋冬季男士中长款毛呢大衣oversize翻领廓形呢子大衣韩版外套潮 咖啡红 M', '179', '358', '顺潮服装', '235');
INSERT INTO `shangyi` VALUES ('1353', '1353', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598140912280767_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598140646108631_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598140939139165_360.jpg&', '秋冬季韩版潮男中长款复古呢料风衣男显高宽松呢大衣外套 咖啡红 M', '179', '358', '顺潮服装', '623');
INSERT INTO `shangyi` VALUES ('1354', '1354', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598139000419040_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598138696394170_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598139065851479_360.jpg&', '男秋季新款夹克韩版背后字母刺绣拼色宽松牛仔夹克潮男外套衣服 蓝色 M', '146', '292', '顺潮服装', '326');
INSERT INTO `shangyi` VALUES ('1355', '1355', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598136724962106_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598137118333520_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598137175793504_360.jpg&', '潮男秋装韩版宽松版型中长款过膝大衣OVERSZIE蝙蝠袖连帽风衣外套 黑色 M', '178', '358', '顺潮服装', '623');
INSERT INTO `shangyi` VALUES ('1356', '1356', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598134667636640_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598135547880753_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598135686753031_360.jpg&', '男士连帽中长款风衣外套 秋装新款学生韩版潮春秋帅气风衣男装 黑色 M', '179', '358', '顺潮服装', '64');
INSERT INTO `shangyi` VALUES ('1357', '1357', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598127529970554_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598126946965293_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598127351118484_360.jpg&', '秋装新款上衣趣味卡通刺绣韩版潮男宽松圆领卫衣 秋冬打底 蓝色 M', '116', '232', '顺潮服装', '46');
INSERT INTO `shangyi` VALUES ('1358', '1358', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598119757892598_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598119445583939_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598119907048134_360.jpg&', '秋季韩版纯色针织衫无袖马甲潮男bf风V领坎肩背心男无袖毛衣外套 浅灰色 S', '98', '196', '顺潮服装', '23');
INSERT INTO `shangyi` VALUES ('1359', '1359', 'https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598116975123586_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598117390585165_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/18/18_05598117522969588_360.jpg&', '韩版条纹撞色潮男秋装外套oversize蝙蝠袖宽松针织衫开衫短款线衫 黑色 M', '118', '236', '顺潮服装', '35');
INSERT INTO `shangyi` VALUES ('1360', '1360', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596796745973307_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596796256943079_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596796578891691_360.jpg&https:', '冬装韩版保暖棉衣立领加厚宽松男士宽松港风棉服纯色男装外套 灰色 M', '169', '328', '李木子的小店', '34');
INSERT INTO `shangyi` VALUES ('1361', '1361', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596793586371879_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596793152183483_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596793747348019_360.jpg&https:', '2019秋装新款韩版纯色无扣毛衣百搭男士休闲开衫男针织衫学生外套 灰色 M', '119', '238', '李木子的小店', '363');
INSERT INTO `shangyi` VALUES ('1362', '1362', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596780286380628_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596780537871039_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596780789028221_360.jpg&https:', '17秋季街头潮流男装帅气朋克机车皮衣男士夹克嘻哈外套 黑色 M', '189', '378', '李木子的小店', '64');
INSERT INTO `shangyi` VALUES ('1363', '1363', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596692119735664_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596691758117071_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596692358116427_360.jpg&https:', '秋装港风大码破洞潮以纯男装学生短款牛仔夹克外套 深蓝色 M', '139', '278', '李木子的小店', '45');
INSERT INTO `shangyi` VALUES ('1364', '1364', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596615852974844_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596615119116140_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596615641552241_360.jpg&https:', '时尚百搭17年秋装潮男家字母刺绣罗纹领罗家棒球男士夹克外套 军绿色 M', '138', '276', '李木子的小店', '234');
INSERT INTO `shangyi` VALUES ('1365', '1365', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596610954290202_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596611769318919_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596611945195609_360.jpg&https:', '时尚17年秋装 韩版条纹宽松开叉圆领套头青年男士休闲卫衣潮 白色 M', '108', '216', '李木子的小店', '7');
INSERT INTO `shangyi` VALUES ('1366', '1366', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596607300366396_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596608257245905_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596608372688307_360.jpg&https:', '17年秋款 百搭韩版撞色拼接字母印花连帽男士宽松休闲套头卫衣潮 黑色 M', '106', '212', '李木子的小店', '324');
INSERT INTO `shangyi` VALUES ('1367', '1367', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596592703500952_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596592367228220_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596592581916727_360.jpg&https:', '潮流百搭时尚男士假两件连帽卫衣 黑色 M', '146', '292', '李木子的小店', '9');
INSERT INTO `shangyi` VALUES ('1368', '1368', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596585530797578_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596585835646502_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596585976069419_360.jpg&https:', '时尚潮流百搭国潮2017秋冬新款撞色宽松男毛衣针织衫 黑色 M', '129', '258', '李木子的小店', '23');
INSERT INTO `shangyi` VALUES ('1369', '1369', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596582455113970_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596582745823730_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596582899687596_360.jpg&https:', '时尚潮流百搭基本款水洗宽松连帽加厚牛仔外套 深蓝色 M', '139', '278', '李木子的小店', '98');
INSERT INTO `shangyi` VALUES ('1370', '1370', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596580718809792_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596580979217335_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596581251514473_360.jpg&https:', '时尚潮流百搭个性拼接袖潮男毛衣针织衫字母提花宽松 卡其色 M', '135', '270', '李木子的小店', '34');
INSERT INTO `shangyi` VALUES ('1371', '1371', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596578584604016_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596578893020406_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596579213771946_360.jpg&https:', '时尚潮流百搭秋冬装牛仔衣外套男士韩版水洗牛仔夹克 蓝色 M', '138', '280', '李木子的小店', '8');
INSERT INTO `shangyi` VALUES ('1372', '1372', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596576844202350_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596577145944600_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596577395672448_360.jpg&https:', '时尚潮流百搭基本款水洗织带连帽宽松牛仔夹克外套 Y 蓝色 M', '143', '288', '李木子的小店', '34');
INSERT INTO `shangyi` VALUES ('1373', '1373', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574239086872_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574628763640_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596574917077091_360.jpg&https:', '时尚潮流百搭17年秋冬新款日系百搭潮流毛衣针织衫 男款线衣 咖啡色 M', '89', '178', '李木子的小店', '87');
INSERT INTO `shangyi` VALUES ('1374', '1374', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569662707080_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569354312884_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596569821149819_360.jpg&https:', '时尚潮流百搭水洗连帽下摆拼接撞色帽子牛仔马甲外套 灰色 M', '132', '264', '李木子的小店', '87');
INSERT INTO `shangyi` VALUES ('1375', '1375', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596095731346187_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596096429412379_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596096649252018_360.jpg&https:', '时尚潮流百搭基本款 拼接分割宽松长袖衬衫 白色 M', '119', '238', '李木子的小店', '23');
INSERT INTO `shangyi` VALUES ('1376', '1376', 'https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596091902831495_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596092681576899_360.jpg&https://www.nanshig.com/data/upload/shop/store/goods/2/2_05596092889650298_360.jpg&https:', '时尚潮流百搭国潮2017秋冬新款 撞色宽松男毛衣针织衫 黑红 M', '128', '258', '李木子的小店', '76');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unike` varchar(255) DEFAULT NULL,
  `psw` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`,`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'ADMIN', 'admin');
INSERT INTO `user` VALUES ('2', '123', '123', '123');
INSERT INTO `user` VALUES ('3', 'zio', 'zio', 'zio');
INSERT INTO `user` VALUES ('34', 'zkb', 'zkb', 'zkb');
INSERT INTO `user` VALUES ('42', 'user520', '555', 'user520');
INSERT INTO `user` VALUES ('43', 'kkk999', 'kkk999', 'kkk999');
SET FOREIGN_KEY_CHECKS=1;
