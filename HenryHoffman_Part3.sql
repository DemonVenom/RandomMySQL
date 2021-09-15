use hlh5291;

show tables;
desc assignment;

select projectid, projectname, maxhours, (24.50 * maxhours)
as maxprojectcost
from project;

select concat(firstname, '', lastname)
as employeename, department, officephone
as phone
from employee
where department
like 'admin%';

select projectname, count(*)
from project;



select department, count(*)
as numberofemployees
from employee
group by department
having count(*) > 1;

desc project;

show tables;

select *
from assignment
where hoursworked > 50;

select employeenumber, hoursworked
from assignment
where hoursworked > 50;

select distinct employeenumber
from assignment
where hoursworked > 50
order by hoursworked;

select firstname, lastname 
from employee
where employeenumber
in (6,10,11,16,17);

desc employee;
desc assignment;

desc project;
select employeenumber, hoursworked from assignment where hoursworked > 50 order by hoursworked;

select employeenumber, firstname, lastname from employee where employeenumber in (6,10,11,16,17);

select employeenumber, firstname, lastname from employee where employeenumber in
(select employeenumber from assignment where hoursworked > 50);

select *
from assignment
where hoursworked > 50;

select distinct employeenumber from assignment
where hoursworked > 40;

select firstname, lastname 
from employee
where employeenumber in (select distinct employeenumber 
from assignment where hoursworked > 40);

select projectid, department from project;
select projectid, department from project
where department = 'accounting';
select projectid from project where department = 'accounting';

select distinct employeenumber from assignment
where hoursworked > 40 
and projectid
in (select projectid from project where department = 'accounting');

select firstname, lastname 
from employee 
where employeenumber
in (select distinct employeenumber 
from assignment 
where hoursworked > 40 
and projectid 
in (select projectid from project
where department = 'accounting'));

select * from project where department = 'Accounting';
select distinct projectid
from project
where department = 'accounting';

select projectid, employeenumber
from assignment
where hoursworked > 40 
and
projectid = 1300;


select employeenumber, firstname, lastname
from employee
where employeenumber
in
(select distinct employeenumber from assignment where hoursworked > 40 and projectid
in (select projectid from project where department = 'Accounting'));

select firstname, lastname, projectid, hoursworked
from employee, assignment
where employee.employeenumber = assignment.employeenumber;

select * from assignment;

select firstname, lastname, projectid, assignment.hoursworked
from employee, assignment
where employee.employeenumber = assignment.employeenumber
order by employee.employeenumber, projectid;

select A.employeenumber, firstname, lastname, projectid, hoursworked
from employee, assignment as A
where employee.employeenumber = A.employeenumber
order by employee.employeenumber, projectid;


select firstname, lastname, hoursworked
from employee join assignment
on employee.employeenumber = assignment.employeenumber;

select A.employeenumber, firstname, lastname, projectid, hoursworked
from employee natural join assignment as A
order by a.employeenumber, projectid;









