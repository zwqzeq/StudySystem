/*
Navicat MySQL Data Transfer

Source Server         : peter
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : studysystem

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-12-06 16:47:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NO` varchar(255) DEFAULT NULL,
  `COURSE_NAME` varchar(255) DEFAULT NULL,
  `CREDIT` int(11) DEFAULT NULL,
  `COURSE_HOUR` int(11) DEFAULT NULL,
  `COURSE_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('2', '0020 ', '现代教育技术 ', '4', '24', '专业必修');

-- ----------------------------
-- Table structure for `elective`
-- ----------------------------
DROP TABLE IF EXISTS `elective`;
CREATE TABLE `elective` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `TEACHER_SUBJECT` varchar(255) DEFAULT NULL,
  `TEACHER_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of elective
-- ----------------------------
INSERT INTO `elective` VALUES ('1', '2', '1', '音乐学院', '李明');
INSERT INTO `elective` VALUES ('2', '1', '2', '生科院', '2');
INSERT INTO `elective` VALUES ('3', '1', '2', '生科院', '王昭君');
INSERT INTO `elective` VALUES ('4', '1', '2', '生科院', '杜甫');
INSERT INTO `elective` VALUES ('5', '1', '2', '体育学院', '杜甫');
INSERT INTO `elective` VALUES ('6', '1', '2', '国际学院', '杜甫');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STUDENT_NO` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `STUDENT_NAME` varchar(255) NOT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `STU_CLASS` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '12121234', '123456', '李囸兲', '女', '音乐学院', '1603班');
INSERT INTO `student` VALUES ('2', '1212', '123456', 'lisi', null, '英语学院', '1601班');
INSERT INTO `student` VALUES ('4', '555555', '123456', '赵六', '女', '生科院', '3');
INSERT INTO `student` VALUES ('5', '5555556', '123456', '课棋', '男', '计算机科学与技术学院', '1');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJECT_NO` varchar(255) NOT NULL,
  `SUBJECT_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEACHER_NO` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `TEACHER_NAME` varchar(255) NOT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
