CREATE DATABASE IF NOT EXISTS animais;

USE animais;

CREATE TABLE IF NOT EXISTS tb_penguins_exp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    species VARCHAR(255),
    island VARCHAR(255),
    bill_length_mm FLOAT,
    bill_depth_mm FLOAT,
    flipper_length_mm FLOAT,
    body_mass_g FLOAT,
    sex VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS tb_penguins_prd (
    id INT AUTO_INCREMENT PRIMARY KEY,
    species VARCHAR(255),
    island VARCHAR(255),
    bill_length_mm FLOAT,
    bill_depth_mm FLOAT,
    flipper_length_mm FLOAT,
    body_mass_g FLOAT,
    sex VARCHAR(50)
);

LOAD DATA INFILE '/var/lib/mysql-files/tb_penguins_exp.csv'
INTO TABLE tb_penguins_exp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@species, @island, @bill_length_mm, @bill_depth_mm, @flipper_length_mm, @body_mass_g, @sex)
SET
    bill_length_mm = NULLIF(@bill_length_mm, ''),
    bill_depth_mm = NULLIF(@bill_depth_mm, ''),
    flipper_length_mm = NULLIF(@flipper_length_mm, ''),
    body_mass_g = NULLIF(@body_mass_g, ''),
    species  = NULLIF(@species, ''),
    island = NULLIF(@island, ''),
    sex = NULLIF(@sex, '');

LOAD DATA INFILE '/var/lib/mysql-files/tb_penguins_prd.csv'
INTO TABLE tb_penguins_prd
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(@species, @island, @bill_length_mm, @bill_depth_mm, @flipper_length_mm, @body_mass_g, @sex)
SET
    bill_length_mm = NULLIF(@bill_length_mm, ''),
    bill_depth_mm = NULLIF(@bill_depth_mm, ''),
    flipper_length_mm = NULLIF(@flipper_length_mm, ''),
    body_mass_g = NULLIF(@body_mass_g, ''),
    species  = NULLIF(@species, ''),
    island = NULLIF(@island, ''),
    sex = NULLIF(@sex, '');
