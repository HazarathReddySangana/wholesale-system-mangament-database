 use ecommerce_db;
 
 CREATE TABLE Buyer (
    buyer_id INT PRIMARY KEY,
    buyer_name VARCHAR(100),
    contact_info VARCHAR(100),
    address TEXT
);

CREATE TABLE Stock (
    stock_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    quantity INT,
    purchase_date DATE,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Buyer(buyer_id)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    contact_info VARCHAR(100),
    address TEXT
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    customer_id INT,
    amount_paid DECIMAL(10, 2),
    payment_status VARCHAR(20),
    payment_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE ProfitCalculation (
    profit_id INT PRIMARY KEY,
    month VARCHAR(20),
    total_sales DECIMAL(10, 2),
    total_cost DECIMAL(10, 2),
    profit DECIMAL(10, 2)
);


INSERT INTO Buyer (buyer_id, buyer_name, contact_info, address) VALUES 
(1, 'hazarath', '7788445596', 'nellore.'),
(2, 'manoj','9876543210', 'kavali.');

INSERT INTO Stock (stock_id, item_name, quantity, purchase_date, supplier_id) VALUES 
(1, 'rice packets', 100, '2024-10-01', 1),
(2, 'saops', 200, '2024-10-05', 2);

INSERT INTO Customer (customer_id, customer_name, contact_info, address) VALUES 
(1, 'hemanth', 'hemanth2005@gmail.com', 'gudur.'),
(2, 'Sai thanvish', 'saithanvish@gamil.com', 'ongole');

INSERT INTO Payment (payment_id, customer_id, amount_paid, payment_status, payment_date) VALUES 
(1, 1, 5000.00, 'Paid', '2024-10-10'),
(2, 2, 389.12, 'Pending', '2024-10-15');

INSERT INTO ProfitCalculation (profit_id, month, total_sales, total_cost, profit) VALUES 
(1, 'October', 100000.00, 69000.00, 31000.00);


-- Retrieve stock and supplier details
SELECT s.item_name, s.quantity, b.buyer_name 
FROM Stock s
JOIN Buyer b ON s.supplier_id = b.buyer_id;

-- Retrieve pending payments
SELECT c.customer_name, p.amount_paid, p.payment_status 
FROM Payment p
JOIN Customer c ON p.customer_id = c.customer_id
WHERE p.payment_status = 'Pending';

-- Monthly profit calculation
SELECT month, profit 
FROM ProfitCalculation
WHERE month = 'October';

set sql_safe_updates=0;

set sql_safe_updates=1;


-- Update profit calculation table after new transactions
UPDATE ProfitCalculation
SET total_sales = 110000.00, total_cost = 71000.00, profit = total_sales - total_cost
WHERE month = 'October';

