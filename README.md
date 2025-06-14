# 🍕 Pizzahut Sales Analysis

A structured SQL project built around a fictional pizza chain to analyze sales performance, order patterns, and revenue generation using MySQL. This project covers full database creation, sample data insertion, and analytical querying for business insights.

---

## 📌 Objective

The goal of this project is to design a relational database and perform meaningful sales analysis using SQL. This includes:

- Creating a clean database schema
- Inserting sample records
- Writing analytical queries to extract business intelligence
- Answering common business questions like:
  - What are the top-selling pizzas?
  - Which category generates the most revenue?
  - How does daily revenue grow over time?

---

## 🗂️ Database Schema

### Tables:
- **pizza_types** – Stores pizza names, categories (Veg, Non-Veg), and ingredients
- **pizzas** – Stores pizza items with size and price
- **orders** – Stores date and time of each order
- **order_details** – Stores quantity of each pizza ordered per order

---

## 🧾 Files Included

- `pizzahut_schema.sql` – Creates all the required tables
- `pizzahut_sample_data.sql` – Inserts sample records into the tables
- `analytical_queries.sql` – Contains all the SQL queries used for analysis

---

## 🔍 Key Insights from Analysis

- Total orders and revenue generated
- Top 3 most ordered pizza types by revenue per category
- Revenue percentage by category (e.g., Classic, Supreme, Veggie)
- Average number of pizzas sold per day
- Daily and cumulative revenue over time

---

## 🚀 How to Run This Project

1. Clone this repository:
   ```bash
   git clone https://github.com/Ashiq-r-khan/Pizzahut_Sales__Analysis.git
   cd Pizzahut_Sales__Analysis
