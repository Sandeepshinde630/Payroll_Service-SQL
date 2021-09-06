use payroll_service

create table employee
(
employeeID int identity(1,1) primary key,
Name varchar(200),
StartDate Date,
Gender char(1),
Phone varchar(200),
Address varchar(200),
Department varchar(200),
)

ALTER TABLE employee
DROP COLUMN salary;

select * from employee

insert into employee values
('Billi','2018-05-21','F','1122336655','MG Road','Sales'),
('Tom','2019-02-4','M','7788994455','#112 Pune','Marketing'),
('Mark','2020-05-21','M','4455661122','RA Road Mumbai','Sales')

create table department
(
    departmentID int identity(1,1) primary key,
    department varchar(200)
)
select * from department

create table employeeID_departmentID (
    employeeID int,
    departmentID int,
    foreign key (employeeID) references employee(EmployeeID),
	foreign key (departmentID) references department(departmentID)
)

create table Payroll
(
employeeID int primary key,
salary money,
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float
foreign key (employeeID) references employee(employeeID),
)
select * from Payroll