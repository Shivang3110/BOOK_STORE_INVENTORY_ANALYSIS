# Book Store Inventory Analysis

This project involves SQL-based data analysis on a bookstore database. It showcases a variety of SQL queries ranging from basic data retrieval to advanced business insights like total revenue calculation, customer segmentation, and inventory monitoring.

---

## Project Overview

The objective is to analyze the operational and sales performance of a bookstore using structured query language (SQL). This project can serve as a practice case for anyone learning SQL and looking to build data analysis skills with real-world business logic.

---

## Database Schema

The database contains the following three tables:

### 1. `BOOKS`

| Column Name   | Data Type | Description                        |
|---------------|-----------|------------------------------------|
| `Book_ID`     | INT       | Primary key                        |
| `Title`       | VARCHAR   | Title of the book                  |
| `Author`      | VARCHAR   | Name of the author                 |
| `Genre`       | VARCHAR   | Genre/category of the book         |
| `Price`       | DECIMAL   | Price per unit                     |
| `Stock`       | INT       | Number of units currently in stock |

- **Primary Key**: `Book_ID`

---

### 2. `CUSTOMERS`

| Column Name     | Data Type | Description                   |
|------------------|-----------|-------------------------------|
| `Customer_ID`    | INT       | Primary key                   |
| `Name`           | VARCHAR   | Full name of the customer     |
| `City`           | VARCHAR   | City of residence             |

- **Primary Key**: `Customer_ID`

---

### 3. `ORDERS`

| Column Name     | Data Type | Description                                 |
|------------------|-----------|---------------------------------------------|
| `Order_ID`       | INT       | Primary key                                 |
| `Book_ID`        | INT       | Foreign key referencing `BOOKS(Book_ID)`    |
| `Customer_ID`    | INT       | Foreign key referencing `CUSTOMERS(Customer_ID)` |
| `Quantity`       | INT       | Number of units ordered                     |
| `Total_Amount`   | DECIMAL   | Price × Quantity                            |

- **Primary Key**: `Order_ID`
- **Foreign Keys**: `Book_ID`, `Customer_ID`

---

## Features and Queries Covered

- Retrieve basic book and customer information
- Calculate total revenue from all orders
- Identify most frequently ordered books
- Track cities with high-spending customers
- Monitor stock remaining after fulfilling orders
- Aggregate orders and revenue by genre
- Find the top-spending customer

---
