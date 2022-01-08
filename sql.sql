CREATE DATABASE dieko;
USE dieko;
CREATE TABLE Customer(Customer_id VARCHAR(20) PRIMARY KEY, 
Customer_Name VARCHAR(20) NOT NULL,  
Customer_Tel VARCHAR(15));

CREATE TABLE Product(Product_id VARCHAR(20), 
Product_Name VARCHAR(20) NOT NULL,  Price INT(20));

CREATE TABLE Orders(Customer_id VARCHAR(25), CONSTRAINT fk_cust FOREIGN KEY(Customer_id) REFERENCES Customer(Customer_id),
Product_id VARCHAR(20), CONSTRAINT fk_prod FOREIGN KEY(Product_id) REFERENCES Product(Product_id),  
Quantity INT(20), Total_amount INT(20));

ALTER TABLE Product ADD column Category VARCHAR(20);

ALTER TABLE Orders ADD column OrderDate TIMESTAMP DEFAULT NOW();

show tables;