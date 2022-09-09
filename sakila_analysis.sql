
SHOW FULL tables;
select * from film_list;
select * from film;
SELECT first_name, last_name, COUNT(film_id) AS film_count FROM film_actor 
			JOIN actor ON actor.actor_id = film_actor.actor_id GROUP BY actor.actor_id ORDER BY COUNT(film_id) DESC limit 10;
            
select * from nicer_but_slower_film_list;
select * from sales_by_store;
select * from rental;
select * from sales_by_film_category order by total_sales DESC;

select category, sum(price), count(rental_id) FROM nicer_but_slower_film_list as film_info JOIN inventory JOIN rental 
	ON film_info.FID = inventory.film_id AND inventory.inventory_id = rental.inventory_id 
    GROUP BY category ORDER BY sum(price) desc limit 8;
    
SELECT sub_table.actorid, actor.first_name, actor.last_name, sub_table.categories_cnt FROM actor JOIN 
(SELECT film_actor.actor_id AS actorid, COUNT(DISTINCT film_category.category_id) AS categories_cnt
FROM film_actor JOIN film JOIN film_category ON film_actor.film_id = film.film_id AND film.film_id = film_category.film_id
GROUP BY film_actor.actor_id HAVING COUNT(DISTINCT film_category.category_id) >= 16) AS sub_table ON actor.actor_id = sub_table.actorid;


SELECT * FROM payment;
SELECT DATE_FORMAT(payment_date, '%Y-%m') AS Date, ROUND(SUM(amount), 0) AS Sales FROM payment GROUP BY Date ORDER BY Date ASC;

SELECT c.store_id AS store, DATE_FORMAT(sub_table.payment_date, '%Y-%m') AS stpd, ROUND(SUM(sub_table.amount),0) AS sales
FROM customer as c JOIN (SELECT customer_id, payment_date, amount FROM payment) AS sub_table
ON c.customer_id = sub_table.customer_id WHERE DATE_FORMAT(sub_table.payment_date, '%Y-%m') < '2006-01' 
GROUP BY c.store_id, stpd
ORDER BY c.store_id, stpd;

SELECT DATE_FORMAT(sub_table.payment_date, '%Y-%m') AS Date, 
    c.store_id AS store, sub_table.amount AS sales_data 
    FROM customer c JOIN (SELECT customer_id, payment_date, amount FROM payment) AS sub_table
	ON c.customer_id = sub_table.customer_id;


SELECT DISTINCT f.film_id, f.title, replacement_cost, COUNT(i.film_id) AS copies_in_inv
FROM film f JOIN inventory i
ON f.film_id = i.film_id WHERE rating = 'G'
GROUP BY f.film_id, f.title
HAVING copies_in_inv <= 3 ORDER BY replacement_cost LIMIT 5;

SELECT replacement_cost FROM film;

