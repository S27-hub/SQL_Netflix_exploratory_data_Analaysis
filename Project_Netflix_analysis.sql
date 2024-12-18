
-- Netflix Exploratory Data analysis 
-- Solutions of all 14 problem statments

-- 1. Total number of shows (movies+TV_shows)

SELECT 
    COUNT(*) AS total_shows
FROM
    netflix;

-- 2. Aggregate number of movies and tv shows

SELECT 
    Content_type, COUNT(*) AS total_shows
FROM
    netflix
GROUP BY Content_type;

-- 3. Find the different rating count for movies and TV shows

SELECT 
    Content_type, Rating, COUNT(*) AS rating_count
FROM
    netflix
GROUP BY Content_type , Rating;

-- 4. Find the top three countries with the most content on netflix

SELECT 
    Country, COUNT(Title) AS Total_number_of_shows
FROM
    netflix
GROUP BY Country
ORDER BY Total_number_of_shows DESC
LIMIT 3;



-- 5. Listing the all TV shows and Movies in year 2023

SELECT 
    *
FROM
    netflix
WHERE
    Release_year = 2023;

-- 6. Total number of movies and TV shows released in 2023
SELECT 
    COUNT(Release_year) AS total_Shows
FROM
    netflix
WHERE
    Release_year = 2023;
    
-- 7. Number of TV shows and number of Movies released in year 2023

SELECT 
    Content_type, COUNT(Release_year) AS Total_shows
FROM
    netflix
WHERE
    Release_year = 2023
GROUP BY Content_type;

-- 8. Find the number of genre and movies or TV shows relased in respective genre

SELECT 
    Genre, COUNT(Content_type) AS total_shows
FROM
    netflix
GROUP BY Genre;

-- 9. Finding the Genre having the maximum number of shows relased

SELECT 
    Genre, COUNT(Content_type) AS total_shows
FROM
    netflix
GROUP BY Genre
ORDER BY total_shows DESC
LIMIT 1;

-- 10. Finding the total number of countries and movies relased in the respective countries

SELECT 
    Country, COUNT(content_type) AS total_shows
FROM
    netflix
GROUP BY Country
ORDER BY total_shows DESC;

-- 11. Identify the longest movie duration

SELECT 
    Content_type, MAX(Duration)
FROM
    netflix
WHERE
    Content_type = 'Movie'
ORDER BY Duration;

-- 12. List of number of all the TV shows with 3 seasons with their respective Genre

SELECT 
    Genre, COUNT(Duration) AS Number_of_shows
FROM
    netflix
WHERE
    Content_type = 'TV Show'
        AND Duration = '3 seasons'
GROUP BY Genre
ORDER BY Number_of_shows DESC;

-- 13. Maximum number of movies relased in a specific year i.e 2022

SELECT 
    COUNT(Release_year) AS Total_movies
FROM
    netflix
WHERE
    Content_type = 'Movie'
        AND Release_year = 2022
GROUP BY Content_type;

-- 14. Ratings of "R" in tv shows accoridng to their respective genre

SELECT 
    Genre, COUNT(Rating)
FROM
    netflix
WHERE
    Content_type = 'TV Show'
        AND Rating = 'R'
GROUP BY Genre;

-- END OF REPORT --