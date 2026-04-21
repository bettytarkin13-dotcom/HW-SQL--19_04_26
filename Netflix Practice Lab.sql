SELECT DISTINCT type
FROM "netflix_movies_detailed_up_to_2025 22"
ORDER BY type;

SELECT DISTINCT "cast"
FROM "netflix_movies_detailed_up_to_2025 22"
WHERE type = 'Movie'
  AND genres like '%Action%'
  AND "cast" IS NOT NULL
  AND TRIM("cast") !=''
  LIMIT 20;

SELECT DISTINCT "cast"
FROM "netflix_movies_detailed_up_to_2025 22"
WHERE type = 'Movie'
 AND genres like 'Action'
 AND release_year >= 2015
ORDER BY release_year DESC 
LIMIT 5; 

SELECT title, release_year, rating
FROM "netflix_movies_detailed_up_to_2025 22"
WHERE type = 'Movie'
ORDER BY rating DESC;

SELECT 
   title AS movie,
   rating AS score
FROM "netflix_movies_detailed_up_to_2025 22" 
WHERE type = 'Movie' 
ORDER BY score DESC , movie ASC;

SELECT title 
FROM "netflix_movies_detailed_up_to_2025 22"
WHERE type = 'Movie'
  AND genres like 'Drama'
  AND "cast" IS NULL;
