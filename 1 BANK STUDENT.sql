create database Bankserver1;
    use Bankserver1;
    create table Student(s_id int primary key,s_name varchar(50),s_email varchar(50) unique not null,s_mobile_no varchar(50)unique not null);
    desc Student;
    insert into Student value(101,"aadarsh","aadarsh2030@gmail.com","8542990187"),(102,"aaamr","aamr789@gmail.com","8542976315"),(103,"jatin","jatin942@gmail.com","85769962423");
    select*from Student;
    select s_id as ID,s_name as S_NAME,S_email as GMAIL from Student;
    
    