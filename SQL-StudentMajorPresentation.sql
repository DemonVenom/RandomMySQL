use IST210FALL;


/* STUDENT CLASS MAJOR ENROLLMENT - */
desc student;
desc class;
desc major;
desc enrollment;

/*Examine data in student table.*/
select * from class;
select * from ENROLLMENT;
select * from STUDENT;
select * from major;

/*************************************************************************************/
/*** Question 1 ***/
/* List students and their major NAMES */
/* Lets start with the student table - MAJORID is listed as an attribute, just knowing the ID is not very informative.
You dont read a spreadsheet with  majorID's like  10001000 - You say Computer Science , IST, Biology ...
So how to create a list of students with their MAJORs listed 
1. with a where clause  - student.MajorId = major.MajorId
2. JOIN student and major table ON common atribute
3. NATURAL JOIN  of student and major table*/


/* 1. with a where clause  - student.MajorId = major.MajorId */

select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR, major.majorid as MAJOR_ID 
from student, major 
where student.MajorId = major.MajorId;

/*2. JOIN student and major table ON common atribute */

select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR, major.majorid as MAJOR_ID 
from student join major 
on student.MajorId = major.MajorId;


/* 3. NATURAL JOIN  of student and major table*/
select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR, major.majorid as MAJOR_ID 
from student natural join major;


/*************************************************************************************/
/*** Question 2 ***/
/* List students id, name, email and major - whose major is CMPSC */

/* The GOAL is to write a single query that will answer the above question*/

/* So we start with student table */
select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL,  MajorId from student;

/* examine major table to find out what is the majorid for CMPSC */
select * from major;
select * from major where majorname = 'CMPSC';

/* Major id = CMPSC  = 10001023*/
/* This following query will answer your question correctly - you were able to write 
the following query only after you queried to find out what CMPSC's ID was. */
select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL,  MajorId from student where majorId= 10001023;

/* This above query will answer your question correctly - but it does not display MAJORNAME and you were able to write 
the above query only after you queried to find out what CMPSC's ID was. */


/* The GOAL is to write a single query that will answer the above question*/
select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR 
from student, major 
where student.MajorId = major.MajorId and major.majorname = "CMPSC";

select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR from student join major on student.MajorId = major.MajorId where major.majorname= "CMPSC";

select sid as STUDENT_ID, name as STUDENT_NAME, email as STUDENT_EMAIL, major.majorname 
as MAJOR from student natural join major  where major.majorname= "CMPSC";

/*************************************************************************************/
/*** Question 3 ***/
/* List students names enrolled in IST110 */

/* Multi-table join */
select * from enrollment;
select * from class;
select * from student;

select classid, discipline, classnum from class where discipline = 'IST' and classnum='110';

select * from enrollment where classid = '1111';


select sid , discipline, classnum, student.name from class natural join enrollment join student 
where discipline = 'IST' and classnum='110';


select discipline, classnum, student.name, student.email from class natural join enrollment join student 
where discipline = 'IST' and classnum='110' and student.sid = enrollment.sid;

select discipline, classnum, student.name, student.email from class natural join enrollment natural join student 
where discipline = 'IST' and classnum='110';

/*************************************************************************************/
/*** Question 4 ***/
/* Student name, class name and enrollment date */
select STUDENT.name as STUDENT_NAME,  class.classname, enrollment.dateenrolled
from enrollment join student join class 
where enrollment.sid = student.sid and enrollment.classid = class.classid;

select STUDENT.name as STUDENT_NAME,  class.classname, enrollment.dateenrolled
from enrollment natural join student natural join class;

select STUDENT.name as STUDENT_NAME,  class.classname, enrollment.dateenrolled
from enrollment join student join class 
ON enrollment.sid = student.sid and enrollment.classid = class.classid;

/*************************************************************************************/