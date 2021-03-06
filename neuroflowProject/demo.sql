PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations VALUES(1,'contenttypes','0001_initial','2020-02-11 00:31:25.067218');
INSERT INTO django_migrations VALUES(2,'auth','0001_initial','2020-02-11 00:31:25.113763');
INSERT INTO django_migrations VALUES(3,'admin','0001_initial','2020-02-11 00:31:25.140789');
INSERT INTO django_migrations VALUES(4,'admin','0002_logentry_remove_auto_add','2020-02-11 00:31:25.160308');
INSERT INTO django_migrations VALUES(5,'admin','0003_logentry_add_action_flag_choices','2020-02-11 00:31:25.179826');
INSERT INTO django_migrations VALUES(6,'contenttypes','0002_remove_content_type_name','2020-02-11 00:31:25.207353');
INSERT INTO django_migrations VALUES(7,'auth','0002_alter_permission_name_max_length','2020-02-11 00:31:25.233378');
INSERT INTO django_migrations VALUES(8,'auth','0003_alter_user_email_max_length','2020-02-11 00:31:25.260404');
INSERT INTO django_migrations VALUES(9,'auth','0004_alter_user_username_opts','2020-02-11 00:31:25.291434');
INSERT INTO django_migrations VALUES(10,'auth','0005_alter_user_last_login_null','2020-02-11 00:31:25.313955');
INSERT INTO django_migrations VALUES(11,'auth','0006_require_contenttypes_0002','2020-02-11 00:31:25.328970');
INSERT INTO django_migrations VALUES(12,'auth','0007_alter_validators_add_error_messages','2020-02-11 00:31:25.348989');
INSERT INTO django_migrations VALUES(13,'auth','0008_alter_user_username_max_length','2020-02-11 00:31:25.379018');
INSERT INTO django_migrations VALUES(14,'auth','0009_alter_user_last_name_max_length','2020-02-11 00:31:25.407045');
INSERT INTO django_migrations VALUES(15,'auth','0010_alter_group_name_max_length','2020-02-11 00:31:25.437575');
INSERT INTO django_migrations VALUES(16,'auth','0011_update_proxy_permissions','2020-02-11 00:31:25.456092');
INSERT INTO django_migrations VALUES(17,'sessions','0001_initial','2020-02-11 00:31:25.469610');
INSERT INTO django_migrations VALUES(18,'moodapp','0001_initial','2020-02-11 02:57:50.419339');
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0));
INSERT INTO django_admin_log VALUES(1,'2020-02-11 03:04:15.043864','1','john 5 2020-02-01','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(2,'2020-02-11 03:06:14.213343','2','john 2020-02-02: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(3,'2020-02-11 03:06:23.511776','3','john 2020-02-03: 4','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(4,'2020-02-11 03:06:35.035846','4','john 2020-02-08: 7','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(5,'2020-02-11 03:06:44.530968','5','john 2020-02-08: 8','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(6,'2020-02-11 03:06:53.150250','5','john 2020-02-09: 9','[{"changed": {"fields": ["Log date", "Mood rating"]}}]',7,1,2);
INSERT INTO django_admin_log VALUES(7,'2020-02-11 03:07:04.695347','6','john 2020-02-10: 10','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(8,'2020-02-11 03:07:20.887398','7','john 2020-02-03: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(9,'2020-02-11 17:20:55.214704','8','timmy 2020-02-09: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(10,'2020-02-11 17:21:19.126675','9','timmy 2020-02-08: 3','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(11,'2020-02-11 17:21:34.096054','10','timmy 2020-02-06: 7','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(12,'2020-02-11 17:21:42.326961','11','timmy 2020-02-05: 7','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(13,'2020-02-11 17:21:50.012343','12','timmy 2020-02-04: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(14,'2020-02-11 17:21:56.516592','13','timmy 2020-02-03: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(15,'2020-02-11 17:22:09.214790','14','timmy 2020-02-02: 4','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(16,'2020-02-11 17:22:19.447619','15','timmy 2020-02-01: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(17,'2020-02-11 22:08:26.019112','16','sarah 2020-02-10: 9','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(18,'2020-02-11 22:08:39.127704','17','sarah 2020-02-08: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(19,'2020-02-11 22:08:47.741980','18','sarah 2020-02-07: 4','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(20,'2020-02-11 22:09:03.845448','19','sarah 2020-02-06: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(21,'2020-02-11 22:09:16.338450','20','sarah 2020-02-05: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(22,'2020-02-11 22:09:25.218980','21','sarah 2020-02-04: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(23,'2020-02-11 22:09:33.367808','22','sarah 2020-02-03: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(24,'2020-02-11 22:09:40.323490','23','sarah 2020-02-02: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(25,'2020-02-11 22:09:46.974879','24','sarah 2020-02-01: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(26,'2020-02-11 22:10:00.225608','25','sarah 2020-01-31: 3','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(27,'2020-02-11 22:10:10.503482','26','sarah 2020-01-30: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(28,'2020-02-11 22:11:31.444234','20','sarah 2020-02-05: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(29,'2020-02-11 23:04:28.498964','5','jones','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(30,'2020-02-11 23:04:44.454291','27','jones 2020-02-07: 4','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(31,'2020-02-11 23:04:54.081540','28','jones 2020-02-06: 4','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(32,'2020-02-11 23:05:02.003149','29','jones 2020-02-05: 3','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(33,'2020-02-11 23:05:10.495306','30','jones 2020-02-04: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(34,'2020-02-12 00:50:01.494892','6','emily','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(35,'2020-02-12 00:50:35.534807','31','emily 2020-02-03: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(36,'2020-02-12 00:50:42.622616','32','emily 2020-02-04: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(37,'2020-02-12 00:50:53.614174','33','emily 2020-02-05: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(38,'2020-02-12 00:51:08.285268','34','emily 2020-02-06: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(39,'2020-02-12 00:51:15.662354','35','emily 2020-02-07: 7','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(40,'2020-02-12 00:57:51.149264','7','kate','[{"added": {}}]',4,1,1);
INSERT INTO django_admin_log VALUES(41,'2020-02-12 00:58:10.369728','36','kate 2020-02-11: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(42,'2020-02-12 00:58:21.979880','37','kate 2020-02-10: 5','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(43,'2020-02-12 00:58:32.449938','38','kate 2020-02-07: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(44,'2020-02-12 00:58:41.038189','39','kate 2020-02-06: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(45,'2020-02-12 00:58:48.868710','40','kate 2020-02-05: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(46,'2020-02-12 00:58:56.809338','41','kate 2020-02-04: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(47,'2020-02-12 00:59:30.739933','42','kate 2020-01-31: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(48,'2020-02-12 00:59:38.929800','43','kate 2020-01-30: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(49,'2020-02-12 00:59:46.942497','44','kate 2020-01-29: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(50,'2020-02-12 00:59:54.853096','45','kate 2020-01-28: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(51,'2020-02-12 03:53:31.439999','4','timmy','[{"changed": {"fields": ["password"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(52,'2020-02-12 03:53:41.097276','3','sarah','[{"changed": {"fields": ["password"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(53,'2020-02-12 03:54:00.590002','5','jones','[{"changed": {"fields": ["password"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(54,'2020-02-12 03:54:13.878767','2','john','[{"changed": {"fields": ["password"]}}]',4,1,2);
INSERT INTO django_admin_log VALUES(55,'2020-02-12 05:10:57.079459','46','kate 2020-02-12: 6','[{"added": {}}]',7,1,1);
INSERT INTO django_admin_log VALUES(56,'2020-02-12 05:36:38.725094','50','john 1992-11-11: 6','',7,1,3);
INSERT INTO django_admin_log VALUES(57,'2020-02-12 05:36:38.734102','49','john 1992-11-11: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(58,'2020-02-12 05:36:38.742110','48','john 1992-11-11: 6','',7,1,3);
INSERT INTO django_admin_log VALUES(59,'2020-02-12 05:36:38.751119','47','john 1992-11-11: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(60,'2020-02-12 06:02:19.381505','53','jones 2020-02-07: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(61,'2020-02-12 06:02:33.676237','54','jones 2020-02-08: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(62,'2020-02-12 06:02:42.857056','27','jones 2020-02-07: 4','',7,1,3);
INSERT INTO django_admin_log VALUES(63,'2020-02-12 06:10:12.511729','28','jones 2020-02-06: 4','',7,1,3);
INSERT INTO django_admin_log VALUES(64,'2020-02-12 06:11:05.054201','59','jones 2020-02-09: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(65,'2020-02-12 06:11:25.008571','58','jones 2020-02-08: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(66,'2020-02-12 06:11:38.040078','57','jones 2020-02-08: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(67,'2020-02-12 06:11:46.661360','56','jones 2020-02-07: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(68,'2020-02-12 06:11:57.789049','55','jones 2020-02-06: 7','[]',7,1,2);
INSERT INTO django_admin_log VALUES(69,'2020-02-12 06:12:05.821766','29','jones 2020-02-05: 3','',7,1,3);
INSERT INTO django_admin_log VALUES(70,'2020-02-12 06:12:10.348114','55','jones 2020-02-06: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(71,'2020-02-12 06:12:16.911419','30','jones 2020-02-04: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(72,'2020-02-12 06:14:11.875855','61','jones 2020-02-02: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(73,'2020-02-12 06:14:11.885865','60','jones 2020-02-01: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(74,'2020-02-12 06:28:10.154203','35','emily 2020-02-07: 7','',7,1,3);
INSERT INTO django_admin_log VALUES(75,'2020-02-12 06:28:10.173223','34','emily 2020-02-06: 6','',7,1,3);
INSERT INTO django_admin_log VALUES(76,'2020-02-12 06:28:10.183232','33','emily 2020-02-05: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(77,'2020-02-12 06:28:10.191239','32','emily 2020-02-04: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(78,'2020-02-12 06:28:10.199247','31','emily 2020-02-03: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(79,'2020-02-12 06:28:28.777093','63','emily 2020-02-12: 5','',7,1,3);
INSERT INTO django_admin_log VALUES(80,'2020-02-12 06:28:28.786101','64','emily 2020-02-11: 6','',7,1,3);
INSERT INTO django_admin_log VALUES(81,'2020-02-12 06:37:42.001529','77','emily 2020-02-05: 9','',7,1,3);
INSERT INTO django_admin_log VALUES(82,'2020-02-12 06:44:39.549436','1','marc','[{"changed": {"fields": ["password"]}}]',4,1,2);
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'moodapp','mood');
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_mood','Can add mood');
INSERT INTO auth_permission VALUES(26,7,'change_mood','Can change mood');
INSERT INTO auth_permission VALUES(27,7,'delete_mood','Can delete mood');
INSERT INTO auth_permission VALUES(28,7,'view_mood','Can view mood');
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_name" varchar(150) NOT NULL);
INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$180000$6W6apgJzj3aL$BAyR5ounGYMaU4rqIm+p5qCNvjHiLTi+6Y3ib2+1twc=','2020-02-12 06:14:00.667088',1,'marc','','',1,1,'2020-02-11 00:31:34.666439','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$180000$pxSXS5uKJ2Ds$urxrihCwY/5bN/cbfZYrWRzAcF7FVUjt1Nl+Y5a4ikM=','2020-02-12 05:50:20.788324',0,'john','','',0,1,'2020-02-11 02:29:27.190822','');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$180000$CjMSUKvjdNo5$QUFT30bTtleIpNxolAwksoCuDdgmqntl/fkcyBf0x6U=',NULL,0,'sarah','','',0,1,'2020-02-11 02:29:38.467655','');
INSERT INTO auth_user VALUES(4,'pbkdf2_sha256$180000$zDIVBWhyvL5j$XmrBWFkftlCYGNsPyXP6Z0LzZLksxy5j5siFEhkZ4Nw=',NULL,0,'timmy','','',0,1,'2020-02-11 02:29:45.380295','');
INSERT INTO auth_user VALUES(5,'pbkdf2_sha256$180000$2VGL9XrIyUEr$6MClly1RWhvT7fKuaVQWdqtE3bGnYHg5ZNdsKGo9w00=','2020-02-12 06:13:48.902787',0,'jones','','',0,1,'2020-02-11 23:04:28.375846','');
INSERT INTO auth_user VALUES(6,'pbkdf2_sha256$180000$nx0twUvmPuJX$KGBB5WAT1bI4U4D2DSqvzuxZ6/Io0Bgz8w83jcjcsns=','2020-02-12 05:09:25.036283',0,'emily','','',0,1,'2020-02-12 00:50:01.371774','');
INSERT INTO auth_user VALUES(7,'pbkdf2_sha256$180000$hlOuHFZPzsCI$RquqR/XcjYCEqErp53xozstNBLECBBll+4XmCPbNXhE=','2020-02-12 05:11:08.594522',0,'kate','','',0,1,'2020-02-12 00:57:51.043162','');
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session VALUES('yva7w12op8gav4fabnb84z3oo6xagvv7','YjdjMGIwOTg3MDhmNGNmODdhNTRlMjIyNGQ4NTMwZDBiMTFmMDU3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZTRmNjg0Yzc4ZWRhY2FkYjUwMjQ1NTcyNDU1NWI1N2UxM2JiN2VhIn0=','2020-02-26 06:44:39.574460');
CREATE TABLE IF NOT EXISTS "moodapp_mood" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "log_date" date NOT NULL, "mood_rating" integer NOT NULL, "mood_owner_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO moodapp_mood VALUES(1,'2020-02-01',5,2);
INSERT INTO moodapp_mood VALUES(2,'2020-02-02',6,2);
INSERT INTO moodapp_mood VALUES(3,'2020-02-03',4,2);
INSERT INTO moodapp_mood VALUES(4,'2020-02-08',7,2);
INSERT INTO moodapp_mood VALUES(5,'2020-02-09',9,2);
INSERT INTO moodapp_mood VALUES(6,'2020-02-10',10,2);
INSERT INTO moodapp_mood VALUES(7,'2020-02-03',5,2);
INSERT INTO moodapp_mood VALUES(8,'2020-02-09',5,4);
INSERT INTO moodapp_mood VALUES(9,'2020-02-08',3,4);
INSERT INTO moodapp_mood VALUES(10,'2020-02-06',7,4);
INSERT INTO moodapp_mood VALUES(11,'2020-02-05',7,4);
INSERT INTO moodapp_mood VALUES(12,'2020-02-04',6,4);
INSERT INTO moodapp_mood VALUES(13,'2020-02-03',6,4);
INSERT INTO moodapp_mood VALUES(14,'2020-02-02',4,4);
INSERT INTO moodapp_mood VALUES(15,'2020-02-01',6,4);
INSERT INTO moodapp_mood VALUES(16,'2020-02-10',9,3);
INSERT INTO moodapp_mood VALUES(17,'2020-02-08',5,3);
INSERT INTO moodapp_mood VALUES(18,'2020-02-07',4,3);
INSERT INTO moodapp_mood VALUES(19,'2020-02-06',5,3);
INSERT INTO moodapp_mood VALUES(21,'2020-02-04',6,3);
INSERT INTO moodapp_mood VALUES(22,'2020-02-03',6,3);
INSERT INTO moodapp_mood VALUES(23,'2020-02-02',6,3);
INSERT INTO moodapp_mood VALUES(24,'2020-02-01',6,3);
INSERT INTO moodapp_mood VALUES(25,'2020-01-31',3,3);
INSERT INTO moodapp_mood VALUES(26,'2020-01-30',5,3);
INSERT INTO moodapp_mood VALUES(36,'2020-02-11',5,7);
INSERT INTO moodapp_mood VALUES(37,'2020-02-10',5,7);
INSERT INTO moodapp_mood VALUES(38,'2020-02-07',6,7);
INSERT INTO moodapp_mood VALUES(39,'2020-02-06',6,7);
INSERT INTO moodapp_mood VALUES(40,'2020-02-05',6,7);
INSERT INTO moodapp_mood VALUES(41,'2020-02-04',6,7);
INSERT INTO moodapp_mood VALUES(42,'2020-01-31',6,7);
INSERT INTO moodapp_mood VALUES(43,'2020-01-30',6,7);
INSERT INTO moodapp_mood VALUES(44,'2020-01-29',6,7);
INSERT INTO moodapp_mood VALUES(45,'2020-01-28',6,7);
INSERT INTO moodapp_mood VALUES(46,'2020-02-12',6,7);
INSERT INTO moodapp_mood VALUES(51,'2020-02-12',5,2);
INSERT INTO moodapp_mood VALUES(52,'2020-02-11',7,2);
INSERT INTO moodapp_mood VALUES(62,'2020-02-01',7,5);
INSERT INTO moodapp_mood VALUES(65,'2020-02-12',8,5);
INSERT INTO moodapp_mood VALUES(66,'2020-02-11',7,5);
INSERT INTO moodapp_mood VALUES(67,'2020-02-10',6,5);
INSERT INTO moodapp_mood VALUES(68,'2020-02-12',9,6);
INSERT INTO moodapp_mood VALUES(69,'2020-02-11',9,6);
INSERT INTO moodapp_mood VALUES(70,'2020-02-10',9,6);
INSERT INTO moodapp_mood VALUES(71,'2020-02-09',9,6);
INSERT INTO moodapp_mood VALUES(72,'2020-02-05',9,6);
INSERT INTO moodapp_mood VALUES(73,'2020-02-04',9,6);
INSERT INTO moodapp_mood VALUES(74,'2020-02-03',9,6);
INSERT INTO moodapp_mood VALUES(75,'2020-02-02',9,6);
INSERT INTO moodapp_mood VALUES(76,'2020-02-01',9,6);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('django_migrations',18);
INSERT INTO sqlite_sequence VALUES('django_admin_log',82);
INSERT INTO sqlite_sequence VALUES('django_content_type',7);
INSERT INTO sqlite_sequence VALUES('auth_permission',28);
INSERT INTO sqlite_sequence VALUES('auth_user',7);
INSERT INTO sqlite_sequence VALUES('auth_group',0);
INSERT INTO sqlite_sequence VALUES('moodapp_mood',77);
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE INDEX "moodapp_mood_mood_owner_id_cd4cb42a" ON "moodapp_mood" ("mood_owner_id");
COMMIT;
