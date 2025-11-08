Company Database SQL Project
Project Overview

Project Title: Company Database Management and Analysis
Level: Intermediate
Database: company_1

This project demonstrates the use of SQL for managing and analyzing data in a multi-table company database. It simulates real-world business data involving employees, departments, customers, products, and orders.

The project focuses on advanced SQL concepts such as joins, subqueries, aggregate functions, filtering, grouping, and sorting, essential for intermediate-level data analysts and database developers.

Objectives

1.Design and set up a relational database (company_1) with multiple linked entities.
2.Explore and clean the data to ensure accuracy and integrity.
3.Use joins and subqueries to connect and analyze relationships.
4.Apply aggregate functions to calculate business metrics.
5.Use filtering, grouping, and sorting to derive key insights from company operations.
6.Generate meaningful reports for employee, product, and order performance.

Project Structure
1. Database Setup
CREATE DATABASE company_1;
USE company_1;


Tables Created:

1.emp – Stores employee details (EID, name, job, salary, department).
2.dept – Department information (DNO, DNAME, location).
3.customer – Customer data and linked location IDs.
4.location – City and state details.
5.product – Product catalog and pricing.
6.orders – Customer orders, product IDs, and responsible employees.

2. Data Exploration & Cleaning

Record Count

SELECT COUNT(*) AS total_employees FROM emp;
SELECT COUNT(*) AS total_departments FROM dept;
SELECT COUNT(*) AS total_orders FROM orders;


Null Value Check

SELECT * FROM emp
WHERE FNAME IS NULL OR LNAME IS NULL OR SAL IS NULL;


Remove Records with NULL Values

DELETE FROM emp
WHERE FNAME IS NULL OR LNAME IS NULL OR SAL IS NULL;

3. Data Analysis & SQL Operations

This section includes important SQL queries involving joins, subqueries, functions, filtering, grouping, and sorting data.

🔹 A. Joins (Combining Data Across Tables)

1️⃣ Employee and Department Details

SELECT e.FNAME, e.LNAME, d.DNAME, d.LID
FROM emp e
JOIN dept d ON e.DNO = d.DNO;


2️⃣ Orders with Customer and Product Details

SELECT o.ORDER_ID, c.FIRST_NAME, c.LAST_NAME, p.PNAME, p.PRICE
FROM orders o
JOIN customer c ON o.CID = c.CID
JOIN product p ON o.PRODUCT_ID = p.PRODUCT_ID;


3️⃣ Customers with Location Information

SELECT c.FIRST_NAME, c.LAST_NAME, l.CITY, l.STATE
FROM customer c
JOIN location l ON c.LID = l.LID;

🔹 B. Subqueries (Nested Queries)

1️⃣ Employees Earning Above Average Salary

SELECT FNAME, LNAME, SAL
FROM emp
WHERE SAL > (SELECT AVG(SAL) FROM emp);


2️⃣ Employees Working in the Same Department as ‘Hema Shetty’

SELECT FNAME, LNAME
FROM emp
WHERE DNO = (
    SELECT DNO FROM emp WHERE FNAME = 'Hema' AND LNAME = 'Shetty'
);


3️⃣ Products Priced Higher Than the Average Product Price

SELECT PNAME, PRICE
FROM product
WHERE PRICE > (SELECT AVG(PRICE) FROM product);

🔹 C. Functions and Calculations

1️⃣ Calculate Average, Maximum, and Minimum Salary

SELECT 
    ROUND(AVG(SAL), 2) AS avg_salary,
    MAX(SAL) AS highest_salary,
    MIN(SAL) AS lowest_salary
FROM emp;


2️⃣ Total Orders per Employee

SELECT e.FNAME, e.LNAME, COUNT(o.ORDER_ID) AS total_orders
FROM emp e
JOIN orders o ON e.EID = o.EID
GROUP BY e.FNAME, e.LNAME;


3️⃣ Total Revenue by Product

SELECT p.PNAME, SUM(p.PRICE) AS total_revenue
FROM product p
JOIN orders o ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.PNAME
ORDER BY total_revenue DESC;

🔹 D. Filtering and Conditions

1️⃣ Employees with Salary Between ₹30,000 and ₹100,000

SELECT FNAME, LNAME, SAL
FROM emp
WHERE SAL BETWEEN 30000 AND 100000;


2️⃣ Customers from Tamil Nadu

SELECT c.FIRST_NAME, c.LAST_NAME, l.CITY, l.STATE
FROM customer c
JOIN location l ON c.LID = l.LID
WHERE l.STATE = 'Tamil Nadu';


3️⃣ Orders Placed in May 2024

SELECT *
FROM orders
WHERE MONTH(ORDER_DATE) = 5 AND YEAR(ORDER_DATE) = 2024;

🔹 E. Grouping and Aggregation

1️⃣ Department-Wise Average Salary

SELECT d.DNAME, AVG(e.SAL) AS avg_salary
FROM emp e
JOIN dept d ON e.DNO = d.DNO
GROUP BY d.DNAME;


2️⃣ Count of Employees per Department

SELECT d.DNAME, COUNT(e.EID) AS employee_count
FROM emp e
JOIN dept d ON e.DNO = d.DNO
GROUP BY d.DNAME;


3️⃣ Orders Count by Product

SELECT p.PNAME, COUNT(o.ORDER_ID) AS order_count
FROM product p
JOIN orders o ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.PNAME
ORDER BY order_count DESC;

🔹 F. Sorting and Ordering

1️⃣ Employees Sorted by Salary (Descending)

SELECT FNAME, LNAME, JOB, SAL
FROM emp
ORDER BY SAL DESC;


2️⃣ Customers Sorted by Last Name

SELECT FIRST_NAME, LAST_NAME
FROM customer
ORDER BY LAST_NAME ASC;


3️⃣ Products Sorted by Price

SELECT PNAME, PRICE
FROM product
ORDER BY PRICE DESC;

Findings

Employee Insights:

1.The highest-paid employee is Siddarth Patil (CEO) with a ₹5,00,000 salary.
2.The average employee salary ranges between ₹30K and ₹1.5L.
3.IT and Sales have the largest employee counts.

Department Analysis:

1.IT and Sales departments show the most activity.
2.HR and Finance maintain smaller teams with focused roles.

Customer and Order Insights:

1.Customers are spread across multiple states, mostly in South India.
2.Orders peak between March and August 2024, showing seasonal trends.
3.High-demand products include Laptops, Game Consoles, and Headphones.

Product Insights:

1.Premium electronics drive most revenue.
2.Accessories have high sales frequency.

Reports

1.Employee Report: Department, job role, and salary insights.
2.Customer Report: Customer location and order behavior.
3.Sales Report: Product-wise and monthly order trends.
4.Performance Report: High-performing employees and top-selling products.

Conclusion

This project demonstrates the application of intermediate SQL skills to manage and analyze multi-table business data.
It highlights the use of:

1.Joins for relational insights
2.Subqueries for dynamic data filtering
3.Aggregate Functions for summarizing metrics
4.Filtering, Grouping, and Sorting for effective data presentation

The company_1 database provides a realistic environment for data analysis, enabling the discovery of insights related to employees, departments, customers, and product sales.It serves as a valuable intermediate-level SQL project for aspiring Data Analysts and Database Developers.
