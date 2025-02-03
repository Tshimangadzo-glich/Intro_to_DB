USE alx_book_store;

CREATE TABLE Books (
  BookID INT AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  Publisher VARCHAR(100) NOT NULL,
  PublicationYear INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (Book_ID)
  "title", "price"
);

CREATE TABLE Authors (
  Author_ID INT AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  PRIMARY KEY (Author_ID)
  "author_id ", "author_name"
);

CREATE TABLE BookAuthors (
  Book_ID INT NOT NULL,
  Author_ID INT NOT NULL,
  PRIMARY KEY (Book_ID, Author_ID),
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
  FOREIGN KEY (Author_ID) REFERENCES Authors(Author_ID)
);

CREATE TABLE Customers (
  Customer_ID INT AUTO_INCREMENT,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Email VARCHAR(100) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Address VARCHAR(200) NOT NULL,
  City VARCHAR(50) NOT NULL,
  Country VARCHAR(50) NOT NULL,
  PRIMARY KEY (CustomerID)
);

CREATE TABLE Orders (
  Order_ID INT AUTO_INCREMENT,
  Customer_ID INT NOT NULL,
  OrderDate DATE NOT NULL,
  Total DECIMAL(10, 2) NOT NULL,
  PRIMARY KEY (Order_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE OrderDetails (
  Order_ID INT NOT NULL,
  Book_ID INT NOT NULL,
  Quantity INT NOT NULL,
  PRIMARY KEY (Order_ID, Book_ID),
  FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
  FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
