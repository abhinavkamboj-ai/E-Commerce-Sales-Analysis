USE ECOMMERCE;

SELECT * FROM Ecom_orders;

--1. Total Orders
SELECT COUNT(*) AS TOTAL_ORDERS FROM Ecom_orders;

--2. Total Sales
SELECT SUM(Net_Amount) AS TOTAL_Sales FROM Ecom_orders

--3. Top Products
SELECT PRODUCT, SUM(Net_Amount) AS TOTAL_SALES FROM Ecom_orders
GROUP BY PRODUCT
ORDER BY TOTAL_SALES DESC

--4. Top Cities
SELECT City, SUM(Net_Amount) AS TOTAL_SALES FROM Ecom_orders
GROUP BY City
ORDER BY TOTAL_SALES DESC

--5. Monthly Sales
SELECT MONTH, SUM(Net_Amount) AS Total_Sales FROM Ecom_orders
group by MONTH
ORDER BY TOTAL_SALES DESC

--6. Highest Profit Product
SELECT TOP 1 PRODUCT, SUM(Profit) AS Profit FROM Ecom_orders
GROUP BY PRODUCT
ORDER BY Profit DESC

--7. Payment Mode
SELECT Payment_Mode, COUNT(*) AS TOTAL_ORDERS FROM Ecom_orders
GROUP BY Payment_Mode
ORDER BY TOTAL_ORDERS DESC

--8. Cancelled Orders
SELECT * FROM Ecom_orders
WHERE Order_Status= 'Cancelled'

--9. Product which are giving Loss.
SELECT * FROM Ecom_orders
WHERE PROFIT<0

--10 TOP 5 Customers AS PER PROFIT.
SELECT TOP 5 Customer_Name, SUM(PROFIT) AS TOTAL_PROFIT FROM Ecom_orders
GROUP BY Customer_Name
ORDER BY TOTAL_PROFIT DESC

