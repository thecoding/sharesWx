/*
Navicat MySQL Data Transfer
Source Server         : 本地
Source Host           : localhost:3307
Source Database       : spring_root  / user: spring_user psd: spring_root
Target Server Type    : MYSQL
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `wechat_user_rel`
-- ----------------------------
CREATE TABLE `wechat_user_rel` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `OPEN_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '微信OPEN_ID',
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '用户',
  `LINKMAN` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '用户名',
  `PHONE` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATOR` bigint(20) DEFAULT NULL COMMENT '创建者',
  `OP_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `OP_ID` bigint(20) DEFAULT NULL COMMENT '修改人',
  `REMARKES` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `STATE` int(2) DEFAULT NULL COMMENT 'state (1：有效，0：无效)',
  `TENANT_ID` bigint(20) DEFAULT NULL COMMENT '租户',
  `APP_CODE` int(2) DEFAULT NULL COMMENT '多个app区分标示：1服务商 2驻场',
  `WECHAT_USER_ID` varchar(100) COLLATE utf8_bin DEFAULT NULL COMMENT '微信USER_ID',
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ID` (`USER_ID`),
  KEY `IDX_OPEN_ID` (`OPEN_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_bin