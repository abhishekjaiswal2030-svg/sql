create database BankingDB;
use BankingDB;
CREATE TABLE Customers(CustomerID INT PRIMARY KEY ,FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50),Email VARCHAR(100) UNIQUE NOT NULL,Phone VARCHAR(20) UNIQUE NOT NULL ,DateOfBirth DATE);

CREATE TABLE Accounts (AccountID INT PRIMARY KEY ,AccountType VARCHAR(20),Balance DECIMAL(10,2),CustomerID INT,BranchID INT);

CREATE TABLE Transactions (TransactionID INT PRIMARY KEY ,TransactionDate DATE,Amount DECIMAL(10,2),TransactionType VARCHAR(20),AccountID INT);

CREATE TABLE Branches (BranchID INT PRIMARY KEY ,BranchName VARCHAR(100),BranchAddress VARCHAR(200),BranchPhone VARCHAR(15));

CREATE TABLE AccountBranches (AssignmentDate DATE);

CREATE TABLE Loans (LoanID INT PRIMARY KEY ,LoanAmount DECIMAL(10,2),InterestRate DECIMAL(5,2),StartDate DATE,EndDate DATE,CustomerID INT);

DESC Customers;
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



