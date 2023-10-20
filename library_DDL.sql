CREATE TABLE Book
(
    bookID INT NOT NULL,
    ISBN INT NOT NULL,
    title VARCHAR(65) NOT NULL,
    Author CHAR,
    publish_year INT, 
    category VARCHAR(65),      
    PRIMARY KEY (bookID)
);

CREATE TABLE User
(
    userID INT NOT NULL,
    lastname CHAR NOT NULL,
    firstname CHAR NOT NULL,
    DOB DATE,
    address VARCHAR(65),    
    phone_number INT,   
    limit_ INT,
    PRIMARY KEY (userID, lastname, firstname)
);

CREATE TABLE RentalTransaction
(
    rentalID INT NOT NULL,
    memberID INT NOT NULL,
    bookID INT NOT NULL,
    loan_date DATE,
    due_date DATE,

    PRIMARY KEY (rentalID),
    FOREIGN KEY (bookID) REFERENCES Book(bookID),
    FOREIGN KEY (userID) REFERENCES User(userID)
);
