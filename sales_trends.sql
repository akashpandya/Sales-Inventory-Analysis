-- Analyze monthly and yearly sales trends
SELECT 
    EXTRACT(YEAR FROM Date) AS Year,
    EXTRACT(MONTH FROM Date) AS Month,
    ProductID,
    ROUND(MAX(UnitPrice), 2) AS UnitPrice,
    SUM(Quantity) AS UnitsSold
FROM sales.sales_data
GROUP BY Year, Month, ProductID
ORDER BY Year, Month, ProductID;
