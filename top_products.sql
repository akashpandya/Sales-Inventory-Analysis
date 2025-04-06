-- Find the top-selling products by total quantity sold
SELECT 
    ProductID,
    SUM(Quantity) AS TotalUnitsSold
FROM sales.sales_data
GROUP BY ProductID
ORDER BY TotalUnitsSold DESC
LIMIT 10;
