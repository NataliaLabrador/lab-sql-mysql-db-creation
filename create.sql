-- Challenge 2 - Create the Database and Tables
-- Create a Database
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Create cars table
CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT,
    vin CHAR(17) NOT NULL,
    manufacturer VARCHAR(50),
    model VARCHAR (50),
	car_year YEAR,
    color VARCHAR(20),
    PRIMARY KEY (id)
);


-- Create customers table
CREATE TABLE customers (
	id INT NOT NULL AUTO_INCREMENT,
    cust_id INT NOT NULL,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone INT NOT NULL,
    cust_email VARCHAR(30),
    cust_address VARCHAR (30) NOT NULL,
    cust_city VARCHAR(30) NOT NULL,
    cust_state VARCHAR (30) NOT NULL,
    cust_country VARCHAR(30) NOT NULL,
    cust_zipcode CHAR(5) NOT NULL,
    PRIMARY KEY (id)
);

-- Create salespersons table
CREATE TABLE salespersons (
	id INT NOT NULL AUTO_INCREMENT,
    staff_id INT NOT NULL,
    staff_name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

-- Create invoices table
CREATE TABLE invoices (
	id INT NOT NULL AUTO_INCREMENT,
    invoice_number INT NOT NULL,
    invoice_date DATETIME,
    cars_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id)
    REFERENCES cars (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id)
    REFERENCES customers (id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id)
    REFERENCES salespersons (id) ON DELETE CASCADE ON UPDATE CASCADE
);



