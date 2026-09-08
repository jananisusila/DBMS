CREATE DATABASE SellerInventoryDB;
USE SellerInventoryDB; 

 CREATE TABLE Seller ( 
seller_id INT PRIMARY KEY, 
seller_name VARCHAR(50) 
); 

CREATE TABLE Inventory ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(50), 
quantity INT, 
price DECIMAL(10,2), 
seller_id INT, 
FOREIGN KEY (seller_id) REFERENCES Seller(seller_id) 
); 

INSERT INTO Seller VALUES 
(1, 'Arun Stores'), 
(2, 'Kumar Traders'); 

INSERT INTO Inventory VALUES 
 (101, 'Laptop', 20, 55000, 1), 
 (102, 'Keyboard', 50, 1200, 2), 
 (103, 'Mouse', 40, 700, 1); 
 
 SELECT * FROM Inventory; 