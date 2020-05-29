---In this activity, you will continue to practice subqueries. Work individually or in pairs. You can use the ERD for help with the queries.
---Instructions-----
---Using subqueries, identify all actors who appear in the film ALTER VICTORY in the pagila database.
SELECT first_name, last_name
FROM actor 
WHERE 
	actor_ID in (
		SELECT actor_id
		FROM film_actor
		WHERE 
			film_id IN(
				SELECT film_id
				FROM film
				WHERE title = 'ALTER VICTORY'));
--Using subqueries, display the titles of films that the employee Jon Stephens rented to customers.
SELECT title 
	FROM film 
	WHERE film_id IN (
		SELECT film_id
		FROM inventory
		WHERE 
			inventory_id IN(
				SELECT inventory_id
				FROM rental
				WHERE 
					staff_id IN(
						SELECT staff_id
						FROM staff
						WHERE first_name = 'Jon'
						AND last_name = 'Stephens')));
