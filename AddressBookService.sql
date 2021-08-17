UC1:
create database AddressBookService
use AddressBookService

UC2:
create table addressbook(id int, first_name varchar(255), last_name varchar(255), address varchar(255), city varchar(255), state varchar(255), zip_code int, phone_number long, email varchar(255));
DESCRIBE addressbook    //for showing attributes

UC3:
insert into addressbook(id,first_name,last_name,address,city,state,zip_code,Phone_number,email) values (1,'Rahul','Deshpande', 'Tamarind_park','Pune','Maharashtra',411041,9834211574,'rahuldeshpande93@gmail.com');
insert into addressbook(id,first_name,last_name,address,city,state,zip_code,Phone_number,email) values (2,'ISHU','Kumar', 'Dodagubbi','Banglore','Karnataka',560077,92566565447,'ishukumar95@gmail.com');
 insert into addressbook(id,first_name,last_name,address,city,state,zip_code,Phone_number,email) values (3,'Meghna','Borkar', 'Happy Street','Nagpur','Karnataka',440010,9854522255,'meghnaborkar5@gmail.com');
select * from addressbook;   //for checking if new employee is inserted or not

UC4:
update addressbook set state = 'Maharashtra' where first_name = 'Meghna';
update addressbook set phone_number = 9346779142 where first_name = 'ISHU';
select * from addressbook;


UC5:
delete from addressbook where addressbook.first_name = 'Meghna';
select * from addressbook;

UC6:
select * from addressbook where addressbook.city='Pune';
select * from addressbook where addressbook.state='karnataka';
select * from addressbook where state='karnataka' or city='pune';

UC7:
select count(city) from addressbook;
select count(city), city from addressbook group by city;
select count(city), city, state from addressbook where city='pune' and state='maharashtra' group by state;

UC8:
select * from addressbook order by addressbook.first_name; //its for assending order
select * from addressbook order by addressbook.first_name DESC; //FOR DESCENDING ORDER

UC9:
alter table addressbook add type varchar(255);
update addressbook set type = "Professional" where first_name = 'rahul';

alter table addressbook add name varchar(255);//FOR ADDING NAME
update addressbook set name = "ISHU" where first_name = 'ISHU';
update addressbook set type = "Friends" where name = 'ishu'; //ALTER BY NAME

UC10:
SELECT COUNT(TYPE) from addressbook where type='Friends';

UC11:
alter table addressbook ADD PRIMARY KEY(id);
insert into addressbook(id,first_name,last_name,address,city,state,zip_code,Phone_number,email,type) values (3,'ISHU','Kumar', 'Dodagubbi','Banglore','Karnataka',560077,92566565447,'ishukumar95@gmail.com','Professional');
select* from addressbook;
