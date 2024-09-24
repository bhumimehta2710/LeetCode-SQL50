# Write your MySQL query statement below
SELECT s.user_id, ROUND(SUM(CASE WHEN c.action = 'confirmed' then 1 else 0 END)/COUNT(*),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
GROUP BY user_id;

-- Used 'Left Join' to join 'Signups' and 'Confirmations' tables to get all users from 'Signups' table even if they don't have any record in 'Confirmations'.
-- Used 'Case When' expression to convert confirmed actions into 1 else 0. Then, sum these values and divide them by total number of rows for each user using 'COUNT'.
-- Used 'Round()' to round the confirmation rate to two decimal place and grouped the results by 'user_id' to get confirmation rate for each individual user. 
