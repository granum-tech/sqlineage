CREATE PROCEDURE bronze.sp_clean_sales
AS
BEGIN
    MERGE silver.cleaned_sales AS target
    USING bronze.raw_sales AS source
    ON target.sale_id = source.sale_id
    WHEN MATCHED THEN
        UPDATE SET
            target.customer_id = source.customer_id,
            target.product = source.product,
            target.quantity = source.quantity,
            target.total_price = source.quantity * source.price,
            target.sale_date = source.sale_date
    WHEN NOT MATCHED THEN
        INSERT (sale_id, customer_id, product, quantity, total_price, sale_date)
        VALUES (source.sale_id, source.customer_id, source.product, source.quantity, source.quantity * source.price, source.sale_date);
END;

CREATE PROCEDURE bronze.sp_clean_customers
AS
BEGIN
    MERGE bronze.cleaned_customers AS target
    USING bronze.raw_customers AS source
    ON target.customer_id = source.customer_id
    WHEN MATCHED THEN
        UPDATE SET
            target.full_name = CONCAT(source.first_name, ' ', source.last_name),
            target.email = source.email,
            target.created_at = source.created_at
    WHEN NOT MATCHED THEN
        INSERT (customer_id, full_name, email, created_at)
        VALUES (source.customer_id, CONCAT(source.first_name, ' ', source.last_name), source.email, source.created_at);
END;
