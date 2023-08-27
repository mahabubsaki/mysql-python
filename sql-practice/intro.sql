DROP table student

CREATE TABLE Student (
    roll INT,
    studentName VARCHAR(20),
    email VARCHAR(30)
);

INSERT INTO student (roll,studentName,email)
Values (1,"saki","saki@gmail.com")

Insert into student (roll,studentname,email)
values (2,"mahabub","mahabub@gmail.com")

select * from student


CREATE TABLE companywithconstraints (
    companyname TEXT NOT NULL,
    companylocation VARCHAR(20),
    size INT,
    email varchar(20) UNIQUE,
    CHECK (size >= 100)
);




--setting default value
CREATE TABLE checkdefault (
    id int,
    country VARCHAR(30) default "Bangladesh"
);

INSERT into checkdefault (id)
values (1)

select * from checkdefault


-- not work because size must be greater than 100
INSERT INTO companywithconstraints (companyname,companylocation,size,email)
values ("Google","USA",20,"google@gmail.com")

-- will work
INSERT INTO companywithconstraints (companyname,companylocation,size,email)
values ("Google","USA",120,"google@gmail.com")

-- not work because comapny name can't be null
INSERT INTO companywithconstraints (companylocation,size,email)
values ("USA",120,"google@gmail.com")


select * from companywithconstraints




CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);



    INSERT INTO employees (first_name, last_name, department, salary)
VALUES
    ('John', 'Doe', 'HR', 50000.00),
    ('Jane', 'Smith', 'IT', 60000.00),
    ('Michael', 'Johnson', 'Finance', 75000.00),
    ('Emily', 'Williams', 'Marketing', 55000.00),
    ('William', 'Brown', 'IT', 62000.00),
    ('Olivia', 'Garcia', 'Finance', 72000.00),
    ('Liam', 'Martinez', 'IT', 59000.00),
    ('Ava', 'Anderson', 'Marketing', 58000.00),
    ('Ethan', 'Taylor', 'HR', 48000.00),
    ('Sophia', 'Hernandez', 'IT', 65000.00),
    ('Jacob', 'Miller', 'Finance', 71000.00),
    ('Olivia', 'Jackson', 'Marketing', 59000.00),
    ('Isabella', 'Davis', 'IT', 60000.00),
    ('Mia', 'Martinez', 'Finance', 68000.00),
    ('Alexander', 'Lee', 'IT', 58000.00),
    ('Liam', 'White', 'Marketing', 54000.00),
    ('Ava', 'Harris', 'HR', 52000.00),
    ('Noah', 'Martin', 'IT', 67000.00),
    ('Emily', 'Thompson', 'Finance', 73000.00),
    ('James', 'Hall', 'Marketing', 56000.00),
    ('Emma', 'Lopez', 'IT', 59000.00),
    ('Benjamin', 'Clark', 'Finance', 71000.00),
    ('Avery', 'Lewis', 'Marketing', 55000.00),
    ('William', 'Adams', 'IT', 63000.00),
    ('Sofia', 'Green', 'HR', 49000.00),
    ('Logan', 'Baker', 'IT', 64000.00),
    ('Ella', 'Gonzalez', 'Finance', 70000.00),
    ('Michael', 'Nelson', 'Marketing', 57000.00),
    ('Lucas', 'Moore', 'IT', 62000.00),
    ('Harper', 'Rivera', 'Finance', 69000.00)

--retrive all data
select * from employees


-- update speicific data

update employees
set first_name='Jacob',last_name='Killer'
where employee_id = 11


--retrive all datas specific property
select first_name,last_name from employees


-- delete specific data

delete from employees
where employee_id = 11


-- filter data

select first_name,salary from employees
where salary >= 50000

-- filter only distinct data
select distinct salary from employees
where salary >= 50000

--sorting (ascending or descending)
select * from employees order by salary desc


-- limit and skip (offset = skip)


select * from employees order by salary desc limit 10 offset 15 


select * from employees where employee_id % 2 = 0

-- we can filter from a list () specifiy a list . which matches all the list value by or. opposite is not in

select * from employees where department in ("IT","MARKETING")

-- like operator filter the data by pattern here it finding all the first_name which have s as first later

select * from employees where first_name like "s%"

-- as operator rename a objects property

select first_name as fname from employees