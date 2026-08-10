create database chatgpt;
use chatgpt;


CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(10,2),
    city VARCHAR(30),
    transaction_type VARCHAR(20)
);

INSERT INTO accounts
(account_id, customer_name, account_type, balance, city, transaction_type)
VALUES
(101, 'Rahul', 'Savings', 25000.00, 'Delhi', 'Deposit'),
(102, 'Priya', 'Current', 45000.00, 'Mumbai', 'Withdraw'),
(103, 'Aman', 'Savings', 18000.00, 'Delhi', 'Deposit'),
(104, 'Neha', 'Savings', 32000.00, 'Jaipur', 'Withdraw'),
(105, 'Rohit', 'Current', 55000.00, 'Mumbai', 'Deposit'),
(106, 'Sneha', 'Savings', 12000.00, 'Pune', 'Deposit'),
(107, 'Vikas', 'Current', 40000.00, 'Delhi', 'Withdraw'),
(108, 'Anjali', 'Savings', 28000.00, 'Pune', 'Deposit'),
(109, 'Karan', 'Savings', 15000.00, 'Jaipur', 'Withdraw'),
(110, 'Pooja', 'Current', 60000.00, 'Mumbai', 'Deposit');

SELECT*FROM accounts;

SELECT  customer_name , balance FROM accounts;

SELECT account_id, customer_name , city FROM accounts;

select* FROM accounts WHERE CITY='DELHI'; 

select* FROM accounts WHERE CITY='MUMBAI'; 

SELECT* FROM accounts WHERE Account_Type='SAVINGS';

SELECT* FROM accounts WHERE Account_Type='CURRENT';

SELECT * FROM accounts WHERE Balance>20000; 

SELECT * FROM accounts WHERE Balance<30000; 

SELECT * FROM accounts WHERE Balance=25000; 

select * FROM accounts WHERE  transaction_type='Deposit'; 

select * FROM accounts WHERE  transaction_type="withdraw"; 

select * from accounts where account_type='Savings' and city='Delhi';

select * from accounts where account_type='current' and city='Mumbai';

select * from accounts where city='Delhi'  city='Mumbai';


select * from accounts where Balance>20000 and Balance<50000;

-- ORDER BY / LIMIT /OFFSET - 16 to 25

select * from accounts order by balance ;
select * from accounts order by balance desc ;
select * from accounts order by customer_name ;
select * from accounts order by customer_name desc;
select * from accounts order by balance desc limit 1;
select * from accounts order by balance limit 1;
select * from accounts order by balance desc limit 3;
select * from accounts order by balance limit 5; 
select * from accounts order by balance limit 5 offset 2;
select * from accounts order by balance desc limit 4 offset 3;


-- Aggregate Functions - 26 to 32

select count(*) from accounts ;
select sum(balance) from accounts;
select avg(balance) from accounts;
select max(balance) from accounts;
select min(balance) from accounts;
select sum(balance) from accounts where account_type='savings';
select sum(balance) from accounts where account_type='current';


-- GROUP BY - 33 to 40
select * from accounts;


select city , count(customer_name) from accounts group by city ;

select city , sum(Balance) from accounts group by city ;

select city , avg(balance) from accounts group by city ;

select account_type ,count(customer_name) from accounts group by account_type ;

select account_type , sum(balance) from accounts group by account_type;

select transaction_type,count(customer_name)from accounts group by transaction_type;

select transaction_type,sum(balance)from accounts group by transaction_type;

select city,sum(balance)from accounts group by city order by sum(balance) desc;

-- HAVING - 41 to 45

select city,count(customer_name) from accounts group by city having count(customer_name)>2;

select city,sum(balance) from accounts group by city having sum(balance)>50000;

select city,avg(balance)from accounts group by city having avg(balance)>25000;

select transaction_type, sum(balance) from accounts group by transaction_type having sum(balance)>100000;



-- LIKE / Advanced Practice - 46 to 50

select * from accounts where customer_name like 'A%';

select * from accounts where customer_name like '%a';

select * from accounts where customer_name like '%i%';

select * from accounts where city like '%delhi' order by balance desc;

select * from accounts where city='Delhi' or city='Mumbai' order by balance desc;

select * from accounts where city  in('Delhi','Mumbai') order by balance desc;

select city , count(customer_name) ,sum(balance)from accounts group by city having count(customer_name)>1 order by  sum(balance) desc;











