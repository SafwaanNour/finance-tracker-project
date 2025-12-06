--Find users who have total spending greater than $500--
SELECT u.first_name, u.last_name
FROM users u
WHERE (SELECT SUM(amount) FROM transactions t 
       INNER JOIN accounts a ON t.account_id = a.account_id 
       WHERE a.user_id = u.user_id) > 500;


--Show user spending and total income)--
SELECT u.first_name, u.last_name,
       (SELECT SUM(amount) FROM transactions t 
        INNER JOIN accounts AS a
        ON t.account_id = a.account_id 
        WHERE a.user_id = u.user_id AND t.transaction_type = 'Income') AS total_income,
       (SELECT SUM(amount) FROM transactions t 
        INNER JOIN accounts AS a 
        ON t.account_id = a.account_id 
        WHERE a.user_id = u.user_id AND t.transaction_type = 'Expense') AS total_expenses
        FROM users u;
