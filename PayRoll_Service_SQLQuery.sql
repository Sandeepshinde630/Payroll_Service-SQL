--UC-1-CreateDatabase
create database payroll_service

use payroll_service
exec sp_databases

--UC-2-CreateTable
create table employee_payroll
(
 id int identity(1,1) primary key,
 Name varchar(50) not null,
 Salary decimal(12,2) not null,
 start date not null
);

select * from employee_payroll

--UC-3-Insert
insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('Charlie',300000.0,'2021-05-21')

--UC-4-Retrieve
select * from employee_payroll

--UC-5-ParticularEmployee
select salary from employee_payroll where Name = 'Billi'

select * from employee_payroll WHERE start BETWEEN CAST('2019-01-01' AS DATE) AND GETDATE()

--UC-6-Gender
ALTER TABLE employee_payroll
ADD Gender char(2)

update employee_payroll set Gender = 'M' where Name = 'Billi' or Name = 'Charlie'
update employee_payroll set Gender = 'F' where Name = 'Terisa'

select * from employee_payroll

--UC-7-Functions
select sum(salary) from employee_payroll where Gender = 'M' group by Gender
select avg(salary) from employee_payroll where Gender = 'M' group by Gender
select min(salary) from employee_payroll where Gender = 'M' group by Gender
select max(salary) from employee_payroll where Gender = 'M' group by Gender
select count(salary) from employee_payroll where Gender = 'M' group by Gender
select count(salary) from employee_payroll where Gender = 'F' group by Gender

select Gender, sum(salary) from employee_payroll  group by Gender


