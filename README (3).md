# SQL Data Analyst Portfolio – 200+ Queries

> ✅ Extracted from personal SQL notes and documented for GitHub portfolio use.

---

## 📌 Project Overview
This repository contains **200+ SQL queries** written and executed as part of my **SQL Data Analyst Portfolio Project**.  
The queries cover **CRUD operations, joins, subqueries, aggregation, functions, and analytical SQL** using **MySQL**.

---

## 🛠️ Tools & Technologies
- **Database:** MySQL  
- **Environment:** MySQL Command Line / Workbench  
- **Skills:** SQL Fundamentals → Advanced SQL  

---

## 📂 Query Documentation Format

Each query is documented as:

```
Query No:
Question:
SQL Query:
```

---

## 🟦 SECTION 1: Database & Table Creation (DDL)

### Query 1: Create Database
```sql
CREATE DATABASE company;
```

### Query 2: Use Database
```sql
USE company;
```

### Query 3: Show Databases
```sql
SHOW DATABASES;
```

### Query 4: Create EMP Table
```sql
CREATE TABLE EMP (
  EID INT PRIMARY KEY,
  FNAME VARCHAR(20),
  JOB VARCHAR(20),
  SAL DECIMAL(10,2),
  DNO INT
);
```

---

## 🟦 SECTION 2: Data Manipulation (CRUD – DML)

### Query 15: Insert Employee Record
```sql
INSERT INTO EMP VALUES (101,'AMAN','MANAGER',50000,10);
```

### Query 16: Update Employee Salary
```sql
UPDATE EMP SET SAL=60000 WHERE EID=101;
```

### Query 17: Delete Employee Record
```sql
DELETE FROM EMP WHERE EID=101;
```

---

## 🟦 SECTION 3: Basic SELECT Queries

### Query 30: Display All Employees
```sql
SELECT * FROM EMP;
```

### Query 31: Employees Named AMAN
```sql
SELECT * FROM EMP WHERE FNAME='AMAN';
```

---

## 🟦 SECTION 4: Filtering & Conditions

### Query 45: Salary Greater Than 25000
```sql
SELECT * FROM EMP WHERE SAL > 25000;
```

### Query 46: Job Contains 'MAN'
```sql
SELECT * FROM EMP WHERE JOB LIKE '%MAN%';
```

---

## 🟦 SECTION 5: Aggregate Functions & GROUP BY

### Query 70: Count Employees per Department
```sql
SELECT COUNT(*), DNO FROM EMP GROUP BY DNO;
```

### Query 71: Departments with Avg Salary > 30000
```sql
SELECT DNO FROM EMP GROUP BY DNO HAVING AVG(SAL) > 30000;
```

---

## 🟦 SECTION 6: Subqueries

### Query 110: Employees Earning More Than Average Salary
```sql
SELECT * FROM EMP
WHERE SAL > (SELECT AVG(SAL) FROM EMP);
```

### Query 115: Salary Greater Than Department Average
```sql
SELECT * FROM EMP E1
WHERE SAL > (
  SELECT AVG(SAL) FROM EMP
  WHERE DNO = E1.DNO
);
```

---

## 🟦 SECTION 7: Joins

### Query 160: Employee Name with Department Name
```sql
SELECT E.FNAME, D.DNAME
FROM EMP E
INNER JOIN DEPT D
ON E.DNO = D.DNO;
```

### Query 170: Left Join Example
```sql
SELECT *
FROM EMP
LEFT JOIN DEPT
ON EMP.DNO = DEPT.DNO;
```

---

## 🟦 SECTION 8: Analytical Queries

### Query 190: Top Paid Employees
```sql
SELECT * FROM EMP
ORDER BY SAL DESC
LIMIT 5;
```

### Query 200: Monthly Revenue
```sql
SELECT DATE_FORMAT(ORDER_DATE,'%M'),
SUM(PRICE)
FROM ORDERS
JOIN PRODUCT USING(PRODUCT_ID)
GROUP BY 1;
```

---

## ✅ Key Skills Demonstrated
- CRUD operations
- Joins & Subqueries
- Aggregate & analytical SQL
- Business-focused querying
- Professional SQL documentation

---

## 📌 Conclusion
This project demonstrates strong hands-on SQL skills through **200+ well-structured queries**, suitable for real-world data analysis and reporting.

