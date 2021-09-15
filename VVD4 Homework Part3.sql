
use vvd4;

show tables;
desc customer;
desc employee;
desc inventory;
desc orderlineitems;
desc orders;
desc shipper;
desc vendor;
desc zipcodes;


/*should i use this, or am i not supposed to know vendorid is in vendor*/

select produpc, proddescrip, prodtype, companyname, vendor.vendorid, contactname
from inventory join vendor
on inventory.vendorid = vendor.vendorid;

/*should i use custacctno, or the acctual name from the customer table*/

select shipper.shippercode, companyname, phone, shippdate, custacctno, shipcharge
from shipper join orders
on shipper.shippercode = orders.shippercode;

/*The list should also include those vendor ID's, company names,
 and contact names that may not have any product associated with them.*/

select produpc, proddescrip, vendor.vendorid, companyname, contactname
from inventory join vendor
on inventory.vendorid = vendor.vendorid;

/*Error code 1054*/

SELECT  Customer,CustPrefix, Customer.CustFName, Customer,CustLName, 
Customer.Street, ZipCodes.City, ZipCodes.State, Customer.ZIP 
FROM ZipCodes 
INNER JOIN Customer 
on ZipCodes.Zip = Customer.Zip 
ORDER BY Zip;

/*idk*/

SELECT INVENTORY.ProdType, Maximum(Inventory.ListPrice) = MaxOfListPrice, Minimum(INVENTORY.ListPrice) 
AS MinOfListPrice 
FROM INVENTORY 
GROUP BY INVENTORY.PRODTYPE;















