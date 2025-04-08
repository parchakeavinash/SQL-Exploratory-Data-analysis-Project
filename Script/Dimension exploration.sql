
select * from gold.dim_customers;

-- Explore all countries our customer coming from

select distinct country
from gold.dim_customers;

-- explore all product categories " The major Division"
select distinct category, subcategory,product_name from gold.dim_products
order by 1,2,3;


