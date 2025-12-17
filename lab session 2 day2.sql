CREATE DATABASE shopDB;
USE shopDB;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    email VARCHAR(50),
    city VARCHAR(30)
);

INSERT INTO customers VALUES
(1, 'Arun', 'arun@gmail.com', 'Bangalore'),
(2, 'Meena', 'meena@gmail.com', 'Chennai'),
(3, 'Rahul', 'rahul@gmail.com', 'Bangalore'),
(4, 'Sneha', 'sneha@gmail.com', 'Hyderabad');

SELECT * FROM customers;

SELECT customer_name, email
FROM customers
WHERE city = 'Bangalore';




