-- Replace NULL values in the Quantity column with 0
UPDATE sales.sales_data
SET Quantity = 0
WHERE Quantity IS NULL;

-- Standardize date format
UPDATE sales.sales_data
SET Date = PARSE_DATE('%Y-%m-%d', Date)
WHERE SAFE.PARSE_DATE('%Y-%m-%d', Date) IS NOT NULL;
