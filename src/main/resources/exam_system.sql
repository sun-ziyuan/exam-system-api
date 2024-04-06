/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44)
 Source Host           : localhost:3306
 Source Schema         : exam_system

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44)
 File Encoding         : 65001

 Date: 07/04/2024 00:46:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '答案表的主键',
  `all_option` longtext COMMENT '当前题目所有答案的信息',
  `images` longtext COMMENT '答案的图片路径',
  `analysis` longtext COMMENT '答案解析',
  `question_id` int(50) NOT NULL COMMENT '对应题目的id',
  `true_option` varchar(25) DEFAULT NULL COMMENT '正确的选项对应的下标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of answer
-- ----------------------------
BEGIN;
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (1, '1,2', NULL, '1', 5, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (3, '语文,数学,英语,选修课', NULL, NULL, 6, '0,1,2');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (10, '0,1', NULL, '111', 11, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (11, '11,16', NULL, '16', 12, '1');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (12, '9,8', NULL, '9', 13, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (13, '4,3', NULL, '4', 14, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (14, '18,11', NULL, '18', 15, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (15, '1', NULL, '1', 16, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (16, '4,3', NULL, '4', 17, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (17, '1,2,3,4', NULL, NULL, 18, '0,1');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (18, '奇数,偶数', NULL, '奇数', 19, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (19, '奇数,偶数', NULL, '奇数', 20, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (20, '111,222,333', NULL, NULL, 21, '0,1,2');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (21, '1', NULL, '1', 22, '0');
INSERT INTO `answer` (`id`, `all_option`, `images`, `analysis`, `question_id`, `true_option`) VALUES (22, '', NULL, '', 23, '0');
COMMIT;

-- ----------------------------
-- Table structure for exam
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `exam_id` int(50) NOT NULL AUTO_INCREMENT,
  `exam_name` varchar(100) NOT NULL COMMENT '考试名称',
  `exam_desc` varchar(100) DEFAULT NULL COMMENT '考试描述',
  `type` int(15) NOT NULL DEFAULT '1' COMMENT '1完全公开  2需要密码',
  `password` varchar(50) DEFAULT NULL COMMENT '需要密码考试的密码',
  `duration` int(50) NOT NULL COMMENT '考试时长',
  `start_time` date DEFAULT NULL COMMENT '考试开始时间',
  `end_time` date DEFAULT NULL COMMENT '考试结束时间',
  `total_score` int(30) NOT NULL COMMENT '考试总分',
  `pass_score` int(30) NOT NULL COMMENT '考试通过线',
  `status` int(15) NOT NULL DEFAULT '1' COMMENT '1有效 2无效',
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of exam
-- ----------------------------
BEGIN;
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (9, '小学入学考试', '对小学生做一个评估', 2, NULL, 1, NULL, NULL, 10, 6, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (10, '多选题练习考试', '滴滴', 1, NULL, 1, NULL, NULL, 2, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (11, '测试123', '2113', 2, '12345', 1, '2020-11-01', NULL, 1, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (12, '全能考试', '啥都考', 1, NULL, 4, NULL, NULL, 12, 7, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (13, '过期的考试', '测试过期', 1, NULL, 1, '2020-10-31', '2020-11-01', 3, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (14, '阿达', '阿达', 1, NULL, 1, '2021-01-04', '2021-01-22', 3, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (15, 'test', 'desc', 1, NULL, 2, '2021-01-03', '2021-01-19', 10, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (16, '第一次考试', '所有题型考试', 2, 'szy', 2, '2024-04-05', '2024-04-05', 13, 13, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (17, '123', '123', 2, '123', 1, '2024-04-05', '2024-04-05', 80, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (18, '123', '123', 2, '123', 1, '2024-04-05', '2024-04-05', 17, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (19, '123', '123', 1, NULL, 1, '2024-04-05', '2024-04-05', 12, 1, 1);
INSERT INTO `exam` (`exam_id`, `exam_name`, `exam_desc`, `type`, `password`, `duration`, `start_time`, `end_time`, `total_score`, `pass_score`, `status`) VALUES (20, '123', '123', 1, NULL, 1, '2024-04-06', '2024-04-06', 8, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for exam_question
-- ----------------------------
DROP TABLE IF EXISTS `exam_question`;
CREATE TABLE `exam_question` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `question_ids` varchar(100) NOT NULL COMMENT '考试的题目id列表',
  `exam_id` int(50) NOT NULL COMMENT '考试的id',
  `scores` varchar(100) NOT NULL COMMENT '每一题的分数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of exam_question
-- ----------------------------
BEGIN;
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (5, '12,13,15,3,6,8,18,11,19,14', 9, '1,1,1,1,1,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (6, '6,18', 10, '1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (7, '3', 11, '1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (8, '3,6,8,11,12,13,14,15,18,19,20,21', 12, '1,1,1,1,1,1,1,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (9, '18,19,15', 13, '1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (12, '3,21,22', 14, '1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (13, '11,8,3,12,13,14,18,15,19,6', 15, '1,1,1,1,1,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (15, '3,6,8,11,12,13,14,15,18,19,20,21,22', 16, '1,1,1,1,1,1,1,1,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (16, '3,6,8,11,12,13,14,15', 17, '10,10,10,10,10,10,10,10');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (17, '3,6,8,11,12,13,14,15', 18, '5,2,5,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (18, '18,3,19,20,21,6,8,11,12,13,14,15', 19, '1,1,1,1,1,1,1,1,1,1,1,1');
INSERT INTO `exam_question` (`id`, `question_ids`, `exam_id`, `scores`) VALUES (19, '3,6,8,11,12,13,14,15', 20, '1,1,1,1,1,1,1,1');
COMMIT;

-- ----------------------------
-- Table structure for exam_record
-- ----------------------------
DROP TABLE IF EXISTS `exam_record`;
CREATE TABLE `exam_record` (
  `record_id` int(50) NOT NULL AUTO_INCREMENT COMMENT '考试记录的id',
  `user_id` int(50) NOT NULL COMMENT '考试用户的id',
  `user_answers` longtext NOT NULL COMMENT '用户的答案列表',
  `credit_img_url` longtext COMMENT '考试诚信截图',
  `exam_id` int(50) NOT NULL COMMENT '考试的id',
  `logic_score` int(50) DEFAULT NULL COMMENT '考试的逻辑得分(除简答)',
  `exam_time` datetime NOT NULL COMMENT '考试时间',
  `question_ids` varchar(150) NOT NULL COMMENT '考试的题目信息',
  `total_score` int(50) DEFAULT NULL COMMENT '考试总分数 (逻辑+简答)',
  `error_question_ids` varchar(50) DEFAULT NULL COMMENT '用户考试的错题',
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of exam_record
-- ----------------------------
BEGIN;
INSERT INTO `exam_record` (`record_id`, `user_id`, `user_answers`, `credit_img_url`, `exam_id`, `logic_score`, `exam_time`, `question_ids`, `total_score`, `error_question_ids`) VALUES (1, 4, '1-1-0-1-0-0,1,2-123123-123123123', ',', 20, 4, '2024-04-06 22:22:49', '11,12,13,14,15,6,3,8', NULL, '11,14');
INSERT INTO `exam_record` (`record_id`, `user_id`, `user_answers`, `credit_img_url`, `exam_id`, `logic_score`, `exam_time`, `question_ids`, `total_score`, `error_question_ids`) VALUES (2, 10, '- - - - - - - -  - - - - - - - -', '', 20, 0, '2024-04-06 23:27:01', '11,12,13,14,15,6,3,8', NULL, '11,12,13,14,15,6');
INSERT INTO `exam_record` (`record_id`, `user_id`, `user_answers`, `credit_img_url`, `exam_id`, `logic_score`, `exam_time`, `question_ids`, `total_score`, `error_question_ids`) VALUES (3, 4, '1 - - - - - - - - - -', '', 12, 0, '2024-04-06 23:33:42', '11,12,13,14,15,6,18,21,19,20,3,8', NULL, '11,12,13,14,15,6,18,21,19,20');
INSERT INTO `exam_record` (`record_id`, `user_id`, `user_answers`, `credit_img_url`, `exam_id`, `logic_score`, `exam_time`, `question_ids`, `total_score`, `error_question_ids`) VALUES (4, 4, '0,1,2,3-0,1,2', ',,', 10, 0, '2024-04-06 23:59:11', '6,18', NULL, '6,18');
INSERT INTO `exam_record` (`record_id`, `user_id`, `user_answers`, `credit_img_url`, `exam_id`, `logic_score`, `exam_time`, `question_ids`, `total_score`, `error_question_ids`) VALUES (5, 13, ' - - - - - - -', ',,,', 20, 0, '2024-04-07 00:44:16', '11,12,13,14,15,6,3,8', NULL, '11,12,13,14,15,6');
COMMIT;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(64) NOT NULL AUTO_INCREMENT COMMENT '系统公告id',
  `content` longtext NOT NULL COMMENT '公告内容',
  `create_time` datetime DEFAULT NULL COMMENT '公告创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新此公告时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0(不是当前系统公告) 1(是当前系统公告)',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of notice
-- ----------------------------
BEGIN;
INSERT INTO `notice` (`n_id`, `content`, `create_time`, `update_time`, `status`) VALUES (1, '<ul><li><font color=\"#c24f4a\">欢迎使用考试管理系统</font></li></ul>', '2021-02-07 15:52:45', '2024-04-06 20:17:06', 1);
COMMIT;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `qu_content` longtext NOT NULL COMMENT '问题内容',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_person` varchar(50) NOT NULL COMMENT '创建人',
  `qu_type` int(10) NOT NULL COMMENT '问题类型 1单选 2多选 3判断 4简答',
  `level` int(10) NOT NULL DEFAULT '1' COMMENT '题目难度 1简单 2中等 3困难',
  `image` longtext COMMENT '图片',
  `qu_bank_id` varchar(40) NOT NULL COMMENT '所属题库id',
  `qu_bank_name` varchar(255) NOT NULL COMMENT '所属题库名称',
  `analysis` varchar(255) DEFAULT NULL COMMENT '解析',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of question
-- ----------------------------
BEGIN;
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (3, '实现web后端的语言', '2020-10-24 16:30:08', 'wzz', 4, 2, NULL, '1,2,5', '小学数学题库,生活小常识,java开发', '解析');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (6, '以下哪些语言是必修课', '2024-04-06 23:28:39', 'wzz', 2, 1, NULL, '1,5', '小学数学题库,java开发', '语文 数学 英语');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (8, '说说小学是什么样的?', '2024-04-06 23:28:51', 'wzz', 4, 3, NULL, '1,5', '小学数学题库,java开发', '说亲身经历即可');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (11, '1-1', '2020-10-27 14:35:33', 'wzz', 1, 1, NULL, '1,5', '小学数学题库,java开发', '0');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (12, '8+8', '2020-10-27 15:32:44', 'wzz', 1, 3, NULL, '1,5', '小学数学题库,java开发', '16');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (13, '1 * 9', '2020-10-27 15:13:38', 'wzz', 1, 1, NULL, '1,5', '小学数学题库,java开发', '9');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (14, '2+2', '2020-10-27 16:17:09', 'wzz', 1, 1, NULL, '1,5', '小学数学题库,java开发', '4');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (15, '9+9', '2020-10-27 15:53:14', 'wzz', 1, 1, NULL, '1,5', '小学数学题库,java开发', '18');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (18, '最接近0的两个数', '2020-11-02 10:09:13', 'wzz', 2, 2, NULL, '1', '小学数学题库', '1和2');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (19, '1是不是奇数', '2020-10-31 14:54:09', 'wzz', 3, 1, NULL, '1', '小学数学题库', '是');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (20, '9是奇数还是偶数', '2020-11-02 10:21:19', 'wzz', 3, 1, NULL, '1', '小学数学题库', '奇数');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (21, '哪几个是三位数', '2020-11-05 14:42:56', 'wzz', 2, 1, NULL, '1,2', '小学数学题库,生活小常识', '数数');
INSERT INTO `question` (`id`, `qu_content`, `create_time`, `create_person`, `qu_type`, `level`, `image`, `qu_bank_id`, `qu_bank_name`, `analysis`) VALUES (22, '测试', '2020-12-27 21:03:31', 'wzz', 1, 1, NULL, '2', '生活小常识', '测试');
COMMIT;

-- ----------------------------
-- Table structure for question_bank
-- ----------------------------
DROP TABLE IF EXISTS `question_bank`;
CREATE TABLE `question_bank` (
  `bank_id` int(40) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of question_bank
-- ----------------------------
BEGIN;
INSERT INTO `question_bank` (`bank_id`, `bank_name`) VALUES (1, '小学数学题库');
INSERT INTO `question_bank` (`bank_id`, `bank_name`) VALUES (2, '生活小常识');
INSERT INTO `question_bank` (`bank_id`, `bank_name`) VALUES (5, 'java开发');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `role_id` int(10) NOT NULL DEFAULT '1' COMMENT '1(学生) 2(教师) 3(管理员)',
  `username` varchar(100) NOT NULL,
  `true_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `salt` varchar(30) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '用户是否被禁用 1正常 2禁用',
  `create_date` datetime NOT NULL COMMENT '用户创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (1, 3, 'wzz', '王周舟', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:05:15');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (2, 1, 'w', '学生王某', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 10:46:25');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (3, 2, 'zz', '教师', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 11:10:12');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (4, 1, 'lx', '刘熙', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 18:13:20');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (5, 1, 'mc', '马冲', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:51:51');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (6, 1, 'amao', '阿毛', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:52:30');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (8, 1, 'mq', 'sada', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:54:48');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (9, 1, 'shepi', '蛇皮', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:55:04');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (10, 1, 'zzb', '张智博', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:55:25');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (11, 1, 'pgl', '潘广隆', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-22 15:55:52');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (12, 1, 'wjh', '王建欢', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-23 09:54:55');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (13, 3, 'll', '丽丽', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-10-23 10:02:09');
INSERT INTO `user` (`id`, `role_id`, `username`, `true_name`, `password`, `salt`, `status`, `create_date`) VALUES (14, 1, 'xx', '小熊', 'baa1611531f316b54ebd5d69217097f1', '0824f0', 1, '2020-11-30 12:25:55');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL DEFAULT '1' COMMENT '1学生 2教师 3超级管理员',
  `role_name` varchar(15) NOT NULL,
  `menu_info` longtext NOT NULL COMMENT '主页的菜单信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_role
-- ----------------------------
BEGIN;
INSERT INTO `user_role` (`id`, `role_id`, `role_name`, `menu_info`) VALUES (1, 1, '学生', '[{\"topMenuName\":\"首页\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"在线考试\",\"topIcon\":\"el-icon-menu\",\"submenu\":[{\"name\":\"在线考试\",\"icon\":\"el-icon-s-promotion\",\"url\":\"/examOnline\"},{\"name\":\"我的成绩\",\"icon\":\"el-icon-trophy\",\"url\":\"/myGrade\"},{\"name\":\"我的题库\",\"icon\":\"el-icon-notebook-2\",\"url\":\"/myQuestionBank\"}]}]');
INSERT INTO `user_role` (`id`, `role_id`, `role_name`, `menu_info`) VALUES (2, 2, '教师', '[{\"topMenuName\":\"首页\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"考试管理\",\"topIcon\":\"el-icon-bangzhu\",\"submenu\":[{\"name\":\"题库管理\",\"icon\":\"el-icon-aim\",\"url\":\"/questionBankMange\"},{\"name\":\"试题管理\",\"icon\":\"el-icon-news\",\"url\":\"/questionManage\"},{\"name\":\"考试管理\",\"icon\":\"el-icon-tickets\",\"url\":\"/examManage\"},{\"name\":\"阅卷管理\",\"icon\":\"el-icon-view\",\"url\":\"/markManage\"}]},{\"topMenuName\":\"考试统计\",\"topIcon\":\"el-icon-pie-chart\",\"submenu\":[{\"name\":\"统计总览\",\"icon\":\"el-icon-data-line\",\"url\":\"/staticOverview\"}]}]');
INSERT INTO `user_role` (`id`, `role_id`, `role_name`, `menu_info`) VALUES (3, 3, '超级管理员', '[{\"topMenuName\":\"首页\",\"topIcon\":\"el-icon-odometer\",\"url\":\"/dashboard\"},{\"topMenuName\":\"在线考试\",\"topIcon\":\"el-icon-menu\",\"submenu\":[{\"name\":\"在线考试\",\"icon\":\"el-icon-s-promotion\",\"url\":\"/examOnline\"},{\"name\":\"我的成绩\",\"icon\":\"el-icon-trophy\",\"url\":\"/myGrade\"},{\"name\":\"我的题库\",\"icon\":\"el-icon-notebook-2\",\"url\":\"/myQuestionBank\"}]},{\"topMenuName\":\"考试管理\",\"topIcon\":\"el-icon-bangzhu\",\"submenu\":[{\"name\":\"题库管理\",\"icon\":\"el-icon-aim\",\"url\":\"/questionBankMange\"},{\"name\":\"试题管理\",\"icon\":\"el-icon-news\",\"url\":\"/questionManage\"},{\"name\":\"考试管理\",\"icon\":\"el-icon-tickets\",\"url\":\"/examManage\"},{\"name\":\"阅卷管理\",\"icon\":\"el-icon-view\",\"url\":\"/markManage\"}]},{\"topMenuName\":\"考试统计\",\"topIcon\":\"el-icon-pie-chart\",\"submenu\":[{\"name\":\"统计总览\",\"icon\":\"el-icon-data-line\",\"url\":\"/staticOverview\"}]},{\"topMenuName\":\"系统设置\",\"topIcon\":\"el-icon-setting\",\"submenu\":[{\"name\":\"公告管理\",\"icon\":\"el-icon-bell\",\"url\":\"/noticeManage\"},{\"name\":\"角色管理\",\"icon\":\"el-icon-s-custom\",\"url\":\"/roleManage\"},{\"name\":\"用户管理\",\"icon\":\"el-icon-user-solid\",\"url\":\"/userManage\"}]}]');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
