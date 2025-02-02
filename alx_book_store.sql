-- Create the Authors table
CREATE TABLE AUTHORS (
    AUTHOR_ID INT AUTO_INCREMENT PRIMARY KEY,
    AUTHOR_NAME VARCHAR(215) NOT NULL
    ["author_id ", "author_name"]
);

-- Create the Books table
CREATE TABLE BOOKS (
    BOOK_ID INT AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(130) NOT NULL,
    PRICE DOUBLE,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (BOOK_ID) REFERENCES AUTHORS(AUTHOR_ID)
    ["title", "price"]
);

-- Create the Customers table
CREATE TABLE CUSTOMERS (
    CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(215) NOT NULL,
    EMAIL VARCHAR(215) UNIQUE,
    ADDRESS TEXT
    ["customer_id ", "customer_name VARCHAR(215)", "email VARCHAR(215)", "address TEXT"]
);

-- Create the Orders table
CREATE TABLE ORDERS (
    ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
    ["order_id INT", "customer_id INT", "order_date DATE", "FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)"]
    ["Order_Details", "book_id INT", "quantity DOUBLE", "FOREIGN KEY (order_id) REFERENCES Orders(order_id)", "FOREIGN KEY (book_id) REFERENCES Books(book_id)"]
)

["CREATE DATABASE IF NOT EXISTS alx_book_store"]
