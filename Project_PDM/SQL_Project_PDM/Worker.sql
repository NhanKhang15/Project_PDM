CREATE TABLE Employee (
    Employee_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Employee_Name VARCHAR(100),
    Phone_Number VARCHAR(20),
    Email VARCHAR(50),
    Address VARCHAR(100),
    Hire_Date DATE
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Position VARCHAR(50),
    Shift VARCHAR(20),
    Department VARCHAR(50),
    Hourly_Rate DECIMAL(10, 2),
	Manager_ID INT,
	FOREIGN KEY (Manager_ID) REFERENCES Manager(Manager_ID),
    FOREIGN KEY (Staff_ID) REFERENCES Employee(Employee_ID)
);

INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Employee_Name, Phone_Number, Email, Address, Hire_Date) VALUES
(1, 'Alice', 'Brown', 'Alice Brown', '1112223334', 'alice.brown@example.com', '1234 Elm St', '2022-01-15'),
(2, 'Bob', 'Green', 'Bob Green', '2223334445', 'bob.green@example.com', '5678 Oak St', '2021-07-20'),
(3, 'Charlie', 'White', 'Charlie White', '3334445556', 'charlie.white@example.com', '9012 Pine St', '2023-03-12'),
(4, 'Daisy', 'Smith', 'Daisy Smith', '4445556667', 'daisy.smith@example.com', '3456 Maple St', '2020-11-30'),
(5, 'Eve', 'Taylor', 'Eve Taylor', '5556667778', 'eve.taylor@example.com', '7890 Cedar St', '2019-08-15'),
(6, 'Frank', 'Jones', 'Frank Jones', '6667778889', 'frank.jones@example.com', '1234 Birch St', '2023-04-10'),
(7, 'Grace', 'Williams', 'Grace Williams', '7778889990', 'grace.williams@example.com', '5678 Spruce St', '2022-06-01'),
(8, 'Hank', 'Brown', 'Hank Brown', '8889991112', 'hank.brown@example.com', '9012 Walnut St', '2020-09-23'),
(9, 'Ivy', 'Lee', 'Ivy Lee', '9991112223', 'ivy.lee@example.com', '3456 Chestnut St', '2018-05-19'),
(10, 'Jack', 'Davis', 'Jack Davis', '1113335556', 'jack.davis@example.com', '7890 Orange St', '2021-12-05');


INSERT INTO Staff (Staff_ID, Position, Shift, Department, Hourly_Rate, Manager_ID) VALUES
(4, 'Picker', 'Day', 'Logistics', 25.00, 1),
(5, 'Packer', 'Night', 'Operations', 20.00, 2),
(6, 'Forklift Operator', 'Day', 'Inventory', 22.00, 3),
(7, 'Technician', 'Day', 'Maintenance', 28.00, 1),
(8, 'Driver', 'Night', 'Transport', 30.00, 2);