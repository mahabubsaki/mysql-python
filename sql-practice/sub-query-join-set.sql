-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert 50 rows of sample data
INSERT INTO Employees (FirstName, LastName, Age, Department, Salary) VALUES
('John', 'Doe', 30, 'HR', 50000.00),
('Jane', 'Smith', 25, 'IT', 60000.00),
('Bob', 'Johnson', 35, 'Finance', 70000.00),
('Alice', 'Williams', 28, 'Marketing', 55000.00),
('Michael', 'Brown', 40, 'Sales', 65000.00),
('Emily', 'Davis', 22, 'IT', 62000.00),
('William', 'Jones', 32, 'Finance', 72000.00),
('Olivia', 'Wilson', 27, 'Marketing', 58000.00),
('James', 'Taylor', 33, 'Sales', 67000.00),
('Sophia', 'Miller', 26, 'IT', 61000.00),
('Charles', 'Anderson', 45, 'Finance', 75000.00),
('Ava', 'Martinez', 29, 'Marketing', 59000.00),
('Daniel', 'Harris', 38, 'Sales', 68000.00),
('Mia', 'Garcia', 24, 'IT', 63000.00),
('Matthew', 'Clark', 42, 'Finance', 77000.00),
('Ella', 'Rodriguez', 31, 'Marketing', 60000.00),
('Joseph', 'Moore', 23, 'Sales', 69000.00),
('Grace', 'Lee', 34, 'IT', 64000.00),
('Henry', 'Walker', 41, 'Finance', 78000.00),
('Chloe', 'Lopez', 30, 'Marketing', 61000.00),
('Samuel', 'Turner', 36, 'Sales', 70000.00),
('Lily', 'Hill', 25, 'IT', 65000.00),
('Benjamin', 'White', 43, 'Finance', 79000.00),
('Zoe', 'Scott', 32, 'Marketing', 62000.00),
('Andrew', 'Green', 37, 'Sales', 71000.00),
('Nora', 'Baker', 27, 'IT', 66000.00),
('Jacob', 'Adams', 44, 'Finance', 80000.00),
('Hannah', 'Wright', 33, 'Marketing', 63000.00),
('Logan', 'Hall', 38, 'Sales', 72000.00),
('Avery', 'King', 28, 'IT', 67000.00),
('Evelyn', 'Evans', 45, 'Finance', 81000.00),
('Isabella', 'Perez', 34, 'Marketing', 64000.00),
('Daniel', 'Bailey', 39, 'Sales', 73000.00),
('Madison', 'Rivera', 29, 'IT', 68000.00),
('Jackson', 'Gonzalez', 46, 'Finance', 82000.00),
('Scarlett', 'Thomas', 35, 'Marketing', 65000.00),
('David', 'Hernandez', 40, 'Sales', 74000.00),
('Victoria', 'Moore', 30, 'IT', 69000.00),
('Joseph', 'Nelson', 47, 'Finance', 83000.00),
('Abigail', 'Cook', 36, 'Marketing', 66000.00),
('William', 'Parker', 41, 'Sales', 75000.00),
('Grace', 'Rogers', 31, 'IT', 70000.00),
('Samantha', 'Bennett', 48, 'Finance', 84000.00),
('Aiden', 'Hughes', 37, 'Marketing', 67000.00),
('Lucas', 'Ward', 42, 'Sales', 76000.00),
('Aria', 'Foster', 32, 'IT', 71000.00),
('Liam', 'Butler', 49, 'Finance', 85000.00),
('Layla', 'Powell', 38, 'Marketing', 68000.00);

INSERT INTO Employees (FirstName, LastName, Age, Department, Salary) VALUES
('Ella', 'Patterson', 33, 'Marketing', 69000.00),
('Jack', 'Hughes', 50, 'Sales', 77000.00),
('Natalie', 'Foster', 34, 'IT', 72000.00),
('Owen', 'Barnes', 51, 'Finance', 86000.00),
('Hazel', 'Russell', 35, 'Marketing', 70000.00),
('Mason', 'Ramirez', 31, 'Sales', 78000.00),
('Luna', 'Sanders', 36, 'IT', 73000.00),
('Elijah', 'Morris', 52, 'Finance', 87000.00),
('Addison', 'Gomez', 37, 'Marketing', 71000.00),
('Grayson', 'Howard', 32, 'Sales', 79000.00),
('Willow', 'Long', 37, 'IT', 74000.00),
('Levi', 'Coleman', 53, 'Finance', 88000.00),
('Sofia', 'Ward', 38, 'Marketing', 72000.00),
('Jackson', 'Torres', 33, 'Sales', 80000.00),
('Lily', 'Reed', 38, 'IT', 75000.00),
('Carter', 'Nelson', 54, 'Finance', 89000.00),
('Madison', 'Wright', 39, 'Marketing', 73000.00),
('Aiden', 'Phillips', 34, 'Sales', 81000.00),
('Scarlett', 'Hall', 39, 'IT', 76000.00),
('Logan', 'Smith', 55, 'Finance', 90000.00),
('Avery', 'Perez', 40, 'Marketing', 74000.00),
('Zoe', 'Gonzalez', 35, 'Sales', 82000.00),
('Lucas', 'Diaz', 40, 'IT', 77000.00),
('Evelyn', 'Brown', 56, 'Finance', 91000.00),
('Oliver', 'Martinez', 41, 'Marketing', 75000.00),
('Aria', 'Taylor', 36, 'Sales', 83000.00),
('Henry', 'Jackson', 41, 'IT', 78000.00),
('Grace', 'Anderson', 57, 'Finance', 92000.00),
('Ethan', 'Thomas', 37, 'Marketing', 76000.00),
('Liam', 'White', 42, 'Sales', 84000.00);


SELECT * from Employees

-- We can do sub query

SELECT * FROM employees
WHERE Age > (SELECT Age FROM employees Where EmployeeID = 72)


-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

-- Insert some sample data into the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Bob', 'Johnson', 'bob.johnson@example.com'),
(4, 'Alice', 'Williams', 'alice.williams@example.com'),
(5, 'Michael', 'Brown', 'michael.brown@example.com');

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);


-- Insert some sample data into the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2023-08-01', 100.00),
(102, 2, '2023-08-02', 150.00),
(103, 1, '2023-08-03', 75.00),
(104, 3, '2023-08-04', 200.00),
(105, 4, '2023-08-05', 50.00);

select * from customers
select * from orders

-- we can do basic join if one tables primary key is same as foreign key
SELECT Customers.FirstName,Customers.Email, Customers.LastName, Orders.OrderDate, Orders.TotalAmount,Orders.CustomerID,Orders.OrderID
from customers join orders using (CustomerID)

-- we can do basic join if one tables primary key is not same as foreign key
-- suppose customeid in orders is only cid, then we have to do like this 
SELECT Customers.FirstName,Customers.Email, Customers.LastName, Orders.OrderDate, Orders.TotalAmount,Orders.CustomerID,Orders.OrderID
from customers join orders on (Customers.CustomerID=Orders.cid)

--we can inner join join like this

SELECT Customers.FirstName,Customers.Email, Customers.LastName, Orders.OrderDate, Orders.TotalAmount,Orders.CustomerID,Orders.OrderID
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


DELETE e1
FROM Emails e1
JOIN Emails e2 ON e1.email = e2.email AND e1.id > e2.id;


 CREATE TABLE TRecords (
    id INT,
    recordDate DATE NOT NULL,
    temperature INT NOT NULL
);

INSERT INTO TRecords (id,recordDate, temperature) VALUES
(1,'2015-01-01', 10),
(2,'2015-01-02', 25),
(3,'2015-01-03', 20),
(4,'2015-01-04', 30);


select * from trecords


SELECT tr1.id
FROM TRecords tr1
LEFT JOIN TRecords tr2 ON DATE_ADD(tr2.recordDate, INTERVAL 1 DAY) = tr1.recordDate
WHERE tr1.temperature > tr2.temperature AND tr2.id IS NOT NULL;


CREATE TABLE assingment_employees (
    employee_id INT(11) UNSIGNED NOT NULL,
    first_name VARCHAR(20),
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL,
    phone_number VARCHAR(20),
    hire_date DATE NOT NULL,
    job_id VARCHAR(20); NOT NULL,
    salary DECIMAL(8, 2) NOT NULL,
    commission_pct DECIMAL(2, 2),
    manager_id INT(11) UNSIGNED,
    department_id INT(11) UNSIGNED,
    PRIMARY KEY (employee_id)
);




select * from assingment_employees

INSERT INTO assingment_employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2020-01-15', 'IT_PROG', 75000.00, NULL, NULL, 1),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2019-03-20', 'HR_REP', 60000.00, 0.05, 1, 2),
    (3, 'Michael', 'Johnson', 'michael.j@example.com', '555-123-4567', '2021-05-10', 'SALES_REP', 80000.00, 0.03, 2, 3),
    (4, 'Emily', 'Davis', 'emily.d@example.com', '333-999-7777', '2018-11-08', 'FINANCE_REP', 85000.00, 0.02, 2, 2),
    (5, 'David', 'Wilson', 'david.w@example.com', '777-888-5555', '2017-09-01', 'IT_PROG', 90000.00, NULL, 1, 1),
    (6, 'Sarah', 'Brown', 'sarah.b@example.com', '111-222-3333', '2022-02-25', 'SALES_REP', 75000.00, 0.04, 3, 3),
    (7, 'Robert', 'Lee', 'robert.l@example.com', '666-444-9999', '2020-07-12', 'HR_REP', 68000.00, 0.06, 1, 2),
    (8, 'Olivia', 'Anderson', 'olivia.a@example.com', '222-777-8888', '2019-10-30', 'FINANCE_REP', 92000.00, 0.02, 4, 2),
    (9, 'William', 'Moore', 'william.m@example.com', '444-555-6666', '2016-04-15', 'IT_PROG', 98000.00, NULL, 1, 1),
    (10, 'Sophia', 'Martinez', 'sophia.m@example.com', '888-999-1111', '2021-12-05', 'SALES_REP', 82000.00, 0.03, 3, 3);


SELECT DISTINCT salary
FROM assingment_employees
ORDER BY salary DESC
LIMIT 1 OFFSET 1;