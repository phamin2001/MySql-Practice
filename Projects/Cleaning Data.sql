-- Clean Data

CREATE TABLE layoffs (
    company TEXT,
    location TEXT,
    industry TEXT,
    total_laid_off INT,
    percentage_laid_off TEXT,
    date TEXT,
    stage TEXT,
    country TEXT,
    funds_raised_millions INT
);



LOAD DATA INFILE '/usr/local/mysql-8.4.2-macos14-x86_64/layoffs.csv'
INTO TABLE layoffs
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, @funds_raised)
SET funds_raised_millions = IF(TRIM(@funds_raised) = '' OR TRIM(@funds_raised) = 'NULL' OR NOT TRIM(@funds_raised) REGEXP '^-?[0-9]+$', NULL, TRIM(@funds_raised));

SELECT *
FROM layoffs;

SELECT COUNT(*) AS total_rows 
FROM layoffs;

