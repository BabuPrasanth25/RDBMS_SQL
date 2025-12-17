CREATE DATABASE DBMS_Assignment1;
USE DBMS_Assignment1;



#Assignment1
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(6,2) CHECK (price > 0)
);
DESC Book;

CREATE TABLE Member (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15) UNIQUE,
    membership_date DATE NOT NULL
);
DESC Member;

CREATE TABLE Loan (
    loan_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    CHECK (return_date >= issue_date)
);
DESC Loan;
SHOW TABLES;



#Assignment2
CREATE TABLE Books_Info (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100) NOT NULL,
    author_name VARCHAR(100) NOT NULL,
    isbn_no VARCHAR(20) UNIQUE,
    book_price DECIMAL(6,2) CHECK (book_price > 0)
);
DESC Books_Info;

CREATE TABLE Users_Info (
    user_id INT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email_id VARCHAR(100) UNIQUE,
    mobile_no VARCHAR(15) UNIQUE,
    join_date DATE NOT NULL
);
DESC Users_Info;

CREATE TABLE Borrow_Details (
    borrow_id INT PRIMARY KEY,
    user_id INT,
    book_id INT,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users_Info(user_id),
    FOREIGN KEY (book_id) REFERENCES Books_Info(book_id),
    CHECK (return_date >= borrow_date)
);
DESC Borrow_Details;
SHOW TABLES;

ALTER TABLE Books_Info
ADD publisher_name VARCHAR(100);

ALTER TABLE Users_Info
MODIFY mobile_no VARCHAR(20);

CREATE TABLE Temp_Backup (
    backup_id INT,
    description VARCHAR(100)
);

DROP TABLE Temp_Backup;



#Assignment3
CREATE TABLE Library_Books (
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price INT CHECK (price > 0)
);
DESC Library_Books;
INSERT INTO Library_Books VALUES
(1, 'DBMS', 'Navathe', 450),
(2, 'Operating Systems', 'Silberschatz', 550),
(3, 'Computer Networks', 'Tanenbaum', 500);
SELECT * FROM Library_Books;

CREATE TABLE Library_Members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    join_date DATE NOT NULL
);
DESC Library_Members;
INSERT INTO Library_Members VALUES
(101, 'Babu', 'babu@gmail.com', '2024-01-10'),
(102, 'Anu', 'anu@gmail.com', '2024-02-05');
SELECT * FROM Library_Members;

CREATE TABLE Issue_Record (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Library_Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Library_Books(book_id)
);
DESC Issue_Record;
INSERT INTO Issue_Record VALUES
(1001, 101, 1, '2024-03-01', NULL),
(1002, 102, 2, '2024-03-05', NULL);
SELECT * FROM Issue_Record;

SHOW TABLES;

UPDATE Library_Books
SET price = 480
WHERE book_id = 1;
SELECT * FROM Library_Books;

UPDATE Library_Members
SET email = 'anu_new@gmail.com'
WHERE member_id = 102;
SELECT * FROM Library_Members;


UPDATE Issue_Record
SET return_date = '2024-03-20'
WHERE issue_id = 1001;
SELECT * FROM Issue_Record;

DELETE FROM Issue_Record
WHERE issue_id = 1002;
SELECT * FROM Issue_Record;

DELETE FROM Library_Members
WHERE member_id = 102;
SELECT * FROM Library_Members;

DELETE FROM Library_Books
WHERE book_id = 3;
SELECT * FROM Library_Books;









