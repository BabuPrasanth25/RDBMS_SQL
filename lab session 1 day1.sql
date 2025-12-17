CREATE DATABASE StudentRepo;
USE StudentRepo;

CREATE TABLE Student (
    ID INT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    CLASS VARCHAR(20) NOT NULL,
    MARK INT NOT NULL,
    GENDER VARCHAR(10) NOT NULL
);

INSERT INTO Student VALUES
(1, 'John Deo', 'Four', 75, 'female'),
(2, 'Max Ruin', 'Three', 85, 'male'),
(3, 'Arnold', 'Three', 55, 'male'),
(4, 'Krish Star', 'Four', 60, 'female'),
(5, 'John Mike', 'Four', 60, 'female'),
(6, 'Alex John', 'Four', 55, 'male'),
(7, 'My John Rob', 'Five', 78, 'male'),
(8, 'Asruid', 'Five', 85, 'male'),
(9, 'Tes Qry', 'Six', 78, 'male'),
(10, 'Big John', 'Four', 55, 'female');

SELECT * FROM Student;

SELECT * FROM Student WHERE NAME = 'Arnold';
UPDATE Student
SET MARK = 70
WHERE ID = 3;

SELECT * FROM Student
WHERE NAME = 'Tes Qry';
DELETE FROM Student
WHERE ID = 9;

SELECT * FROM Student
ORDER BY MARK ASC;

SELECT * FROM Student
ORDER BY MARK DESC;

SELECT * FROM Student
WHERE GENDER = 'female';

SELECT COUNT(*) AS Total_Girls
FROM Student
WHERE GENDER = 'female';

SELECT MIN(MARK) FROM Student;
SELECT * FROM Student
WHERE MARK = 55;

SELECT MAX(MARK) FROM Student;
SELECT * FROM Student
WHERE MARK = 85;






