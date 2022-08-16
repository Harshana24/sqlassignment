create table client
(
client_id int primary key.
client_name varchar(40) not null,
address varchar(40),
mail_id varchar(40) unique,
contact bigint,
business varchar(20) not null
)


create table employees
(
eno int primary key,
ename varchar(40) not null,
job varchar(20),
salary float check salary>0,
deptno int foreign key references department(deptno)
)


create table department
(
deptno int primary key,
dep_name varchar(15),
loc varchar(20)
)

create table projects
(
proj_id int primary key,
descr varchar(40) not null,
start_date date,
planned_end_date date,
actual_end_date date,
budget int check(budget>0),
clien_id int,
check(actual_end_date>planned_end_date)
)


alter table projects
add constraint fk_project foreign key(client_id) references clients(client_id)



create table emptask
(
proj_id int not null,
eno int not null,
start_date date,
end_date date,
task varchar(20) not null,
status varchar(20) not null
)


alter table emptasks
add constraint pk_emptask primary key(proj_id,eno)



alter table emptasks
add constraint pk_emptask1 foreign key(proj_id) references projects(proj_id)


alter table emptasks
add constraint pk_emptask2 foreign key(eno) references projects(eno)


insert into clients values
(1001	,'ACME Utilities','Noida','contact@acmeutil.com',9567880032,'Manufacturing'),
(1002,	'Trackon Consultants'	,'Mumbai',	'consult@trackon.com',8734210090,	'Consultant'),
(1003	,'MoneySaver Distributors'	,'Kolkata','save@moneysaver.com',7799886655,'Reseller'),
(1004,'Lawful Corp'	,'Chennai',	'justice@lawful.com',9210342219,	'Professional')


insert into  emptasks values
(401, 7001,'2011-04-01','2011-04-20', 'System Analysis','Completed'),
(401 ,7002 ,'2011-04-21', '2011-05-30', 'System Design','Completed')

insert into employees values
(7001 ,'Sandeep','Analyst', 25000 ,10),
(7002,'Rajesh','Designer', 30000 ,10),
(7003 ,'Madhav', 'Developer' ,40000 ,20),
(7004,'Manoj', 'Developer', 40000, 20),
(7005, 'Abhay' ,'Designer',35000,10),
(7006, 'Uma' ,'Tester', 30000, 30)


insert into department values
(10 ,'Design' ,'Pune'),
(20 ,'Development', 'Pune'),
(30 ,'Testing', 'Mumbai'),
(40 ,'Document', 'Mumbai')


insert into project values
(401, 'Inventory', '2011-04-01', '2011-10-01', '2011-08-31',150000 ,1001),
(402, 'Accounting', '2011-08-01', '2012-01-01',NULL, 500000, 1002)

select * from clients;
select * from department;
select * from emptasks;
select * from project;
select * from employess;
