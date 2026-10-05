CREATE OR ALTER PROCEDURE spGetSampleProducts
AS
BEGIN
	WITH ranked_products AS (
		SELECT 
			*,
			ROW_NUMBER() OVER 
			(
				PARTITION BY SKU
				ORDER BY SKU DESC
			) AS row_count
		FROM products
	)
	
	SELECT * FROM ranked_products WHERE row_count < 10 ORDER BY sku;
END

select * from products