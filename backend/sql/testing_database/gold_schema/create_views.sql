CREATE VIEW gold.customer_sales_view AS
SELECT c.customer_id, c.full_name, c.email, s.product, s.total_price, s.sale_date
FROM silver.cleaned_customers c
JOIN silver.cleaned_sales s ON c.customer_id = s.customer_id;
