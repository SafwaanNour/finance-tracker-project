INSERT INTO users (first_name, last_name, email)
VALUES 
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com');

INSERT INTO categories (category_name)
VALUES 
    ('Income'),
    ('Groceries'),
    ('Utilities'),
    ('Entertainment'),
    ('Savings');

INSERT INTO accounts (user_id, account_name, balance, currency)
VALUES 
    (1, 'Checking Account', 2000.00, 'USD'),
    (1, 'Savings Account', 5000.00, 'USD'),
    (2, 'Checking Account', 1500.00, 'USD');

CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY, 
    account_id INT NOT NULL REFERENCES accounts(account_id),  
    category_id INT NOT NULL REFERENCES categories(category_id),  
    amount DECIMAL(10, 2) NOT NULL,  
    transaction_date DATE NOT NULL,  
    description TEXT,  
    transaction_type VARCHAR(50), 
    location VARCHAR(100),  
    payment_method VARCHAR(50),  
    CONSTRAINT check_amount CHECK (amount != 0) );
