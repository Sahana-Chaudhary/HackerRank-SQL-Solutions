SELECT CEIL(AVG(salary) - AVG(REPLACE(salary,0,'')))
FROM Employees;