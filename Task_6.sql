CREATE DATABASE ProductReviewDB;
USE ProductReviewDB;

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Review (
    ReviewID INT PRIMARY KEY,
    ProductID INT,
    CustomerName VARCHAR(100),
    Rating INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

INSERT INTO Product VALUES
(101, 'Laptop', 55000.00),
(102, 'Smartphone', 25000.00),
(103, 'Headphones', 3000.00),
(104, 'Smart Watch', 5000.00),
(105, 'Keyboard', 1500.00);

INSERT INTO Review VALUES
(1, 101, 'Arun', 5, 'Excellent laptop', '2026-09-01'),
(2, 102, 'Priya', 4, 'Good smartphone', '2026-09-02'),
(3, 103, 'Rahul', 5, 'Very good sound quality', '2026-09-03'),
(4, 104, 'Divya', 3, 'Average product', '2026-09-04'),
(5, 105, 'Kiran', 4, 'Good keyboard', '2026-09-05');

SELECT * FROM Product;

SELECT * FROM Review;

SELECT 
    p.ProductName,
    r.CustomerName,
    r.Rating,
    r.ReviewText
FROM Product p
JOIN Review r
ON p.ProductID = r.ProductID;

SELECT 
    p.ProductName,
    AVG(r.Rating) AS AverageRating
FROM Product p
JOIN Review r
ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.ProductName;

SELECT 
    p.ProductName,
    r.CustomerName,
    r.Rating
FROM Product p
JOIN Review r
ON p.ProductID = r.ProductID
WHERE r.Rating >= 4;