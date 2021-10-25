Create Database Payroll_Services;
use Payroll_Services;

Create Table Employee_Payroll
(
 Id int Identity(1,1) primary key,
 EmpName varchar(100) Not null,
 Salary Money Not null,
 StartDate Date Not null
 ); 

 Insert into Employee_Payroll
 Values
 ('Arun',15000.0,'2019-01-03'),
 ('Akshata',20000.0,'2020-01-15'),
 ('Chetan',30000.0,'2021-05-20');

 Select * from Employee_Payroll;