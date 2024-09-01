SELECT EmployeeUNI.unique_id , name 
FROM Employees
LEFT JOIN EmployeeUni ON  EmployeeUNI.id = Employees.id ;

-- The script joins the 'Employees' and 'EmployeeUNI' tables to retrieve unique_IDs for employees. 
