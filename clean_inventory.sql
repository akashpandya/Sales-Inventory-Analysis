-- Fix missing store names by filling in based on StoreID
UPDATE sales.inventory_data
SET StoreName = 'Dollar Tree'
WHERE StoreID = 21791 AND StoreName IS NULL;

-- Remove incorrect ProductID values (e.g., "NA" values)
DELETE FROM sales.product_data
WHERE ProductID = 'NA';