use db;

-- Create the Customers table
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50),
  customer_phone VARCHAR(20)
);

-- Create the Orders table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount DECIMAL(10, 2),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Insert data into the Customers table
INSERT INTO Customers (customer_id, customer_name, customer_phone)
VALUES
  (1, 'anup',  '123-456-7890'),
  (2, 'jolly',  '987-654-3210'),
  (3, 'mohit',  '555-123-4567'),
  (4, 'raman',  '888-999-0000'),
  (5, 'viki',  '888-999-0100'),
  (6, 'rocky',  '888-999-1000'),
  (7, 'soumendra',  '888-999-0010'),
  (8, 'jitu',  '888-999-0001'),
  (9, 'lopita',  '888-999-0300'),
  (10, 'isita',  '111-222-3333');

-- Insert data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
  (101, 1, '2023-08-01', 150.00),
  (102, 2, '2023-08-02', 200.00),
  (103, 3, '2023-08-03', 75.50),
  (104, 4, '2023-08-04', 300.00),
  (105, 5, '2023-08-05', 120.00),
  (106, 6, '2023-08-06', 180.00),
  (107, 7, '2023-08-07', 250.00),
  (108, 8, '2023-08-08', 95.00),
  (109, 9, '2023-08-09', 350.00),
  (110, 10, '2023-08-10', 130.00);
 
 -- Q19:
 
  SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM
    Customers c
JOIN
    Orders o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id, c.customer_name
ORDER BY
    order_count DESC
LIMIT 5;

