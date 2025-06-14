-- Create the database schema for the PizzaHut sales system

CREATE DATABASE IF NOT EXISTS pizzahut;     -- Creating Schema if it doesn't exist

-- Select the newly created database for use
USE pizzahut;

-- ============================
-- Create 'pizzas' table
-- Stores each unique pizza item with its type, size, and price
-- ============================
CREATE TABLE pizzas (
    pizza_id VARCHAR(50) NOT NULL,          
    pizza_type VARCHAR(50) NOT NULL,        
    size CHAR(10) NOT NULL,                
    price DOUBLE NOT NULL,                 
    PRIMARY KEY (pizza_id)                  
);

-- ============================
-- Create 'pizza_types' table
-- Stores types of pizzas, their names, categories, and ingredients
-- ============================
CREATE TABLE pizza_types (
    pizza_types VARCHAR(50) NOT NULL,     
    pizza_name VARCHAR(50) NOT NULL,        
    category VARCHAR(50) NOT NULL,          
    pizza_ingredients TEXT NOT NULL,        
    PRIMARY KEY (pizza_type_id)             
);

-- ============================
-- Create 'orders' table
-- Stores order-level data (date and time)
-- ============================
CREATE TABLE orders (
    order_id INT NOT NULL,                  
    order_date DATE NOT NULL,              
    order_time TIME NOT NULL,               
    PRIMARY KEY (order_id)                  
);

-- ============================
-- Create 'order_details' table
-- Stores details for each item in an order (one-to-many relationship with orders)
-- ============================
CREATE TABLE order_details (
    order_details_id INT NOT NULL,          
    order_id INT NOT NULL,                  
    pizza_id VARCHAR(50) NOT NULL,          
    quantity INT NOT NULL,                  
    PRIMARY KEY (order_details_id)          
);
