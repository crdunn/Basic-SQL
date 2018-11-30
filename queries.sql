use sakila;

--1a Display the first and last names of all actors from the table `actor`.
SELECT first_name, last_name FROM actor;

--1b 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`.
SELECT UPPER(CONCAT(first_name, last_name)) as 'Actor Name' FROM actor;

--2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you use to obtain this information?
SELECT first_name, last_name, actor_id FROM actor WHERE first_name = 'Joe';

--2b. Find all actors whose last name contain the letters `GEN`:
SELECT first_name, last_name, actor_id FROM actor WHERE last_name like '%GEN%';

--2c. Find all actors whose last names contain the letters `LI`. This time, order the rows by last name and first name, in that order:
SELECT first_name, last_name, actor_id FROM actor WHERE last_name like '%LI%' ORDER BY last_name, first_name;