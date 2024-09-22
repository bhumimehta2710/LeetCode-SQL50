# Write your MySQL query statement below
SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2 ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature; 

-- Used INNER JOIN to compare two sets of data from the same table (Weather). This joins records from w1 where the recordDate is one day greater than the recordDate in w2.
-- Then to identify days with a temperature increase I have used WHERE clause to filter the joined data to only include records where w1.temperature is greater than w2.temperature. 
-- Retrieves the id of records that meet the temperature increase criteria.
