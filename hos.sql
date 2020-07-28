/*
Navicat MySQL Data Transfer

Source Server         : hh
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : hos

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-07-27 17:06:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `check_item`
-- ----------------------------
DROP TABLE IF EXISTS `check_item`;
CREATE TABLE `check_item` (
  `ii_id` varchar(10) NOT NULL,
  `i_name` varchar(12) DEFAULT NULL,
  `i_price` decimal(6,2) DEFAULT NULL,
  `exe_dept` varchar(10) DEFAULT NULL,
  `i_dosage` varchar(8) DEFAULT NULL,
  `i_num` int(3) DEFAULT NULL,
  `i_total` decimal(7,2) DEFAULT NULL,
  `i_med_adv` varchar(20) DEFAULT NULL,
  `register_id` varchar(10) NOT NULL,
  `pay_or_not` int(1) DEFAULT NULL,
  `refund` int(1) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`ii_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of check_item
-- ----------------------------
INSERT INTO `check_item` VALUES ('03616e6dcf', '心电图', '400.00', '心电图室', '次', '1', '400.00', '', 'b96c491', '1', '1');
INSERT INTO `check_item` VALUES ('fcd91f2ecf', '血常规', '50.00', '血液科', '次', '1', '50.00', '', 'b96c491', '0', '0');

-- ----------------------------
-- Table structure for `chinese_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `chinese_medicine`;
CREATE TABLE `chinese_medicine` (
  `cm_id` varchar(10) NOT NULL,
  `cm_name` varchar(12) DEFAULT NULL,
  `cm_price` decimal(6,2) DEFAULT NULL,
  `cm_specifications` varchar(10) DEFAULT NULL,
  `cm_usage` varchar(10) DEFAULT NULL,
  `cm_dosage` varchar(8) DEFAULT NULL,
  `cm_Expiration date` date DEFAULT NULL,
  `cm_drug lot number` varchar(30) DEFAULT NULL,
  `cm_Manufacturer` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chinese_medicine
-- ----------------------------
INSERT INTO `chinese_medicine` VALUES ('10001', '党参', '100.05', '一盒一棵', '煎服', '棵', '2020-10-01', '1236547890', 'XX中药基地');
INSERT INTO `chinese_medicine` VALUES ('10002', '鹿茸', '75.50', '一盒5片', '煎服', '片', '2020-07-30', '1230456879', 'XX中药基地');
INSERT INTO `chinese_medicine` VALUES ('10003', '枸杞', '10.00', '一包50克', '泡', '克', '2020-10-29', '1354789620', 'XX中药基地');
INSERT INTO `chinese_medicine` VALUES ('10004', '何首乌', '60.00', '一包50克', '煎服', '克', '2025-07-15', '3217895460', 'XX中药基地');
INSERT INTO `chinese_medicine` VALUES ('10005', '健胃消食片', '70.00', '一瓶30粒', '口服', '粒', '2023-03-15', '1364785290', 'XX制药公司');

-- ----------------------------
-- Table structure for `cm_prescriotion`
-- ----------------------------
DROP TABLE IF EXISTS `cm_prescriotion`;
CREATE TABLE `cm_prescriotion` (
  `cmi_id` varchar(10) NOT NULL,
  `cm_name` varchar(12) DEFAULT NULL,
  `cm_price` decimal(6,2) DEFAULT NULL,
  `cm_num` int(3) DEFAULT NULL,
  `cm_total` decimal(7,2) DEFAULT NULL,
  `cm_med_adv` varchar(20) DEFAULT NULL,
  `register_id` varchar(10) NOT NULL,
  `pay_or_not` int(1) DEFAULT NULL,
  `refund` int(1) DEFAULT NULL,
  PRIMARY KEY (`cmi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm_prescriotion
-- ----------------------------
INSERT INTO `cm_prescriotion` VALUES ('dc193a7bcf', '鹿茸', '75.50', '2', '152.00', '一日三次', 'b96c491', '0', '0');

-- ----------------------------
-- Table structure for `dept_info`
-- ----------------------------
DROP TABLE IF EXISTS `dept_info`;
CREATE TABLE `dept_info` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(10) DEFAULT NULL,
  `dept_address` varchar(20) DEFAULT NULL,
  `dept_introduction` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept_info
-- ----------------------------
INSERT INTO `dept_info` VALUES ('1001', '西药房', '一楼东', '西药取药处');
INSERT INTO `dept_info` VALUES ('1002', '中药', '一楼西', '中药取药处');
INSERT INTO `dept_info` VALUES ('2001', '烧伤科', '二楼东', '治疗烧伤');
INSERT INTO `dept_info` VALUES ('2002', '感染科', '二楼南', '治疗传染疾病以及寄生虫的感染');
INSERT INTO `dept_info` VALUES ('2003', '乳腺科', '二楼西', '治疗乳腺相关疾病');
INSERT INTO `dept_info` VALUES ('3001', '甲状腺科', '三楼东', '治疗甲状腺相关疾病');
INSERT INTO `dept_info` VALUES ('3002', '妇产科', '三楼南', '治疗妇科疾病和女性生产');
INSERT INTO `dept_info` VALUES ('3003', '肿瘤科', '三楼西', '治疗肿瘤');
INSERT INTO `dept_info` VALUES ('4001', '小儿科', '四楼东', '治疗小儿疾病');
INSERT INTO `dept_info` VALUES ('4002', '骨科', '四楼西', '治疗人体骨头相关疾病');
INSERT INTO `dept_info` VALUES ('4003', '泌尿科', '四楼南', '治疗泌尿相关疾病');
INSERT INTO `dept_info` VALUES ('5001', '超声室', '五楼东', 'B超室，超声检测具有无痛，无创，诊断快等特点');
INSERT INTO `dept_info` VALUES ('5002', '心电图室', '五楼东', '心电图是检查心脏是否有病的方法之一，具有操作简便快捷，对人体无创伤等优点');
INSERT INTO `dept_info` VALUES ('5003', '脑电图室', '五楼南', '脑电图对脑部疾病有一定诊断价值，对被检查者没有任何创伤');
INSERT INTO `dept_info` VALUES ('5004', '血液科', '五楼西', '进行血液化验');

-- ----------------------------
-- Table structure for `diagnosis_info`
-- ----------------------------
DROP TABLE IF EXISTS `diagnosis_info`;
CREATE TABLE `diagnosis_info` (
  `p_name` varchar(36) NOT NULL,
  `p_sex` int(1) DEFAULT NULL,
  `p_age` int(3) DEFAULT NULL,
  `register_id` varchar(10) NOT NULL,
  `onset_date` date DEFAULT NULL,
  `chief_complaint` varchar(30) DEFAULT NULL,
  `HPI` varchar(30) DEFAULT NULL,
  `PH` varchar(30) DEFAULT NULL,
  `allergy_history` varchar(30) DEFAULT NULL,
  `diagnosis` varchar(30) DEFAULT NULL,
  `diagnosis_notes` varchar(30) DEFAULT NULL,
  `disposal_plan` varchar(255) DEFAULT NULL,
  `dia_or_not` int(1) DEFAULT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diagnosis_info
-- ----------------------------
INSERT INTO `diagnosis_info` VALUES ('邵上', '1', '21', '0d4ff49', null, null, null, null, null, null, null, null, null);
INSERT INTO `diagnosis_info` VALUES ('a', '1', '18', 'b4caf87', null, null, null, null, null, null, null, null, '1');
INSERT INTO `diagnosis_info` VALUES ('cs', '1', '20', 'b96c491', '2020-07-27', '头晕，流鼻涕', '无', '无', '无', '感冒', '', '早晚多休息', '1');

-- ----------------------------
-- Table structure for `doc_info`
-- ----------------------------
DROP TABLE IF EXISTS `doc_info`;
CREATE TABLE `doc_info` (
  `doc_id` varchar(10) NOT NULL,
  `doc_name` varchar(20) DEFAULT NULL,
  `doc_sex` int(1) DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  `doc_tel` varchar(11) DEFAULT NULL,
  `doc_position` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc_info
-- ----------------------------
INSERT INTO `doc_info` VALUES ('5001', '尚飒', '1', '2001', '15893293433', '副主任医师');
INSERT INTO `doc_info` VALUES ('5002', '张梅', '0', '2002', '15634526537', '主任医师');
INSERT INTO `doc_info` VALUES ('5003', '刘楠', '0', '2003', '13345263457', '副主任医师');
INSERT INTO `doc_info` VALUES ('5004', '路南', '1', '3001', '18799764563', '副主任医师');
INSERT INTO `doc_info` VALUES ('5005', '张建', '1', '3002', '19652147863', '副主任医师');
INSERT INTO `doc_info` VALUES ('5006', '胡美玉', '0', '3003', '19875451212', null);
INSERT INTO `doc_info` VALUES ('5007', '王佳诺', '0', '4001', '12548547896', '副主任医师');
INSERT INTO `doc_info` VALUES ('5008', '李格', '1', '4002', '16523587459', '副主任医师');
INSERT INTO `doc_info` VALUES ('5009', '刘丽丽', '0', '4003', '15689751254', '副主任医师');

-- ----------------------------
-- Table structure for `inspection_item`
-- ----------------------------
DROP TABLE IF EXISTS `inspection_item`;
CREATE TABLE `inspection_item` (
  `i_id` varchar(10) NOT NULL,
  `i_name` varchar(12) DEFAULT NULL,
  `i_price` decimal(6,2) DEFAULT NULL,
  `exe_dept` varchar(10) DEFAULT NULL,
  `i_dosage` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inspection_item
-- ----------------------------
INSERT INTO `inspection_item` VALUES ('9001', '血常规', '50.00', '血液科', '次');
INSERT INTO `inspection_item` VALUES ('9002', '脑电图', '500.00', '脑电图室', '次');
INSERT INTO `inspection_item` VALUES ('9003', 'B超', '300.00', '超声室', '次');
INSERT INTO `inspection_item` VALUES ('9004', '心电图', '400.00', '心电图室', '次');

-- ----------------------------
-- Table structure for `patient_info`
-- ----------------------------
DROP TABLE IF EXISTS `patient_info`;
CREATE TABLE `patient_info` (
  `cardNum` varchar(36) NOT NULL,
  `p_name` varchar(36) NOT NULL,
  `p_sex` int(1) DEFAULT NULL,
  `p_age` int(3) DEFAULT NULL,
  `p_birthday` date DEFAULT NULL,
  `p_habitation` varchar(50) DEFAULT NULL,
  `p_Id` varchar(30) NOT NULL,
  `p_tel` varchar(30) DEFAULT NULL,
  `p_nationality` varchar(30) DEFAULT NULL,
  `p_nation` varchar(10) DEFAULT NULL,
  `p_edu_level` varchar(10) DEFAULT NULL,
  `p_occupation` varchar(15) DEFAULT NULL,
  `p_blood_type` varchar(10) DEFAULT NULL,
  `p_marital_status` int(1) DEFAULT NULL,
  `p_Account_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cardNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of patient_info
-- ----------------------------
INSERT INTO `patient_info` VALUES ('101', 'cs', '1', '20', '2020-07-01', '福建', '123', '114', null, null, null, null, null, null, null);
INSERT INTO `patient_info` VALUES ('102', 'cs', '1', '20', '2020-07-01', '福建', '123000', '115', null, null, null, null, null, null, null);
INSERT INTO `patient_info` VALUES ('103', 'a', '1', '18', '2020-07-07', '', '321', '116', null, null, null, null, null, null, null);
INSERT INTO `patient_info` VALUES ('104', 'a', '1', '5', '2020-07-07', '上海', '654789', '125', null, null, null, null, null, null, null);
INSERT INTO `patient_info` VALUES ('202010001', '邵上', '1', '21', '1999-05-28', '重庆', '350201199905283214', '15035737537', null, null, null, null, null, null, null);
INSERT INTO `patient_info` VALUES ('3526520001', '张梦洁', '0', '52', '1968-06-11', '河南郑州', '412825196806111212', '19988547521', '中国', '汉族', '初中', '自由职业', 'A', '1', '河南郑州');
INSERT INTO `patient_info` VALUES ('3526520002', '黄湘桥', '0', '24', '1996-01-10', '山西大同', '140200199601105896', '19521364587', '中国', '汉族', '大学', '学生', 'B', '0', '山西大同');
INSERT INTO `patient_info` VALUES ('3526520003', '刘海超', '1', '16', '2004-12-02', '北京', '110101200412022235', '15269874512', '中国', '汉族', '初中', '学生', 'O', '0', '北京');
INSERT INTO `patient_info` VALUES ('3526520004', '姜明宇', '1', '12', '2008-10-29', '江西赣州', '360700200810295687', '15412563254', '中国', '汉族', '小学', '学生', 'AB', '0', '江西赣州');
INSERT INTO `patient_info` VALUES ('3526520005', '龚开萌', '0', '36', '1984-06-19', '贵州贵阳', '520100198406195845', '16852144569', '中国', '汉族', '研究生', '教师', 'A', '1', '贵州贵阳');
INSERT INTO `patient_info` VALUES ('3526520006', '张梦洁', '1', '20', '2020-06-10', '大', '154324565447588233', '12321321332', null, null, null, null, null, null, '上海');

-- ----------------------------
-- Table structure for `register_info`
-- ----------------------------
DROP TABLE IF EXISTS `register_info`;
CREATE TABLE `register_info` (
  `register_id` varchar(10) NOT NULL,
  `cardNum` varchar(36) DEFAULT NULL,
  `register_cost` int(1) DEFAULT NULL,
  `register_type` int(1) DEFAULT NULL,
  `dept_id` varchar(10) DEFAULT NULL,
  `doc_id` varchar(10) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `diagnosis_type` int(1) DEFAULT NULL,
  `expenses_type` int(1) DEFAULT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register_info
-- ----------------------------
INSERT INTO `register_info` VALUES ('0d4ff49', '202010001', '10', '0', '2001', '5001', '2020-07-27 17:05:19', '0', '0');
INSERT INTO `register_info` VALUES ('b4caf87', '103', '6', '0', '3001', '5004', '2020-07-27 15:01:30', '0', '0');
INSERT INTO `register_info` VALUES ('b96c491', '102', '6', '0', '2001', '5001', '2020-07-27 14:28:50', '0', '0');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(100) NOT NULL AUTO_INCREMENT,
  `parent_id` int(100) DEFAULT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '#');
INSERT INTO `sys_menu` VALUES ('2', '1', '菜单管理', 'menu/menuList');
INSERT INTO `sys_menu` VALUES ('3', '1', '角色管理', 'role/roleList');
INSERT INTO `sys_menu` VALUES ('4', '1', '用户管理', 'users/userList');
INSERT INTO `sys_menu` VALUES ('5', '0', '挂号管理', '#');
INSERT INTO `sys_menu` VALUES ('6', '5', '门诊挂号', 'opreg/loadOptRegistPage');
INSERT INTO `sys_menu` VALUES ('7', '0', '医生工作站', '#');
INSERT INTO `sys_menu` VALUES ('9', '7', '就诊信息', 'diag/diagList');
INSERT INTO `sys_menu` VALUES ('10', '0', '费用管理', '#');
INSERT INTO `sys_menu` VALUES ('11', '10', '门诊收费', 'diag/pay.jsp');
INSERT INTO `sys_menu` VALUES ('13', '10', '门诊退费', 'diag/refund.jsp');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int(100) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理');
INSERT INTO `sys_role` VALUES ('2', '窗口人员');
INSERT INTO `sys_role` VALUES ('3', '医生');
INSERT INTO `sys_role` VALUES ('4', '测试的');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(100) NOT NULL,
  `role_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('117', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('118', '2', '1');
INSERT INTO `sys_role_menu` VALUES ('119', '3', '1');
INSERT INTO `sys_role_menu` VALUES ('120', '4', '1');
INSERT INTO `sys_role_menu` VALUES ('121', '5', '1');
INSERT INTO `sys_role_menu` VALUES ('122', '6', '1');
INSERT INTO `sys_role_menu` VALUES ('123', '7', '1');
INSERT INTO `sys_role_menu` VALUES ('124', '9', '1');
INSERT INTO `sys_role_menu` VALUES ('125', '14', '1');
INSERT INTO `sys_role_menu` VALUES ('126', '10', '1');
INSERT INTO `sys_role_menu` VALUES ('127', '11', '1');
INSERT INTO `sys_role_menu` VALUES ('128', '13', '1');
INSERT INTO `sys_role_menu` VALUES ('129', '5', '2');
INSERT INTO `sys_role_menu` VALUES ('130', '6', '2');
INSERT INTO `sys_role_menu` VALUES ('131', '10', '2');
INSERT INTO `sys_role_menu` VALUES ('132', '11', '2');
INSERT INTO `sys_role_menu` VALUES ('133', '13', '2');
INSERT INTO `sys_role_menu` VALUES ('134', '7', '3');
INSERT INTO `sys_role_menu` VALUES ('135', '9', '3');
INSERT INTO `sys_role_menu` VALUES ('136', '14', '3');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1001', '王强', '111111', '18923456656');
INSERT INTO `sys_user` VALUES ('2001', '小南', '111111', null);
INSERT INTO `sys_user` VALUES ('4545 ', '544', '111111', null);
INSERT INTO `sys_user` VALUES ('5001', '尚飒', '111111', null);
INSERT INTO `sys_user` VALUES ('5002', '张梅', '111111', null);
INSERT INTO `sys_user` VALUES ('5003', '刘楠', '111111', null);
INSERT INTO `sys_user` VALUES ('5004', '路南', '111111', null);
INSERT INTO `sys_user` VALUES ('admin', '系统管理员', '111111', '18961813510');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `role_id` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', 'admin', '1');
INSERT INTO `sys_user_role` VALUES ('2', '1001', '2');
INSERT INTO `sys_user_role` VALUES ('3', 'lisisi', '1');
INSERT INTO `sys_user_role` VALUES ('34', 'jim', '2');
INSERT INTO `sys_user_role` VALUES ('35', 'tom', '3');
INSERT INTO `sys_user_role` VALUES ('37', 'hi', '1');
INSERT INTO `sys_user_role` VALUES ('38', '3333', '1');
INSERT INTO `sys_user_role` VALUES ('39', 'sunny', '2');
INSERT INTO `sys_user_role` VALUES ('42', 'xiaoxiao', '3');
INSERT INTO `sys_user_role` VALUES ('45', 'ceshi', '2');
INSERT INTO `sys_user_role` VALUES ('46', 'zhangsan', '1');
INSERT INTO `sys_user_role` VALUES ('47', 'lisi', '2');
INSERT INTO `sys_user_role` VALUES ('48', 'ww', '1');
INSERT INTO `sys_user_role` VALUES ('49', '5001', '3');
INSERT INTO `sys_user_role` VALUES ('50', '5002', '3');
INSERT INTO `sys_user_role` VALUES ('51', '5003', '3');
INSERT INTO `sys_user_role` VALUES ('52', '5004', '3');
INSERT INTO `sys_user_role` VALUES ('53', '2001', '2');

-- ----------------------------
-- Table structure for `western_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `western_medicine`;
CREATE TABLE `western_medicine` (
  `wm_id` varchar(10) NOT NULL,
  `wm_name` varchar(12) DEFAULT NULL,
  `wm_price` decimal(6,2) DEFAULT NULL,
  `wm_specifications` varchar(10) DEFAULT NULL,
  `wm_usage` varchar(10) DEFAULT NULL,
  `wm_dosage` varchar(8) DEFAULT NULL,
  `wm_Expiration date` date DEFAULT NULL,
  `wm_drug lot number` varchar(30) DEFAULT NULL,
  `wm_Manufacturer` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`wm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of western_medicine
-- ----------------------------
INSERT INTO `western_medicine` VALUES ('20001', '长效西林', '20.30', '一盒10瓶', '注射', '瓶', '2025-07-01', '3216547809', 'XX制药公司');
INSERT INTO `western_medicine` VALUES ('20002', '病毒灵', '72.30', '一盒20粒', '口服', '粒', '2020-07-31', '7982465130', 'XX制药公司');
INSERT INTO `western_medicine` VALUES ('20003', '安痛定', '100.00', '一盒10粒', '口服', '粒', '2024-07-15', '3579846210', 'XX制药公司');
INSERT INTO `western_medicine` VALUES ('20004', '止血散', '10.00', '一盒5包', '外用', '包', '2022-07-15', '6425987310', 'XX制药公司');
INSERT INTO `western_medicine` VALUES ('20005', '胃舒平', '66.00', '一瓶50粒', '口服', '粒', '2023-07-15', '9876541230', 'XX制药公司');

-- ----------------------------
-- Table structure for `wm_prescriotion`
-- ----------------------------
DROP TABLE IF EXISTS `wm_prescriotion`;
CREATE TABLE `wm_prescriotion` (
  `wmi_id` varchar(10) NOT NULL,
  `wm_name` varchar(12) DEFAULT NULL,
  `wm_price` decimal(6,2) DEFAULT NULL,
  `wm_num` int(3) DEFAULT NULL,
  `wm_total` decimal(7,2) DEFAULT NULL,
  `wm_med_adv` varchar(20) DEFAULT NULL,
  `register_id` varchar(10) NOT NULL,
  `pay_or_not` int(1) DEFAULT NULL,
  `refund` int(1) DEFAULT NULL,
  PRIMARY KEY (`wmi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wm_prescriotion
-- ----------------------------
INSERT INTO `wm_prescriotion` VALUES ('eda4e94acf', '安痛定', '100.00', '2', '200.00', '一天一次', 'b96c491', '1', '1');
