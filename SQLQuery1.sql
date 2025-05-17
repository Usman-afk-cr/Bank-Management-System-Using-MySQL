--Bank Management System
Create database bank
use bank

--Customer table
Create table Customer(
CustomerId int primary key,
name varchar(50),
Age int check(Age>=18),
address varchar(50),
PhoneNo int
);

--Loan table
create table Loan(
LoanNo int primary key,
loanType varchar(60),
duration int,
InterestRate float,
Amount int,
issueDate Date
);


--Bank Branch table
create table Branch(
BranchId int,
BranchName varchar(50),
BAddress varchar(50),
BPhone int,
BankCode int primary key
);

--Customer Loan table
create table CustomerLoan(
CId int,
CLoanNo int,
foreign key (CLoanNo) references Loan (LoanNo)
);

--Inserting data into customer table
insert into Customer values (1,'Usman',19,'Islamabad',03494928),
                            (2,'Ali',20,'Lahore',03444928),
							(3,'Hanan',18,'Multan',03423928),
							(4,'Kamran',21,'Gujranwala',03554928),
							(5,'Kaleem',22,'Karachi',03667928);

select*from Customer


--Inserting data into Loan table
insert into Loan values (1,'Insurence',3,0.3,12000,'2025-03-12'),
                        (2,'For Home',2,0.9,150500,'2022-05-11'),
						(3,'For car',6,0.7,120300,'2000-02-10'),
						(4,'Habib',8,0.6,11000,'2019-01-09');

select*from Loan

--Inserting data into Bank branch table
insert into Branch values (1,'United Branch','Lahore',08273756,101),
                        (2,'Pindi Branch','RawalPindi',02883783,102),
						(3,'Hassan Branch','sindh',0895522,103),
						(4,'Habib Branch','Islamabad',72765254,104);

select*from branch

--Inserting data into Customer Loan table
insert into CustomerLoan values (101,1),
                                (1021,2),
								(10211,3),
								(1011,4);
select*from CustomerLoan

--query 1
select BranchId, BAddress, Bphone,BankCode  
from Branch;

--Query 2
select Top 1*from Loan order by Amount DESC
 

--Query 3
select distinct *from Branch

--Query 4
  --Youngest
select top 1 *from Customer order by Age Asc
   --Oldest
select top 1 *from Customer order by Age Desc

--Query 5
select*from Loan
where duration > 1
And InterestRate not in (5000,10000)

--Query 6
select LoanNo
from Loan
where InterestRate in (8000,12000);

--Query 7
Select name
from Customer
where Age Between (18 , 35) order by Age Asc;

--query 8
select UPPer(BranchName) 
From Branch
where BranchName like '%a%';

--Query 9
select name 
from Customer
where name like '%s' and name like 'n%';

--Query 10
select top 3 *from Loan order By Amount DESC;

--Query 11
alter table Loan
add int  fee ;

--Query 12
Alter table  CustomerLoan
Drop Column CLoanNo;

--query 13
alter column 

--Query 14
Select name 
from Customer
where address in ('Lahore','Islamabad')
and Age > 18;

--Query 15 
select InterestRate
From Loan
where InterestRate>any (select InterestRate from Loan where duration<12);

--query 16
insert into Customer values(5,'Usman',16,'Islamabad',03494928);
//we apply condition of age so that's why 



