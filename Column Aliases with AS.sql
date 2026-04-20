DROP TABLE IF EXISTS movies2;
CREATE TABLE movies2 (
  id INTEGER PRIMARY KEY,
  title TEXT NOT NULL,
  genre TEXT NOT NULL,
  year INTEGER NOT NULL,
  rating REAL
);

INSERT INTO movies2 (id, title, genre, year, rating) VALUES
  (1, 'Metro Rush', 'Action', 2005, 7.9),
  (2, 'Quiet Lake', 'Drama', 2012, 8.1),
  (3, 'Night Pulse', 'Horror', 2018, 6.8),
  (4, 'Skyline Code', 'Action', 2021, 7.4),
  (5, 'Tiny Planet', 'Family', 2010, 7.1),
  (6, 'Silver Track', 'Thriller', 2016, 7.4);

SELECT
  title AS movie_name,
  genre AS type,
  year AS release_year
FROM movies2;

SELECT 
  title AS movie_name,
  genre AS type,
  year AS release_year,
rating * 10 AS rating_bucket
FROM movies2;
 
SELECT
  title AS movie_name,
  genre AS type,
  year AS release_year,
  rating * 10 AS rating_bucket
FROM movies2
ORDER BY rating_bucket DESC, movie_name ASC;

SELECT title,genre, year,rating * 10
FROM movies2
ORDER BY rating * 10 DESC, title ASC;
