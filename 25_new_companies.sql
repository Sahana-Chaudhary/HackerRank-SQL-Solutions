SELECT c.company_code,c.founder AS founder_name, COUNT(DISTINCT l.lead_manager_code) AS total_lead_managers,COUNT(DISTINCT s.senior_manager_code) AS total_senior_managers,
COUNT(DISTINCT m.manager_code) AS total_manager, COUNT(DISTINCT e.employee_code) AS total_employees
FROM Company c
JOIN Lead_Manager l
ON c.company_code=l.company_code
JOIN Senior_Manager s
ON l.lead_manager_code=s.lead_manager_code
JOIN Manager m
ON s.company_code=m.company_code
JOIN Employee e
ON m.company_code=e.company_code
GROUP BY 1,2
ORDER BY 1 ASC;