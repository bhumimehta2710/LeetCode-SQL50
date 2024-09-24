# Write your MySQL query statement below
SELECT e1.name 
FROM Employee e1 
JOIN Employee e2 
ON e1.id = e2.managerid 
Group BY e1.id 
HAVING count(*)>=5;

-- Used 'Self Join' on 'Employee' table with aliases e1 and e2. The condition 'e1.id = e2.managerid' ensures e1 represents the manager and e2 represents an employee who reports to them.
-- Then grouped the results by manager's id. Then used  'HAVING COUNT(*)>=5' to filter number of employees in each group and only keep managers with group that have atleast 5 employees.
-- Selecting only the name of the manager from employee table.
