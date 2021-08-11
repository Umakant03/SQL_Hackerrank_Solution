SELECT SUM(CITY.POPULATION) AS POPULATION
FROM CITY 
JOIN COUNTRY 
ON CITY.CountryCode=COUNTRY.Code
WHERE CONTINENT ='Asia';