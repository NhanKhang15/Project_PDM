-- Warehouse Table
CREATE TABLE Warehouse (
    Warehouse_ID INT PRIMARY KEY,
    Warehouse_Name VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT
);

-- Shipment Table
CREATE TABLE Shipment (
    Shipment_ID INT PRIMARY KEY,
    Delivery_Status VARCHAR(50),
    Recipent_Date DATE,
    Delivery_Date DATE,
);

-- Supplier Table
CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100),
    Contact_Number VARCHAR(20),
    Address VARCHAR(100)
);

-- Store Table (Many-to-Many relationship between Product and Warehouse)
CREATE TABLE Store (
    Warehouse_ID INT,
    Product_ID INT,
    Quantity INT,
    Last_Updated DATE,
    PRIMARY KEY (Warehouse_ID, Product_ID),
    FOREIGN KEY (Warehouse_ID) REFERENCES Warehouse(Warehouse_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
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

-- Insert data into Supplier Table
INSERT INTO Supplier (Supplier_ID, Supplier_Name, Contact_Number, Address) VALUES
(1, 'Global Supplies Co.', '1234567890', '123 Main St'),
(2, 'Tech Wholesale', '9876543210', '456 Elm St'),
(3, 'Eco Packaging', '5558882345', '789 Pine St'),
(4, 'Quick Parts Ltd.', '6665551234', '101 Maple St'),
(5, 'Fresh Produce', '4449992222', '202 Oak St'),
(6, 'Best Electronics', '7772223456', '303 Cedar St'),
(7, 'Office Pro', '8884445678', '404 Birch St'),
(8, 'Green Goods', '9997778889', '505 Spruce St'),
(9, 'Steel Works', '1231231234', '606 Walnut St'),
(10, 'Fashion Fabrics', '9879879870', '707 Chestnut St');

-- Insert data into Shipment Table
INSERT INTO Shipment (Shipment_ID, Delivery_Status, Recipent_Date, Delivery_Date) VALUES
(1, 'Delivered', '2024-11-15', '2024-11-12'),
(2, 'In Transit', NULL, '2024-11-20'),
(3, 'Pending', NULL, NULL),
(4, 'Delivered', '2024-11-10', '2024-11-07'),
(5, 'In Transit', NULL, '2024-11-18'),
(6, 'Cancelled', NULL, NULL),
(7, 'Delivered', '2024-11-05', '2024-11-03'),
(8, 'Pending', NULL, NULL),
(9, 'In Transit', NULL, '2024-11-22'),
(10, 'Delivered', '2024-11-08', '2024-11-06');

-- Insert data into Warehouse Table
INSERT INTO Warehouse (Warehouse_ID, Warehouse_Name, Location, Capacity) VALUES
(1, 'North Warehouse', 'North District', 1000),
(2, 'South Warehouse', 'South District', 2000),
(3, 'East Warehouse', 'East District', 1500),
(4, 'West Warehouse', 'West District', 1200),
(5, 'Central Warehouse', 'City Center', 1800),
(6, 'Tech Storage', 'Tech Park', 800),
(7, 'Fresh Depot', 'Fresh Zone', 1100),
(8, 'Steel Storage', 'Industrial Area', 2500),
(9, 'Office Hub', 'Office District', 1300),
(10, 'Fashion Vault', 'Fashion Plaza', 1400);

-- Insert data into Store Table
INSERT INTO Store (Warehouse_ID, Product_ID, Quantity, Last_Updated) VALUES
(1, 1, 50, '2024-11-01'),
(2, 2, 100, '2024-11-02'),
(3, 3, 200, '2024-11-03'),
(4, 4, 30, '2024-11-04'),
(5, 5, 500, '2024-11-05'),
(6, 6, 300, '2024-11-06'),
(7, 7, 150, '2024-11-07'),
(8, 8, 20, '2024-11-08'),
(9, 9, 75, '2024-11-09'),
(10, 10, 40, '2024-11-10');

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
(10, 7, 10, 4, 30.00);	