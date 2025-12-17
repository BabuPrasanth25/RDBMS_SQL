CREATE DATABASE orderDB;
USE orderDB;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    amount INT
) ENGINE = InnoDB;

SET autocommit = 0;

START TRANSACTION;

INSERT INTO orders VALUES (1, 'Arun', 2000);
SAVEPOINT sp1;

select * from orders;

INSERT INTO orders VALUES (2, 'Meena', 3500);
SAVEPOINT sp2;

INSERT INTO orders VALUES (3, 'Rahul', 5000);
SAVEPOINT sp3;

select * from orders;

ROLLBACK TO sp2;

COMMIT;

select * from orders;

