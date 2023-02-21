Use sakila;

-- 1. Select all the actors with the first name ‘Scarlett’.

SELECT *
FROM actor
WHERE first_name = "Scarlett";

-- 2. Select all the actors with the last name ‘Johansson’.

SELECT *
FROM actor
WHERE last_name = "Johansson";

-- 3. How many films (movies) are available for rent?

SELECT COUNT(DISTINCT film_id)
FROM film;

-- 4. How many films have been rented?

SELECT COUNT(rental_duration)
FROM film
WHERE rental_duration > 0;

-- 5. What is the shortest and longest rental period?

SELECT MAX(rental_duration), MIN(rental_duration)
FROM film;

-- 6. What are the shortest and longest movie duration? Name the values max_duration and min_duration

SELECT MAX(length) AS max_duration, MIN(length) AS min_duration
FROM film;

-- 7. What's the average movie duration?

SELECT ROUND (AVG(length), 0) AS avg_duration
FROM film;

-- 8. What's the average movie duration expressed in format (hours, minutes)?

SELECT DISTINCT (convert(date_add('2000-01-01', interval 115 minute), time)) as AVG_length
FROM film;


-- 9. How many movies longer than 3 hours?

SELECT COUNT(length)
FROM film
WHERE length > 180;

-- 10. Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

SELECT CONCAT(UPPER(LEFT(first_name,1)), LOWER(SUBSTRING(first_name, 2)), " ", last_name," - ",LOWER(email)) as customer_details
FROM customer;


-- 11. What's the length of the longest film title?

SELECT title, CHAR_LENGTH(title) AS film_length
FROM film
ORDER BY film_length DESC