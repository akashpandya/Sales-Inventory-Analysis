-- Compare sales performance across product categories
SELECT 
    p.Category,
    COUNT(s.ProductID) AS TotalProductsSold,
    ROUND(SUM(s.Quantity * s.UnitPrice), 2) AS TotalRevenue
FROM sales.sales_data s
JOIN sales.product_data p ON s.ProductID = p.ProductID
GROUP BY p.Category
ORDER BY TotalRevenue DESC;
