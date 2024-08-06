select t.Top_Name,c.*
from Topic t , Course c
where t.Top_Id=c.Top_Id

create table sales
(
ProductID int,
SalesmanName varchar(10),
Quantity int
)
Go

insert into sales
values  (1,'ahmed',10),
		(1,'khalid',20),
		(1,'ali',45),
		(2,'ahmed',15),
		(2,'khalid',30),
		(2,'ali',20),
		(3,'ahmed',30),
		(4,'ali',80),
		(1,'ahmed',25),
		(1,'khalid',10),
		(1,'ali',100),
		(2,'ahmed',55),
		(2,'khalid',40),
		(2,'ali',70),
		(3,'ahmed',30),
		(4,'ali',90),
		(3,'khalid',30),
		(4,'khalid',90)


		select  s.SalesmanName,s.ProductID, sum(s.Quantity) "quantity"
		from sales s
		group by s.SalesmanName, s.ProductID

		select s.St_Fname+' '+s.St_Lname "full_name" , c.Crs_Name,sc.Grade
		from Student s , Stud_Course sc , Course c
		where s.St_Id=sc.St_Id and c.Crs_Id=sc.Crs_Id
		order by full_name

		create proc [dbo].[display_all_courses_data]
		as
		begin
		select *
		from Course
		end

		create or alter proc all_students_data @age1 int , @age2 int
		as
		begin
		select *
		from Student s
		where s.St_Age between @age1 and @age2
		end


		execute all_students_data 23,25


		select d.Dept_Id , d.Dept_Name
		from Department d