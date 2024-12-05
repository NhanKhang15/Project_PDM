-- Product Table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
	Supplier_ID INT,
    Description VARCHAR(255)
	FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);

-- Order_Detail Table
CREATE TABLE Order_Detail (
    Detail_ID INT PRIMARY KEY,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Unit_Price DECIMAL(10, 2),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- Order Table
CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
	Shipment_ID INT,
    Order_Date DATE,
    Expected_Delivery DATE,
    FOREIGN KEY (Shipment_ID) REFERENCES Shipment(Shipment_ID),
	FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

-- Customer Table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Customer_Name VARCHAR(100),
    Phone_Number VARCHAR(20),
    Address VARCHAR(100)
);

-- Insert data into Customer Table
INSERT INTO Customer (Customer_ID, First_Name, Last_Name, Customer_Name, Phone_Number, Address) VALUES
(1, 'John', 'Doe', 'John Doe', '1112223333', '12 Broad Ave'),
(2, 'Jane', 'Smith', 'Jane Smith', '2223334444', '23 Narrow Rd'),
(3, 'Sam', 'Brown', 'Sam Brown', '3334445555', '34 Green Blvd'),
(4, 'Lisa', 'Taylor', 'Lisa Taylor', '4445556666', '45 Red Circle'),
(5, 'Mark', 'Wilson', 'Mark Wilson', '5556667777', '56 Yellow Lane'),
(6, 'Nina', 'Jones', 'Nina Jones', '6667778888', '67 White Path'),
(7, 'Paul', 'Davis', 'Paul Davis', '7778889999', '78 Blue Court'),
(8, 'Anna', 'Garcia', 'Anna Garcia', '8889991111', '89 Orange St'),
(9, 'Mike', 'Martinez', 'Mike Martinez', '9991112222', '90 Purple Way'),
(10, 'Sara', 'Lee', 'Sara Lee', '1113335555', '101 Pink Ave');

-- Insert data into Product Table
INSERT INTO Product (Product_ID, Product_Name, Category, Price, Supplier_ID, Description) VALUES
(1, 'Laptop', 'Electronics', 800.00, 2, '15-inch screen, 256GB SSD'),
(2, 'Office Chair', 'Furniture', 120.00, 7, 'Ergonomic design'),
(3, 'Desk Lamp', 'Furniture', 45.00, 7, 'LED light with adjustable brightness'),
(4, 'Printer', 'Electronics', 200.00, 2, 'Wireless inkjet printer'),
(5, 'Notebook', 'Stationery', 5.00, 7, 'A4 size, 100 pages'),
(6, 'Water Bottle', 'Accessories', 10.00, 8, '500ml, stainless steel'),
(7, 'Backpack', 'Accessories', 50.00, 8, 'Laptop compartment included'),
(8, 'Monitor', 'Electronics', 300.00, 2, '24-inch Full HD'),
(9, 'Mouse', 'Electronics', 20.00, 2, 'Wireless optical mouse'),
(10, 'Keyboard', 'Electronics', 30.00, 2, 'Mechanical keyboard with RGB');

-- Insert data into Orders Table
INSERT INTO Orders (Order_ID, Customer_ID, Shipment_ID, Order_Date, Expected_Delivery) VALUES
(1, 1, 1, '2024-11-01', '2024-11-10'),
(2, 2, 2, '2024-11-02', '2024-11-12'),
(3, 3, 3, '2024-11-03', '2024-11-13'),
(4, 4, 4, '2024-11-04', '2024-11-14'),
(5, 5, 5, '2024-11-05', '2024-11-15'),
(6, 6, 6, '2024-11-06', '2024-11-16'),
(7, 7, 7, '2024-11-07', '2024-11-17'),
(8, 8, 8, '2024-11-08', '2024-11-18'),
(9, 9, 9, '2024-11-09', '2024-11-19'),
(10, 10, 10, '2024-11-10', '2024-11-20');

-- Insert data into Order_Detail Table
INSERT INTO Order_Detail (Detail_ID, Order_ID, Product_ID, Quantity, Unit_Price) VALUES
(1, 1, 1, 2, 800.00),
(2, 1, 2, 1, 120.00),
(3, 2, 3, 5, 45.00),
(4, 2, 4, 1, 200.00),
(5, 3, 5, 10, 5.00),
(6, 3, 6, 3, 10.00),
(7, 4, 7, 2, 50.00),
(8, 5, 8, 1, 300.00),
(9, 6, 9, 3, 20.00),
(10, 7, 10, 4, 30.00),
(11, 8, 1, 1, 800.00),  
(12, 8, 3, 2, 45.00),   
(13, 9, 5, 15, 5.00),    
(14, 9, 7, 3, 50.00),   
(15, 10, 8, 1, 300.00), 
(16, 10, 9, 2, 20.00),  
(17, 10, 10, 1, 30.00); 