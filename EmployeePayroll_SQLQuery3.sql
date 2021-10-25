Create Database Payroll_Services;
use Payroll_Services;

Create Table Employee_Payroll
(
 Id int Identity(1,1) primary key,
 EmpName varchar(100) Not null,
 Salary Money Not null,
 StartDate Date Not null
 ); 