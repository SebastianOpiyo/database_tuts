/*SQL is cool. Learn It to grasp all aboout DB*/


--DROPPING ALREADY CREATED TABLE

DROP TABLE student;  

--CREATING TABLES
CREATE TABLE student(
    student_id INT PRIMARY KEY AUTO_INCREMENT, --the primary key has the NOT NULL and UNIQUE constraints
    name VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE,
    major VARCHAR(20) DEFAULT 'undecided' --Incase a value is not given then we issue a DEFAULT value
);


--PRINTING A DESCRIPTION OF CREATED TABLE
DESCRIBE student; 

--MAKING CHANGES TO A TABLE
/*ALTER TABLE student ADD gpa DECIMAL(3, 2); --adding the gpa column
# ALTER TABLE student DROP COLUMN gpa; --removing the gpa column
*/

--POPULATING A TABLE
INSERT INTO student VALUES(1,'Sebastian', 'doka', 'Hacking');
INSERT INTO student VALUES(6,'Sebastian', 'seba', 'Biology');
INSERT INTO student(name, username) VALUES('Marie', 'Mar');
INSERT INTO student VALUES(3,'Joseph', 'Jose', 'Chemistry');
INSERT INTO student(name, username) VALUES('Jose', 'Joh');
INSERT INTO student(student_id, name, username) VALUES(5,'Lokus', 'Lok');

--UPDATING A TABLE
UPDATE student 
SET major = 'Chem' WHERE major = 'Chemistry';

--DELETING 
DELETE FROM student
WHERE student_id = 6;

--SELECTING FOR VIEWING
SELECT * FROM student 
ORDER BY student_id ASC
LIMIT 3; --limit the display in this case by 3 per display
--we can do SELECT student.name, student.major FROM student # just to identify which table just incase there are several

--ORDER
--ASC, DESC or use the table properties like name, student_id

--Another SELECT EXAMPLE
SELECT name, major
FROM student
WHERE major='Chem'
ORDER BY student_id ASC
LIMIT 3;

--Another Example 
SELECT name, major
FROM student
WHERE major='Hacking' OR major = 'Chem' --looking for more than one 
ORDER BY student_id ASC
LIMIT 3;

--Use of Comparison Operators to querry the DB*
-- <, >, <=, >=, =, <>, AND, OR

--Using the IN Statement in the select
SELECT *
FROM student
WHERE name IN ('Jose', 'Sebastian', 'Marie');

