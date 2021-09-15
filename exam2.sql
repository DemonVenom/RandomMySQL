
use vvd4;

select custfname, custlname, custmidinit, custacctno, email, credit_limit, phone
from customer
where phone
like '814%';

select vendorid, companyname, contactname, phone, vendwebaddr
from vendor
where vendwebaddr != '';

select empssn, emplname, jobtitle, birthdate, hiredate, skills
from employee
where hiredate > '1966-12-01';


 


