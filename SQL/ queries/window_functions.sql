-- Rank transactions for each user based on amount (highest to lowest)--
SELECT u.first_name, u.last_name, t.transaction_id, t.amount, t.transaction_date,
ROW_NUMBER() OVER (PARTITION BY u.user_id ORDER BY t.amount DESC) AS transaction_rank
FROM transactions t
INNER JOIN accounts AS a 
ON t.account_id = a.account_id
INNER JOIN users AS u 
ON a.user_id = u.user_id
ORDER BY u.first_name, u.last_name, transaction_rank;

