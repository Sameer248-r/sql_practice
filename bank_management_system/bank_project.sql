CREATE DATABASE bank_project;
USE bank_project;

CREATE TABLE customers (
customer_id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50)
);

CREATE TABLE accounts (
account_id INT PRIMARY KEY,
customer_id INT,
account_type VARCHAR(20),
balance DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
transaction_id INT PRIMARY KEY,
account_id INT,
transaction_type VARCHAR(20), -- deposit/withdraw
amount DECIMAL(10,2),
transaction_date DATE,
FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

INSERT INTO customers VALUES
(1, 'Rahul', 'Hyderabad'),
(2, 'Priya', 'Mumbai'),
(3, 'Amit', 'Delhi');

INSERT INTO accounts VALUES
(101, 1, 'Savings', 50000),
(102, 2, 'Current', 70000),
(103, 3, 'Savings', 30000);

INSERT INTO transactions VALUES
(1, 101, 'deposit', 10000, '2025-01-01'),
(2, 101, 'withdraw', 5000, '2025-01-05'),
(3, 102, 'deposit', 20000, '2025-01-03'),
(4, 103, 'withdraw', 10000, '2025-01-04');



-- IMPORTANT QUERIES
-- 1. TOTAL BALANCE IN BANK

SELECT sum(balance) as total_bank_balnce from accounts;
-- Total bank balance is 150000.00

-- 2 CUSTOMER WITH HIGHEST BALANCE

SELECT a.balance , c.name
from customers c
join accounts a 
on c.customer_id = a.customer_id
order by a.balance desc
limit 1;

-- Priya  have heighest bank balance 70000.00

-- 3. transaction history with customer name 
select c.name , t.transaction_type, t.amount, t.transaction_date
from transactions t
join accounts a on t.account_id = a.account_id
join customers c on a.customer_id = c.customer_id;

-- 4. TOTAL DEPOSIT VS WITHDRAWALS

select transaction_type, sum(amount) as total_amount
from transactions
group by transaction_type;

-- 5 CUSTOMER WITH SAVINGS ACCOUNT

select c.name,a.account_type
from customers c
join accounts a on c.customer_id = a.customer_id
where a.account_type = 'Savings';

-- rahul and Amit have savings account





