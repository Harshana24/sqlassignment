create database FISDB  --create a database--


create table department			--create table 'department'--
(
	deptno int primary key , 
	dname varchar(30), 
	loc varchar(30)
)

create table employee			--create table 'employee'--
(
	empno int primary key, 
	ename varchar(30),
	job varchar(30), 
	mgrid int, 
	hiredate date, 
	sal float, 
	comm int, 
	deptno int references dept(deptno)
)


insert into department values                --adding values to table department--
(10  ,'ACCOUNTING', 'NEW YORK') ,
(20  ,'RESEARCH',   'DALLAS'), 
(30  ,'SALES',      'CHICAGO'), 
(40  ,' OPERATIONS' ,'BOSTON' )

insert into employee values		     --adding values to table employee--
(7369,    'SMITH',      'CLERK'	,      7902   	  '17-DEC-80'     	 ,800,	           20,null),
(7499,   'ALLEN',      'SALESMAN',     7698,      '20-FEB-81'    	 ,1600     ,300    ,30),
(7521,   'WARD',	  'SALESMAN',  7698,      '22-FEB-81',  		 1250,     500,    30),
(7566,   'JONES',     'MANAGER',       7839,      '02-APR-81',   	 2975,      null,      20),
(7654,    'MARTIN',    'SALESMAN',     7698,      '28-SEP-81', 		 1250,    1400,    30),
(7698,	  'BLAKE', 	  'MANAGER', 	7839, 	  '01-MAY-81',    	 2850,        null,    30),
(7782, 	  'CLARK',     'MANAGER',      7839,      '09-JUN-81',   	       2450,null,            10),
(7788,    'SCOTT',     'ANALYST',       7566,     '19-APR-87',       	 3000, null,           20),
(7839,    'KING',      'PRESIDENT',    null,      '17-NOV-81',       	 5000,     null,      10),
(7844,    'TURNER ',   'SALESMAN',      7698,     '08-SEP-81',    	 1500,      0,     30),
(7876,    'ADAMS ',    'CLERK',         7788,     '23-MAY-87',       	 1100, null,           20),
(7900,    'JAMES',     'CLERK',     7698,   	  '03-DEC-81',  	  950, null,            30),
(7902,    'FORD',      'ANALYST',       7566,     '03-DEC-81',   	 3000,null,            20),
(7934,    'MILLER',    'CLERK',         7782,     '23-JAN-82',		 1300,null,            10)








select * from employee where ename like'A%'    --1. List all employees whose name begins with 'A'--

select * from employee where mgrid is null     --2. select employees without manager--  
  

 
select empno, ename,sal  from employee where sal between 1200 and 1400   --3. List employee name, number and salary with salaray range 1200 to 1400--


update employee set sal=sal*0.10 from employee e left join department d on e.deptno=d.deptno where d.dname='Research'   --10% rise in pay--

 
select count(job) as 'Number of Clerks employed'from employee where job='CLERK'  ----5. Find the number of CLERKS employed. Give it a descriptive heading--


select job,avg(sal) as 'Average Salary',count(job) as 'No. of employees' from employee group by job  --6. Find the average salary for each job type and the number of people employed in each job. select avg(sal) from empt group by job
 

select ename,sal from employee where job='Analyst' and sal>1200 and deptno=20 order by ename asc  --7. Get the names and salaries of all the analysts earning more than 1200 who are based in department 20. Sort the answer by ascending order of name. 


 
select * from department where not exists (select deptno from employee where departmentt.deptno=employee.deptno)        
--8. List full details of departments that don't have any employees--

 
select  min(sal)as'Lowest Salary', max(sal) as 'Highest Salary' from employee         --9. List the employees with the lowest and highest salary--



select d.dname,d.deptno,sum(e.sal) as 'Total Salary' from department d left join employee e on e.deptno=d.deptno group by d.deptno,d.dname    --10. For each department, list its name and number together with the total salary paid to employees in that department-- 


select sal,ENAME from employee WHERE ename='Miller'or ename='Smith'       --11. Find out salary of both MILLER and SMITH--


select ename from employee where ename like 'A%'or ename like'M%'           --12. Find out the names of the employees whose name begin with ‘A’ or ‘M’--

select ename,sal*12 as 'Yearly Salary' from employee where ename='Smith'         
--13. Compute yearly salary of SMITH--


select ename,sal from employee where sal not between 1500 and 2850  --14. List the name and salary for all employees whose salary is not in the range of 1500 and 2850--