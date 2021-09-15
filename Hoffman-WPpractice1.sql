
use hlh5291;


/*1. What projects are in the PROJECT table? Show all information for each project.*/

select *
from project;


/*2.What are the ProjectID, ProjectName, StartDate, and EndDate values of projects in the PROJECT table?*/

select projectid, projectname, startdate, enddate
from project;


/*3. What projects in the PROJECT table started before August 1, 2019? 
Show all the information for each project.*/

select *
from project
where startdate < '2019-08-01';


/*4. What projects in the PROJECT table have not been completed? 
Show all the information for each project.*/

select *
from project
where enddate is null;


/*5. Who are the employees assigned to each project? 
Show ProjectID, EmployeeNumber, LastName, FirstName, and OfficePhone.*/

select project.projectid, employee.employeenumber, lastname, firstname, officephone
from project 
join assignment on project.projectid = assignment.projectid
join employee on assignment.employeenumber = employee.employeenumber;


/*6. Who are the employees assigned to each project? Show ProjectID, 
ProjectName, and Department. Show EmployeeNumber, LastName, FirstName, and OfficePhone.*/

select project.projectid, projectname, project.department, employee.employeenumber, lastname, firstname, officephone
from project 
join assignment on project.projectid = assignment.projectid
join employee on assignment.employeenumber = employee.employeenumber;


/*7. Who are the employees assigned to each project? 
Show ProjectID, ProjectName, Department, and DepartmentPhone. 
Show EmployeeNumber, LastName, FirstName, and OfficePhone. Sort by ProjectID in ascending order.*/

select project.projectid, projectname, project.department, departmentphone,
employee.employeenumber, lastname, firstname, officephone
from department 
join project on project.department = department.departmentname
join assignment on project.projectid = assignment.projectid
join employee on assignment.employeenumber = employee.employeenumber
order by projectid;


/*8. Who are the employees assigned to projects run by the Sales and Marketing department? 
Show ProjectID, ProjectName, Department, and DepartmentPhone. 
Show EmployeeNumber, LastName, FirstName, and OfficePhone. Sort by ProjectID in ascending order.*/

select project.projectid, projectname, project.department, departmentphone,
employee.employeenumber, lastname, firstname, officephone
from department 
join project on project.department = department.departmentname
join assignment on project.projectid = assignment.projectid
join employee on assignment.employeenumber = employee.employeenumber
where project.department = 'sales and marketing'
order by projectid;


/*9. How many projects are being run by the Sales and Marketing department? 
Be sure to assign an appropriate column name to the computed results.*/
select count(*)
as NumberOfSalesAndMarketingProjects
from project
where department = 'sales and marketing';


/*10. What is the total MaxHours of projects being run by the Sales and Marketing department? 
Be sure to assign an appropriate column name to the computed results.*/

select sum(MaxHours)
as SumMaxHours
from project
where department = 'sales and marketing';


/*11. What is the average MaxHours of projects being run by the Sales and Marketing department? 
Be sure to assign an appropriate column name to the computed results.*/

select avg(MaxHours)
as AvgMaxHours
from project
where department = 'sales and marketing';


/*12. How many projects are being run by each department? 
Be sure to display each DepartmentName and to assign an appropriate column name to the computed results.*/

select department, count(*)
as NumberOfSalesAndMarketingProjects
from project
group by department;

