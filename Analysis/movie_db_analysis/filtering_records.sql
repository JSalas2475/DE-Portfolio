-- Select film_ids and imdb_score with an imdb_score over 7.0
SELECT  film_id,
        imdb_score
FROM reviews
WHERE imdb_score > 7.0;

-- Select film_ids and facebook_likes for ten records with less than 1000 likes 
SELECT film_id,
    facebook_likes
FROM reviews
WHERE facebook_likes < 1000
LIMIT 10;

-- Count the records with at least 100,000 votes
SELECT COUNT(*) films_over_100k_votes
FROM reviews
WHERE num_votes >= 100000

-- Count the Spanish-language films
SELECT COUNT(title) AS count_spanish
FROM films
WHERE language = 'Spanish'

-- Select the title and release_year for all German-language films released before 2000
SELECT title,
release_year
FROM films
WHERE release_year < 2000
AND language = 'German'

-- Update the query to see all German-language films released after 2000
SELECT title, release_year
FROM films
WHERE release_year > 2000
	AND language = 'German';

    -- Select all records for German-language films released after 2000 and before 2010
SELECT *
FROM films
WHERE language = 'German'
AND release_year > 2000
AND release_year < 2010;

-- Find the title and year of films from the 1990 or 1999
SELECT title,
release_year
FROM films
WHERE release_year = 1990
OR release_year = 1999

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
-- Add a filter to see only English or Spanish-language films
	AND (language = 'Spanish' OR language = 'English');

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 1999)
	AND (language = 'English' OR language = 'Spanish')
-- Filter films with more than $2,000,000 gross
	AND gross > 2000000;