-- Alex Zaharia
-- azaharia@calpoly.edu
-- Apr 19, 2023

CREATE TABLE customers (
    Id INT PRIMARY KEY,
    LastName VARCHAR(255) NOT NULL,
    FirstName VARCHAR(255) NOT NULL
);

CREATE TABLE goods (
    Id VARCHAR(255) PRIMARY KEY,
    Flavor VARCHAR(255) NOT NULL,
    Food VARCHAR(255) NOT NULL,
    Price FLOAT NOT NULL
);

CREATE TABLE receipts (
    ReceiptNumber INT PRIMARY KEY,
    Date DATE NOT NULL,
    CustomerId INT NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES customers(Id)
);

CREATE TABLE items (
    Receipt INT NOT NULL,
    Ordinal INT NOT NULL,
    Item VARCHAR(255) NOT NULL,
    FOREIGN KEY (Receipt) REFERENCES receipts(ReceiptNumber),
    FOREIGN KEY (Item) REFERENCES goods(Id)
);