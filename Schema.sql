-- creating the database to start the project on Netflix movies and TV shows

Create database project_2;
use project_2;

-- SCHEMA OF netflix

Drop Table if exists netflix;
CREATE TABLE netflix (
    Title VARCHAR(10) PRIMARY KEY,
    Content_type VARCHAR(20),
    Genre VARCHAR(30),
    Release_year INT,
    Rating VARCHAR(10),
    Duration VARCHAR(10),
    Country VARCHAR(30)
);

SELECT 
    *
FROM
    netflix;
    
-- gettting idea about the year included from start to end in our data

SELECT 
    Release_year
FROM
    netflix
ORDER BY Release_year DESC;

SELECT 
    Release_year
FROM
    netflix
ORDER BY Release_year ASC;

-- Our data contains the data from year 1950 to 2023