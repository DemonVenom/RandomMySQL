use IST210FALL;
DROP TABLE ENROLLMENT;
DROP TABLE STUDENT;
DROP TABLE MAJOR;
DROP TABLE CLASS;

CREATE TABLE MAJOR 
(
   MajorID   int(11)     PRIMARY KEY,
   MajorName varchar(32) NOT NULL
)
Engine=InnoDB;

CREATE TABLE STUDENT
(
   SID       int(11)     PRIMARY KEY,
   Name      varchar(64) NOT NULL,
   MajorID   int(11)     DEFAULT 0,
   Email     varchar(64),
   
   CONSTRAINT FOREIGN KEY (MajorID) 
                REFERENCES MAJOR (MajorID)
              ON DELETE SET NULL

)Engine=InnoDB;

CREATE TABLE CLASS
(
   ClassID     int(11)      PRIMARY KEY,
   Discipline  varchar(8)   NOT NULL,
   ClassNum    varchar(6)   NOT NULL,
   ClassName   varchar(64)  NOT NULL,
   Credits     decimal(6,1) DEFAULT 3  
) Engine=InnoDB;

CREATE TABLE ENROLLMENT
(
    SID          int(11),
    ClassID      int(11),
    DateEnrolled date     NOT NULL,

   CONSTRAINT FOREIGN KEY (SID) 
                REFERENCES STUDENT (SID)
              ON DELETE CASCADE,
   CONSTRAINT FOREIGN KEY (ClassID) 
                REFERENCES CLASS (ClassID)
              ON DELETE CASCADE,


   PRIMARY KEY( SID, ClassID )

) Engine=InnoDB;


INSERT INTO CLASS VALUES (1111, 'IST', '110', 'Introduction to Information, People, and Technology', 3.0);
INSERT INTO CLASS VALUES (1122, 'IST', '210', 'Organization of Data', 3.0);
INSERT INTO CLASS VALUES (1133, 'IST', '220', 'Netwokring and Telecommunications', 3.0);
INSERT INTO CLASS VALUES (7001, 'CMPSC', '121', 'Introduction to Programming Techniques', 3.0);
INSERT INTO CLASS VALUES (7002, 'CMPSC', '122', 'Intermediate Programming', 3.0);
INSERT INTO CLASS VALUES (3003, 'SRA', '111', 'Introduction to Security and Risk Analysis', 3.0);

INSERT INTO MAJOR VALUES (10001000, 'IST');
INSERT INTO MAJOR VALUES (10001001, 'SRA');
INSERT INTO MAJOR VALUES (10001022, 'DS');
INSERT INTO MAJOR VALUES (10001023, 'CMPSC');
INSERT INTO MAJOR VALUES (10001025, 'CMPEN');

INSERT INTO STUDENT VALUES (90001111, 'Sally Forth', 10001000, 'sally@some.edu');
INSERT INTO STUDENT VALUES (98877661, 'Mark Smith', 10001000, 'mark@some.edu');
INSERT INTO STUDENT VALUES (99961543, 'Ace Freebird', 10001001, 'ace@some.edu');
INSERT INTO STUDENT VALUES (98863431, 'Linda Lois', 10001023, 'linda@some.edu');
INSERT INTO STUDENT VALUES (95543437, 'Martha Washington', 10001023, 'martha@some.edu');
INSERT INTO STUDENT VALUES (97654321, 'Stephen Strange', 10001022, 'strange@some.edu');
INSERT INTO STUDENT VALUES (98863421, 'Edward Smythe', 10001001, 'smythe@some.edu');
INSERT INTO STUDENT VALUES (98844552, 'Jennifer Jones', 10001025, 'jones@some.edu');
INSERT INTO STUDENT VALUES (96679099, 'Susan Storm', 10001025, 'susan@some.edu');
INSERT INTO STUDENT VALUES (94567777, 'Reed Richards', 10001023, 'fantastic@some.edu');
INSERT INTO STUDENT VALUES (92233567, 'Johnny Storm', 10001001, 'blaze@some.edu');
INSERT INTO STUDENT VALUES (92345888, 'Jake Speed', 10001000, 'speed@some.edu');
INSERT INTO STUDENT VALUES (91111111, 'Victoria Vale', 10001000, 'vickie@some.edu');
INSERT INTO STUDENT VALUES (93333333, 'Selina Kyle', 10001023, 'cat@some.edu');


INSERT INTO ENROLLMENT VALUES (93333333, 1111, '2017-04-17');
INSERT INTO ENROLLMENT VALUES (98877661, 1111, '2017-04-17');
INSERT INTO ENROLLMENT VALUES (95543437, 1111, '2017-04-17');
INSERT INTO ENROLLMENT VALUES (98844552, 1111, '2017-04-17');
INSERT INTO ENROLLMENT VALUES (92233567, 1111, '2017-04-17');

INSERT INTO ENROLLMENT VALUES (93333333, 7001, '2017-04-12');
INSERT INTO ENROLLMENT VALUES (90001111, 3003, '2017-04-12');
INSERT INTO ENROLLMENT VALUES (97654321, 3003, '2017-04-12');
INSERT INTO ENROLLMENT VALUES (94567777, 3003, '2017-04-12');
INSERT INTO ENROLLMENT VALUES (91111111, 3003, '2017-04-12');

INSERT INTO ENROLLMENT VALUES (90001111, 1133, '2017-04-04');
INSERT INTO ENROLLMENT VALUES (98877661, 1133, '2017-04-04');
INSERT INTO ENROLLMENT VALUES (92345888, 1133, '2017-04-04');
INSERT INTO ENROLLMENT VALUES (94567777, 7002, '2017-04-04');
INSERT INTO ENROLLMENT VALUES (91111111, 1133, '2017-04-04');


INSERT INTO ENROLLMENT VALUES (90001111, 7001, '2017-04-09');
INSERT INTO ENROLLMENT VALUES (98877661, 7001, '2017-04-09');
INSERT INTO ENROLLMENT VALUES (92233567, 1133, '2017-04-09');
INSERT INTO ENROLLMENT VALUES (92345888, 3003, '2017-04-09');


/*
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition; 
*/


/*
ALTER TABLE table_name
ADD column_name datatype; 

ALTER TABLE table_name
ALTER COLUMN column_name datatype; 
*/









