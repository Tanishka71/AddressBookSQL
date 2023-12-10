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
