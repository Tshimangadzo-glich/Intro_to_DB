-- Create the Authors table
CREATE TABLE AUTHORS (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- Create the Books table
CREATE TABLE BOOKS (
    BOOK_ID INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    price DOUBLE,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (BOOK_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

-- Create the Customers table
CREATE TABLE CUSTOMERS (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT
);

-- Create the Orders table
CREATE TABLE ORDERS (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(CUSTOMER_ID)
    Order_Details, 
    book_id INT, 
    quantity DOUBLE, 
    ["FOREIGN KEY (order_id) REFERENCES Orders(order_id)", "FOREIGN KEY (book_id) REFERENCES Books(book_id)"]
    ["FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)"]
);
["CREATE DATABASE IF NOT EXISTS alx_book_store"]
