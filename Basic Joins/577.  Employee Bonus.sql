# Write your MySQL query statement below
Select e.name,b.bonus 
from Employee e 
Left Join Bonus b 
on b.empId = e.empId 
where b.bonus <1000 or b.bonus IS NULL;

-- Combined  'Employee' and 'Bonus' table using a left join, which keeps all employees from the 'Employee' table, even if they don't have a bonus.
-- Linked the 2 tables on their employee ids.
-- Used 'WHERE' clause to filter the results to include only employees with bonuses less than 1000 or those with no bonus.
