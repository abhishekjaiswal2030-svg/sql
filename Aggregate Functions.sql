-- SQL Assignment: GROUP BY and Aggregate Functions
CREATE DATABASE Aggregate_FUNCTIONS;
USE Aggregate_FUNCTIONS;
create table Employee(EmpID INT primary KEY, EmpName varchar(50),Department VARCHAR(50), City VARCHAR(50), Salary dec(10.2), Experience varchar(50));
insert INTO Employee VALUES
(101, "Amit", "HR" ,"Delhi" ,45000 ,"2"),
(102,"Neha", "IT", "Lucknow", 70000, "5"),
(103 ,"Ravi" ,"IT", "Delhi" ,65000, "4"),
(104 ,"Priya" ,"Sales" ,"Mumbai", 50000 ,"3"),
(105 ,"Karan", "HR", "Lucknow" ,48000 ,"6"),
(106 ,"Sneha" ,"Sales", "Delhi", 52000 ,"2"),
(107 ,"rjun", "IT", "Mumbai", 80000, "7"),
(108 ,"Pooja" ,"HR ","Delhi", 55000 ,"5"),
(109 ,"Rohit" ,"Sales", "Lucknow" ,47000 ,"1"),
(110 ,"Anita", "IT" ,"Lucknow" ,72000 ,"6");

SELECT *FROM Employee;



select count(EMPID) FROM Employee;
select * FROM Employee ORDER BY SALARY DESC;
select * FROM Employee ORDER BY SALARY;
select AVG(SALARY) FROM Employee;
select SUM(SALARY) FROM Employee;
select Department, COUNT(*) FROM Employee GROUP BY Department;
select Department ,AVG(SALARY) FROM Employee GROUP BY Department;
select Department ,max(SALARY) FROM Employee GROUP BY Department;
select CITY , min(SALARY) FROM EMPLOYEE GROUP BY CITY;
select CITY , sum(SALARY) FROM EMPLOYEE GROUP BY CITY;
select DEPARTMENT , COUNT(*) FROM Employee group by DepartmenT HAVING count(*)>2 ;
select Department ,AVG(SALARY) FROM Employee GROUP BY Department HAVING AVG (SALARY)>60000;
SELECT department ,sum(experience) FROM Employee GROUP BY department;
select CITY , count(*) FROM employee group by CITY;
select DEPARTMENT , avg(SALARY) FROM EMPLOYEE GROUP BY DEPARTMENT order by AVG(SALARY) DESC;
