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
-- Get all the details of the employee whose salary is greater than 60000
select * from em where salary>60000;
-- Get all the details of the employee whose salary is between 50000 to 70000
select  * from em where salary>50000 and salary<70000;
-- Get first name and last name as single column separated by space of the employee whose salary is less than 50000
 select concat(first_name," ",last_name) from em where salary>50000;
-- Get first name and salary, arrange it by salary in ascending order
select * from em order by first_name,salary asc;
-- Get all the details of the employee whose salary is between 50000 to 70000 and arrange them by their first name as ascending order
select * from em where salary>50000 and salary<70000 order by first_name asc;
-- get the names which is staring with 's'
select first_name from em where first_name like "s%";
-- Get the names which is ending with 'h'
select first_name from em where first_name like "%h";
-- Get the names which contains the letter 'e'
select first_name from em where first_name like "%e%";
-- Get the names which having the 3rd letter as 'i'
select first_name from em where first_name like "__i%";
-- Get the name which coints 5 letters and strts with letter 'H'
select first_name from em where first_name like "H____";
--  Get employee details from employee table whose first name starts with 's'
select *from em where first_name like"s%";
--  Get employee details from employee table whose first name contains 'v'
select *from  em where  first_name like "%v%";
-- Get employee details from employee table whose first name ends with 'n'
select * from em where first_name like "%n";
--  Get employee details from employee table whose first name ends with 'n' and name contains 4 letters
select * from em where first_name like"___n";
-- Get employee details from employee table whose first name starts with 'J' and name contains 4 letters
select * from em where first_name like "J___";
--  Get employee details from employee table who’s Salary greater than 60000
select * from em where salary>60000;
-- Get employee details from employee table who’s Salary less than 80000
select * from em where salary<80000;
-- Get employee details from employee table who’s Salary between 50000 and 80000
select * from em where salary between 50000 and 80000;
--  Get employee details from employee table whose name is venkatesh and ragavi
select * from em where first_name = "venkatesh" or first_name = "ragavi";
-- Get employee details from employee table hose joining year is “2015”
select * from em where year(joining_date)="2015";
-- Get employee details from employee table whose joining month is “January”
select * from em where month (joining_date)="january";
-- Get employee details from employee table who joined before January 1st 2017
select * from em where year(joining_date) <"2017/01/01";
--  Get employee details from employee table who joined after January 31st 2016
select * from em where year(joining_date)  >"2016/01/31";

-- sum
select sum(salary) from em;
-- average
select avg(salary) from em;
-- count
select count(salary) from em;
-- maximum
select max(salary) from em;
-- minimum
select min(salary) from em;
-- Get the number of employees in each department
select department,max(salary) from em group by department having sum(salary)>100000;
-- Get department,total salary with respect to a department from employee table
select department,sum(salary) from em group by department;
-- Get department,total salary with respect to a department from employee table order by total salary descending
select department,sum(salary) from em group by department order by  sum(salary) desc;
-- Get department,no of employees in a department,total salary with respect to a department from employee table order by total salary descending
select department,count(first_name),sum(salary) from em group by department order by sum(salary) desc; 
-- . Get department wise average salary from employee table order by salary ascending
select department, avg(salary) from em group by department order by avg(salary)asc;
-- Get department wise maximum salary from employee table order by salary ascending
select department,max(salary) from em group by department order by max(salary) asc;
-- Get department wise minimum salary from employee table order by salary ascending
select department,min(salary) from em group by department order by min(salary) asc;
-- Select no of employees joined with respect to year and month from employee table
select year(joining_date),month(joining_date),count(employee_id) from em group by year(joing_date),month(joining_date);
--  Select department,total salary with respect to a department from employee table where total salary greater than 800000 order by Total_Salary descending
select department, sum(salary) from em group by department having sum(salary) order by sum(salary) desc;

