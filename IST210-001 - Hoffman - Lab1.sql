use vvd4;

select count(produpc)
from inventory;

select count(produpc)
from inventory;

select prodname, proddescrip, listprice, discontinued
from inventory
where discontinued = 1;

select count(*)
from employee
where department = 'Admin';

select empid, emplfname, emplname, department
from employee
where department = 'admin';

select hiredate
from employee
where empfname = 'cynthia'
and emplname = 'cummings';

select homephone
from employee
where empid = 3;