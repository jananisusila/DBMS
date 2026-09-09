CREATE DATABASE ProductCategoryDB;
USE ProductCategoryDB;

CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    CategoryID INT,
    Price DECIMAL(10,2),
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

INSERT INTO Category VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Books');

INSERT INTO Product VALUES
(101, 'Laptop', 1, 55000),
(102, 'T-Shirt', 2, 800),
(103, 'Headphones', 1, 2000),
(104, 'Novel', 3, 500),
(105, 'Mobile Phone', 1, 25000);

SELECT ProductName, CategoryName, Price
FROM Product
JOIN Category
ON Product.CategoryID = Category.CategoryID;