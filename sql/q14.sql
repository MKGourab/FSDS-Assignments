use db;

CREATE TABLE Person (
  PersonID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50)
);


CREATE TABLE Address (
  AddressID INT,
  PersonID INT,
  City VARCHAR(50),
  State VARCHAR(50),
  FOREIGN KEY (PersonID) REFERENCES Person(PersonID)
);


-- Insert data into the Person table
INSERT INTO Person (PersonID, FirstName, LastName)
VALUES
  (1, 'Vinay', 'P'),
  (2, 'Aniket', 'K'),
  (3, 'Jitu', 'N');

-- Insert data into the Address table
INSERT INTO Address (AddressID, PersonID, City, State)
VALUES
  (1, 1, 'Hyderabad', 'Telanagana'),
  (2, 2, 'Hyderabad', 'Telanagana'),
  (3, 3, 'Nashik', 'Maharastra');
  
  
-- Q13:

SELECT
  p.FirstName,
  p.LastName,
  a.City,
  a.State
FROM
  Person p
JOIN
  Address a ON p.PersonID = a.PersonID;

