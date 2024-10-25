SELECT * FROM actor;
SELECT last_name FROM actor WHERE first_name = 'John';
SELECT * FROM actor WHERE last_name = 'Neeson';
SELECT * FROM actor WHERE actor_id % 10 = 0;
SELECT description FROM film WHERE film_id = 100;
SELECT * FROM film WHERE rating = 'R';
SELECT * FROM film WHERE rating != 'R';
SELECT * FROM film ORDER BY length ASC LIMIT 10;
SELECT * FROM film WHERE length = (SELECT MAX(length) FROM film);
SELECT * FROM film WHERE special_features LIKE '%Deleted Scenes%';
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) = 1
ORDER BY last_name DESC;
SELECT last_name, COUNT(*) as occurrences
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;

SELECT actor_id, COUNT(film_id) AS film_count
FROM film_actor
GROUP BY actor_id
ORDER BY film_count DESC
LIMIT 1;

SELECT rental_duration FROM film WHERE title = 'Academy Dinosaur';

SELECT AVG(length) AS avg_runtime FROM film;

SELECT c.name AS category, AVG(f.length) AS avg_runtime
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name;

SELECT * FROM film WHERE title LIKE '%robot%' OR description LIKE '%robot%';

SELECT COUNT(*) AS movies_in_2010 FROM film WHERE release_year = 2010;

SELECT f.title
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
WHERE c.name = 'Horror';


SELECT f.title
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE a.first_name = 'Fred' AND a.last_name = 'Costner';

SELECT COUNT(DISTINCT country) AS distinct_countries FROM country;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM actor
WHERE last_name LIKE '%son'
ORDER BY first_name ASC;

SELECT c.name AS category, COUNT(f.film_id) AS total_films
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_films DESC
LIMIT 1;















