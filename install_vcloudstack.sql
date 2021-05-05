/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100138
 Source Host           : localhost:3306
 Source Schema         : install_vcloudstack

 Target Server Type    : MySQL
 Target Server Version : 100138
 File Encoding         : 65001

 Date: 16/02/2020 23:41:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tblmykey
-- ----------------------------
DROP TABLE IF EXISTS `tblmykey`;
CREATE TABLE `tblmykey`  (
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `privatekey` varchar(3333) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `whoami` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `passphrase` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ip_server_deploy` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đây là nơi chưa name hay ip của server web',
  `ip_server_ansible` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Đây là nơi chưa name hay ip của server chạy ansible, vì chạy thêm trên môi trường docker nên sinh thêm bảng này',
  `publickey` varchar(800) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tblmykey
-- ----------------------------
INSERT INTO `tblmykey` VALUES (1, '-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----\n', 'nim', 'nim123456', 'svc-ansible.lab-tool.svc.cluster.local', 'ansible', 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDUp/fr8z5+goDqfbsXCkZlCnxwCoFXgU9BSNt92fdQTK77oiDVLRspSizKEl5uAfSkiBU2ZZZ0187W6swhbac+1SWXA+qBC/TGqoJ5o+/yzKn2nr5JsXJWE4xhMD6Uj7uVNG5RQ13vY3qg6Q43GHk8pBlU4KleTUj6aBRS8TsXD6Vgq1baCJdFFmo149fyUHVhbZa2Px+Ev/cmvB/E+qdRfJq1zsaMEbUgELO2/1/Edjo3I+SkApXMgXRMtuteekzehKpJK5zzx3hiD0X6lMy3mWolGI9tjqbIIx+hcln4DLHzFsgP7obtTD9QM7YCI4Q/Dv/tXQwFVpDFKp0voQW8StgHMbhxwysvCJlYsFgJ6ld6sy601gipydzeOarmJRMouZAmEF44eikbvWptcaA9+YaVAJQRcq95wY4Nc658oH6xILSYRBJnzaiCf4n9M2UwfYWkRJaEL1zAruD8JGmY3NjGEdgQqdH90pLa0okndZoq1oIxyo53HCoHd+2uy6Jyj/cFbc9aX5iCVuO/fRkEX7M0yW4t8ekWIIkinsU9XDxfZqZr8lxZACfMu4PZyvFWFmMELwaHhOEVVdUFmqK/6vZZhZ4yM9qUwiXdEbOo1b/qQiKEaO65r88CfLjZUonUjFjkYim+B+SyU4u+BtBlbeQpI4MGzspnH7lifc8WuQ== root@web-deploy-vcloudstack\n');

-- ----------------------------
-- Table structure for tblphysicalnode
-- ----------------------------
DROP TABLE IF EXISTS `tblphysicalnode`;
CREATE TABLE `tblphysicalnode`  (
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_node` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass_root` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostname_node` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ability_node` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `incognito` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_cluster` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vip_cluster` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tblvmportal
-- ----------------------------
DROP TABLE IF EXISTS `tblvmportal`;
CREATE TABLE `tblvmportal`  (
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `incognito_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hostname_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ability_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `vip_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `control_node` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `db_sme_api` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `db_sme_backup_restore` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `log_ansible_for_portal` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
