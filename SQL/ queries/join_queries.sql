-- Join transactions with users and accounts to get transaction details--
SELECT u.first_name, u.last_name, a.account_name, t.transaction_date, t.amount
FROM transactions AS t
INNER JOIN accounts AS a 
ON t.account_id = a.account_id
INNER JOIN users AS u 
ON a.user_id = u.user_id;


-- Join transactions with categories to get transaction details with categories--
SELECT t.transaction_id, t.amount, t.transaction_date, c.category_name
FROM transactions AS t
INNER JOIN categories AS c 
ON t.category_id = c.category_id;


-- Get all transactions for a specific user (e.g., John)--
SELECT u.first_name, u.last_name, t.amount, t.transaction_date
FROM transactions AS t
INNER JOIN accounts AS a 
ON t.account_id = a.account_id
INNER JOIN users AS u 
ON a.user_id = u.user_id
WHERE u.first_name = 'John';
