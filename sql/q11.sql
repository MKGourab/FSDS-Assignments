create database db;
use db;
-- Create the Student table
CREATE TABLE Student (
  ID INT PRIMARY KEY NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Age INT NOT NULL,
  Address VARCHAR(25)
);

-- Insert five records into the Student table
INSERT INTO Student (ID, Name, Age, Address)
VALUES
  (1, 'Ankit', 20, 'Bank Col'),
  (2, 'Bikash', 22, 'Jayprakash Nagar'),
  (3, 'Ipsita', 19, 'Gajapati Nagar'),
  (4, 'Vinay', 21, 'Nigam nagar'),
  (5, 'Arpita', 23, 'Goodshed Road');

select * from Student
