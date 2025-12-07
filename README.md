# Personal Finance Tracker - SQL Project

Personal Finance Tracker

A SQL database I built to track personal finances across multiple accounts. This project helped me build practical SQL skills that financial analysts use when pulling data from company databases, automating reports, and analyzing large datasets.

Why I Built This

As I prepare for roles in finance, I wanted to go beyond Excel and learn how to work directly with databases. Modern finance teams increasingly use SQL to extract data from ERP systems and build automated reporting workflows. This project let me practice those skills in a finance context I understand - tracking accounts, categorizing transactions, and analyzing spending patterns. I structured the project to progressively build my skills, starting with basic queries and working up to complex joins and window functions.

Built with: PostgreSQL

Skills focus: Database design, data extraction, financial data analysis

Database Structure

The database has four main tables that connect to each other:

users - stores basic user info (name and email)

categories - organizes transactions into types like Income, Groceries, Utilities

accounts - tracks different bank accounts (checking, savings) with balances

transactions - records every transaction with amount, date, and description

I made sure to use foreign keys so the data stays connected properly. For example, every transaction links to both an account and a category, which lets me run more interesting queries later.

SQL Skills Demonstrated

Database design with proper normalization

Primary and foreign key constraints

Basic queries (SELECT, WHERE, ORDER BY)

Aggregate functions (SUM, COUNT, AVG, GROUP BY, HAVING)

Multi-table INNER JOINs (up to 4 tables)

Subqueries for complex filtering

Window functions (ROW_NUMBER, PARTITION BY)

Safwaan Nour | Accounting & Finance '26

Building technical skills for finance roles.
