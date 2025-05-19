SELECT DISTINCT city 
FROM STATION
WHERE city NOT REGEXP '^[aeiou]'
    AND city NOT REGEXP '[aeiou]$';