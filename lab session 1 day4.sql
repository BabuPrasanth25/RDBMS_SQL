



#1NF --->

CREATE DATABASE hospitalDB;
USE hospitalDB;

CREATE TABLE Patient_Record (
    PatientID VARCHAR(5),
    PatientName VARCHAR(50),
    Diseases VARCHAR(100),
    ContactNumbers VARCHAR(100)
);

INSERT INTO Patient_Record VALUES
('P01', 'Ramesh', 'Diabetes, BP', '98765, 91234'),
('P02', 'Suresh', 'Asthma', '99887');

SELECT * FROM Patient_Record;

CREATE TABLE Patient_Record_1NF (
    PatientID VARCHAR(5),
    PatientName VARCHAR(50),
    Disease VARCHAR(30),
    ContactNumber VARCHAR(15),
    PRIMARY KEY (PatientID, Disease, ContactNumber)
);

INSERT INTO Patient_Record_1NF VALUES
('P01', 'Ramesh', 'Diabetes', '98765'),
('P01', 'Ramesh', 'BP', '98765'),
('P01', 'Ramesh', 'Diabetes', '91234'),
('P01', 'Ramesh', 'BP', '91234'),
('P02', 'Suresh', 'Asthma', '99887');

SELECT * FROM Patient_Record_1NF;








#2NF ----->

CREATE TABLE Patient (
    PatientID VARCHAR(5) PRIMARY KEY,
    PatientName VARCHAR(50)
);

INSERT INTO Patient VALUES
('P01', 'Ramesh'),
('P02', 'Suresh');

SELECT * FROM Patient;

CREATE TABLE Treatment (
    TreatmentID VARCHAR(5) PRIMARY KEY,
    TreatmentName VARCHAR(50),
    Cost INT
);

INSERT INTO Treatment VALUES
('T1', 'Insulin', 1500),
('T2', 'BP Tablets', 800),
('T3', 'Inhaler', 1200);

SELECT * FROM Treatment;

CREATE TABLE Patient_Treatment (
    PatientID VARCHAR(5),
    TreatmentID VARCHAR(5),
    PRIMARY KEY (PatientID, TreatmentID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (TreatmentID) REFERENCES Treatment(TreatmentID)
);

INSERT INTO Patient_Treatment VALUES
('P01', 'T1'),
('P01', 'T2'),
('P02', 'T3');

SELECT * FROM Patient_Treatment;








#3NF ------>
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50)
);

INSERT INTO Employee VALUES
(1, 'Arun'),
(2, 'Meena');

SELECT * FROM Employee;


CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    ProjectManager VARCHAR(50)
);

INSERT INTO Project VALUES
(101, 'Payroll System', 'Ramesh'),
(102, 'Inventory App', 'Suresh');

SELECT * FROM Project;

CREATE TABLE Employee_Project (
    EmpID INT,
    ProjectID INT,
    PRIMARY KEY (EmpID, ProjectID),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID)
);

INSERT INTO Employee_Project VALUES
(1, 101),
(1, 102),
(2, 101);

SELECT * FROM Employee_Project;







#3.5 Normal Form (BCNF) ---->
CREATE TABLE Course_Professor (
    Course VARCHAR(50) PRIMARY KEY,
    Professor VARCHAR(50)
);

INSERT INTO Course_Professor VALUES
('DBMS', 'Dr. Kumar'),
('OS', 'Dr. Mehta');

SELECT * FROM Course_Professor;


CREATE TABLE Professor_Classroom (
    Professor VARCHAR(50) PRIMARY KEY,
    Classroom VARCHAR(20)
);

INSERT INTO Professor_Classroom VALUES
('Dr. Kumar', 'Room 101'),
('Dr. Mehta', 'Room 202');

SELECT * FROM Professor_Classroom;








#Fourth Normal Form (4NF)  ----->>

CREATE TABLE Musician_Instrument (
    Musician VARCHAR(20),
    Instrument VARCHAR(20),
    PRIMARY KEY (Musician, Instrument)
);

INSERT INTO Musician_Instrument VALUES
('A', 'Guitar'),
('A', 'Piano');

SELECT * FROM Musician_Instrument; 


CREATE TABLE Musician_Genre (
    Musician VARCHAR(20),
    Genre VARCHAR(20),
    PRIMARY KEY (Musician, Genre)
);

INSERT INTO Musician_Genre VALUES
('A', 'Rock'),
('A', 'Jazz');

SELECT * FROM Musician_Genre;






#Fifth Normal Form (5NF)  ------>
CREATE TABLE Pilot_Aircraft (
    Pilot VARCHAR(10),
    Aircraft VARCHAR(10),
    PRIMARY KEY (Pilot, Aircraft)
);

INSERT INTO Pilot_Aircraft VALUES
('P1', 'A320'),
('P1', 'B737'),
('P2', 'A320');

CREATE TABLE Aircraft_Route (
    Aircraft VARCHAR(10),
    Route VARCHAR(20),
    PRIMARY KEY (Aircraft, Route)
);

INSERT INTO Aircraft_Route VALUES
('A320', 'DEL-MUM'),
('A320', 'DEL-BLR'),
('A320', 'MUM-HYD'),
('A320', 'MUM-DEL'),
('B737', 'DEL-MUM'),
('B737', 'DEL-BLR');

CREATE TABLE Pilot_Route (
    Pilot VARCHAR(10),
    Route VARCHAR(20),
    PRIMARY KEY (Pilot, Route)
);

INSERT INTO Pilot_Route VALUES
('P1', 'DEL-MUM'),
('P1', 'DEL-BLR'),
('P2', 'MUM-HYD'),
('P2', 'MUM-DEL');

SELECT * FROM Pilot_Aircraft;
SELECT * FROM Aircraft_Route;
SELECT * FROM Pilot_Route;






