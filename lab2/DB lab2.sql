-- CREATE
CREATE TABLE KBTU(
    faculty_id varchar(10),
    faculty_name varchar(50),
    num_of_professors int,
    num_of_students int
);
INSERT INTO KBTU VALUES ('5','IT',200,3500);

UPDATE KBTU SET faculty_name = 'BS' WHERE faculty_name = 'IT';

SELECT num_of_professors FROM KBTU WHERE faculty_id = '5';

DELETE FROM KBTU WHERE faculty_name = 'BS';
-- ALTER
ALTER TABLE KBTU
    ADD COLUMN fac_dean varchar(50);

-- DROP
DROP TABLE KBTU;
--Task2
CREATE TABLE customers(
    id int NOT NULL PRIMARY KEY ,
    full_name varchar(50) NOT NULL ,
    timestamp timestamp NOT NULL ,
    delivery_address text NOT NULL
);
CREATE TABLE orders(
    code int NOT NULL PRIMARY KEY,
    customer_id int NOT NULL references customers(id),
    total_sum double precision NOT NULL CHECK ( total_sum > 0 ),
    is_paid boolean NOT NULL
);
CREATE TABLE products(
    id varchar NOT NULL primary key ,
    name varchar NOT NULL unique ,
    description text,
    price double precision NOT NULL CHECK ( price>0 )
);
CREATE TABLE order_items(
    order_code int NOT NULL primary key references orders(code),
    product_id varchar NOT NULL primary key references products(id),
    quantity int NOT NULL CHECK ( quantity>0 )
);

--Task 3
CREATE TABLE students(
    full_name varchar PRIMARY KEY ,
    age int NOT NULL ,
    birth_date date NOT NULL ,
    gender varchar NOT NULL ,
    gpa double precision NOT NULL ,
    info text NOT NULL ,
    dorm boolean NOT NULL ,
    add_info text NOT NULL
);
CREATE TABLE instructors(
    full_name varchar PRIMARY KEY ,
    languages text NOT NULL ,
    work_exp text NOT NULL ,
    remote_lessons boolean NOT NULL
);
CREATE TABLE participants(
    lesson_title varchar PRIMARY KEY ,
    instructor varchar PRIMARY KEY references instructors(full_name),
    room_num int NOT NULL

);

--Task4
INSERT INTO customers values('123','Yermekov Dias','2021-09-23 18:01:24','Bekhozhina 12');
INSERT INTO orders values(123,123,1000,true);
INSERT INTO products values(23,'cheese','italian premium cheese',100.00);
INSERT INTO order_items values(123,23,10);

UPDATE customers SET full_name='Osupov Ismail' WHERE full_name='Yermkov Dias';
UPDATE orders SET total_sum= 500 where customer_id = 123;
UPDATE products SET name='tefal cheese' where name='cheese';
UPDATE order_items SET quantity = 5 where quantity = 10;


DELETE FROM customers WHERE full_name='Osupov Ismail';
DELETE FROM orders WHERE code=123;
DELETE FROM products WHERE name='tefal cheese';
DELETE FROM order_items WHERE quantity=10;