Use Sakila; 

SELECT * FROM sakila.actor 
WHERE first_name = 'Scarlett';

SELECT SUM(inventory_id) FROM sakila.inventory;

SELECT DISTINCT title AS unique_movie_titles
FROM sakila.film;

SELECT COUNT(DISTINCT title) AS unique_movie_titles
FROM sakila.film;

SELECT * FROM sakila.film;

SELECT MAX(length) FROM sakila.film;
SELECT MIN(length) FROM sakila.film;

SELECT AVG(length) FROM sakila.film;

SELECT CONCAT(FLOOR(AVG(length) / 60), ' hours, ', AVG(length) % 60, ' minutes') AS average_duration
FROM sakila.film;

SELECT DISTINCT last_name FROM sakila.actor; 

SELECT * FROM sakila.customer;

SELECT * FROM sakila.rental;
SELECT DATEDIFF(MAX(last_update), MIN(rental_date)) AS operating_days
FROM rental;

SELECT rental_id, rental_date, MONTH(rental_date) AS rental_month, DAYNAME(rental_date) AS rental_weekday
FROM sakila.rental
LIMIT 20;

SELECT rental_id, rental_date,
  CASE
    WHEN DAYNAME(rental_date) IN ('Saturday', 'Sunday') THEN 'weekend'
    ELSE 'workday'
  END AS day_type
FROM sakila.rental;

SELECT release_year FROM sakila.film;

SELECT * FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%';

SELECT * FROM sakila.film
WHERE title LIKE '%APOLLO';

SELECT * FROM sakila.film
ORDER BY length DESC
LIMIT 10;

SELECT * FROM sakila.film
WHERE description like'%Behind the Scenes%';
 
