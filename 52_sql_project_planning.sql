SELECT 
    MIN(Start_Date) AS Project_Start,
    MAX(End_Date) AS Project_End
FROM (
    SELECT 
        *,
        DATE_SUB(End_Date, INTERVAL ROW_NUMBER() OVER (ORDER BY End_Date) DAY) AS grp
    FROM Projects
) AS derived
GROUP BY grp
ORDER BY DATEDIFF(MAX(End_Date), MIN(Start_Date)) + 1, MIN(Start_Date);

