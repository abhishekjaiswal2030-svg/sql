create database BankingDB;
use BankingDB;
CREATE TABLE Customers(CustomerID INT PRIMARY KEY ,FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50),Email VARCHAR(100) UNIQUE NOT NULL,Phone VARCHAR(20) UNIQUE NOT NULL ,DateOfBirth DATE);

CREATE TABLE Accounts (AccountID INT PRIMARY KEY ,AccountType VARCHAR(20),Balance DECIMAL(10,2),CustomerID INT,BranchID INT);

CREATE TABLE Transactions (TransactionID INT PRIMARY KEY ,TransactionDate DATE,Amount DECIMAL(10,2),TransactionType VARCHAR(20),AccountID INT);

CREATE TABLE Branches (BranchID INT PRIMARY KEY ,BranchName VARCHAR(100),BranchAddress VARCHAR(200),BranchPhone VARCHAR(15));

CREATE TABLE AccountBranches (AssignmentDate DATE);
DROP TABLE AccountBranches ;
DESC AccountBranches;

CREATE TABLE Loans (LoanID INT PRIMARY KEY ,LoanAmount DECIMAL(10,2),InterestRate DECIMAL(5,2),StartDate DATE,EndDate DATE,CustomerID INT);

-- DESC Customers;
Desc Accounts;
Desc Transactions;
desc Branches;
desc AccountBranches;
desc Loans;

ALTER TABLE Accounts
ADD CONSTRAINT chk_MinBalance
CHECK (Balance >= 1000);

ALTER TABLE Accounts ADD CONSTRAINT FK_Accounts_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Transactions ADD CONSTRAINT FK_Transactions_Accounts FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID);

ALTER TABLE Loans ADD CONSTRAINT FK_Loans_Customers FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Accounts ADD CONSTRAINT FK_Accounts_Branches FOREIGN KEY (BranchID) REFERENCES Branches(BranchID);

insert into  Customers value(102,"ABHI","JAISWAL","ABHISHEKJAI8JHSSAL","854990187",'1998-04-15'),(101,"ABHI","JAISWAL","ABHISHEKJGYJYJAI8SSAL","8564990187",'1998-04-15'),(103,"ABHI","JAISWAL","ABHISHEKJJHJHBAI8SSAL","85499510187",'1998-04-15');

select*from customers;
delete from customers where CustomerID=101 , CustomerID=102 , CustomerID=103;

INSERT INTO Customers
(CustomerID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
(105, 'Priya', 'Patil', 'priya@gmail.com', '9988776655', '2000-09-20'),
(106, 'Amit', 'Patel', 'amit.patel@gmail.com', '9876500001', '1995-06-18'),
(107, 'Sneha', 'Joshi', 'sneha.joshi@gmail.com', '9876500002', '1997-09-12'),
(108, 'Rohan', 'Kulkarni', 'rohan.k@gmail.com', '9876500003', '1993-11-25');

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202, 105, 'Current', 40000),
(203, 106, 'Savings', 35000),
(204, 107, 'Current', 60000),
(205, 108, 'Savings', 45000);

INSERT INTO Transactions
(TransactionID, AccountID, TransactionDate, Amount, TransactionType)
VALUES
(302, 202, '2025-05-11', 2500, 'Withdraw'),
(303, 203, '2025-05-12', 10000, 'Deposit'),
(304, 204, '2025-05-13', 3000, 'Withdraw'),
(305, 205, '2025-05-14', 7000, 'Deposit');

select*from Transactions;

SELECT TransactionType, COUNT(*) FROM Transactions GROUP BY TransactionType;

SELECT TransactionType, sum(Amount) FROM Transactions GROUP BY TransactionType;

SELECT 



select * from Transactions where Amount>1000 and Amount<7000;

INSERT INTO Branches
(BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(1, 'Mumbai Branch', 'Andheri, Mumbai', '0221111111'),
(2, 'Pune Branch', 'Shivaji Nagar, Pune', '0202222222'),
(3, 'Nashik Branch', 'College Road, Nashik', '0253222222'),
(4, 'Nagpur Branch', 'Sitabuldi, Nagpur', '0712333333'),
(5, 'Navi Mumbai Branch', 'Vashi, Navi Mumbai', '0224444444');

INSERT INTO Loans
(LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(302, 300000, 9.25, '2025-02-10', '2028-02-10', 105),
(303, 750000, 8.75, '2025-03-20', '2032-03-20', 106),
(304, 250000, 10.00, '2025-04-05', '2029-04-05', 107),
(305, 1000000, 7.95, '2025-05-12', '2035-05-12', 108);

select loanid, sum(loanamount)

select max(Balance) from Accounts;
select min(Balance) from Accounts;
select count(Balance) from Accounts;
select sum(Balance) from Accounts; 
SELECT * FROM Accounts ORDER BY  Balance;
SELECT * FROM Accounts ORDER BY  Balance desc;


SELECT * FROM Customers WHERE FirstName LIKE '%a' limit 1 ;

SELECT * FROM Customers WHERE Email  LIKE '%gmail%' ;

SELECT * FROM Accounts WHERE Accounttype LIKE 'R%' limit 1 ;

SELECT * FROM Accounts WHERE Accounttype  IN  ('savings','current');

SELECT * FROM Accounts WHERE Accounttype in (balance>40000,balance<10000);

SELECT * FROM Accounts WHERE Accounttype in (balance>40000,balance<10000,balance=40000);

SELECT * FROM Accounts WHERE  balance between 10000 and 40000;

SELECT * FROM Accounts ORDER BY Balance DESC limit 3 offset 2;

SELECT * FROM Accounts ORDER BY Balance DESC limit 3 ;

SELECT * FROM Transactions LIMIT 5 OFFSET 3;

SELECT * FROM Transactions WHERE TransactionType IN ('Deposit','Withdrawal') ORDER BY TransactionDate DESC;


SELECT * FROM Customers WHERE FirstName LIKE 'S%' LIMIT 5;

SELECT * FROM Accounts WHERE AccountType = 'Savings' ORDER BY Balance DESC;







