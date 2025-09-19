--Q1
CREATE TABLE Orderz (
    Order_Id INT PRIMARY KEY,
    Customers_Name VARCHAR(100),
    Products VARCHAR(100)
);

INSERT INTO  Orderz(Order_id, Customers_Name, Products) VALUES
(101, 'John Doe', 'laptop,Mouse'),
(102, 'Jane Smith', 'tablet,keyboard,mouse'),
(103, 'Emily Clark', 'phone');

CREATE TABLE NormalizedOrderz (
    OrderID INT,
    CustomerName VARCHAR(100),
    Product VARCHAR(100)
);

INSERT INTO NormalizedOrderz (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

SELECT * FROM NormalizedOrderz;
--Q2
CREATE TABLE OrderDetails (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

INSERT INTO OrderDetails (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES OrderDetails(OrderID)
);

INSERT INTO OrderProducts (OrderID, Product) VALUES
(101, 'Laptop'),
(101, 'Mouse'),
(102, 'Tablet'),
(102, 'Keyboard'),
(102, 'Mouse'),
(103, 'Phone');

