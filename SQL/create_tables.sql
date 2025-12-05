CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,  
    first_name VARCHAR(100) NOT NULL, 
    last_name VARCHAR(100) NOT NULL,   
    email VARCHAR(150) UNIQUE NOT NULL );

CREATE TABLE categories (
    category_id SERIAL PRIMARY KEY, 
    category_name VARCHAR(50) UNIQUE NOT NULL );

CREATE TABLE accounts (
    account_id SERIAL PRIMARY KEY,  
    user_id INT NOT NULL REFERENCES users(user_id),  
    account_name VARCHAR(100) NOT NULL,  
    balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00,  
    currency VARCHAR(10) DEFAULT 'USD' );

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
    CONSTRAINT check_amount CHECK (amount != 0));
