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