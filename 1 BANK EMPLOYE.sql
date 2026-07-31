create database Bankserver;
    use Bankserver;
    create table Employe(e_id int primary key,e_name varchar(50),e_email varchar(50) unique not null,e_mobile_no varchar(50)unique not null);
    desc Employe;
    insert into Employe value(101,"Abhi","abhishek2030@gmail.com","8542990187"),(102,"safi","safi789@gmail.com","8542976315"),(103,"insha","insha942@gmail.com","85769962423");
    select*from Employe;
    select e_id as ID,e_name as E_NAME,e_email as GMAIL from Employe;