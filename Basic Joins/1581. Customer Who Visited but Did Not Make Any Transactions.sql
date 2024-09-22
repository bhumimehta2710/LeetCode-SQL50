# Write your MySQL query statement below
SELECT v.customer_id, COUNT(*) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;




-- Used LEFT JOIN to connect 'Visits' and 'Transactions' tables based on matching 'visit_id' values. A LEFT JOIN ensures all records from the 'Visits' table are included, even if there are no corresponding records in 'Transactions'.
--Then filtered the results to only include rows where 't.transaction_id' is NULL, indicating that no transaction occurred for that visit.
-- Grouped the results by customer_id and counts the number of visits with no transactions using COUNT(*). 
-- The result is a list of customer id and the number of times they visited without making a purchase.
