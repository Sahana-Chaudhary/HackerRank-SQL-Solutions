SELECT DISTINCT city 
FROM STATION
WHERE city NOT REGEXP '^[aeiou].*[aeiou]$';