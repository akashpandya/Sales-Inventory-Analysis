-- Identify products that need restocking (low stock alert)
SELECT 
    i.ProductID,
    p.ProductName,
    i.Quantity AS CurrentStock
FROM sales.inventory_data i
JOIN sales.product_data p ON i.ProductID = p.ProductID
