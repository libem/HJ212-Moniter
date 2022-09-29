/*
 Navicat Premium Data Transfer

 Source Server         : Prod - Postgresql - marc
 Source Server Type    : PostgreSQL
 Source Server Version : 100019
 Source Host           : 192.168.99.61:5432
 Source Catalog        : hj212_monitor
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 100019
 File Encoding         : 65001

 Date: 29/09/2022 11:36:40
*/


-- ----------------------------
-- Table structure for s_regulatory
-- ----------------------------
DROP TABLE IF EXISTS "public"."s_regulatory";
CREATE TABLE "public"."s_regulatory" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(50) COLLATE "pg_catalog"."default",
  "state" varchar(50) COLLATE "pg_catalog"."default",
  "park_code" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."s_regulatory" OWNER TO "marc";
COMMENT ON COLUMN "public"."s_regulatory"."park_code" IS '类似机构代码，区分应用所属';
COMMENT ON COLUMN "public"."s_regulatory"."type" IS '指标因子类型，如空气指标因子类型(airZB)';
COMMENT ON TABLE "public"."s_regulatory" IS '数据类型对应指标因子配置表';

-- ----------------------------
-- Table structure for t_moniter_error
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_moniter_error";
CREATE TABLE "public"."t_moniter_error" (
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "info_id" varchar(50) COLLATE "pg_catalog"."default",
  "error" varchar(4000) COLLATE "pg_catalog"."default",
  "time" date
)
;
ALTER TABLE "public"."t_moniter_error" OWNER TO "marc";

-- ----------------------------
-- Table structure for t_moniter_factor
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_moniter_factor";
CREATE TABLE "public"."t_moniter_factor" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "mncode" varchar(50) COLLATE "pg_catalog"."default",
  "state" varchar(50) COLLATE "pg_catalog"."default",
  "data_time" varchar(20) COLLATE "pg_catalog"."default",
  "park_code" varchar(255) COLLATE "pg_catalog"."default",
  "factor" varchar(255) COLLATE "pg_catalog"."default",
  "value" varchar(255) COLLATE "pg_catalog"."default",
  "data_status" varchar(50) COLLATE "pg_catalog"."default",
  "time" timestamp(0),
  "data_type" varchar(10) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."t_moniter_factor" OWNER TO "marc";
COMMENT ON COLUMN "public"."t_moniter_factor"."factor" IS '监测因子';
COMMENT ON COLUMN "public"."t_moniter_factor"."value" IS '监测数据';
COMMENT ON COLUMN "public"."t_moniter_factor"."data_type" IS '数据类型:实时值Rtd、均值Avg...';
COMMENT ON TABLE "public"."t_moniter_factor" IS '报文解析数据存储表';

-- ----------------------------
-- Table structure for t_moniter_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_moniter_info";
CREATE TABLE "public"."t_moniter_info" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "info" varchar(4000) COLLATE "pg_catalog"."default",
  "ip_address" varchar(50) COLLATE "pg_catalog"."default",
  "time" date
)
;
ALTER TABLE "public"."t_moniter_info" OWNER TO "marc";

-- ----------------------------
-- Table structure for workairdata_real
-- ----------------------------
DROP TABLE IF EXISTS "public"."workairdata_real";
CREATE TABLE "public"."workairdata_real" (
  "id" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "mncode" varchar(50) COLLATE "pg_catalog"."default",
  "state" varchar(50) COLLATE "pg_catalog"."default",
  "monitor_time" date,
  "a21005" varchar(255) COLLATE "pg_catalog"."default",
  "a21026" varchar(255) COLLATE "pg_catalog"."default",
  "a21004" varchar(255) COLLATE "pg_catalog"."default",
  "a34004" varchar(255) COLLATE "pg_catalog"."default",
  "a34002" varchar(255) COLLATE "pg_catalog"."default",
  "o3" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."workairdata_real" OWNER TO "marc";

-- ----------------------------
-- Table structure for workdangergasdata_real
-- ----------------------------
DROP TABLE IF EXISTS "public"."workdangergasdata_real";
CREATE TABLE "public"."workdangergasdata_real" (
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "mncode" varchar(50) COLLATE "pg_catalog"."default",
  "state" varchar(50) COLLATE "pg_catalog"."default",
  "monitor_time" date,
  "a24088" varchar(255) COLLATE "pg_catalog"."default",
  "a25005" varchar(255) COLLATE "pg_catalog"."default",
  "a05002" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."workdangergasdata_real" OWNER TO "marc";

-- ----------------------------
-- Table structure for workequipment_maintain
-- ----------------------------
DROP TABLE IF EXISTS "public"."workequipment_maintain";
CREATE TABLE "public"."workequipment_maintain" (
  "id" varchar(50) COLLATE "pg_catalog"."default",
  "mncode" varchar(50) COLLATE "pg_catalog"."default",
  "state" varchar(50) COLLATE "pg_catalog"."default",
  "park_code" varchar(255) COLLATE "pg_catalog"."default",
  "monitor_type" varchar(255) COLLATE "pg_catalog"."default"
)
;
ALTER TABLE "public"."workequipment_maintain" OWNER TO "marc";
COMMENT ON COLUMN "public"."workequipment_maintain"."park_code" IS '类似机构代码，区分应用所属';
COMMENT ON COLUMN "public"."workequipment_maintain"."monitor_type" IS '监测数据类型，如空气监测数据(air)';
COMMENT ON TABLE "public"."workequipment_maintain" IS '设备信息表
主要定义设备MN编号与设备类型';

-- ----------------------------
-- Primary Key structure for table s_regulatory
-- ----------------------------
ALTER TABLE "public"."s_regulatory" ADD CONSTRAINT "s_regulatory_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_moniter_factor
-- ----------------------------
ALTER TABLE "public"."t_moniter_factor" ADD CONSTRAINT "t_moniter_factor_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_moniter_info
-- ----------------------------
ALTER TABLE "public"."t_moniter_info" ADD CONSTRAINT "t_moniter_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table workairdata_real
-- ----------------------------
ALTER TABLE "public"."workairdata_real" ADD CONSTRAINT "workairdata_real_pkey" PRIMARY KEY ("id");
