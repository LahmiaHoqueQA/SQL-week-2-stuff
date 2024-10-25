-- SELECT COUNT(*) AS city_count
-- FROM city
-- WHERE CountryCode = 'USA';

-- SELECT Population, LifeExpectancy
-- FROM country
-- WHERE Name = 'Argentina';

-- SELECT *
-- FROM country
-- WHERE Name = 'Argentina';

-- SELECT *
-- FROM country
-- LIMIT 5;


-- SELECT Code, Name, Population, LifeExpectancy
-- FROM country
-- LIMIT 5;

-- SHOW COLUMNS FROM country;

-- SHOW TABLES;

-- DESCRIBE city;


-- SELECT c.city, co.country 
-- FROM city c
-- JOIN country co ON c.country_id = co.country_id
-- WHERE co.country = 'Argentina';

SELECT country_id, country
FROM country
WHERE country = 'Argentina';

SELECT Population, LifeExpectancy
FROM country
WHERE country_id = 6; -- replace <Argentina_ID> with the actual ID you find




SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 1;

SELECT city.name AS capital_city
FROM country
JOIN city ON country.capital = city.id
WHERE country.name = 'Spain';

SELECT city.name AS capital_city
FROM country
JOIN city ON country.capital = city.id
WHERE country.name = 'Spain';

SELECT DISTINCT countrylanguage.language
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE country.region = 'Southeast Asia';

SELECT name
FROM city
WHERE name LIKE 'F%'
LIMIT 25;

SELECT COUNT(*) AS city_count
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Name = 'China';

SELECT name, population
FROM country
WHERE population > 0
ORDER BY population ASC
LIMIT 1;

SELECT COUNT(*) AS country_count
FROM country;

SELECT name, surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 10;

SELECT name, population
FROM city
WHERE countrycode = 'JPN'
ORDER BY population DESC
LIMIT 5;

UPDATE country
SET headofstate = 'Elizabeth II'
WHERE headofstate = 'Elisabeth II';  -- Fixing the mistake

SELECT name, code
FROM country
WHERE headofstate = 'Elizabeth II';

SELECT name, population / surfacearea AS pop_area_ratio
FROM country
WHERE surfacearea > 0 AND population > 0
ORDER BY pop_area_ratio ASC
LIMIT 10;

SELECT DISTINCT language
FROM countrylanguage;

SELECT name, gnp
FROM country
ORDER BY gnp DESC
LIMIT 10;

SELECT country.name, COUNT(countrylanguage.language) AS languages_spoken
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
GROUP BY country.name
ORDER BY languages_spoken DESC
LIMIT 10;

SELECT country.name
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE countrylanguage.language = 'German'
AND countrylanguage.percentage > 50;

SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
ORDER BY lifeexpectancy ASC
LIMIT 1;

SELECT governmentform, COUNT(*) AS government_count
FROM country
GROUP BY governmentform
ORDER BY government_count DESC
LIMIT 3;

SELECT COUNT(*) AS independent_countries
FROM country
WHERE IndepYear IS NOT NULL;
