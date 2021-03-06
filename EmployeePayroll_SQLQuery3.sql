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
 ('Divya',25000.0,'2018-01-03', 'F'),
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

Select Sum(Salary) from Employee_Payroll Where Gender = 'F' Group by Gender;
Select Sum(Salary) from Employee_Payroll Where Gender = 'M' Group by Gender;
Select Sum(Salary) from Employee_Payroll Group by Gender;

Select avg(Salary) from Employee_Payroll Where Gender = 'F' Group by Gender;
Select avg(Salary) from Employee_Payroll Where Gender = 'M' Group by Gender;
Select avg(Salary) from Employee_Payroll Group by Gender;

Select Min(Salary) from Employee_Payroll Where Gender = 'F' Group by Gender;
Select Min(Salary) from Employee_Payroll Where Gender = 'M' Group by Gender;
Select Min(Salary) from Employee_Payroll Group by Gender;

Select Max(Salary) from Employee_Payroll Where Gender = 'F' Group by Gender;
Select Min(Salary) from Employee_Payroll Where Gender = 'M' Group by Gender;
Select Min(Salary) from Employee_Payroll Group by Gender;

Alter Table Employee_Payroll
Add PhoneNumber varchar(15), 
	Department varchar(10) Not null default 'MCA', 
	Address varchar(25) Not null default 'Bangalore';

select * from Employee_Payroll;

sp_rename 'Employee_Payroll.Salary','BasicPay';

Alter table Employee_Payroll
Add Deduction real,
	TaxablePay money,
	IncomeTax money,
	NetPay float; 

 Update Employee_Payroll
 Set Department = 'Sales', Address = 'India', Deduction = 100.0, TaxablePay = 10000.0, IncomeTax = 2000.0, NetPay = 1200.0
 Where EmpName = 'Terisa';

 Update Employee_Payroll
 Set TaxablePay = 12000.0, Department = 'Marketing', IncomeTax = 2500.0, NetPay = 1300.0
 Where EmpName = 'Terisa';



	