CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id (Foreign Key referencing Authors Table) INT NOT NULL,
    publication_date DATE,
    price DOUBLE NOT NULL, 
);

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL,
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    address TEXT,
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
);
  