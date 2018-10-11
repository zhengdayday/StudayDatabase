/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : jesper

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-19 14:26:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kuaidi100_delivery
-- ----------------------------
DROP TABLE IF EXISTS `kuaidi100_delivery`;
CREATE TABLE `kuaidi100_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(255) NOT NULL,
  `delivery_code` varchar(255) NOT NULL,
  `delivery_sort` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kuaidi100_delivery
-- ----------------------------
INSERT INTO `kuaidi100_delivery` VALUES ('1', '澳大利亚邮政', 'auspost', 'A');
INSERT INTO `kuaidi100_delivery` VALUES ('2', 'AAE', 'aae', 'A');
INSERT INTO `kuaidi100_delivery` VALUES ('3', '安信达', 'anxindakuaixi', 'A');
INSERT INTO `kuaidi100_delivery` VALUES ('4', '百世汇通', 'huitongkuaidi', 'B');
INSERT INTO `kuaidi100_delivery` VALUES ('5', 'BHT', 'bht', 'B');
INSERT INTO `kuaidi100_delivery` VALUES ('6', '包裹/平邮/挂号信', 'youzhengguonei', 'B');
INSERT INTO `kuaidi100_delivery` VALUES ('7', '邦送物流', 'bangsongwuliu', 'B');
INSERT INTO `kuaidi100_delivery` VALUES ('8', '希伊艾斯（CCES）', 'cces', 'C');
INSERT INTO `kuaidi100_delivery` VALUES ('9', '中国东方（COE）', 'coe', 'C');
INSERT INTO `kuaidi100_delivery` VALUES ('10', '传喜物流', 'chuanxiwuliu', 'C');
INSERT INTO `kuaidi100_delivery` VALUES ('11', '加拿大邮政Canada Post', 'canpost', 'C');
INSERT INTO `kuaidi100_delivery` VALUES ('12', '加拿大邮政Canada Post', 'canpostfr', 'C');
INSERT INTO `kuaidi100_delivery` VALUES ('13', '大田物流', 'datianwuliu', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('14', '德邦物流', 'debangwuliu', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('15', 'DPEX', 'dpex', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('16', 'DHL-中国件', 'dhl', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('17', 'DHL-国际件', 'dhlen', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('18', 'DHL-德国件', 'dhlde', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('19', 'D速快递', 'dsukuaidi', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('20', '递四方', 'disifang', 'D');
INSERT INTO `kuaidi100_delivery` VALUES ('21', 'EMS', 'ems', 'E');
INSERT INTO `kuaidi100_delivery` VALUES ('22', 'E邮宝', 'ems', 'E');
INSERT INTO `kuaidi100_delivery` VALUES ('23', 'EMS', 'emsen', 'E');
INSERT INTO `kuaidi100_delivery` VALUES ('24', 'EMS-（中国-国际）件', 'emsguoji', 'E');
INSERT INTO `kuaidi100_delivery` VALUES ('25', 'EMS', 'emsinten', 'E');
INSERT INTO `kuaidi100_delivery` VALUES ('26', 'Fedex-国际件', 'fedex', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('27', 'Fedex-国际件', 'fedexcn', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('28', 'Fedex-美国件', 'fedexus', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('29', '飞康达物流', 'feikangda', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('30', '飞快达', 'feikuaida', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('31', '凡客如风达', 'rufengda', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('32', '风行天下', 'fengxingtianxia', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('33', '飞豹快递', 'feibaokuaidi', 'F');
INSERT INTO `kuaidi100_delivery` VALUES ('34', '港中能达', 'ganzhongnengda', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('35', '国通快递', 'guotongkuaidi', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('36', '广东邮政', 'guangdongyouzhengwuliu', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('37', '挂号信', 'youzhengguonei', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('38', '国内邮件', 'youzhengguonei', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('39', '国际邮件', 'youzhengguoji', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('40', 'GLS', 'gls', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('41', '共速达', 'gongsuda', 'G');
INSERT INTO `kuaidi100_delivery` VALUES ('42', '汇通快运', 'huitongkuaidi', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('43', '汇强快递', 'huiqiangkuaidi', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('44', '华宇物流', 'tiandihuayu', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('45', '恒路物流', 'hengluwuliu', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('46', '华夏龙', 'huaxialongwuliu', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('47', '海航天天', 'tiantian', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('48', '海外环球', 'haiwaihuanqiu', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('49', '河北建华', 'hebeijianhua', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('50', '海盟速递', 'haimengsudi', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('51', '华企快运', 'huaqikuaiyun', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('52', '山东海红', 'haihongwangsong', 'H');
INSERT INTO `kuaidi100_delivery` VALUES ('53', '佳吉物流', 'jiajiwuliu', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('54', '佳怡物流', 'jiayiwuliu', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('55', '加运美', 'jiayunmeiwuliu', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('56', '京广速递', 'jinguangsudikuaijian', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('57', '急先达', 'jixianda', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('58', '晋越快递', 'jinyuekuaidi', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('59', 'jinyuekuaidi', 'jietekuaidi', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('60', '金大物流', 'jindawuliu', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('61', '嘉里大通', 'jialidatong', 'J');
INSERT INTO `kuaidi100_delivery` VALUES ('62', '快捷速递', 'kuaijiesudi', 'K');
INSERT INTO `kuaidi100_delivery` VALUES ('63', '康力物流', 'kangliwuliu', 'K');
INSERT INTO `kuaidi100_delivery` VALUES ('64', '跨越物流', 'kuayue', 'K');
INSERT INTO `kuaidi100_delivery` VALUES ('65', '联昊通', 'lianhaowuliu', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('66', '龙邦物流', 'longbanwuliu', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('67', '蓝镖快递', 'lanbiaokuaidi', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('68', '乐捷递', 'lejiedi', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('69', '联邦快递', 'lianbangkuaidi', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('70', '联邦快递', 'lianbangkuaidien', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('71', '立即送', 'lijisong', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('72', '隆浪快递', 'longlangkuaidi', 'L');
INSERT INTO `kuaidi100_delivery` VALUES ('73', '门对门', 'menduimen', 'M');
INSERT INTO `kuaidi100_delivery` VALUES ('74', '美国快递', 'meiguokuaidi', 'M');
INSERT INTO `kuaidi100_delivery` VALUES ('75', '明亮物流', 'mingliangwuliu', 'M');
INSERT INTO `kuaidi100_delivery` VALUES ('76', 'OCS', 'OCS', 'O');
INSERT INTO `kuaidi100_delivery` VALUES ('77', 'onTrac', 'ontrac', 'O');
INSERT INTO `kuaidi100_delivery` VALUES ('78', '全晨快递', 'quanchenkuaidi', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('79', '全际通', 'quanjitong', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('80', '全日通', 'quanritongkuaidi', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('81', '全一快递', 'quanyikuaidi', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('82', '全峰快递', 'quanfengkuaidi', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('83', '七天连锁', 'sevendays', 'Q');
INSERT INTO `kuaidi100_delivery` VALUES ('84', '如风达快递', 'rufengda', 'R');
INSERT INTO `kuaidi100_delivery` VALUES ('85', '伸通', 'shentong', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('86', '顺丰速递', 'shunfeng', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('87', '顺丰', 'shunfengen', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('88', '三态速递', 'santaisudi', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('89', '盛辉物流', 'shenghuiwuliu', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('90', '速尔物流', 'suer', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('91', '盛丰物流', 'shengfengwuliu', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('92', '上大物流', 'shangda', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('93', '三态速递', 'santaisudi', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('94', '山东海红', 'haihongwangsong', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('95', '赛澳递', 'saiaodi', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('96', '山东海红', 'haihongwangsong', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('97', '山西红马甲', 'sxhongmajia', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('98', '圣安物流', 'shenganwuliu', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('99', '穗佳物流', 'suijiawuliu', 'S');
INSERT INTO `kuaidi100_delivery` VALUES ('100', '天地华宇', 'tiandihuayu', 'T');
INSERT INTO `kuaidi100_delivery` VALUES ('101', '天天快递', 'tiantian', 'T');
INSERT INTO `kuaidi100_delivery` VALUES ('102', 'TNT', 'TNT', 'T');
INSERT INTO `kuaidi100_delivery` VALUES ('103', 'TNT', 'tnten', 'T');
INSERT INTO `kuaidi100_delivery` VALUES ('104', '通和天下', 'tonghetianxia', 'T');
INSERT INTO `kuaidi100_delivery` VALUES ('105', 'UPS', 'ups', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('106', 'UPS', 'UPS', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('107', '优速物流', 'youshuwuliu', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('108', 'USPS', 'usps', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('109', '万家物流', 'wanjiawuliu', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('110', '万象物流', 'wanxiangwuliu', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('111', '微特派', 'weitepai', 'U');
INSERT INTO `kuaidi100_delivery` VALUES ('112', '新邦物流', 'xinbangwuliu', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('113', '信丰物流', 'xinbangwuliu', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('114', '星晨急便', 'xingchengjibian', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('115', '鑫飞鸿', 'xinhongyukuaidi', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('116', '希伊艾斯(CCES)', 'cces', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('117', '新邦物流', 'xinbangwuliu', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('118', '新蛋奥硕物流', 'neweggozzo', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('119', '香港邮政', 'hkpost', 'X');
INSERT INTO `kuaidi100_delivery` VALUES ('120', '圆通速递', 'yuantong', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('121', '韵达快运', 'yunda', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('122', '运通快递', 'yuntongkuaidi', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('123', '邮政小包（国内），邮政包裹（国内）、邮政国内给据（国内）', 'youzhengguonei', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('124', '邮政小包（国际），邮政包裹（国际）、邮政国内给据（国际', 'youzhengguoji', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('125', '远成物流', 'yuanchengwuliu', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('126', '亚风速递', 'yafengsudi', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('127', '一邦速递', 'yibangwuliu', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('128', '优速物流', 'youshuwuliu', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('129', '源伟丰快递', 'yuanweifeng', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('130', '元智捷诚', 'yuanzhijiecheng', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('131', '越丰物流', 'yuefengwuliu', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('132', '源安达', 'yuananda', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('134', '原飞航', 'yuanfeihangwuliu', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('135', '芝麻开门', 'zhimakaimen', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('136', '银捷速递', 'yinjiesudi', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('137', '一统飞鸿', 'yitongfeihong', 'Y');
INSERT INTO `kuaidi100_delivery` VALUES ('138', '中通速递', 'zhongtong', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('139', '宅急送', 'zhaijisong', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('140', '中邮物流', 'zhongyouwuliu', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('141', '忠信达', 'zhongxinda', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('142', '中速快件', 'zhongsukuaidi', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('143', '芝麻开门', 'zhimakaimen', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('144', '郑州建华', 'zhengzhoujianhua', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('145', '中天万运', 'zhongtianwanyun', 'Z');
INSERT INTO `kuaidi100_delivery` VALUES ('146', '中通快运', 'zhongtongkuaiyun', 'Z');

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类目ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父类目ID=0时，代表的是一级的类目',
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `status` int(1) DEFAULT '1' COMMENT '状态。可选值:1(正常),2(删除)',
  `sort_order` int(4) DEFAULT NULL COMMENT '排列序号，表示同级类目的展现次序，如数值相等则按名称次序排列。取值范围:大于零的整数',
  `is_parent` tinyint(1) DEFAULT '1' COMMENT '该类目是否为父类目，1为true，0为false',
  `created` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`status`) USING BTREE,
  KEY `sort_order` (`sort_order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8 COMMENT='内容分类';

-- ----------------------------
-- Records of tb_category
-- ----------------------------


-- ----------------------------
-- Table structure for tb_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_item`;
CREATE TABLE `tb_item` (
  `id` bigint(20) NOT NULL COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `cid` bigint(10) NOT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `created` datetime NOT NULL COMMENT '创建时间',
  `updated` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of tb_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '订单id',
  `payment` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '实付金额。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `payment_type` int(2) DEFAULT NULL COMMENT '支付类型，1、在线支付，2、货到付款',
  `post_fee` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '邮费。精确到2位小数;单位:元。如:200.07，表示:200元7分',
  `status` int(10) DEFAULT NULL COMMENT '状态：1、未付款，2、已付款，3、未发货，4、已发货，5、交易成功，6、交易关闭',
  `create_time` datetime DEFAULT NULL COMMENT '订单创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '订单更新时间',
  `payment_time` datetime DEFAULT NULL COMMENT '付款时间',
  `consign_time` datetime DEFAULT NULL COMMENT '发货时间',
  `end_time` datetime DEFAULT NULL COMMENT '交易完成时间',
  `close_time` datetime DEFAULT NULL COMMENT '交易关闭时间',
  `shipping_name` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流名称',
  `shipping_code` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT '物流单号',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `buyer_message` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '买家留言',
  `buyer_nick` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '买家昵称',
  `buyer_rate` int(2) DEFAULT NULL COMMENT '买家是否已经评价',
  `refundStatus` int(2) DEFAULT NULL,
  `refundReason` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isRefund` int(2) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `create_time` (`create_time`) USING BTREE,
  KEY `buyer_nick` (`buyer_nick`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `payment_type` (`payment_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_item`;
CREATE TABLE `tb_order_item` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL,
  `item_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '商品id',
  `order_id` varchar(50) COLLATE utf8_bin NOT NULL COMMENT '订单id',
  `num` int(10) DEFAULT NULL COMMENT '商品购买数量',
  `title` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品标题',
  `price` bigint(50) DEFAULT NULL COMMENT '商品单价',
  `total_fee` bigint(50) DEFAULT NULL COMMENT '商品总金额',
  `pic_path` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '商品图片地址',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of tb_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_shipping
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_shipping`;
CREATE TABLE `tb_order_shipping` (
  `order_id` varchar(50) NOT NULL COMMENT '订单ID',
  `receiver_name` varchar(20) DEFAULT NULL COMMENT '收货人全名',
  `receiver_phone` varchar(20) DEFAULT NULL COMMENT '固定电话',
  `receiver_mobile` varchar(30) DEFAULT NULL COMMENT '移动电话',
  `receiver_state` varchar(10) DEFAULT NULL COMMENT '省份',
  `receiver_city` varchar(10) DEFAULT NULL COMMENT '城市',
  `receiver_district` varchar(20) DEFAULT NULL COMMENT '区/县',
  `receiver_address` varchar(200) DEFAULT NULL COMMENT '收货地址，如：xx路xx号',
  `receiver_zip` varchar(6) DEFAULT NULL COMMENT '邮政编码,如：310001',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for tb_re_item
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_item`;
CREATE TABLE `tb_re_item` (
  `id` bigint(20) NOT NULL COMMENT '商品id，同时也是商品编号',
  `title` varchar(100) NOT NULL COMMENT '商品标题',
  `sell_point` varchar(500) DEFAULT NULL COMMENT '商品卖点',
  `price` bigint(20) NOT NULL COMMENT '商品价格，单位为：分',
  `num` int(10) NOT NULL COMMENT '库存数量',
  `barcode` varchar(30) DEFAULT NULL COMMENT '商品条形码',
  `image` varchar(500) DEFAULT NULL COMMENT '商品图片',
  `cid` bigint(10) NOT NULL COMMENT '所属类目，叶子类目',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '商品状态，1-正常，2-下架，3-删除',
  `recovered` datetime NOT NULL COMMENT '回收时间',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of tb_re_item
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `realName` varchar(45) DEFAULT NULL,
  `business` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `headPicture` varchar(45) DEFAULT NULL,
  `addDate` date DEFAULT NULL,
  `updateDate` date DEFAULT NULL,
  `state` int(11) DEFAULT '0' COMMENT '1：正常\n2：冻结\n3：删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------

-- ----------------------------
-- Function structure for formatDateTime
-- ----------------------------
DROP FUNCTION IF EXISTS `formatDateTime`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `formatDateTime`(fdate datetime) RETURNS varchar(255) CHARSET utf8
begin 
 
declare x varchar(255) default '';
 
set x= date_format(fdate,'%Y年%m月%d日%h时%i分%s秒');
 
return x;
 
end
;;
DELIMITER ;
