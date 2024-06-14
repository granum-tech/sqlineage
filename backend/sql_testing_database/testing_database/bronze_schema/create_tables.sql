CREATE TABLE bronze.raw_sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2),
    sale_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE bronze.raw_customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    created_at DATETIME DEFAULT GETDATE()
);
