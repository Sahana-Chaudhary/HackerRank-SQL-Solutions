SELECT co.continent, FLOOR(AVG(ci.population)) AS avg_population
FROM CITY ci
JOIN COUNTRY co
ON ci.CountryCode=co.Code
GROUP BY co.continent;