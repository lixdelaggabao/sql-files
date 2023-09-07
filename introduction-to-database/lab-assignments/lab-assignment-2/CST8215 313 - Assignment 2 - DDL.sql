/*
File Name: CST8215 313 - Assignment 2 - DDL
Group Number: 7
Authors:
	Santiago Garcia (Student Number: 041085721)
	Lixdel Aggabao (Student Number: 041081985)
	Luc Ha (Student Number: 040802592)
Description: This file contains the DDL commands used for creating the database and tables.
*/

-- Create and use greenspace database
DROP DATABASE IF EXISTS greenspacedb;
CREATE DATABASE IF NOT EXISTS greenspacedb;
USE greenspacedb;

-- Create countries table
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    CONSTRAINT countriesAK UNIQUE (name)
);

-- Create states_provinces table
DROP TABLE IF EXISTS states_provinces;
CREATE TABLE states_provinces (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    country_id INT NOT NULL,
    CONSTRAINT states_provincesAK UNIQUE (name),
    CONSTRAINT states_provinces_countriesFK FOREIGN KEY (country_id)
        REFERENCES countries (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Create clients table
DROP TABLE IF EXISTS clients;
CREATE TABLE clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NULL,
    address2 VARCHAR(50) NULL,
    city VARCHAR(50) NULL,
    states_province_id INT NOT NULL,
    postal_code VARCHAR(12) NULL,
    country_id INT NOT NULL,
    phone_number VARCHAR(20) NULL,
    email VARCHAR(150) NULL,
    CONSTRAINT clients_states_provincesFK FOREIGN KEY (states_province_id)
        REFERENCES states_provinces (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT clients_countriesFK FOREIGN KEY (country_id)
        REFERENCES countries (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Create sales_orders table
DROP TABLE IF EXISTS sales_orders;
CREATE TABLE sales_orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    invoice_date DATETIME NULL,
    comments LONGTEXT NULL,
    CONSTRAINT sales_orders_clientsFK FOREIGN KEY (client_id)
        REFERENCES clients (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT datesCHK CHECK (invoice_date >= order_date)
);

-- Create services table
DROP TABLE IF EXISTS services;
CREATE TABLE services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description MEDIUMTEXT NULL,
    cost NUMERIC(10 , 2 ) NULL,
    CONSTRAINT servicesAK UNIQUE (name),
    CONSTRAINT costCHK CHECK (cost >= 0)
);

-- Create sales_order_services table
DROP TABLE IF EXISTS sales_order_services;
CREATE TABLE sales_order_services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sales_order_id INT NOT NULL,
    service_id INT NOT NULL,
    client_id INT NOT NULL,
    quantity NUMERIC(10 , 2 ) NULL,
    discount NUMERIC(4 , 2 ) NULL,
    service_schedule_date DATETIME NULL,
    extra_information LONGTEXT NULL,
    CONSTRAINT sales_order_services_sales_ordersFK FOREIGN KEY (sales_order_id)
        REFERENCES sales_orders (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT sales_order_services_servicesFK FOREIGN KEY (service_id)
        REFERENCES services (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT sales_order_services_clientsFK FOREIGN KEY (client_id)
        REFERENCES clients (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT quantityCHK CHECK (quantity >= 0),
    CONSTRAINT discountCHK CHECK (discount >= 0)
);

-- Create history_types table
DROP TABLE IF EXISTS history_types;
CREATE TABLE history_types (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NULL
);

-- Create sales_order_service_history table
DROP TABLE IF EXISTS sales_order_service_history;
CREATE TABLE sales_order_service_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sales_order_service_id INT NOT NULL,
    entry_date DATETIME NULL,
    notes LONGTEXT NULL,
    history_type_id INT NOT NULL,
    CONSTRAINT sales_order_service_history_sales_order_servicesFK FOREIGN KEY (sales_order_service_id)
        REFERENCES sales_order_services (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT sales_order_service_history_history_typesFK FOREIGN KEY (history_type_id)
        REFERENCES history_types (id)
        ON UPDATE NO ACTION ON DELETE NO ACTION
);