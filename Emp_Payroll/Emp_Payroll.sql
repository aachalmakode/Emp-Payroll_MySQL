#uc1
create database payroll_services;
show databases;
use payroll_services;

#uc2
create table emp_payroll(
	id int unsigned not null auto_increment,
    name varchar(150) not null,
    salary double not null,
    start date not null,
    primary key (id)
);
select * from emp_payroll;

#uc3

insert into emp_payroll (name,salary, start) values
('AACHAL',4500.0,'2021-02-16'),
('YASH',5500.0,'2021-04-02'),
('MINAL',7500.0,'2021-05-20'),
('SUNIL',8750.0,'2021-01-17'),
('AAYUSHI',6280.0,'2021-03-07'),
('SAHIL',2540.0,'2021-06-08');

#uc4
select * from emp_payroll;

#UC5
select salary from  emp_payroll where name='AAYUSHI'; #Selecting AAYUSHI entry
#Selecting Employee from Date range
select * from employee_payroll where start between cast('2021-04-01' as date) and date(now());

#UC6 - Addemp_payroll the Gender column in table and update to the name
Alter table emp_payroll add gender char(1) after name;
describe emp_payroll;
SET SQL_SAFE_UPDATES=0;
update emp_payroll set gender='M'
where name='SUNIL' or name='SAHIL'or name='YASH';
update emp_payroll set gender='F'
where name='AACHAL' or name='MINAL' or name='AAYUSHI';
select * from emp_payroll;


#UC7-To find Aggregate values
select salary from emp_payroll;
#To find Aggregate Sum
select sum(salary) from emp_payroll;
select sum(salary) from emp_payroll where gender='F' group by gender;
select sum(salary) from emp_payroll where gender='M' group by gender;
#To find Maximum
select max(salary) from emp_payroll;
select max(salary) from emp_payroll where gender='F' group by gender;
select max(salary) from emp_payroll where gender='M' group by gender;
#To find Minimum
select min(salary) from emp_payroll;
select min(salary) from emp_payroll where gender='F' group by gender;
select min(salary) from emp_payroll where gender='M' group by gender;
#To find Aggregate Average
select avg(salary) from emp_payroll;
select avg(salary) from emp_payroll where gender='F' group by gender;
select avg(salary) from emp_payroll where gender='M' group by gender;
#To find Count
select count(salary) from emp_payroll;
select count(salary) from emp_payroll where gender='F' group by gender;
select count(salary) from emp_payroll where gender='M' group by gender;

#Uc8 Add department of employee
alter table emp_payroll 
add phone varchar(20), 
add address varchar(200) default 'address1' ,
add department varchar(20)  not null ;

update emp_payroll 
set 
	department='Finance' 
where
	name in ('Swati');

select * from emp_payroll;     

#Uc9 Extexd Employee Pay
alter table emp_payroll 
add basic_pay int, 
add deductions int,
add taxable_pay int  ,
add tax int,
add net_pay int;

