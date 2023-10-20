USE library_schema;

# DDL LANGUAGE

DROP TABLE RentalTransaction;
DROP TABLE Book;
DROP TABLE User;


CREATE TABLE Book
(
    bookID INT NOT NULL,
    ISBN BIGINT NOT NULL,
    title VARCHAR(65) NOT NULL,
    Author VARCHAR(65),
    publish_year INT, 
    category VARCHAR(65),      
    PRIMARY KEY (bookID)
);

CREATE TABLE User
(
    userID INT NOT NULL,
    lastname VARCHAR(65) NOT NULL,
    firstname VARCHAR(65) NOT NULL,
    DOB DATE,
    address VARCHAR(65),    
    phone_number BIGINT,   
    limit_ INT,
    PRIMARY KEY (userID, lastname, firstname)
);

CREATE TABLE RentalTransaction
(
    rentalID INT AUTO_INCREMENT NOT NULL,
    userID INT NOT NULL,
    bookID INT NOT NULL,
    loan_date DATE,
    due_date DATE,

    PRIMARY KEY (rentalID),
    FOREIGN KEY (bookID) REFERENCES Book(bookID),
    FOREIGN KEY (userID) REFERENCES User(userID)
);


# DML LANGUAGE

INSERT INTO User 
VALUES (1001, 'Smith', 'John', '1999-01-01', 'Captial road', 9195863230, 10);
INSERT INTO User 
VALUES (2123, 'Sacks', 'Mark', '2000-01-01', '7th Black Street', 9195627774, 10);
INSERT INTO User 
VALUES (3456, 'Johnson', 'Susan', '1998-01-03', '405 South', 9198564325, 10);
INSERT INTO User 
VALUES (4223, 'States', 'Nick', '1996-05-22', '12th East Street', 9198889999, 10);
INSERT INTO User 
VALUES (5987, 'Stew', 'Martha', '1960-05-16', '85 North', 9193642256, 10);

INSERT INTO Book 
VALUES (0001, 444222666325, 'Mars', 'Mark Sas', 2001, 'fiction');
INSERT INTO Book 
VALUES (0002, 784566512135, 'The Cow', 'Stephy Williams', 1996, 'children');
INSERT INTO Book 
VALUES (0003, 488984115444, 'XML for beginners', 'Jake Snow', 2005, 'non-fiction'); 
INSERT INTO Book 
VALUES (0004, 544465545655, 'Into Thin Air', 'Jon Krakauer', 1990, 'non-fiction'); 
INSERT INTO Book 
VALUES (0005, 878745656513, 'And Tango Makes Three', 'Peter Parnell', 1956, 'children');
INSERT INTO Book 
VALUES (0006, 564564123213, 'Swimmy', 'Leo Lionni', 2010, 'children');
INSERT INTO Book 
VALUES (0007, 132125645678, 'XML and XQuery Tutorial', 'Lee Cakes', 2014, 'non-fiction');
INSERT INTO Book 
VALUES (0008, 132154548746, 'Happy Places', 'Steve Zus', 1998, 'refrence');
INSERT INTO Book 
VALUES (0009, 788897998754, 'The Mascot', 'Kevin Bacon', 1987, 'fiction');
INSERT INTO Book 
VALUES (0010, 878561132116, 'XQuery for beginners', 'Virginia Woof', 2001, 'non-fiction');

INSERT INTO rentaltransaction VALUES (1001, 4223, 0007, '2017-01-14', '2017-10-04');
INSERT INTO rentaltransaction VALUES (1002, 3456, 0001, '2017-01-12', '2017-11-04');
INSERT INTO rentaltransaction VALUES (1003, 1001, 0003, '2017-04-14', '2017-10-08');
INSERT INTO rentaltransaction VALUES (1004, 5987, 0009, '2017-05-14', '2017-12-04');
