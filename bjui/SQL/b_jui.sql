/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost
 Source Database       : b_jui

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 10/23/2017 15:23:26 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `t_editor`
-- ----------------------------
DROP TABLE IF EXISTS `t_editor`;
CREATE TABLE `t_editor` (
  `id` varchar(40) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL,
  `content` longtext,
  `uid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Table structure for `t_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` varchar(40) NOT NULL,
  `parentid` varchar(40) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `target` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `level` varchar(11) DEFAULT NULL,
  `pageid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `t_menu`
-- ----------------------------
BEGIN;
INSERT INTO `t_menu` VALUES ('402880ec5e0f7c90015e0f7d872a0000', '4028b8815e1360f3015e136f3fe10002', '菜单管理', 'navtab', 'JSP/menu/menu.html', '0', '2', 'base-menu'), ('4028b8815e0e3258015e0e334b760000', null, '表单相关', '', '', '0', '0', null), ('4028b8815e0e3258015e0e3394350001', null, '系统管理', '', '', '3', '0', null), ('4028b8815e0e3258015e0e33cbdf0002', '4028b8815e0e3258015e0e334b760000', '表单相关', '', '', '0', '1', null), ('4028b8815e0e3258015e0e3450240003', '4028b8815e0e3258015e0e33cbdf0002', '按钮', 'navtab', 'html/form/button.html', '0', '2', 'base-button'), ('4028b8815e0e3258015e0e34ae3f0004', '4028b8815e0e3258015e0e33cbdf0002', '文本框', 'navtab', 'html/form/input.html', '1', '2', 'base-input'), ('4028b8815e0e3258015e0e3500090005', '4028b8815e0e3258015e0e334b760000', '综合应用', '', '', '1', '1', ''), ('4028b8815e0e3258015e0e3589100006', '4028b8815e0e3258015e0e3500090005', '表单示例', 'navtab', 'html/form/form.html', '0', '2', 'base-demo-form'), ('4028b8815e1360f3015e136ee2f90001', '4028b8815e1360f3015e136f3fe10002', '用户管理', 'navtab', 'JSP/user/user.jsp', '1', '2', 'base-user'), ('4028b8815e1360f3015e136f3fe10002', '4028b8815e0e3258015e0e3394350001', '管理', '', '', '0', '1', ''), ('4028b8815e1360f3015e13716b4e0003', '4028b8815e1360f3015e136f3fe10002', '角色管理', 'navtab', 'JSP/role/role.html', '2', '2', 'base-role'), ('4028b8815e1360f3015e13758dc70005', '4028b8815e0e3258015e0e33cbdf0002', '下拉选择框', 'navtab', 'html/form/select.html', '2', '2', 'base-select'), ('4028b8815e1360f3015e1375f1cf0006', '4028b8815e0e3258015e0e33cbdf0002', '单选、复选框', 'navtab', 'html/form/checkbox.html', '3', '2', 'base-checkbox'), ('4028b8815e1360f3015e1376521f0007', '4028b8815e0e3258015e0e33cbdf0002', '日期选择器', 'navtab', 'html/form/datepicker.html', '4', '2', 'base-datepicker'), ('4028b8815e1360f3015e13769eb20008', '4028b8815e0e3258015e0e33cbdf0002', 'Tags、自动完成', 'navtab', 'html/form/tags.html', '5', '2', 'base-tags'), ('4028b8815e1360f3015e1376f4060009', '4028b8815e0e3258015e0e33cbdf0002', 'Suggest', 'navtab', 'html/form/suggest.html', '6', '2', 'base-suggest'), ('4028b8815e1360f3015e13773dfd000a', '4028b8815e0e3258015e0e33cbdf0002', 'FindGrid', 'navtab', 'html/form/findgrid.html', '7', '2', 'base-findgrid'), ('4028b8815e1360f3015e13779151000b', '4028b8815e0e3258015e0e33cbdf0002', 'Spinner', 'navtab', 'html/form/spinner.html', '8', '2', 'base-spinner'), ('4028b8815e1360f3015e13781fb9000c', null, '基础组件', '', '', '1', '0', ''), ('4028b8815e1360f3015e1378f9c5000d', '4028b8815e1360f3015e137da67a0019', 'Navtab', 'navtab', 'html/base/navtab.html', '0', '2', 'base-navtab'), ('4028b8815e1360f3015e137949ef000e', '4028b8815e1360f3015e137da67a0019', 'Dialog弹窗', 'navtab', 'html/base/dialog.html', '1', '2', 'base-dialog'), ('4028b8815e1360f3015e13799ede000f', '4028b8815e1360f3015e137da67a0019', 'alertmsg消息窗口', 'navtab', 'html/base/alertmsg.html', '2', '2', 'base-alertmsg'), ('4028b8815e1360f3015e1379ed250010', '4028b8815e1360f3015e137da67a0019', 'ajax相关', 'navtab', 'html/base/ajax.html', '3', '2', 'base-ajax'), ('4028b8815e1360f3015e137a42dc0011', '4028b8815e1360f3015e137da67a0019', '分页组件', 'navtab', 'html/base/pagination.html', '4', '2', 'base-pagination'), ('4028b8815e1360f3015e137ade2d0012', null, '数据表格(Datagrid)', '', '', '2', '0', ''), ('4028b8815e1360f3015e137b50580013', '4028b8815e1360f3015e137b75c30014', '示例-jQuery API', 'navtab', 'html/datagrid/datagrid.html', '0', '2', 'datagrid-jquery'), ('4028b8815e1360f3015e137b75c30014', '4028b8815e1360f3015e137ade2d0012', 'Datagrid', '', '', '0', '1', ''), ('4028b8815e1360f3015e137be02e0015', '4028b8815e1360f3015e137b75c30014', '示例-Data API', 'navtab', 'html/datagrid/datagrid-dom.html', '1', '2', 'datagrid-data'), ('4028b8815e1360f3015e137c28640016', '4028b8815e1360f3015e137b75c30014', '树状Datagrid', 'navtab', 'html/datagrid/datagrid-tree.html', '3', '2', 'datagrid-tree'), ('4028b8815e1360f3015e137c72c00017', '4028b8815e1360f3015e137b75c30014', '搜索Datagrid', 'navtab', 'html/datagrid/datagrid-search.html', '2', '2', 'datagrid-search'), ('4028b8815e1360f3015e137cd19f0018', '4028b8815e1360f3015e137b75c30014', 'Datagrid模板显示', 'navtab', 'html/datagrid/datagrid-template.html', '4', '2', 'datagrid-template'), ('4028b8815e1360f3015e137da67a0019', '4028b8815e1360f3015e13781fb9000c', '基础组件', '', '', '0', '1', ''), ('4028b8815e3adba0015e3add0d170000', '4028b8815e1360f3015e136f3fe10002', '权限管理', 'navtab', 'JSP/role/jurisdiction.html', '3', '2', 'base-jurisdiction'), ('4028b8815ec1fb53015ec1fcb1690000', '4028b8815e1360f3015e136f3fe10002', '发布管理', 'navtab', 'JSP/editor/editor.html', '4', '2', 'base-editor');
COMMIT;

-- ----------------------------
--  Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `rid` varchar(40) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `level` varchar(2) DEFAULT NULL,
  `order` varchar(2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `menuid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `t_role`
-- ----------------------------
BEGIN;
INSERT INTO `t_role` VALUES ('402880ec5f446153015f44654f740003', 'Admin', '-1', null, '', null), ('402880ec5f446153015f4465bb240004', '2222', '-1', null, '', null);
COMMIT;

-- ----------------------------
--  Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `ID` varchar(40) NOT NULL COMMENT 'ID',
  `NAME` varchar(50) NOT NULL COMMENT '姓名',
  `PASSWORD` varchar(50) NOT NULL COMMENT '密码',
  `AGE` int(11) DEFAULT NULL COMMENT '年龄',
  `SEX` varchar(10) DEFAULT NULL COMMENT '性别',
  `RID` varchar(50) NOT NULL COMMENT '账户类型',
  `DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`,`NAME`),
  KEY `NAME` (`NAME`),
  KEY `UID` (`ID`),
  KEY `TYPE` (`RID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
--  Records of `t_user`
-- ----------------------------
BEGIN;
INSERT INTO `t_user` VALUES ('40289fca5edd7521015edd78040e0000', 'z', '111111', '1', 'F', '402880ec5f446153015f44654f740003', '2017-09-11 11:02:11'), ('4028b8815e6ee355015e6ee3c4780000', 'q', '123456', '1', 'F', '402880ec5f446153015f44654f740003', '2017-09-11 11:02:11');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
