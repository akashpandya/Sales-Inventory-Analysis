-- Calculate profit margin per product
SELECT 
    s.ProductID,
    p.ProductName,
    ROUND(SUM(s.Quantity * (s.UnitPrice - p.CostPrice)), 2) AS TotalProfit,
    ROUND(AVG(s.UnitPrice - p.CostPrice), 2) AS ProfitMarginPerUnit
FROM sales.sales_data s
JOIN sales.product_data p ON s.ProductID = p.ProductID
GROUP BY s.ProductID,
