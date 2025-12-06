
-- Retrieve all users --
SELECT * FROM users;

-- Retrieve all categories --
SELECT * FROM categories;

-- Retrieve all accounts --
SELECT * FROM accounts;

-- Retrieve all transactions --
SELECT * FROM transactions;

-- Find total spending for each user --
SELECT u.first_name, u.last_name, SUM(t.amount) AS total_spending
FROM transactions t
INNER JOIN accounts a ON t.account_id = a.account_id
INNER JOIN users u ON a.user_id = u.user_id
GROUP BY u.first_name, u.last_name;
