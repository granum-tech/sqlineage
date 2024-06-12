CREATE TABLE silver.cleaned_sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(255),
    quantity INT,
    total_price DECIMAL(10, 2),
    sale_date DATETIME
);

CREATE TABLE silver.cleaned_customers (
    customer_id INT PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255),
    created_at DATETIME
);
