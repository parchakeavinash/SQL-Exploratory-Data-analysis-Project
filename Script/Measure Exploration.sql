-- measures exploration

-- find the Total_sales
select sum(sales_amount) as Total_sales
from gold.fact_sales;

-- find how many item are sold 
select sum(quantity) as Total_quantity
from gold.fact_sales;

-- find the average selling price
select AVG(price) as Average_price 
from gold.fact_sales;

-- find the total number of orders
select count(order_number) as Total_orders 
from gold.fact_sales;

select count(distinct order_number) as Total_orders 
from gold.fact_sales;

-- find the total number of proucts
select count(product_id) as Total_product
from gold.dim_products;

select * from gold.dim_products;
-- find the total number of customers

select count(customer_key) as Total_customer from 
gold.dim_customers;

-- find the total number of customers has place an order

select count(customer_key) as Total_customer_place
from gold.fact_sales;


-- GENERATE A REPORT THAT SHOW ALL THE METRICS  OF THE BUSINESS

select 'Total_Sales' as Measure_name,sum(sales_amount) as Total_sales
from gold.fact_sales
union all
select 'Total_quantity' as Measure_name,sum(quantity) as Total_quantity
from gold.fact_sales
union all
select 'Average_price' as Measure_name,AVG(price) as Average_price 
from gold.fact_sales
union all
select 'Total_orders' as Measure_name,count(order_number) as Total_orders 
from gold.fact_sales
union all
select 'Total_product'as Measure_name,count(product_id) as Total_product
from gold.dim_products
union all
select 'Total_order' as Measure_name,count(customer_key) as Total_customer_place
from gold.fact_sales;

