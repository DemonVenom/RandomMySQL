use hlh5291;

show tables;
desc project;
/* query 1 -- SELECT * */

SELECT ProjectName, Department, MaxHours
FROM PROJECT;

SELECT DepartmentName, BudgetCode, OfficeNumberAS 'Building# Office#', DepartmentPhone AS 'Phone Number' FROM Department;

Desc project;
SELECT ProjectID, Projectname, Department, maxhours*15 FROM project;

desc project;
SELECT ProjectID, Projectname, Department, maxhours, maxhours*15 AS 'Calculated - TotalPay' FROM PROJECT;

SELECT Department FROM PROJECT;

SELECT DISTINCT Department
FROM PROJECT;

SELECT *
FROM PROJECT
WHERE Department = 'Finance';

SELECT *
FROM PROJECT
WHERE Department = 'Finance';

SELECT *
FROM PROJECT
WHERE MaxHours > 135;

/*** Extension ***/

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting';

select department from employee;

SELECT FirestName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC;

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
ORDER BY Department DESC, LastName ASC;

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND OfficePhone ='360-285-8430';

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
OR OfficePhone ='360-285-8430';

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department = 'Accounting'
AND NOT OfficePhone ='360-285-8430';

SELECT FirstName, LastName, Department, OfficePhone 
FROM EMPLOYEE 
WHERE Department IN ('Administration', 'Finance', 'Accounting');

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE Department NOT IN ('Administration', 'Finance', 'Accounting');

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber > 2
AND EmployeeNumber < 5;

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE EmployeeNumber
BETWEEN 2
AND 5;

SELECT *
FROM PROJECT
WHERE ProjectName LIKE '2019 Q_Portfolio Analysis';

SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-285-88__';

SELECT *
FROM EMPLOYEE
WHERE OfficePhone LIKE '360-285-88%';

SELECT *
FROM EMPLOYEE
WHERE Department LIKE '%ing';

SELECT *
FROM EMPLOYEE
WHERE Department NOT LIKE '%ing';

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NULL;

SELECT FirstName, LastName, Department, OfficePhone
FROM EMPLOYEE
WHERE OfficePhone IS NOT NULL;

SELECT COUNT(*)
FROM PROJECT;

SELECT COUNT(*) AS NumberOfProjects
FROM PROJECT;

SELECT COUNT(*) AS NumberOfDepartments
FROM PROJECT;

SELECT COUNT(DISTINCT Department)
FROM PROJECT;







