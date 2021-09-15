
/*1. Write a query to show the contents of the STUDENT table. */
select *
from student;


/*2. Write a query to show all of the majors (names only) ordered in descending order by name. */
select majorname
from major
order by majorname;


/*3. Write a query to show the enrollment records dated AFTER April 04, 2017 order by enrollment date.*/
select *
from enrollment
where dateenrolled > '2017-04-04'
order by dateenrolled;


/*4. Write a query to show the classes in which "Jake Speed" is currently enrolled. This should be a one-column, one-row result. (A single number).*/
select count(classid)
from enrollment join student
on enrollment.sid = student.sid
where student.name = 'Jake Speed';


/*5. Write a single query to show the number of students enrolled for each major.*/
select majorname, count(*)
from major join student
on major.majorid = student.majorid
group by majorname;


/*6. Write a single query to show only the major names for which there are three or
more students. You must use a JOIN and GROUP BY AND*/
select majorname, count(*)
from major join student
on major.majorid = student.majorid
group by majorname
having count(majorname) >= 3;


/*7. Create a table in your database called HONORS to record information about students who take honors courses.*/
/*This table will have three columns (SID, ClassID, and HonorsPoints, an int(11) field). */
/*The combination of SID and ClassID will be the primary key; both are also FKs to their respective tables.*/
/*The HonorsPoints column should have a default value of 1.*/
CREATE TABLE HONORS
(
    SID          int(11),
    ClassID      int(11),
    HonorsPoints int(11) default 1,

   CONSTRAINT FOREIGN KEY (SID) 
                REFERENCES STUDENT (SID)
              ON DELETE CASCADE,
   CONSTRAINT FOREIGN KEY (ClassID) 
                REFERENCES CLASS (ClassID)
              ON DELETE CASCADE,


   PRIMARY KEY( SID, ClassID )

) Engine=InnoDB;


/*8. Insert a record into the HONORS table for Sally Forth, who is taking IST 220 as an honors course for 5 honors points. */
INSERT INTO HONORS VALUES (90001111, 1133, 5);


/*9. Update the record you previously inserted into the HONORS table to 7 honors points*/
UPDATE HONORS
SET HonorsPoints = 7
where sid = 90001111;


/*10. Insert a record into the HONORS table for Johnny Storm who is taking IST 110 as an honors course for 3 honors points. */
INSERT INTO HONORS VALUES (92233567, 1111, 3);

