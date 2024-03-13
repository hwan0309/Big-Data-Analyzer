SELECT customer_id , SUM(amount)FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC;
SELECT customer_id, staff_id, SUM(amount) FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id;
SELECT DATE(payment_date) , SUM(amount) FROM payment
GROUP BY DATE(payment_date) 
ORDER BY SUM(amount) DESC;

SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id;
payment
SELECT rating, ROUND(AVG(replacement_cost),1)
FROM film
GROUP BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT company, SUM(sales)
FROM finance_table
WHERE company != 'Google'
GROUP BY company;
SELECT customer_id, SUM(amount) FROM payment
#WHERE customer_id NOT IN(184, 87,477)
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT store_id, COUNT(customer_id)  FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300;

SELECT customer_id, COUNT(amount)FROM customer
GROUP BY customer_id, COUNT
HAVING COUNT(amount) > 40;

SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
LIMIT 5;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING sum(amount) > 100 
LIMIT 5;

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
LIMIT 5;

#q1
SELECT customer_id FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

#q2
SELECT COUNT(title) FROM film
WHERE title LIKE 'J%';

#q3
SELECT customer_id, address_id, first_name,last_name
FROM customer
WHERE first_name LIKE 'E%'AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;

SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

SELECT customer_id, amount AS new_name
FROM payment
WHERE amount > 2;

SELECT * FROM tableA
INNER JOIN TableB
ON TableA.col_match = TableB.col_match;

SELECT customer_id AS User,
SUM(amount) AS Total
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200;

SELECT title AS Movie_name,
rating countrycustomer
FROM film
WHERE title, rating LIKE 'L%' AND WHERE > 1000
LIMIT 10;

SELECT payment_id, payment.customer_id, first_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null
OR payment.payment_id IS null;

SELECT COUNT(DISTINCT customer_id) FROM customer;


























