-- Total income for all transactions--
SELECT SUM(amount) AS total_income
FROM transactions
WHERE transaction_type = 'Income';

-- Total expenses for all transactions--
SELECT SUM(amount) AS total_expenses
FROM transactions
WHERE transaction_type = 'Expense';

-- Total spending per user--
SELECT u.first_name, u.last_name, SUM(t.amount) AS total_spending
FROM transactions t
INNER JOIN accounts a ON t.account_id = a.account_id
INNER JOIN users u ON a.user_id = u.user_id
GROUP BY u.first_name, u.last_name;

-- Total number of transactions--
SELECT COUNT(*) AS total_transactions FROM transactions;
