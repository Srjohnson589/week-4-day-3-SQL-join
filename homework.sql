-- Week 5 - Wednesday Questions

-- 1. List all customers who live in Texas (use
-- JOINs)

SELECT first_name, last_name, address.district
FROM customer
JOIN address
ON customer.address_id = address.address_id
WHERE address.district = 'Texas';

-- Jennifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Ian Still
-- I'm assuming we wanted their names.. but to get their full addresses
-- I would have added more address fields to 'SELECT'


-- 2. Get all payments above $6.99 with the Customer's Full
-- Name

SELECT amount, customer.first_name, customer.last_name
FROM payment
JOIN customer
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99;

-- see query results above - there are many of them!

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)




-- 4. List all customers that live in Nepal (use the city
-- table)

SELECT first_name, last_name, country.country
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN city
ON address.city_id = city.city_id
JOIN country
ON city.country_id = country.country_id
WHERE country = 'Nepal';

--Only 1, Kevin Schuler

-- 5. Which staff member had the most
-- transactions?

SELECT staff.first_name, staff.last_name, COUNT(payment_id)
FROM staff
JOIN payment
ON staff.staff_id = payment.staff_id
GROUP BY staff.first_name, staff.last_name
ORDER BY COUNT(payment_id) DESC
LIMIT 1;

-- Jon Stephens with 7304 transactions

-- 6. How many movies of each rating are
-- there?

SELECT rating, COUNT(rating)
from film
GROUP BY rating
ORDER BY COUNT(rating) DESC;

-- 233 PG-13, 210 NC-17, 195 R, 194 PG, 178 G

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)




-- 8. How many free rentals did our stores give
-- away?

SELECT payment.amount, COUNT(payment.amount)
FROM rental
RIGHT JOIN payment
ON payment.rental_id = rental.rental_id
GROUP BY payment.amount
ORDER BY payment.amount ASC
LIMIT 1;

-- We did 24 free rentals