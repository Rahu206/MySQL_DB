

UC1:

create database payroll_service;
show databases;
use payroll_service;

UC2:
use payroll_service;
create table employee_payroll(id int, name varchar(255), salary int, start_date DATE);
describe employee_payroll;
alter table employee_payroll auto_increment=1;

UC3:
insert into employee_payroll(id, name, salary, start_date) values (1,'Rahul',15000,now());
insert into employee_payroll(id, name, salary, start_date) values (2,'Meghna',10000,now());
insert into employee_payroll(id, name, salary, start_date) values (3,'Ishu',12000,now());
insert into employee_payroll(id, name, salary, start_date) values (4,'Naresh',14000,now());

UC4:
select * from employee_payroll;

UC5:
select salary from employee_payroll where name = 'Rahul'; // its use for only sort by name
select * from employee_payroll where start_date between cast('2018-01-01' as date) and date(now());


UC6:
use  payroll_service_assignments;
ALTER TABLE employee_payroll add gender varchar(255);
select * from employee_payroll;
UPDATE employee_payroll set gender = 'Male' where name = 'Rahul' or name = 'Ishu' or name ='Naresh';
UPDATE employee_payroll set gender = 'Female' where name = 'Meghna';
select * from employee_payroll;

UC7:
select sum(salary) from employee_payroll where gender = 'Male' group by gender;
select sum(salary) from employee_payroll where gender = 'Female' group by gender;
select avg(salary) from employee_payroll where gender = 'Male' group by gender;
select min(salary) from employee_payroll group by gender;
select max(salary) from employee_payroll group by gender;
select max(salary) from employee_payroll;
select count(salary) from employee_payroll group by gender;

UC8:
ALTER TABLE employee_payroll ADD phone varchar(255);
ALTER TABLE employee_payroll ADD address varchar(255) DEFAULT'TBD';
ALTER TABLE employee_payroll ADD department varchar(255) NOT NULL;
select * from employee_payroll;

UC9:
ALTER TABLE employee_payroll ADD Basic_Pay int;
ALTER TABLE employee_payroll ADD Deductions int;
ALTER TABLE employee_payroll ADD Taxable_Pay int;
ALTER TABLE employee_payroll ADD Income_Tax int;
ALTER TABLE employee_payroll ADD Net_Pay int;
select * from employee_payroll;

UC10:
insert into employee_payroll(id,name,salary,start_date,gender,phone,address,department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay)values (5,'Terissa',18000,'2020-04-24','Female',787878787,'Mumbai','Sales',9500,1540,989,1400,14071);
alter table employee_payroll ADD PRIMARY KEY(id);
insert into employee_payroll(id,name,salary,start_date,gender,phone,address,department,Basic_Pay,Deductions,Taxable_Pay,Income_Tax,Net_Pay)values (6,'Terissa',18000,'2020-04-24','Female',787878787,'Mumbai','Marketing',9500,1540,989,1400,14071);





