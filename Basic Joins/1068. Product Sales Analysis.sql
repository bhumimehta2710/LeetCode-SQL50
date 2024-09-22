# Write your MySQL query statement below
Select  p.product_name, s.year,s.price
FROM Sales s
INNER JOIN Product p
ON s.product_id = p.product_id;

-- The query joins two tables ('Sales' and 'Product') to combine information about product sales and product details.
-- The join is based on matching product IDs in both tables.
-- Retrieves 'product_name' from 'Product' and 'year', 'price' from 'Sales'.
