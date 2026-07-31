create database sidhauli;
use sidhauli;
create table sant_nagar(id_number int primary key,id_Name varchar(50) not null,house_no varchar(50) unique not null,house_room varchar(100),house_vehicle varchar(50));
desc sant_nagar;
alter table sant_nagar add column house varchar(50);
alter table sant_nagar drop column house;
select house_no, house_room from sant_nagar;
insert into sant_nagar value(101,"abhi jaiswal","505","6","2"),(102,"hardik jaiswal","506","4","2"),(103,"Any jaiswal","507","4","1");
