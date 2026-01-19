/* === EXPANDED STORE SETUP === */

-- 1. Setup Tables
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers (
    customer_id int PRIMARY KEY,
    name varchar(100),
    email varchar(100)
);

CREATE TABLE products (
    product_id int PRIMARY KEY,
    title varchar(100),
    price int,
    author varchar(100),
    stock int
);

CREATE TABLE orders (
    order_id int PRIMARY KEY,
    customer_id int,
    product_id int,
    quantity int,
    order_date varchar(20)
);

-- 2. Insert Customers (Now 10 people)
INSERT INTO customers VALUES (1, 'Alice Johnson', 'alice@email.com');
INSERT INTO customers VALUES (2, 'Bob Smith', 'bob@email.com');
INSERT INTO customers VALUES (3, 'Charlie Brown', NULL);
INSERT INTO customers VALUES (4, 'Diana Prince', 'diana@amazon.com');
INSERT INTO customers VALUES (5, 'Evan Wright', 'evan@email.com');
INSERT INTO customers VALUES (6, 'Fiona Green', 'fiona@shrek.net');
INSERT INTO customers VALUES (7, 'George Miller', NULL);
INSERT INTO customers VALUES (8, 'Hannah Abbott', 'hannah@hogwarts.edu');
INSERT INTO customers VALUES (9, 'Ian Malcolm', 'ian@chaos.math');
INSERT INTO customers VALUES (10, 'Julia Child', 'julia@cooking.com');

-- 3. Insert Products (Now 12 Books)
INSERT INTO products VALUES (101, 'The Great Gatsby', 10, 'F. Scott Fitzgerald', 50);
INSERT INTO products VALUES (102, '1984', 15, 'George Orwell', 20);
INSERT INTO products VALUES (103, 'Harry Potter', 25, 'J.K. Rowling', 100);
INSERT INTO products VALUES (104, 'The Hobbit', 20, 'J.R.R. Tolkien', 10);
INSERT INTO products VALUES (105, 'Pride and Prejudice', 12, 'Jane Austen', 30);
INSERT INTO products VALUES (106, 'The Da Vinci Code', 18, 'Dan Brown', 45);
INSERT INTO products VALUES (107, 'It', 22, 'Stephen King', 5); -- Low stock!
INSERT INTO products VALUES (108, 'The Shining', 20, 'Stephen King', 15);
INSERT INTO products VALUES (109, 'Emma', 14, 'Jane Austen', 25);
INSERT INTO products VALUES (110, 'Animal Farm', 10, 'George Orwell', 50);
INSERT INTO products VALUES (111, 'Bad Book', 5, 'Unknown', 0); -- To be deleted
INSERT INTO products VALUES (112, 'Dune', 30, 'Frank Herbert', 40);

-- 4. Insert Orders (Now 20 Orders)
-- Alice (Big Spender)
INSERT INTO orders VALUES (1, 1, 101, 2, '2023-10-01');
INSERT INTO orders VALUES (2, 1, 102, 1, '2023-10-03');
INSERT INTO orders VALUES (3, 1, 112, 1, '2023-10-15'); -- Bought Dune

-- Bob (Only buys Fantasy)
INSERT INTO orders VALUES (4, 2, 103, 1, '2023-10-02');
INSERT INTO orders VALUES (5, 2, 104, 2, '2023-10-10');

-- Charlie (Buys in bulk)
INSERT INTO orders VALUES (6, 3, 101, 5, '2023-10-05');

-- Diana (Buys Classics)
INSERT INTO orders VALUES (7, 4, 105, 1, '2023-10-06');
INSERT INTO orders VALUES (8, 4, 109, 1, '2023-10-07');

-- Evan (Horror Fan)
INSERT INTO orders VALUES (9, 5, 107, 1, '2023-10-08');
INSERT INTO orders VALUES (10, 5, 108, 1, '2023-10-09');

-- Fiona (Mixed Bag)
INSERT INTO orders VALUES (11, 6, 106, 1, '2023-10-11');
INSERT INTO orders VALUES (12, 6, 110, 3, '2023-10-12');

-- George (No orders yet - testing LEFT JOIN)

-- Hannah
INSERT INTO orders VALUES (13, 8, 103, 2, '2023-10-13');

-- Ian
INSERT INTO orders VALUES (14, 9, 112, 1, '2023-10-14');

-- Julia (Gifts)
INSERT INTO orders VALUES (15, 10, 105, 2, '2023-10-20');
INSERT INTO orders VALUES (16, 10, 101, 1, '2023-10-21');

-- More random orders
INSERT INTO orders VALUES (17, 1, 104, 1, '2023-10-22');
INSERT INTO orders VALUES (18, 2, 112, 1, '2023-10-23');
INSERT INTO orders VALUES (19, 5, 111, 1, '2023-10-24'); -- Buying the Bad Book!
INSERT INTO orders VALUES (20, 4, 102, 1, '2023-10-25');