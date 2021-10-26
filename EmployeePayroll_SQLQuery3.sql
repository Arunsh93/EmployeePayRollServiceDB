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
 ('Chetan',30000.0,'2021-05-20'),
 ('Rahul',40000.0,'2021-10-25');
 

 Select * from Employee_Payroll;

 Select * from Employee_Payroll Where EmpName = 'Akshata';

 Select * from Employee_Payroll Where StartDate Between CAST('2019-01-01' As datetime) And GETDATE(); 
 
 Alter table Employee_Payroll Add Gender varchar(5); 

Update Employee_Payroll 
Set Gender = 'M'
Where EmpName = 'Rahul' or EmpName = 'Chetan';