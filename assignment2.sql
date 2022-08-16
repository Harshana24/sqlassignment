
select * from employee where job='Manager'      --1. Retrieve a list of MANAGERS--


select ename,sal from employee where sal>1000  --2. Find out the names and salaries of all employees earning more than 1000 per month--


select ename,sal from employee where ename!='James' --3. Display the names and salaries of all employees except JAMES--


select * from employee where ename like 'S%'      --4. Find out the details of employees whose names begin with ‘S’--


select ename from employee where ename like '%A%'    --5. Find out the names of all employees that have ‘A’ anywhere in their name--


select ename from employee where ename like '__L%'    --6. Find out the names of all employees that have ‘L’ as their third character in their name--


select (sal*12/365) as 'Daily Salary' from employee where ename='Jones' --7. Compute daily salary of JONES--


select sum(sal) as 'Total Salary' from employee    --8. Calculate the total monthly salary of all employee--


select avg(sal*12) as 'Average Annual Salary' from employee     --9. Print the average annual salary--


select ename,job,sal,deptno from employee where job!='Salesman' and deptno=30   --10. Select the name, job, salary, department number of all employees except SALESMAN from department number 30--


select distinct(deptno) from employee;            --11. List unique departments of the EMP table--


select ename as 'Employee',sal as 'Monthly Salary' from employee where sal>1500 and deptno in(10,30)  --12. List the name and salary of employees who earn more than 1500 and are in department 10 or 30. Label the columns Employee and Monthly Salary respectively--


select ename,job,sal from employee where job in ('Manager','Analyst') and sal not in (1000,3000,5000) --13. Display the name, job, and salary of all the employees whose job is MANAGER or ANALYST and their salary is not equal to 1000, 3000, or 5000--


select ename,sal,comm from employee where comm>=sal*0.10   --14. Display the name, salary and commission for all employees whose commission amount is greater than their salary increased by 10%--

 
select ename from employee where ename like '%L%L%' and (deptno=30 or mgrid=7782)   --17. Display the name of all employees who have two Ls in their name and are in department 30 or their manager is 7782--

