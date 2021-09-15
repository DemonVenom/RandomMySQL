use vvd4;

/* 1.  How MANY employees does supervisor 1 manage? */

select count(empID)
from employee
where supervisorid = 1;

/*2. How MANY unique zip codes do customers reside in?  */
select count(distinct zip)
from employee;


/* 3. List customers for whom fax or email is unlisted. */

select *
from customer
where fax = ''
or email = '';

/* 4. What is the total of the credit limit of all customers */

select sum(credit_limit)
from customer;

/* 5. List customer details for customers who have 'Street' in their address and have a prefix in their name */

select *
from customer
where street like '%street'
and custprefix not like '';

/* 6. List company name of the vendor, vendor id, contact, phone along with the product UPC, product name, product type, and product description for all products of type PC Supplies. 

List columns in the order specified 

HINT – JOIN */

select companyname, vendor.vendorid, contacttitle, phone, produpc, prodtype, proddescrip
from vendor join inventory
on vendor.vendorid = inventory.vendorid
where prodtype = 'pc supplies';

/* 7. How many products/items are in each order? HINT - orderlineitems */

select orderid, qtyordered
from orderlineitems;

/* 8. What is the total shipping cost of all orders shipped*/

select sum(shipcharge)
from orders;

/* 9. How many products does each vendor supply - display column name as NumOfProducts  - HINT - Inventory*/

select vendorid, count(produpc) as NumOfProducts
from inventory
group by vendorid;

/* 10. List vendors id of vendors who supply more than 2 products. Extension of the previous query */

select vendorid, count(produpc) as NumOfProducts
from inventory
group by vendorid
having count(produpc) > 2;

/* 11. EXTRA CREDIT - List product UPC, the quantity ordered, 
and the price paid along with the total cost of each product as 
TotalCostOfProd in order 3.  HINT - orderlineitems  */

select produpc, qtyordered, priceatsale, (priceatsale * qtyordered) as TotalCostOfProd
from orderlineitems;
