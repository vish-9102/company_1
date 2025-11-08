Company Database SQL Project
Project Overview

Project Title: Company Database Management and Analysis
Level: Intermediate
Database: company_1

This project demonstrates the use of SQL for managing and analyzing data in a multi-table company database.
It simulates real-world business data involving employees, departments, customers, products, and orders.

The project focuses on advanced SQL concepts such as JOINS, SUBQUERIES, AGGREGATE FUNCTIONS, FILTERING, GROUPING, and SORTING — essential for intermediate-level data analysts and database developers.

Objectives:

1.Design and set up a relational database (company_1) with multiple linked entities.
2.Explore and clean the data to ensure accuracy and integrity.
3.Use joins and subqueries to connect and analyze relationships.
4.Apply aggregate functions to calculate business metrics.
5.Use filtering, grouping, and sorting to derive insights.
6.Generate reports for employee, product, and order performance.

Project Structure:

Database Setup
CREATE DATABASE company_1;
USE company_1;


Tables Created:

1.emp – Stores employee details (EID, Name, Job, Salary, Department).
2.dept – Department information (DNO, DNAME, Location).
3.customer – Customer data and linked location IDs.
4.location – City and state details.
5.product – Product catalog and pricing.
6.orders – Customer orders, product IDs, and responsible employees.

Data Exploration & Cleaning:

Record Count

SELECT COUNT(*) AS total_employees FROM emp;
SELECT COUNT(*) AS total_departments FROM dept;
SELECT COUNT(*) AS total_orders FROM orders;


Check for NULL Values

SELECT * FROM emp
WHERE FNAME IS NULL OR LNAME IS NULL OR SAL IS NULL;


Delete Records with NULL Values

DELETE FROM emp
WHERE FNAME IS NULL OR LNAME IS NULL OR SAL IS NULL;

Data Analysis & SQL Operations:

This section includes important SQL queries involving joins, subqueries, functions, filtering, grouping, and sorting data.

🔹 A. JOINS (Combining Data Across Tables)

1. Employee and Department Details

SELECT e.FNAME, e.LNAME, d.DNAME, d.LID
FROM emp e
JOIN dept d ON e.DNO = d.DNO;


2. Orders with Customer and Product Details

SELECT o.ORDER_ID, c.FIRST_NAME, c.LAST_NAME, p.PNAME, p.PRICE
FROM orders o
JOIN customer c ON o.CID = c.CID
JOIN product p ON o.PRODUCT_ID = p.PRODUCT_ID;


3. Customers with Location Information

SELECT c.FIRST_NAME, c.LAST_NAME, l.CITY, l.STATE
FROM customer c
JOIN location l ON c.LID = l.LID;

🔹 B. SUBQUERIES (Nested Queries)

1. Employees Earning Above Average Salary

SELECT FNAME, LNAME, SAL
FROM emp
WHERE SAL > (SELECT AVG(SAL) FROM emp);


2. Employees Working in the Same Department as ‘Hema Shetty’

SELECT FNAME, LNAME
FROM emp
WHERE DNO = (
    SELECT DNO FROM emp
    WHERE FNAME = 'Hema' AND LNAME = 'Shetty'
);


3. Products Priced Higher Than Average Product Price

SELECT PNAME, PRICE
FROM product
WHERE PRICE > (SELECT AVG(PRICE) FROM product);

🔹 C. FUNCTIONS & CALCULATIONS

1. Calculate Average, Maximum, and Minimum Salary

SELECT 
    ROUND(AVG(SAL), 2) AS avg_salary,
    MAX(SAL) AS highest_salary,
    MIN(SAL) AS lowest_salary
FROM emp;


2. Total Orders per Employee

SELECT e.FNAME, e.LNAME, COUNT(o.ORDER_ID) AS total_orders
FROM emp e
JOIN orders o ON e.EID = o.EID
GROUP BY e.FNAME, e.LNAME;


3. Total Revenue by Product

SELECT p.PNAME, SUM(p.PRICE) AS total_revenue
FROM product p
JOIN orders o ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.PNAME
ORDER BY total_revenue DESC;

🔹 D. FILTERING & CONDITIONS

1. Employees with Salary Between ₹30,000 and ₹100,000

SELECT FNAME, LNAME, SAL
FROM emp
WHERE SAL BETWEEN 30000 AND 100000;


2. Customers from Tamil Nadu

SELECT c.FIRST_NAME, c.LAST_NAME, l.CITY, l.STATE
FROM customer c
JOIN location l ON c.LID = l.LID
WHERE l.STATE = 'Tamil Nadu';


3. Orders Placed in May 2024

SELECT *
FROM orders
WHERE MONTH(ORDER_DATE) = 5
AND YEAR(ORDER_DATE) = 2024;

🔹 E. GROUPING & AGGREGATION

1. Department-Wise Average Salary

SELECT d.DNAME, AVG(e.SAL) AS avg_salary
FROM emp e
JOIN dept d ON e.DNO = d.DNO
GROUP BY d.DNAME;


2. Count of Employees per Department

SELECT d.DNAME, COUNT(e.EID) AS employee_count
FROM emp e
JOIN dept d ON e.DNO = d.DNO
GROUP BY d.DNAME;


3. Orders Count by Product

SELECT p.PNAME, COUNT(o.ORDER_ID) AS order_count
FROM product p
JOIN orders o ON p.PRODUCT_ID = o.PRODUCT_ID
GROUP BY p.PNAME
ORDER BY order_count DESC;

🔹 F. SORTING & ORDERING

1. Employees Sorted by Salary (Descending)

SELECT FNAME, LNAME, JOB, SAL
FROM emp
ORDER BY SAL DESC;


2. Customers Sorted by Last Name

SELECT FIRST_NAME, LAST_NAME
FROM customer
ORDER BY LAST_NAME ASC;


3. Products Sorted by Price

SELECT PNAME, PRICE
FROM product
ORDER BY PRICE DESC;

Findings:
Employee Insights

1.The highest-paid employee is Siddarth Patil (CEO) with ₹5,00,000 salary.
2.Average employee salary ranges between ₹30K and ₹1.5L.
3.IT and Sales departments have the highest employee counts.

Department Insights

1.IT and Sales show maximum activity.
2.HR and Finance have smaller, specialized teams.

 Customer & Order Insights

1.Customers span across Karnataka, Tamil Nadu, Kerala, Telangana, and Andhra Pradesh.
2.Orders peak between March–August 2024 (seasonal trend).
3.High-demand products include Laptops, Game Consoles, and Headphones.

 Product Insights

1.Premium electronics generate most revenue.
2.Accessories like Headphones and Bluetooth Speakers are most frequently ordered.

Reports:

1.Employee Report: Department, job role, and salary insights.
2.Customer Report: Location and order behavior.
3.Sales Report: Product-wise and monthly order trends.
4.Performance Report: Top employees and best-selling products.

Conclusion:

This project demonstrates the application of intermediate SQL skills to manage and analyze multi-table business data.

It highlights the use of:

1.JOINS for relational insights
2.SUBQUERIES for dynamic data filtering
3.AGGREGATE FUNCTIONS for summarization
4.FILTERING, GROUPING, and SORTING for effective analysis

The company_1 database provides a realistic enterprise environment, enabling the discovery of insights related to employees, departments, customers, and product sales.

This serves as an excellent intermediate-level SQL project for aspiring Data Analysts and Database Developers.
