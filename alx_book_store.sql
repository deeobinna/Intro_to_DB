CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Books (
    book_id PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id (Foreign Key REFERENCES Authors Table) INT NOT NULL,
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
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE NOT NULL,
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)", "FOREIGN KEY (book_id) REFERENCES Books(book_id),
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
);
  