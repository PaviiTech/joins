CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100),
    City VARCHAR(50)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(100),
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES (1, 'Alice', 'Chennai');
INSERT INTO Customers VALUES (2, 'Bob', 'Delhi');
INSERT INTO Customers VALUES (3, 'Charlie', 'Mumbai');
INSERT INTO Customers VALUES (4, 'David', 'Hyderabad');

INSERT INTO Orders VALUES (101, 1, 'Laptop', 55000);
INSERT INTO Orders VALUES (102, 2, 'Phone', 20000);
INSERT INTO Orders VALUES (103, 1, 'Keyboard', 1500);
INSERT INTO Orders VALUES (104, 5, 'Mouse', 700);

SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

UNION

SELECT Customers.Name, Orders.Product, Orders.Amount
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;