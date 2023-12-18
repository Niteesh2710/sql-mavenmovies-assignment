-- using Datbase Mavenmovies --
use Mavenmovies;
-- Q_1. List all details of actors?? --
select*from actor;
-- Q_2. List all customer information from DB?? --
select*from customer;
-- Q_3. List different countries?? --
select country from country as different_countries;
-- Q_4. Display all active customers?? --
select active as active_customers from customer;
-- Q_5. List of all rental IDs for customer with ID1?? --
select rental_id, customer_id from rental where staff_id=1;
-- Q_6. Display all the films whose rental duration is greater than 5?? --
select rental_duration, title as films from film where rental_duration>5;
-- Q_7. List the total number of films whose replacement cost is greater than $15 and less than $20?? --
select replacement_cost, title as films from film where  replacement_cost between 15 and 20;
-- Q_8. Find the number of films whose rental rate is less than $1?? --
select rental_rate, title as films from film where rental_rate<1;
-- Q_9. Display the count of unique first names of actors?? --
select count(distinct(first_name)) from actor;
-- Q_10. Display the first 10 records from the customer table?? --
select*from customer limit 10;
-- Q_11. Display the first 3 records from the customer tables whose first name start with 'b'?? --
select first_name from customer where first_name like "b%" limit 3;
-- Q_12. Display the names of the first 5 movies which are rated as 'G'?? --
select rating, title as movies from film where rating='G' limit 5;
-- Q_13. Find All Customers whose first name start with 'a'?? --
select first_name from customer where first_name like "a%";
-- Q_14. Find All Customers whose first name ends with 'a'?? --
select first_name from customer where first_name like "%a";
-- Q_15. Dispaly the list of first 4 cities which start and end with 'a'?? --
select city as cities from city where city like "a%a" limit 4;
-- Q_16. Find all Customers whose first name have "NI" in any position?? --
select first_name from customer where first_name like "%NI%";
-- Q_17. Find all customers whose first name have 'r' in the second position?? --
select first_name from customer where first_name like "_r%";
-- Q_18. Find all customers whose first name starts with "a" and are at least 5 characters in length?? --
select first_name from customer where first_name like "a%";
-- Q_19. Find all customers whose first name starts with "a" and ends with "o"?? --
select first_name from customer where first_name like "a%o";
-- Q_20. Get the films using pg and pg-13 rating using IN operator?? --
select*from film where rating IN("PG","PG_13");
-- Q_21. Get the top 50 actors using limit operator?? --
select*from actor limit 50;
-- Q_22. Get the distinct film ids from inventory table?? --
select distinct(film_id) from inventory;
  