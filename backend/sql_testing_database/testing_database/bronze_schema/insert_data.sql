INSERT INTO bronze.raw_sales (sale_id, customer_id, product, quantity, price, sale_date) VALUES
(1, 1, 'Product A', 2, 20.00, '2023-01-01'),
(2, 1, 'Product B', 1, 15.00, '2023-01-05'),
(3, 2, 'Product A', 1, 10.00, '2023-01-03');

INSERT INTO bronze.raw_customers (customer_id, first_name, last_name, email, created_at) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '2023-01-01'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2023-01-02');
