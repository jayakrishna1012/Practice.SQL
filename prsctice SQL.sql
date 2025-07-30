Create database employee;
use employee;
create table em(EMP_ID int primary key,FIRST_NAME varchar(255),LAST_NAME varchar (255),SALARY int,JOINING_DATE date,DEPARTMENT varchar(255));
insert into em(EMP_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT) value (1,"venkatesh","s",100000,"2015/08/28","banking"),
(2,"Ragavi","P",75000,"2015/08/28","BUSINESS"),
(3,"Gopinath","c",50000,"2016/03/02","PHARMA"),
(4,"Dinesh","G",50000,"2016/03/02","INSURANCE"),
(5,"Saibabu","E",40000,"2017/07/08","SOFTWARE"),
(6,"Hasan","S",29000,"2017/07/08","MANUFACTURING"),
(7,"Divya","P",33000,"2017/07/08","HEALTHCARE"),
(8,"Aravindan","R",40000,"2017/07/08","HEALTHCARE"),
(9,"Sathish","MD",45000,"2016/03/02","AUTOMOBILE"),
(10,"Prasanth","PKP",34000,"2016/03/02","INSURANCE"),
(11,"Vijay","R",25684,"2016/03/02","BUSINESs"),
(12,"Sivakumar","K",54789,"2016/03/02","SOFTWARE");
-- Get all employee details fromthe employee table
select * from em;
-- Get First_Name,Last_Name from employee table
select first_name,last_name from em;
-- Get First_Name from employee table using alias name “Employee Name”
select first_name as employee_name from em;
--  Get First_Name from employee table in upper case
select upper(first_name) from em;
-- Get First_Name from employee table in lower case
select lower(first_name) from em;
-- Get unique DEPARTMENT from employee table
select distinct department from em;
--  Select first 3 characters of FIRST_NAME from EMPLOYEE
select substring(first_name,1,3) from em;
-- Get position of 'a' in name 'ragavi' from employee table
select first_name,position("a" in first_name) from em;
-- Get FIRST_NAME from employee table after removing white spaces from right side
--  Get FIRST_NAME from employee table after removing white spaces from left side
select ltrim(first_name),rtrim(first_name) from em;
-- Get length of FIRST_NAME from employee table
select length(first_name) from em;
-- Get First_Name from employee table after replacing 'a' with '$'
select replace(first_name,"a","$") from em;
-- Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat(first_name,"_",last_name) from em;
-- Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select year(joining_date),month(joining_date),day(joining_date) from em;
-- Get all employee details from the employee table order by First_Name Ascending
select * from em order by first_name asc;
--  Get all employee details from the employee table order by First_Name descending
select * from em order by first_name desc;
--  Get all employee details from the employee table order by First_Name Ascending and Salary descending
select * from em order by first_name asc, salary desc;

select * from em em where salary>=50000 and salary<=70000;
--  Get employee details from employee table whose employee name is “Dinesh”
select * from em where first_name="Dinesh";
-- Get employee details from employee table whose employee name are “Dinesh” and “Roy”
select * from em where not first_name="Dinesh" and not first_name="Roy";
 
