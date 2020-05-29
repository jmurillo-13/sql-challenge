--Instructions--
--Write a query to get the number of copies of a film title that exist in the inventory. 
--The results should look like those shown in the following image.
--Your challenge is to use a subquery (a query embedded within another query) instead of a join.
SELECT title,
	(
	SELECT 
		COUNT (inventory.film_id)
	FROM
		inventory
	WHERE
		film.film_id = inventory.film_id)
	AS"Number of Copies"
			  
FROM
	film;

--Create a view named title_count from the above query.
CREATE VIEW title_count AS 
SELECT 
	title, 
	(
		SELECT 
			COUNT (inventory.film_id)
		FROM
			inventory
		WHERE 
			film.film_id = inventory.film_id)
		AS "Number of Copies"		
From
	film;
			

--Query the newly created view to find all the titles that have 7 copies.
SELECT title, "Number of Copies"
FROM title_count
WHERE "Number of Copies" = 7