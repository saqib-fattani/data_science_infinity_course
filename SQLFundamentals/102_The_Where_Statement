--------------------------------------------------------------------------------------------------
---------- PART 2: APPLYING SELECTION CONDITIONS USING THE WHERE STATEMENT
--------------------------------------------------------------------------------------------------

----- THE WHERE STATEMENT

select
*
from
grocery_db.customer_details cd 
where
cd.distance_from_store < 2;





----- MULTIPLE CONDITIONS


-- AND

select
*
from
grocery_db.customer_details cd 
where
cd.distance_from_store < 2 and
cd.gender = 'M';




-- OR

select
*
from
grocery_db.customer_details cd 
where
cd.distance_from_store < 2 or
cd.gender = 'M';





-- OTHER OPERATORS
/*
Equal to = 
Not equal to <>
Greator than/Less then/Equal < > <=
*/


-- in

select
*
from
grocery_db.campaign_data cd
where
cd.mailer_type  in ('Mailer1', 'Mailer2');


-- like

select
*
from
grocery_db.campaign_data cd
where
cd.mailer_type  like 'Mailer%';





-- Test1
/*
tasked with returning a list of customers who meet the following criteria:

Live less than or equal to 0.5 miles from the store
Have a value of 'M' or 'F' listed for their gender


Your query needs to return:

customer_id
distance_from_store
gender
*/


select
customer_id,
distance_from_store,
gender
from
grocery_db.customer_details
where
distance_from_store <= 0.5 and
gender in ('M','F')