CREATE DATABASE StudentLab2;
USE StudentLab2;

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department VARCHAR(50),
    marks INT,
    age INT
);

#1
INSERT INTO Student
VALUES (1, 'Babu', 'CSE', 75, 20);
#2
INSERT INTO Student VALUES
(2, 'Ravi', 'ECE', 65, 21),
(3, 'Anu', 'CSE', 82, 19),
(4, 'Kiran', 'MECH', 45, 22);
#3
INSERT INTO Student
VALUES (5, 'Sita', 'ECE', NULL, 20);
#4
INSERT INTO Student (student_id, name, department)
VALUES (6, 'Arjun', 'CSE');
#5
INSERT INTO Student
VALUES (7, 'Priya', 'IT', 88, 21);
SELECT * FROM Student;

#6
SELECT name, department FROM Student;

#7
SELECT * FROM Student
WHERE department = 'CSE';

#8
SELECT * FROM Student
WHERE marks > 70;

#9
SELECT * FROM Student
WHERE age BETWEEN 18 AND 22;

#10
SELECT * FROM Student
ORDER BY marks DESC;

#11
SELECT COUNT(*) AS Total_Students FROM Student;

#12
UPDATE Student
SET marks = 90
WHERE student_id = 2;

#13
SELECT student_id, marks
FROM Student
WHERE marks IS NOT NULL;

#14
SET SQL_SAFE_UPDATES = 0;
UPDATE Student
SET marks = marks + 5
WHERE department = 'ECE';
SELECT * FROM Student;

#15
SELECT student_id, department
FROM Student
WHERE name = 'Babu';
UPDATE Student
SET department = 'AI';

#16
UPDATE Student
SET marks = 0
WHERE marks IS NULL
ORDER BY student_id
LIMIT 1000;
SELECT * FROM Student;

#17
SELECT * FROM Student
WHERE department = 'ECE';
UPDATE Student
SET age = 22
WHERE department = 'ECE'
ORDER BY student_id
LIMIT 1000;

#18
DELETE FROM Student
WHERE student_id = 4;

#19
SELECT * FROM Student
WHERE marks < 40;
DELETE FROM Student
WHERE marks < 40
ORDER BY student_id
LIMIT 1000;

#20
SELECT * FROM Student
WHERE department = 'MECH';
SELECT * FROM Student;

#21
DELETE FROM Student
WHERE student_id > 0
ORDER BY student_id
LIMIT 1000;








