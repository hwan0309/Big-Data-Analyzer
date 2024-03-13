SELECT district, email FROM address
INNER JOIN customer
ON address.address_id = customer.address_id
WHERE district = 'California';

SELECT title, first_name, last_name FROM film_actor INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';

SELECT title, last_name FROM film_actor INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
on film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';

SELECT EXTRACT(QUARTER FROM payment_date)
AS pay_month
FROM payment;

SELECT EXTRACT(QUARTER FROM payment_date) 
AS year
FROM payment;

SELECT AGE(payment_date)
FROM payment;

SELECT 
DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment;

SELECT to_char (payment_date, 'MON /YYYY')
FROM payment;

SELECT 
DISTINCT(payment_date= 'MONTH')
 FROM payment;

SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date) =1;

SELECT ROUND(rental_rate/replacement_cost,4 )*100
 FROM film;
 
 SELECT 0.1 * replacement_cost
 FROM film;
 
 SELECT first_name || ' ' || last_name AS full_name
 FROM customer;
 
 SELECT  first_name || last_name || '@gmail.com'
FROM customer
 




