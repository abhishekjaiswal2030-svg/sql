CREATE TABLE bakery_sales(
Order_ID INT PRIMARY KEY,
Order_Date DATE,
Order_Time TIME,
Product_Name VARCHAR(50),
Category VARCHAR(30),
Quantity INT,
Unit_Price_AED DECIMAL(10,2),
Total_Sales_AED DECIMAL(10,2),
Payment_Method VARCHAR(20),
Branch VARCHAR(50),
City VARCHAR(30)
);

-- Top selling products
SELECT Product_Name,SUM(Quantity) AS TotalSold
FROM bakery_sales
GROUP BY Product_Name
ORDER BY TotalSold DESC;

-- Total revenue
SELECT SUM(Total_Sales_AED) AS Revenue FROM bakery_sales;

-- Revenue by branch
SELECT Branch,SUM(Total_Sales_AED) Revenue
FROM bakery_sales
GROUP BY Branch
ORDER BY Revenue DESC;
