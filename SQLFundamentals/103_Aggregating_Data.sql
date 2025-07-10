--------------------------------------------------------------------------------------------------
---------- PART 3: AGREGATING DATA
--------------------------------------------------------------------------------------------------

----- AGGREGATION FUNCTIONS

select

sum(t.sales_cost) as total_sales,
avg(t.sales_cost) as avg_sales,
min(t.sales_cost) as min_sales,
max(t.sales_cost) as max_sales,
count(t.*) as num_rows,
count(distinct t.transaction_id) as num_transactions


from 
grocery_db.transactions t;


----- THE GROUP BY STATEMENT

select

t.transaction_date,
sum(t.sales_cost) as total_sales,
avg(t.sales_cost) as avg_sales,
min(t.sales_cost) as min_sales,
max(t.sales_cost) as max_sales,
count(t.*) as num_rows,
count(distinct t.transaction_id) as num_transactions


from 
grocery_db.transactions t

group by
	t.transaction_date 

order by
	t.transaction_date;


----- GROUPING BY MULTIPLE VARIABLES

select

t.transaction_date,
t.product_area_id,
sum(t.sales_cost) as total_sales,
avg(t.sales_cost) as avg_sales,
min(t.sales_cost) as min_sales,
max(t.sales_cost) as max_sales,
count(t.*) as num_rows,
count(distinct t.transaction_id) as num_transactions


from 
grocery_db.transactions t

group by
	t.transaction_date,
	t.product_area_id
order by
	t.transaction_date,
	t.product_area_id;

----- THE HAVING CLAUSE

select

t.product_area_id,
sum(t.sales_cost) as total_sales,
avg(t.sales_cost) as avg_sales,
min(t.sales_cost) as min_sales,
max(t.sales_cost) as max_sales,
count(t.*) as num_rows,
count(distinct t.transaction_id) as num_transactions


from 
grocery_db.transactions t

group by
	t.product_area_id

having
	sum(t.sales_cost) > 200000
order by
	t.product_area_id;


-- Test1
/*

You've been tasked with returning data that shows; for each transaction date, the number of unique customers that transacted in-store.

To make it easy for stakeholders to view, ensure the output is ordered by transaction date (earliest to latest)

Your query will return two columns:

transaction_date (ordered)
customer_count (hint: you will create this)
 
 */

select

t.transaction_date,
count(distinct t.customer_id) as unique_customer_count

from 
	grocery_db.transactions t

group by
	t.transaction_date

order by
	t.transaction_date asc;




