
-- Retrieve all users --
SELECT * FROM users;

-- Retrieve all categories --
SELECT * FROM categories;

-- Retrieve all accounts --
SELECT * FROM accounts;

-- Retrieve all transactions --
SELECT * FROM transactions;

--Retrieve Transactions in a Date Range--
SELECT * FROM transactions
WHERE transaction_date BETWEEN '2025-12-01' AND '2025-12-03';
