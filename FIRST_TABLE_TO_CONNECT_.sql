create database abhi5;
use abhi5;
create table idvedanta(id_course int primary key,course varchar(50) );
create table student(s_name varchar(50),s_id int , s_number varchar(50),id_course int);
alter table student add constraint foreign key (id_course) references idvedanta(id_course);
INSERT INTO idvedanta VALUE(101,"DASA"),(102,"PAYTHAN");
INSERT INTO student VALUE("ABHISHEK",1,"8542990187",101);
INSERT INTO student VALUE("ABHISHEK_JAISWAL",2,"85429901879",102);
