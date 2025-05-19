SELECT DISTINCT city 
FROM STATION
where city NOT like '%a' 
     AND city NOT like '%e' 
     AND city NOT like '%i' 
     AND city NOT like '%o' 
     AND city NOT like '%u' ;