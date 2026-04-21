DROP TABLE IF EXISTS movies_1;
CREATE TABLE movies_1 (
   id INTEGER PRIMARY KEY,
   title TEXT NOT NULL,
   genre TEXT NOT NULL,
   year INTEGER NOT NULL,
   language TEXT NOT NULL
 );
 
 INSERT INTO MOVIES_1 (id,title,genre,year,language) VALUES
(1,'Metro Rush','Action',2005,'English'),
(2,'Quiet Lake','Drama',2012,'English'),
(3,'Night Pulse','Horror',2018,'Spanish'),
(4,'Skyline Code','Action',2021,'English'),
(5,'Tiny Planet','Family',2010,'French'),
(6,'Silver Track','Thriller',2016,'Spanish'),
(7,'Golden Path','Drama',2016,'French');

SELECT DISTINCT language 
FROM movies_1
ORDER BY language;

SELECT DISTINCT year
FROM movies_1
WHERE genre in ('Action','Drama')
ORDER BY year;

SELECT DISTINCT genre,language
FROM movies_1
ORDER BY genre,language;

SELECT COUNT(DISTINCT genre)
FROM movies_1;
