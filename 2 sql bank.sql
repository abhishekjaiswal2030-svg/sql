create database Bankserver1;
    use Bankserver1;
    create table Student(s_id int primary key,s_name varchar(50),s_email varchar(50) unique not null,s_mobile_no varchar(50)unique not null);
    desc Student;
    insert into Student value(101,"aadarsh","aadarsh2030@gmail.com","8542990187"),(102,"aaamr","aamr789@gmail.com","8542976315"),(103,"jatin","jatin942@gmail.com","85769962423");
    select*from Student;
    select s_id as ID,s_name as S_NAME,S_email as GMAIL from Student;
    alter table Student add	column fees int;
    alter table Student add column tax varchar(40);
    alter table Student add column city varchar(50),add column course varchar(50);
    update student set fees=50000 where s_id=101;
    update student set course="data A",city="Sitapu",tax="30%" where s_id=101;
    alter table student modify s_mobile_no bigint;
    alter table student rename student_INFO;
    alter table student_INFO RENAME student;
    alter table student rename column tax to Gst;
    alter table student modify s_mobile_no varchar(50) not null;
    select * from student;
    alter table student modify s_email int(50);
    insert into student value(10152,"aadarsffhsafi","aadarsfh20302030@gmail.com","98785590187");
	desc student ;
    

    


    