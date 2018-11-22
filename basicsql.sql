
--DROPPING ALREADY CREATED TABLE

DROP TABLE student;  

--CREATING TABLES
CREATE TABLE student(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    username VARCHAR(20) NOT NULL UNIQUE,
    major VARCHAR(20) DEFAULT 'undecided'
);


--PRINTING A DESCRIPTION OF CREATED TABLE
DESCRIBE student; 

--MAKING CHANGES TO A TABLE
/*ALTER TABLE student ADD gpa DECIMAL(3, 2);
# ALTER TABLE student DROP COLUMN gpa;
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
LIMIT 3;