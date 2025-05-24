SELECT * 
FROM (    
    SELECT s.Name AS Name, g.Grade AS Grade, s.Marks AS Marks
    FROM Students s
    JOIN Grades g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark 
    WHERE g.Grade >= 8

    UNION

    SELECT NULL AS Name, g.Grade AS Grade, s.Marks AS Marks
    FROM Students s
    JOIN Grades g
    ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
    WHERE g.Grade < 8
) AS result
ORDER BY
  Grade DESC,
  CASE WHEN Name IS NOT NULL THEN Name END ASC,
  CASE WHEN Name IS NULL THEN Marks END ASC;

  
