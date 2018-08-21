/*
 Navicat Premium Data Transfer

 Source Server         : Local Postgres
 Source Server Type    : PostgreSQL
 Source Server Version : 90608
 Source Host           : localhost:5432
 Source Catalog        : labrin
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90608
 File Encoding         : 65001

 Date: 20/08/2018 08:53:28
*/


-- ----------------------------
-- Sequence structure for auth_group_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_id_seq";
CREATE SEQUENCE "auth_group_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_group_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_group_permissions_id_seq";
CREATE SEQUENCE "auth_group_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for auth_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "auth_permission_id_seq";
CREATE SEQUENCE "auth_permission_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for chat_chatmessage_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "chat_chatmessage_id_seq";
CREATE SEQUENCE "chat_chatmessage_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for chat_thread_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "chat_thread_id_seq";
CREATE SEQUENCE "chat_thread_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_admin_log_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_admin_log_id_seq";
CREATE SEQUENCE "django_admin_log_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_content_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_content_type_id_seq";
CREATE SEQUENCE "django_content_type_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for django_migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "django_migrations_id_seq";
CREATE SEQUENCE "django_migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for easy_thumbnails_source_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "easy_thumbnails_source_id_seq";
CREATE SEQUENCE "easy_thumbnails_source_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for easy_thumbnails_thumbnail_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "easy_thumbnails_thumbnail_id_seq";
CREATE SEQUENCE "easy_thumbnails_thumbnail_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for easy_thumbnails_thumbnaildimensions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "easy_thumbnails_thumbnaildimensions_id_seq";
CREATE SEQUENCE "easy_thumbnails_thumbnaildimensions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for photo_comment_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "photo_comment_id_seq";
CREATE SEQUENCE "photo_comment_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for photo_photo_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "photo_photo_id_seq";
CREATE SEQUENCE "photo_photo_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for photo_sharing_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "photo_sharing_id_seq";
CREATE SEQUENCE "photo_sharing_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_users_groups_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_users_groups_id_seq";
CREATE SEQUENCE "users_users_groups_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_users_id_seq";
CREATE SEQUENCE "users_users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_users_user_permissions_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_users_user_permissions_id_seq";
CREATE SEQUENCE "users_users_user_permissions_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_id_seq'::regclass),
  "name" varchar(80) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('auth_group_permissions_id_seq'::regclass),
  "group_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" (
  "id" int4 NOT NULL DEFAULT nextval('auth_permission_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4 NOT NULL,
  "codename" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO "auth_permission" VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO "auth_permission" VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO "auth_permission" VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO "auth_permission" VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO "auth_permission" VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO "auth_permission" VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO "auth_permission" VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO "auth_permission" VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO "auth_permission" VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO "auth_permission" VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO "auth_permission" VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO "auth_permission" VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO "auth_permission" VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO "auth_permission" VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO "auth_permission" VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO "auth_permission" VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO "auth_permission" VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO "auth_permission" VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO "auth_permission" VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO "auth_permission" VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO "auth_permission" VALUES (21, 'Can add source', 6, 'add_source');
INSERT INTO "auth_permission" VALUES (22, 'Can change source', 6, 'change_source');
INSERT INTO "auth_permission" VALUES (23, 'Can delete source', 6, 'delete_source');
INSERT INTO "auth_permission" VALUES (24, 'Can view source', 6, 'view_source');
INSERT INTO "auth_permission" VALUES (25, 'Can add thumbnail', 7, 'add_thumbnail');
INSERT INTO "auth_permission" VALUES (26, 'Can change thumbnail', 7, 'change_thumbnail');
INSERT INTO "auth_permission" VALUES (27, 'Can delete thumbnail', 7, 'delete_thumbnail');
INSERT INTO "auth_permission" VALUES (28, 'Can view thumbnail', 7, 'view_thumbnail');
INSERT INTO "auth_permission" VALUES (29, 'Can add thumbnail dimensions', 8, 'add_thumbnaildimensions');
INSERT INTO "auth_permission" VALUES (30, 'Can change thumbnail dimensions', 8, 'change_thumbnaildimensions');
INSERT INTO "auth_permission" VALUES (31, 'Can delete thumbnail dimensions', 8, 'delete_thumbnaildimensions');
INSERT INTO "auth_permission" VALUES (32, 'Can view thumbnail dimensions', 8, 'view_thumbnaildimensions');
INSERT INTO "auth_permission" VALUES (33, 'Can add users', 9, 'add_users');
INSERT INTO "auth_permission" VALUES (34, 'Can change users', 9, 'change_users');
INSERT INTO "auth_permission" VALUES (35, 'Can delete users', 9, 'delete_users');
INSERT INTO "auth_permission" VALUES (36, 'Can view users', 9, 'view_users');
INSERT INTO "auth_permission" VALUES (37, 'Can add photo', 10, 'add_photo');
INSERT INTO "auth_permission" VALUES (38, 'Can change photo', 10, 'change_photo');
INSERT INTO "auth_permission" VALUES (39, 'Can delete photo', 10, 'delete_photo');
INSERT INTO "auth_permission" VALUES (40, 'Can view photo', 10, 'view_photo');
INSERT INTO "auth_permission" VALUES (41, 'Can add sharing', 11, 'add_sharing');
INSERT INTO "auth_permission" VALUES (42, 'Can change sharing', 11, 'change_sharing');
INSERT INTO "auth_permission" VALUES (43, 'Can delete sharing', 11, 'delete_sharing');
INSERT INTO "auth_permission" VALUES (44, 'Can view sharing', 11, 'view_sharing');
INSERT INTO "auth_permission" VALUES (45, 'Can add thread', 12, 'add_thread');
INSERT INTO "auth_permission" VALUES (46, 'Can change thread', 12, 'change_thread');
INSERT INTO "auth_permission" VALUES (47, 'Can delete thread', 12, 'delete_thread');
INSERT INTO "auth_permission" VALUES (48, 'Can view thread', 12, 'view_thread');
INSERT INTO "auth_permission" VALUES (49, 'Can add chat message', 13, 'add_chatmessage');
INSERT INTO "auth_permission" VALUES (50, 'Can change chat message', 13, 'change_chatmessage');
INSERT INTO "auth_permission" VALUES (51, 'Can delete chat message', 13, 'delete_chatmessage');
INSERT INTO "auth_permission" VALUES (52, 'Can view chat message', 13, 'view_chatmessage');
INSERT INTO "auth_permission" VALUES (53, 'Can add comment', 14, 'add_comment');
INSERT INTO "auth_permission" VALUES (54, 'Can change comment', 14, 'change_comment');
INSERT INTO "auth_permission" VALUES (55, 'Can delete comment', 14, 'delete_comment');
INSERT INTO "auth_permission" VALUES (56, 'Can view comment', 14, 'view_comment');
INSERT INTO "auth_permission" VALUES (57, 'Can add comment sharing', 15, 'add_commentsharing');
INSERT INTO "auth_permission" VALUES (58, 'Can change comment sharing', 15, 'change_commentsharing');
INSERT INTO "auth_permission" VALUES (59, 'Can delete comment sharing', 15, 'delete_commentsharing');
INSERT INTO "auth_permission" VALUES (60, 'Can view comment sharing', 15, 'view_commentsharing');
INSERT INTO "auth_permission" VALUES (61, 'Can add photo sharing', 11, 'add_photosharing');
INSERT INTO "auth_permission" VALUES (62, 'Can change photo sharing', 11, 'change_photosharing');
INSERT INTO "auth_permission" VALUES (63, 'Can delete photo sharing', 11, 'delete_photosharing');
INSERT INTO "auth_permission" VALUES (64, 'Can view photo sharing', 11, 'view_photosharing');
COMMIT;

-- ----------------------------
-- Table structure for chat_chatmessage
-- ----------------------------
DROP TABLE IF EXISTS "chat_chatmessage";
CREATE TABLE "chat_chatmessage" (
  "id" int4 NOT NULL DEFAULT nextval('chat_chatmessage_id_seq'::regclass),
  "message" text COLLATE "pg_catalog"."default" NOT NULL,
  "timestamp" timestamptz(6) NOT NULL,
  "thread_id" int4,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of chat_chatmessage
-- ----------------------------
BEGIN;
INSERT INTO "chat_chatmessage" VALUES (1, 'salam', '2018-08-18 21:33:49.207631+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (2, 'dsd', '2018-08-18 22:20:50.375506+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (3, 'dfd', '2018-08-18 22:28:51.980202+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (4, 'sdd', '2018-08-19 01:02:10.32715+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (5, 'hhhh', '2018-08-19 01:33:22.331203+04', 1, 2);
INSERT INTO "chat_chatmessage" VALUES (6, 'jjhy', '2018-08-19 01:33:28.636503+04', 1, 2);
INSERT INTO "chat_chatmessage" VALUES (7, 'bbbb', '2018-08-19 01:33:32.996242+04', 1, 2);
INSERT INTO "chat_chatmessage" VALUES (8, 'gghgh', '2018-08-19 01:33:37.096065+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (9, 'dsf', '2018-08-19 01:34:39.509614+04', 1, 1);
INSERT INTO "chat_chatmessage" VALUES (10, 'fcvsf', '2018-08-19 01:34:51.645632+04', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for chat_thread
-- ----------------------------
DROP TABLE IF EXISTS "chat_thread";
CREATE TABLE "chat_thread" (
  "id" int4 NOT NULL DEFAULT nextval('chat_thread_id_seq'::regclass),
  "updated" timestamptz(6) NOT NULL,
  "timestamp" timestamptz(6) NOT NULL,
  "first_id" int4 NOT NULL,
  "second_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of chat_thread
-- ----------------------------
BEGIN;
INSERT INTO "chat_thread" VALUES (1, '2018-08-18 21:33:41.455238+04', '2018-08-18 21:33:41.455238+04', 1, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" (
  "id" int4 NOT NULL DEFAULT nextval('django_admin_log_id_seq'::regclass),
  "action_time" timestamptz(6) NOT NULL,
  "object_id" text COLLATE "pg_catalog"."default",
  "object_repr" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "action_flag" int2 NOT NULL,
  "change_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "content_type_id" int4,
  "user_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO "django_admin_log" VALUES (1, '2018-08-18 04:26:06.34998+04', '2', 'kenan@gmail.com', 1, '[{"added": {}}]', 9, 1);
INSERT INTO "django_admin_log" VALUES (2, '2018-08-18 04:26:10.50298+04', '2', 'kenan@gmail.com', 2, '[]', 9, 1);
INSERT INTO "django_admin_log" VALUES (3, '2018-08-18 04:27:04.772727+04', '1', 'Photo object (1)', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "django_admin_log" VALUES (4, '2018-08-18 04:29:55.632969+04', '1', 'Sharing object (1)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "django_admin_log" VALUES (5, '2018-08-18 04:37:46.965249+04', '2', 'Photo object (2)', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "django_admin_log" VALUES (6, '2018-08-18 04:38:13.749733+04', '3', 'Photo object (3)', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "django_admin_log" VALUES (7, '2018-08-18 04:38:28.555643+04', '2', 'Sharing object (2)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "django_admin_log" VALUES (8, '2018-08-18 08:36:34.118486+04', '4', 'Photo object (4)', 1, '[{"added": {}}]', 10, 1);
INSERT INTO "django_admin_log" VALUES (9, '2018-08-18 08:36:55.78231+04', '3', 'Sharing object (3)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO "django_admin_log" VALUES (10, '2018-08-19 02:29:14.91907+04', '1', 'Comment object (1)', 1, '[{"added": {}}]', 14, 2);
INSERT INTO "django_admin_log" VALUES (11, '2018-08-19 22:10:12.423428+04', '4', 'PhotoSharing object (4)', 1, '[{"added": {}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (12, '2018-08-19 23:36:55.478381+04', '5', 'PhotoSharing object (5)', 1, '[{"added": {}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (13, '2018-08-19 23:59:51.089562+04', '5', 'PhotoSharing object (5)', 2, '[{"changed": {"fields": ["comment"]}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (14, '2018-08-20 00:00:01.767477+04', '5', 'PhotoSharing object (5)', 2, '[{"changed": {"fields": ["comment"]}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (15, '2018-08-20 00:00:08.345433+04', '1', 'PhotoSharing object (1)', 2, '[{"changed": {"fields": ["comment"]}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (16, '2018-08-20 00:02:48.036631+04', '1', 'PhotoSharing object (1)', 2, '[]', 11, 2);
INSERT INTO "django_admin_log" VALUES (17, '2018-08-20 00:06:09.034082+04', '4', 'PhotoSharing object (4)', 3, '', 11, 2);
INSERT INTO "django_admin_log" VALUES (18, '2018-08-20 00:10:40.314109+04', '1', 'PhotoSharing object (1)', 2, '[{"changed": {"fields": ["comment"]}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (19, '2018-08-20 00:12:53.585876+04', '1', 'PhotoSharing object (1)', 2, '[{"changed": {"fields": ["comment"]}}]', 11, 2);
INSERT INTO "django_admin_log" VALUES (20, '2018-08-20 00:21:40.274765+04', '8', 'Photo object (8)', 1, '[{"added": {}}]', 10, 2);
INSERT INTO "django_admin_log" VALUES (21, '2018-08-20 00:22:30.681339+04', '8', 'Photo object (8)', 3, '', 10, 2);
INSERT INTO "django_admin_log" VALUES (22, '2018-08-20 00:22:38.962027+04', '9', 'Photo object (9)', 1, '[{"added": {}}]', 10, 2);
INSERT INTO "django_admin_log" VALUES (23, '2018-08-20 05:33:56.314106+04', '3', 'seyidov@gmail.com', 3, '', 9, 1);
INSERT INTO "django_admin_log" VALUES (24, '2018-08-20 05:33:56.330101+04', '4', 'seyidov1@gmail.com', 3, '', 9, 1);
INSERT INTO "django_admin_log" VALUES (25, '2018-08-20 06:26:35.68195+04', '12', 'Photo object (12)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (26, '2018-08-20 06:26:35.685933+04', '11', 'Photo object (11)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (27, '2018-08-20 06:26:35.689931+04', '10', 'Photo object (10)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (28, '2018-08-20 06:26:59.494711+04', '8', 'PhotoSharing object (8)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (29, '2018-08-20 06:27:04.016159+04', '9', 'PhotoSharing object (9)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (30, '2018-08-20 06:27:08.265349+04', '7', 'PhotoSharing object (7)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (31, '2018-08-20 06:27:20.040701+04', '12', 'Photo object (12)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (32, '2018-08-20 06:27:25.40189+04', '11', 'Photo object (11)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (33, '2018-08-20 06:27:25.42988+04', '10', 'Photo object (10)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (34, '2018-08-20 07:40:11.162533+04', '1', 'PhotoSharing object (1)', 2, '[{"changed": {"fields": ["users"]}}]', 11, 1);
INSERT INTO "django_admin_log" VALUES (35, '2018-08-20 07:40:19.481085+04', '11', 'PhotoSharing object (11)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (36, '2018-08-20 07:40:19.485117+04', '10', 'PhotoSharing object (10)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (37, '2018-08-20 07:40:19.487263+04', '6', 'PhotoSharing object (6)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (38, '2018-08-20 07:40:19.489507+04', '5', 'PhotoSharing object (5)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (39, '2018-08-20 07:40:19.491599+04', '3', 'PhotoSharing object (3)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (40, '2018-08-20 07:40:19.493604+04', '2', 'PhotoSharing object (2)', 3, '', 11, 1);
INSERT INTO "django_admin_log" VALUES (41, '2018-08-20 07:40:33.819728+04', '33', 'Comment object (33)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (42, '2018-08-20 07:40:33.82371+04', '32', 'Comment object (32)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (43, '2018-08-20 07:40:33.825711+04', '31', 'Comment object (31)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (44, '2018-08-20 07:40:33.827725+04', '30', 'Comment object (30)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (45, '2018-08-20 07:40:33.830708+04', '29', 'Comment object (29)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (46, '2018-08-20 07:40:33.83272+04', '26', 'Comment object (26)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (47, '2018-08-20 07:40:33.834706+04', '23', 'Comment object (23)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (48, '2018-08-20 07:40:33.836708+04', '22', 'Comment object (22)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (49, '2018-08-20 07:40:33.838722+04', '21', 'Comment object (21)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (50, '2018-08-20 07:40:33.840704+04', '20', 'Comment object (20)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (51, '2018-08-20 07:40:33.842707+04', '19', 'Comment object (19)', 3, '', 14, 1);
INSERT INTO "django_admin_log" VALUES (52, '2018-08-20 07:40:49.233485+04', '14', 'Photo object (14)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (53, '2018-08-20 07:40:49.238488+04', '13', 'Photo object (13)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (54, '2018-08-20 07:40:49.240493+04', '9', 'Photo object (9)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (55, '2018-08-20 07:40:49.242493+04', '4', 'Photo object (4)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (56, '2018-08-20 07:40:49.244493+04', '3', 'Photo object (3)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (57, '2018-08-20 07:40:49.246492+04', '2', 'Photo object (2)', 3, '', 10, 1);
INSERT INTO "django_admin_log" VALUES (58, '2018-08-20 08:34:14.644069+04', '17', 'PhotoSharing object (17)', 3, '', 11, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" (
  "id" int4 NOT NULL DEFAULT nextval('django_content_type_id_seq'::regclass),
  "app_label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "model" varchar(100) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO "django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "django_content_type" VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES (5, 'sessions', 'session');
INSERT INTO "django_content_type" VALUES (6, 'easy_thumbnails', 'source');
INSERT INTO "django_content_type" VALUES (7, 'easy_thumbnails', 'thumbnail');
INSERT INTO "django_content_type" VALUES (8, 'easy_thumbnails', 'thumbnaildimensions');
INSERT INTO "django_content_type" VALUES (9, 'users', 'users');
INSERT INTO "django_content_type" VALUES (10, 'photo', 'photo');
INSERT INTO "django_content_type" VALUES (12, 'chat', 'thread');
INSERT INTO "django_content_type" VALUES (13, 'chat', 'chatmessage');
INSERT INTO "django_content_type" VALUES (11, 'photo', 'photosharing');
INSERT INTO "django_content_type" VALUES (14, 'photo', 'comment');
INSERT INTO "django_content_type" VALUES (15, 'photo', 'commentsharing');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" (
  "id" int4 NOT NULL DEFAULT nextval('django_migrations_id_seq'::regclass),
  "app" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "applied" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO "django_migrations" VALUES (1, 'users', '0001_initial', '2018-08-18 03:36:05.966421+04');
INSERT INTO "django_migrations" VALUES (2, 'contenttypes', '0001_initial', '2018-08-18 03:36:06.15158+04');
INSERT INTO "django_migrations" VALUES (3, 'admin', '0001_initial', '2018-08-18 03:36:06.412945+04');
INSERT INTO "django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2018-08-18 03:36:06.437936+04');
INSERT INTO "django_migrations" VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2018-08-18 03:36:06.453931+04');
INSERT INTO "django_migrations" VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2018-08-18 03:36:06.480818+04');
INSERT INTO "django_migrations" VALUES (7, 'auth', '0001_initial', '2018-08-18 03:36:07.176305+04');
INSERT INTO "django_migrations" VALUES (8, 'auth', '0002_alter_permission_name_max_length', '2018-08-18 03:36:07.205908+04');
INSERT INTO "django_migrations" VALUES (9, 'auth', '0003_alter_user_email_max_length', '2018-08-18 03:36:07.227546+04');
INSERT INTO "django_migrations" VALUES (10, 'auth', '0004_alter_user_username_opts', '2018-08-18 03:36:07.249484+04');
INSERT INTO "django_migrations" VALUES (11, 'auth', '0005_alter_user_last_login_null', '2018-08-18 03:36:07.272469+04');
INSERT INTO "django_migrations" VALUES (12, 'auth', '0006_require_contenttypes_0002', '2018-08-18 03:36:07.278468+04');
INSERT INTO "django_migrations" VALUES (13, 'auth', '0007_alter_validators_add_error_messages', '2018-08-18 03:36:07.302645+04');
INSERT INTO "django_migrations" VALUES (14, 'auth', '0008_alter_user_username_max_length', '2018-08-18 03:36:07.327616+04');
INSERT INTO "django_migrations" VALUES (15, 'auth', '0009_alter_user_last_name_max_length', '2018-08-18 03:36:07.352018+04');
INSERT INTO "django_migrations" VALUES (16, 'easy_thumbnails', '0001_initial', '2018-08-18 03:36:08.111082+04');
INSERT INTO "django_migrations" VALUES (17, 'easy_thumbnails', '0002_thumbnaildimensions', '2018-08-18 03:36:08.23495+04');
INSERT INTO "django_migrations" VALUES (18, 'photo', '0001_initial', '2018-08-18 03:36:08.346382+04');
INSERT INTO "django_migrations" VALUES (19, 'photo', '0002_sharing', '2018-08-18 03:36:08.633633+04');
INSERT INTO "django_migrations" VALUES (20, 'sessions', '0001_initial', '2018-08-18 03:36:08.807082+04');
INSERT INTO "django_migrations" VALUES (21, 'users', '0002_users_user_permissions', '2018-08-18 03:36:09.081853+04');
INSERT INTO "django_migrations" VALUES (22, 'users', '0003_auto_20180817_0138', '2018-08-18 03:36:09.660431+04');
INSERT INTO "django_migrations" VALUES (23, 'chat', '0001_initial', '2018-08-18 21:06:16.553463+04');
INSERT INTO "django_migrations" VALUES (24, 'photo', '0003_auto_20180819_0146', '2018-08-19 01:46:38.071904+04');
INSERT INTO "django_migrations" VALUES (25, 'photo', '0004_auto_20180819_2126', '2018-08-19 21:26:56.735808+04');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" (
  "session_key" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "session_data" text COLLATE "pg_catalog"."default" NOT NULL,
  "expire_date" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO "django_session" VALUES ('rckl6ztmzbvpz8o653uqyyw2lkjz69zj', 'MmUyM2VjOWM5NzdiZWQ5MmE5NDdjNDFkZmFjNDQ0ODFmZDJmMzAwOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjg4MDkxZjkxODgyMzM3NDk2MWRhYmJkNmZjNDBlNzI2NDJmNWFkIn0=', '2018-09-03 08:35:13.697164+04');
INSERT INTO "django_session" VALUES ('07fb6rbfzgkt9f6t0lub4jcmhhcxrvth', 'YTI2ZDllMjdmYzczNzYxMmVkYzQyZGI1M2Y5MjFhYzhjMTJjMWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgzNTJmNjE2M2Y5MjlmNjkwYmViYTU1M2I4MDNjZDZkNzM3NTIyIn0=', '2018-09-01 22:48:44.053112+04');
INSERT INTO "django_session" VALUES ('h1h9qocw7reb99z1uvoyve16qup9h5zd', 'YTI2ZDllMjdmYzczNzYxMmVkYzQyZGI1M2Y5MjFhYzhjMTJjMWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgzNTJmNjE2M2Y5MjlmNjkwYmViYTU1M2I4MDNjZDZkNzM3NTIyIn0=', '2018-09-02 05:44:04.288022+04');
INSERT INTO "django_session" VALUES ('y05pb694owhmsxtp50jadr9kzwiky6bq', 'YTI2ZDllMjdmYzczNzYxMmVkYzQyZGI1M2Y5MjFhYzhjMTJjMWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgzNTJmNjE2M2Y5MjlmNjkwYmViYTU1M2I4MDNjZDZkNzM3NTIyIn0=', '2018-09-02 20:21:32.718649+04');
INSERT INTO "django_session" VALUES ('mufrmtt36rl4jgdplsfjdvrgct33bt8l', 'YTI2ZDllMjdmYzczNzYxMmVkYzQyZGI1M2Y5MjFhYzhjMTJjMWE0MTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4ZjgzNTJmNjE2M2Y5MjlmNjkwYmViYTU1M2I4MDNjZDZkNzM3NTIyIn0=', '2018-09-02 22:09:55.878923+04');
INSERT INTO "django_session" VALUES ('kxrjyw7jyzop5jt77vyrouyr7gn235y0', 'NjdiYzczMjY5Y2ZhNjJlN2FkMzBhMDlmMDRhMWNjNTQ3ZDg0NWUyNjp7fQ==', '2018-09-03 05:30:52.285727+04');
INSERT INTO "django_session" VALUES ('3egkjwtkyn7ezepwt5mzwehs0ghipvth', 'NjdiYzczMjY5Y2ZhNjJlN2FkMzBhMDlmMDRhMWNjNTQ3ZDg0NWUyNjp7fQ==', '2018-09-03 05:32:40.028872+04');
COMMIT;

-- ----------------------------
-- Table structure for easy_thumbnails_source
-- ----------------------------
DROP TABLE IF EXISTS "easy_thumbnails_source";
CREATE TABLE "easy_thumbnails_source" (
  "id" int4 NOT NULL DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass),
  "storage_hash" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "modified" timestamptz(6) NOT NULL
)
;

-- ----------------------------
-- Records of easy_thumbnails_source
-- ----------------------------
BEGIN;
INSERT INTO "easy_thumbnails_source" VALUES (1, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/Webp.net-compress-image_nA1Ch6Z.jpg', '2018-08-18 04:36:50.919511+04');
INSERT INTO "easy_thumbnails_source" VALUES (2, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/logo.png', '2018-08-18 04:39:06.879237+04');
INSERT INTO "easy_thumbnails_source" VALUES (3, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/folder.png', '2018-08-18 04:39:06.925251+04');
INSERT INTO "easy_thumbnails_source" VALUES (4, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/company.png', '2018-08-18 08:36:58.442266+04');
INSERT INTO "easy_thumbnails_source" VALUES (8, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/adnsu-logo-new_voCFIkc.png', '2018-08-20 00:21:40.264766+04');
INSERT INTO "easy_thumbnails_source" VALUES (9, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/adnsu-logo-new_Jb3nmpa.png', '2018-08-20 05:55:14.532284+04');
INSERT INTO "easy_thumbnails_source" VALUES (10, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/Untitled.png', '2018-08-20 06:23:47.562141+04');
INSERT INTO "easy_thumbnails_source" VALUES (11, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/Untitled_SGsXhfp.png', '2018-08-20 06:26:00.237772+04');
INSERT INTO "easy_thumbnails_source" VALUES (12, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/Untitled_lNHbUeC.png', '2018-08-20 06:26:00.273759+04');
INSERT INTO "easy_thumbnails_source" VALUES (13, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/Untitled_kLylomP.png', '2018-08-20 06:27:41.722867+04');
INSERT INTO "easy_thumbnails_source" VALUES (14, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/download.png', '2018-08-20 06:28:55.112484+04');
INSERT INTO "easy_thumbnails_source" VALUES (15, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/adnsu-logo-new_Fj9f8O9.png', '2018-08-20 08:01:20.990213+04');
INSERT INTO "easy_thumbnails_source" VALUES (16, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/company_6SpdWuY.png', '2018-08-20 08:06:11.741808+04');
INSERT INTO "easy_thumbnails_source" VALUES (17, 'f9bde26a1556cd667f742bd34ec7c55e', 'users/image/download_cL8BBF6.png', '2018-08-20 08:18:03.895008+04');
COMMIT;

-- ----------------------------
-- Table structure for easy_thumbnails_thumbnail
-- ----------------------------
DROP TABLE IF EXISTS "easy_thumbnails_thumbnail";
CREATE TABLE "easy_thumbnails_thumbnail" (
  "id" int4 NOT NULL DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass),
  "storage_hash" varchar(40) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "modified" timestamptz(6) NOT NULL,
  "source_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of easy_thumbnails_thumbnail
-- ----------------------------
BEGIN;
INSERT INTO "easy_thumbnails_thumbnail" VALUES (1, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\Webp.net-compress-image_nA1Ch6Z.jpg.200x200_q85_crop.jpg', '2018-08-18 04:36:50.924515+04', 1);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (2, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\logo.png.200x200_q85_crop.jpg', '2018-08-18 04:39:06.892234+04', 2);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (3, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\folder.png.200x200_q85_crop.png', '2018-08-18 04:39:06.931222+04', 3);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (4, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\company.png.200x200_q85_crop.png', '2018-08-18 08:36:58.447264+04', 4);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (5, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\adnsu-logo-new_Jb3nmpa.png.200x200_q85_crop.png', '2018-08-20 05:55:14.85626+04', 9);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (6, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\Untitled.png.200x200_q85_crop.jpg', '2018-08-20 06:23:47.570166+04', 10);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (7, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\Untitled_SGsXhfp.png.200x200_q85_crop.jpg', '2018-08-20 06:26:00.241769+04', 11);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (8, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\Untitled_lNHbUeC.png.200x200_q85_crop.jpg', '2018-08-20 06:26:00.277774+04', 12);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (9, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\Untitled_kLylomP.png.200x200_q85_crop.jpg', '2018-08-20 06:27:41.730865+04', 13);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (10, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\download.png.200x200_q85_crop.png', '2018-08-20 06:28:55.120462+04', 14);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (11, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\adnsu-logo-new_Fj9f8O9.png.200x200_q85_crop.png', '2018-08-20 08:01:20.995793+04', 15);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (12, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\company_6SpdWuY.png.200x200_q85_crop.png', '2018-08-20 08:06:11.746791+04', 16);
INSERT INTO "easy_thumbnails_thumbnail" VALUES (13, 'd26becbf46ac48eda79c7a39a13a02dd', 'users/image\download_cL8BBF6.png.200x200_q85_crop.png', '2018-08-20 08:18:03.901075+04', 17);
COMMIT;

-- ----------------------------
-- Table structure for easy_thumbnails_thumbnaildimensions
-- ----------------------------
DROP TABLE IF EXISTS "easy_thumbnails_thumbnaildimensions";
CREATE TABLE "easy_thumbnails_thumbnaildimensions" (
  "id" int4 NOT NULL DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass),
  "thumbnail_id" int4 NOT NULL,
  "width" int4,
  "height" int4
)
;

-- ----------------------------
-- Table structure for photo_comment
-- ----------------------------
DROP TABLE IF EXISTS "photo_comment";
CREATE TABLE "photo_comment" (
  "id" int4 NOT NULL DEFAULT nextval('photo_comment_id_seq'::regclass),
  "comment" text COLLATE "pg_catalog"."default" NOT NULL,
  "photo_id" int4 NOT NULL,
  "users_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of photo_comment
-- ----------------------------
BEGIN;
INSERT INTO "photo_comment" VALUES (1, 'dfd', 16, 1);
COMMIT;

-- ----------------------------
-- Table structure for photo_photo
-- ----------------------------
DROP TABLE IF EXISTS "photo_photo";
CREATE TABLE "photo_photo" (
  "id" int4 NOT NULL DEFAULT nextval('photo_photo_id_seq'::regclass),
  "image" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "users_id" int4 NOT NULL
)
;

-- ----------------------------
-- Records of photo_photo
-- ----------------------------
BEGIN;
INSERT INTO "photo_photo" VALUES (1, 'users/image/Webp.net-compress-image_nA1Ch6Z.jpg', 1);
INSERT INTO "photo_photo" VALUES (15, 'users/image/adnsu-logo-new_Fj9f8O9.png', 1);
INSERT INTO "photo_photo" VALUES (16, 'users/image/company_6SpdWuY.png', 2);
INSERT INTO "photo_photo" VALUES (17, 'users/image/download_cL8BBF6.png', 2);
COMMIT;

-- ----------------------------
-- Table structure for photo_photosharing
-- ----------------------------
DROP TABLE IF EXISTS "photo_photosharing";
CREATE TABLE "photo_photosharing" (
  "id" int4 NOT NULL DEFAULT nextval('photo_sharing_id_seq'::regclass),
  "photo_id" int4 NOT NULL,
  "users_id" int4 NOT NULL,
  "comment" bool NOT NULL
)
;

-- ----------------------------
-- Records of photo_photosharing
-- ----------------------------
BEGIN;
INSERT INTO "photo_photosharing" VALUES (1, 1, 1, 't');
INSERT INTO "photo_photosharing" VALUES (12, 1, 2, 't');
INSERT INTO "photo_photosharing" VALUES (13, 15, 1, 't');
INSERT INTO "photo_photosharing" VALUES (14, 16, 2, 't');
INSERT INTO "photo_photosharing" VALUES (15, 16, 1, 't');
INSERT INTO "photo_photosharing" VALUES (16, 17, 2, 't');
INSERT INTO "photo_photosharing" VALUES (18, 17, 1, 'f');
COMMIT;

-- ----------------------------
-- Table structure for users_users
-- ----------------------------
DROP TABLE IF EXISTS "users_users";
CREATE TABLE "users_users" (
  "id" int4 NOT NULL DEFAULT nextval('users_users_id_seq'::regclass),
  "password" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "last_login" timestamptz(6),
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool NOT NULL,
  "is_admin" bool NOT NULL,
  "is_superuser" bool NOT NULL
)
;

-- ----------------------------
-- Records of users_users
-- ----------------------------
BEGIN;
INSERT INTO "users_users" VALUES (5, 'pbkdf2_sha256$120000$e9wlfp7JEwrK$JVMWyKWZ8z9QkG03mNGcqQ2NO1R9jjsQRs3iBaJG+zU=', '2018-08-20 05:34:18.894791+04', 'seyidov@gmail.com', 't', 'f', 'f');
INSERT INTO "users_users" VALUES (2, 'pbkdf2_sha256$120000$pBP4CJwVgeHS$GmwCWrmYmmDQhSkGn38BUQjRvfxeOBT0graa9GSy4nY=', '2018-08-20 08:01:44.881775+04', 'kenan@gmail.com', 't', 't', 'f');
INSERT INTO "users_users" VALUES (1, 'pbkdf2_sha256$120000$9ybWbbJKJNml$uf924FfHFc0KCSYUyTVWeZsqq/wfEQWYgTRNJ1s6mz8=', '2018-08-20 08:35:13.694164+04', 'seyidov.kenan579@gmail.com', 't', 't', 't');
COMMIT;

-- ----------------------------
-- Table structure for users_users_groups
-- ----------------------------
DROP TABLE IF EXISTS "users_users_groups";
CREATE TABLE "users_users_groups" (
  "id" int4 NOT NULL DEFAULT nextval('users_users_groups_id_seq'::regclass),
  "users_id" int4 NOT NULL,
  "group_id" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for users_users_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "users_users_user_permissions";
CREATE TABLE "users_users_user_permissions" (
  "id" int4 NOT NULL DEFAULT nextval('users_users_user_permissions_id_seq'::regclass),
  "users_id" int4 NOT NULL,
  "permission_id" int4 NOT NULL
)
;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "auth_group_id_seq"
OWNED BY "auth_group"."id";
SELECT setval('"auth_group_id_seq"', 2, false);
ALTER SEQUENCE "auth_group_permissions_id_seq"
OWNED BY "auth_group_permissions"."id";
SELECT setval('"auth_group_permissions_id_seq"', 2, false);
ALTER SEQUENCE "auth_permission_id_seq"
OWNED BY "auth_permission"."id";
SELECT setval('"auth_permission_id_seq"', 65, true);
ALTER SEQUENCE "chat_chatmessage_id_seq"
OWNED BY "chat_chatmessage"."id";
SELECT setval('"chat_chatmessage_id_seq"', 11, true);
ALTER SEQUENCE "chat_thread_id_seq"
OWNED BY "chat_thread"."id";
SELECT setval('"chat_thread_id_seq"', 2, true);
ALTER SEQUENCE "django_admin_log_id_seq"
OWNED BY "django_admin_log"."id";
SELECT setval('"django_admin_log_id_seq"', 59, true);
ALTER SEQUENCE "django_content_type_id_seq"
OWNED BY "django_content_type"."id";
SELECT setval('"django_content_type_id_seq"', 16, true);
ALTER SEQUENCE "django_migrations_id_seq"
OWNED BY "django_migrations"."id";
SELECT setval('"django_migrations_id_seq"', 26, true);
ALTER SEQUENCE "easy_thumbnails_source_id_seq"
OWNED BY "easy_thumbnails_source"."id";
SELECT setval('"easy_thumbnails_source_id_seq"', 18, true);
ALTER SEQUENCE "easy_thumbnails_thumbnail_id_seq"
OWNED BY "easy_thumbnails_thumbnail"."id";
SELECT setval('"easy_thumbnails_thumbnail_id_seq"', 14, true);
ALTER SEQUENCE "easy_thumbnails_thumbnaildimensions_id_seq"
OWNED BY "easy_thumbnails_thumbnaildimensions"."id";
SELECT setval('"easy_thumbnails_thumbnaildimensions_id_seq"', 2, false);
ALTER SEQUENCE "photo_comment_id_seq"
OWNED BY "photo_comment"."id";
SELECT setval('"photo_comment_id_seq"', 43, true);
ALTER SEQUENCE "photo_photo_id_seq"
OWNED BY "photo_photo"."id";
SELECT setval('"photo_photo_id_seq"', 18, true);
ALTER SEQUENCE "photo_sharing_id_seq"
OWNED BY "photo_photosharing"."id";
SELECT setval('"photo_sharing_id_seq"', 19, true);
ALTER SEQUENCE "users_users_groups_id_seq"
OWNED BY "users_users_groups"."id";
SELECT setval('"users_users_groups_id_seq"', 2, false);
ALTER SEQUENCE "users_users_id_seq"
OWNED BY "users_users"."id";
SELECT setval('"users_users_id_seq"', 6, true);
ALTER SEQUENCE "users_users_user_permissions_id_seq"
OWNED BY "users_users_user_permissions"."id";
SELECT setval('"users_users_user_permissions_id_seq"', 2, false);

-- ----------------------------
-- Indexes structure for table auth_group
-- ----------------------------
CREATE INDEX "auth_group_name_a6ea08ec_like" ON "auth_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group
-- ----------------------------
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table auth_group
-- ----------------------------
ALTER TABLE "auth_group" ADD CONSTRAINT "auth_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" UNIQUE ("group_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table auth_permission
-- ----------------------------
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table auth_permission
-- ----------------------------
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_codename_01ab375a_uniq" UNIQUE ("content_type_id", "codename");

-- ----------------------------
-- Primary Key structure for table auth_permission
-- ----------------------------
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table chat_chatmessage
-- ----------------------------
CREATE INDEX "chat_chatmessage_thread_id_0986d8f2" ON "chat_chatmessage" USING btree (
  "thread_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "chat_chatmessage_user_id_fa615e65" ON "chat_chatmessage" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table chat_chatmessage
-- ----------------------------
ALTER TABLE "chat_chatmessage" ADD CONSTRAINT "chat_chatmessage_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table chat_thread
-- ----------------------------
CREATE INDEX "chat_thread_first_id_f059d541" ON "chat_thread" USING btree (
  "first_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "chat_thread_second_id_fb0dac48" ON "chat_thread" USING btree (
  "second_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table chat_thread
-- ----------------------------
ALTER TABLE "chat_thread" ADD CONSTRAINT "chat_thread_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" USING btree (
  "content_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" USING btree (
  "user_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table django_admin_log
-- ----------------------------
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_action_flag_check" CHECK ((action_flag >= 0));

-- ----------------------------
-- Primary Key structure for table django_admin_log
-- ----------------------------
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table django_content_type
-- ----------------------------
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_app_label_model_76bd3d3b_uniq" UNIQUE ("app_label", "model");

-- ----------------------------
-- Primary Key structure for table django_content_type
-- ----------------------------
ALTER TABLE "django_content_type" ADD CONSTRAINT "django_content_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table django_migrations
-- ----------------------------
ALTER TABLE "django_migrations" ADD CONSTRAINT "django_migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" USING btree (
  "expire_date" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);
CREATE INDEX "django_session_session_key_c0390e0f_like" ON "django_session" USING btree (
  "session_key" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table django_session
-- ----------------------------
ALTER TABLE "django_session" ADD CONSTRAINT "django_session_pkey" PRIMARY KEY ("session_key");

-- ----------------------------
-- Indexes structure for table easy_thumbnails_source
-- ----------------------------
CREATE INDEX "easy_thumbnails_source_name_5fe0edc6" ON "easy_thumbnails_source" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_source_name_5fe0edc6_like" ON "easy_thumbnails_source" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_source_storage_hash_946cbcc9" ON "easy_thumbnails_source" USING btree (
  "storage_hash" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_source_storage_hash_946cbcc9_like" ON "easy_thumbnails_source" USING btree (
  "storage_hash" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table easy_thumbnails_source
-- ----------------------------
ALTER TABLE "easy_thumbnails_source" ADD CONSTRAINT "easy_thumbnails_source_storage_hash_name_481ce32d_uniq" UNIQUE ("storage_hash", "name");

-- ----------------------------
-- Primary Key structure for table easy_thumbnails_source
-- ----------------------------
ALTER TABLE "easy_thumbnails_source" ADD CONSTRAINT "easy_thumbnails_source_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table easy_thumbnails_thumbnail
-- ----------------------------
CREATE INDEX "easy_thumbnails_thumbnail_name_b5882c31" ON "easy_thumbnails_thumbnail" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_thumbnail_name_b5882c31_like" ON "easy_thumbnails_thumbnail" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_thumbnail_source_id_5b57bc77" ON "easy_thumbnails_thumbnail" USING btree (
  "source_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_thumbnail_storage_hash_f1435f49" ON "easy_thumbnails_thumbnail" USING btree (
  "storage_hash" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "easy_thumbnails_thumbnail_storage_hash_f1435f49_like" ON "easy_thumbnails_thumbnail" USING btree (
  "storage_hash" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table easy_thumbnails_thumbnail
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnail" ADD CONSTRAINT "easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq" UNIQUE ("storage_hash", "name", "source_id");

-- ----------------------------
-- Primary Key structure for table easy_thumbnails_thumbnail
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnail" ADD CONSTRAINT "easy_thumbnails_thumbnail_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table easy_thumbnails_thumbnaildimensions
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnaildimensions" ADD CONSTRAINT "easy_thumbnails_thumbnaildimensions_thumbnail_id_key" UNIQUE ("thumbnail_id");

-- ----------------------------
-- Checks structure for table easy_thumbnails_thumbnaildimensions
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnaildimensions" ADD CONSTRAINT "easy_thumbnails_thumbnaildimensions_width_check" CHECK ((width >= 0));
ALTER TABLE "easy_thumbnails_thumbnaildimensions" ADD CONSTRAINT "easy_thumbnails_thumbnaildimensions_height_check" CHECK ((height >= 0));

-- ----------------------------
-- Primary Key structure for table easy_thumbnails_thumbnaildimensions
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnaildimensions" ADD CONSTRAINT "easy_thumbnails_thumbnaildimensions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table photo_comment
-- ----------------------------
CREATE INDEX "photo_comment_photo_id_327c4d64" ON "photo_comment" USING btree (
  "photo_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "photo_comment_users_id_5715b614" ON "photo_comment" USING btree (
  "users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table photo_comment
-- ----------------------------
ALTER TABLE "photo_comment" ADD CONSTRAINT "photo_comment_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table photo_photo
-- ----------------------------
CREATE INDEX "photo_photo_users_id_10333658" ON "photo_photo" USING btree (
  "users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table photo_photo
-- ----------------------------
ALTER TABLE "photo_photo" ADD CONSTRAINT "photo_photo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table photo_photosharing
-- ----------------------------
CREATE INDEX "photo_sharing_photo_id_0c109c39" ON "photo_photosharing" USING btree (
  "photo_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "photo_sharing_users_id_fc6e5eca" ON "photo_photosharing" USING btree (
  "users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table photo_photosharing
-- ----------------------------
ALTER TABLE "photo_photosharing" ADD CONSTRAINT "photo_sharing_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_users
-- ----------------------------
CREATE INDEX "users_users_email_3f54f4c5_like" ON "users_users" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."varchar_pattern_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_users
-- ----------------------------
ALTER TABLE "users_users" ADD CONSTRAINT "users_users_email_key" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users_users
-- ----------------------------
ALTER TABLE "users_users" ADD CONSTRAINT "users_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_users_groups
-- ----------------------------
CREATE INDEX "users_users_groups_group_id_3e15ff0f" ON "users_users_groups" USING btree (
  "group_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_users_groups_users_id_5572cf36" ON "users_users_groups" USING btree (
  "users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_users_groups
-- ----------------------------
ALTER TABLE "users_users_groups" ADD CONSTRAINT "users_users_groups_users_id_group_id_02603a5e_uniq" UNIQUE ("users_id", "group_id");

-- ----------------------------
-- Primary Key structure for table users_users_groups
-- ----------------------------
ALTER TABLE "users_users_groups" ADD CONSTRAINT "users_users_groups_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users_users_user_permissions
-- ----------------------------
CREATE INDEX "users_users_user_permissions_permission_id_9a117d64" ON "users_users_user_permissions" USING btree (
  "permission_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "users_users_user_permissions_users_id_04010ba6" ON "users_users_user_permissions" USING btree (
  "users_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users_users_user_permissions
-- ----------------------------
ALTER TABLE "users_users_user_permissions" ADD CONSTRAINT "users_users_user_permiss_users_id_permission_id_119659d5_uniq" UNIQUE ("users_id", "permission_id");

-- ----------------------------
-- Primary Key structure for table users_users_user_permissions
-- ----------------------------
ALTER TABLE "users_users_user_permissions" ADD CONSTRAINT "users_users_user_permissions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table auth_group_permissions
-- ----------------------------
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissio_permission_id_84c5c92e_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "auth_group_permissions" ADD CONSTRAINT "auth_group_permissions_group_id_b120cbf9_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table auth_permission
-- ----------------------------
ALTER TABLE "auth_permission" ADD CONSTRAINT "auth_permission_content_type_id_2f476e4b_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table chat_chatmessage
-- ----------------------------
ALTER TABLE "chat_chatmessage" ADD CONSTRAINT "chat_chatmessage_thread_id_0986d8f2_fk_chat_thread_id" FOREIGN KEY ("thread_id") REFERENCES "chat_thread" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "chat_chatmessage" ADD CONSTRAINT "chat_chatmessage_user_id_fa615e65_fk_users_users_id" FOREIGN KEY ("user_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table chat_thread
-- ----------------------------
ALTER TABLE "chat_thread" ADD CONSTRAINT "chat_thread_first_id_f059d541_fk_users_users_id" FOREIGN KEY ("first_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "chat_thread" ADD CONSTRAINT "chat_thread_second_id_fb0dac48_fk_users_users_id" FOREIGN KEY ("second_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table django_admin_log
-- ----------------------------
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_content_type_id_c4bce8eb_fk_django_co" FOREIGN KEY ("content_type_id") REFERENCES "django_content_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "django_admin_log" ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_users_users_id" FOREIGN KEY ("user_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table easy_thumbnails_thumbnail
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnail" ADD CONSTRAINT "easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum" FOREIGN KEY ("source_id") REFERENCES "easy_thumbnails_source" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table easy_thumbnails_thumbnaildimensions
-- ----------------------------
ALTER TABLE "easy_thumbnails_thumbnaildimensions" ADD CONSTRAINT "easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum" FOREIGN KEY ("thumbnail_id") REFERENCES "easy_thumbnails_thumbnail" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table photo_comment
-- ----------------------------
ALTER TABLE "photo_comment" ADD CONSTRAINT "photo_comment_photo_id_327c4d64_fk_photo_photo_id" FOREIGN KEY ("photo_id") REFERENCES "photo_photo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "photo_comment" ADD CONSTRAINT "photo_comment_users_id_5715b614_fk_users_users_id" FOREIGN KEY ("users_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table photo_photo
-- ----------------------------
ALTER TABLE "photo_photo" ADD CONSTRAINT "photo_photo_users_id_10333658_fk_users_users_id" FOREIGN KEY ("users_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table photo_photosharing
-- ----------------------------
ALTER TABLE "photo_photosharing" ADD CONSTRAINT "photo_sharing_photo_id_0c109c39_fk_photo_photo_id" FOREIGN KEY ("photo_id") REFERENCES "photo_photo" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "photo_photosharing" ADD CONSTRAINT "photo_sharing_users_id_fc6e5eca_fk_users_users_id" FOREIGN KEY ("users_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_users_groups
-- ----------------------------
ALTER TABLE "users_users_groups" ADD CONSTRAINT "users_users_groups_group_id_3e15ff0f_fk_auth_group_id" FOREIGN KEY ("group_id") REFERENCES "auth_group" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "users_users_groups" ADD CONSTRAINT "users_users_groups_users_id_5572cf36_fk_users_users_id" FOREIGN KEY ("users_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;

-- ----------------------------
-- Foreign Keys structure for table users_users_user_permissions
-- ----------------------------
ALTER TABLE "users_users_user_permissions" ADD CONSTRAINT "users_users_user_per_permission_id_9a117d64_fk_auth_perm" FOREIGN KEY ("permission_id") REFERENCES "auth_permission" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
ALTER TABLE "users_users_user_permissions" ADD CONSTRAINT "users_users_user_per_users_id_04010ba6_fk_users_use" FOREIGN KEY ("users_id") REFERENCES "users_users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION DEFERRABLE INITIALLY DEFERRED;
