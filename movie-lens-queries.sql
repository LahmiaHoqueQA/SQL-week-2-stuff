SELECT title, release_date
FROM movies
WHERE release_date BETWEEN '1983-01-01' AND '1993-12-31'
ORDER BY release_date DESC;

SELECT title
FROM movies
JOIN ratings ON movies.id = ratings.movie_id
GROUP BY title
HAVING AVG(rating) = (
    SELECT MIN(avg_rating)
    FROM (
        SELECT AVG(rating) AS avg_rating
        FROM ratings
        GROUP BY movie_id
    ) AS subquery
);

SELECT DISTINCT m.title
FROM movies m
JOIN ratings r ON m.id = r.movie_id
JOIN users u ON r.user_id = u.id
JOIN genres_movies mg ON m.id = mg.movie_id
JOIN genres g ON mg.genre_id = g.id
WHERE u.age = 24
AND u.gender = 'M'
AND u.occupation_id = (
    SELECT id FROM occupations WHERE name = 'Student'
)
AND r.rating = 5
AND g.name = 'Sci-Fi';


WITH PopularDays AS (
    SELECT release_date, COUNT(*) AS movie_count
    FROM movies
    GROUP BY release_date
    ORDER BY movie_count DESC
    LIMIT 1
)
SELECT DISTINCT title
FROM movies
WHERE release_date = (SELECT release_date FROM PopularDays);

SELECT g.genre, COUNT(*) AS total_movies
FROM genres g
JOIN movies m ON g.movie_id = m.id
GROUP BY g.genre
ORDER BY total_movies ASC;
