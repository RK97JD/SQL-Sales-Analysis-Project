create database SQL_Sales_analysis_project;
use SQL_Sales_analysis_project;

create table orders (
Invoice_ID varchar(15) primary key,
Branch varchar(5),
City varchar(20),
Customertype varchar(50),
Gender varchar(30),
Productline Varchar(80),
Unitprice decimal(5,2),
Quantity int,
Tax5per decimal(5,2),
Total decimal(10,2),
ordertime time,
payment varchar(50)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/supermarket_sales - Sheet1.csv'
INTO TABLE orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- a) Total_sales by productline
select Productline,sum(Total) as Total_sales from orders
group by Productline;

-- b) Total_sales by city
select City, sum(Total) as Total_sales from orders
group by City;

-- c) Total_sales by Customertype
select Customertype, sum(Total) as Total_sales from orders
group by Customertype;

-- d) Total_sales by Gender
select Gender, sum(Total) as Total_sales from orders
group by Gender;





