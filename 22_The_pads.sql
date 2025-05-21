SELECT CONCAT(name,'(',LEFT(Occupation,1),')') as final_names
FROM OCCUPATIONS
ORDER BY name ASC;

SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(occupation),'s.') as line
FROM OCCUPATIONS 
GROUP BY occupation
ORDER BY COUNT(Occupation),Occupation; 