-- find the data of first and last order

select * from gold.fact_sales;

select Min(order_date) as first_date,
max(order_date) as last_date,
DATEDIFF(Year,Min(order_date),max(order_date)) as date_diff
from gold.fact_sales;


-- find the yongest and oldest customer;
select * from gold.dim_customers;

select min(birthdate) as yongest_customer,
DATEDIFF(year, min(birthdate), getdate()) as oldest_person_age,
max(birthdate) as oldest_customer,
DATEDIFF(year, max(birthdate), getdate()) as oldest_person_age
from gold.dim_customers
