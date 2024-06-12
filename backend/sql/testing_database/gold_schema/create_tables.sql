CREATE TABLE gold.sales_summary (
    product VARCHAR(255),
    total_quantity INT,
    total_revenue DECIMAL(10, 2)
);

CREATE TABLE gold.sales_performance (
    sale_id INT,
    customer_id INT,
    product VARCHAR(255),
    sale_date DATETIME,
    total_price DECIMAL(10, 2),
    running_total DECIMAL(10, 2)
);
