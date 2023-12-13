-- 创建数据库
CREATE DATABASE PlantManagement;
USE PlantManagement;

-- 创建植物信息表
CREATE TABLE PlantTable (
  plant_id VARCHAR(50) PRIMARY KEY,
  species_name VARCHAR(100),
  disease_name VARCHAR(100) DEFAULT '无',
  equipment_name VARCHAR(100),
  image_id VARCHAR(50),
  morphology VARCHAR(255),
  cultivation_techniques VARCHAR(255),
  application_value VARCHAR(255),
  create_people VARCHAR(100),
  create_time DATETIME
);
CREATE UNIQUE INDEX plant_id_index ON PlantTable (plant_id);
-- 创建配图表
CREATE TABLE imageTable(
  image_id VARCHAR(50) PRIMARY KEY,
  image_location VARCHAR(100),
  image_description VARCHAR(255),
  image_photographer VARCHAR(100)
);

-- 创建分类表和分布区域表
CREATE TABLE ClassificationTable (
  classification_id INT AUTO_INCREMENT PRIMARY KEY,
  family_name VARCHAR(100),
  genus_name VARCHAR(100),
  species_name VARCHAR(100),
  alias VARCHAR(100),
  distribution_id VARCHAR(50),
  growth_environment VARCHAR(255)
);

CREATE TABLE distributionTable (
  distribution_id VARCHAR(50) PRIMARY KEY,
  province VARCHAR(100),
  city VARCHAR(255),
  town VARCHAR(255)
);

-- 创建治疗表和病虫害表
CREATE TABLE DiseaseTable (
  disease_id INT AUTO_INCREMENT PRIMARY KEY,
  disease_name VARCHAR(100)
);

CREATE TABLE TreatmentTable (
  treat_id INT AUTO_INCREMENT PRIMARY KEY,
  disease_id INT,
  prevent_method VARCHAR(255),
  plant_id VARCHAR(100),
  treat_people VARCHAR(100),
  treat_state VARCHAR(20),
  treat_time DATE,
  create_time DATETIME,
  FOREIGN KEY (disease_id) REFERENCES DiseaseTable(disease_id)
);

CREATE TABLE preventTable(
	prevent_id INT AUTO_INCREMENT PRIMARY KEY,
	disease_id INT,
	prevent_method VARCHAR(100),
	drug_name VARCHAR(100),
	drug_amount VARCHAR(100),
	prevention_detail VARCHAR(255),
	action_period VARCHAR(100),
	FOREIGN KEY (disease_id) REFERENCES DiseaseTable(disease_id)
);

-- 创建监测管理表
CREATE TABLE MonitorTable (
  monitor_id INT AUTO_INCREMENT PRIMARY KEY,
  plant_id VARCHAR(100),
  monitor_people VARCHAR(100),
  ph INT,
  temperature INT,
  monitor_time DATETIME,
  monitor_location VARCHAR(100)
);

CREATE TABLE equipmenTable(
	equipment_id VARCHAR(20) PRIMARY KEY,
	equipment_name VARCHAR(20)
);
