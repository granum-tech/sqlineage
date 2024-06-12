CREATE PROCEDURE silver.sp_aggregate_sales
AS
BEGIN
    INSERT INTO gold.sales_summary (product, total_quantity, total_revenue)
    SELECT product, SUM(quantity), SUM(total_price)
    FROM silver.cleaned_sales
    GROUP BY product;
END;

CREATE PROCEDURE silver.sp_sales_performance
AS
BEGIN
    INSERT INTO gold.sales_performance (sale_id, customer_id, product, sale_date, total_price, running_total)
    SELECT 
        sale_id,
        customer_id,
        product,
        sale_date,
        total_price,
        SUM(total_price) OVER (PARTITION BY customer_id ORDER BY sale_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS running_total
    FROM silver.cleaned_sales;
END;