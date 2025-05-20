SELECT
  MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
  MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
  MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
  MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM
(SELECT name,occupation,
    ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY name) AS r
FROM Occupations) AS ordered
GROUP BY r
ORDER BY r;