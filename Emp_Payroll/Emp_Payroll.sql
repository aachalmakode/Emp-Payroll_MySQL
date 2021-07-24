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

insert into emp_payroll (name, salary, start) values
('Aachal', 300000, '2021-02-03'),
('Sahil', 800000, '2021-01-01'),
('Minal', 900000, '2021-02-02'),
('Swati', 700000, '2021-01-014');

#uc4
select * from emp_payroll;


