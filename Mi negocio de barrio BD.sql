-- Base de datos - Mi negocio de barrio
-- Daniel Mendoza
-- 27/07/2017


CREATE DATABASE barrioapp;

USE barrioapp;

CREATE TABLE user(
    user_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(11) NOT NULL,
    name VARCHAR(50) NOT NULL,
    
);

CREATE TABLE shop();

CREATE TABLE location();

CREATE TABLE inventory();

CREATE TABLE promotion();

CREATE TABLE stock();

CREATE TABLE feedback();

CREATE TABLE payments(); 


