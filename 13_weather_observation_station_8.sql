SELECT DISTINCT city 
FROM STATION
WHERE city REGEXP '^[aeiou].*[aeiou]$';