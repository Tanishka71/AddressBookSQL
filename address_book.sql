-- <----------------USE CASE 1----------->
CREATE DATABASE address_book_service;
USE address_book_service;
SHOW databases;
SELECT DATABASE();

-- <----------------USE CASE 2----------->
CREATE TABLE AddressBook (
    ContactID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);


-- <----------------USE CASE 3----------->
INSERT INTO AddressBook (FirstName, LastName, Address, City, State, ZipCode, PhoneNumber, Email)
VALUES 
    ('tanishka', 'jain', 'lko', 'lucknow', 'UP', '12345', '98765432', 'tanishka_jain@email.com'),
    ('Bob', 'Williams', '321 Pine St', 'Nowhere', 'AZ', '54321', '555-5432', 'bob.williams@email.com'),
    ('Charlie', 'Davis', '555 Maple St', 'Anywhere', 'FL', '98765', '555-2345', 'charlie.davis@email.com'),
    ('Diana', 'Miller', '876 Oak St', 'Noway', 'WA', '12345', '555-8765', 'diana.miller@email.com');
SELECT * FROM AddressBook;

-- <----------------USE CASE 4----------->
SET SQL_SAFE_UPDATES = 0;
UPDATE AddressBook
SET Address="del" ,City="delhi",State="UP",ZipCode="2345",PhoneNumber="6335839823",Email="ria@gmail.com"
WHERE FirstName="Diana" AND LastName="Miller"; 