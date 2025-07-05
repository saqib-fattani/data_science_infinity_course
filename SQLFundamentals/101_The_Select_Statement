------------------------------------------
--- THE BASIC STATEMENT
------------------------------------------

----- THE SELECT STATEMENT

SELECT
	*
FROM
grocery_db.product_areas pa;

----- LIMIT

SELECT
	*
FROM
	grocery_db.product_areas pa	
LIMIT
		3;

----- ORDER BY

SELECT
	*
FROM
	grocery_db.customer_details cd 
ORDER BY	
	distance_from_store desc
LIMIT
	3;

----- DISTINCT

SELECT
	DISTINCT
	*
FROM
	grocery_db.customer_details cd;

-- Alternatively

SELECT
	DISTINCT
	cd.gender
FROM
	grocery_db.customer_details cd;


----- GIVING COLUMNS AN ALIAS


SELECT
	cd.distance_from_store  as distance_to_store,
	cd.customer_id as customer_number
FROM
	grocery_db.customer_details cd;


----- CREATING NEW COLUMNS

SELECT
	cd.distance_from_store  as distance_to_store,
	cd.customer_id as customer_number,
	cd.distance_from_store * 1.6 as distance_to_store_km
FROM
	grocery_db.customer_details cd;

----- Test1 
/* tasked with returning a list of all unique credit_score 
values that exist in the customer_details table. */

SELECT
	DISTINCT
	cd.credit_score
FROM
	grocery_db.customer_details cd;