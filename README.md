# SQL-Practice-questions with Answers also the SQL commands.

create database SQLPractice;	
use SQLPractice;
Create table departments (
department_id int primary key,
department_name varchar(50)
);
insert into departments
(department_id,department_name)
Values
(1, "IT"),
(2, "HR"),
(3, "Finance"),
(4, "Sales"),
(5, "Marketing");
create table project (
project_id int primary key,
project_name varchar(255),
start_date date
);
insert into project
(project_id,project_name,start_date)
values
(1,"project Alpha","2023-01-01"),
(2,"project Beta","2023-02-01"),
(3,"project Gamma","2023-03-01");
