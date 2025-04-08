-- Ranking analysis

-- which 5 product generates  the highest  revenue?
select * from gold.fact_sales;
select * from gold.dim_products;

select Top 5
	p.product_name,
	sum(f.sales_amount) as total_revenue
from gold.fact_sales f
left join gold.dim_products p
on f.product_key = p.product_key
group by p.product_name
order by total_revenue desc;


-- using window function 
with cte as (
select
	p.product_name,
	sum(f.sales_amount) as total_revenue,
	ROW_NUMBER() over(order by sum(f.sales_amount)  desc) as rnk 
from gold.fact_sales f
left join gold.dim_products p
on f.product_key = p.product_key
group by p.product_name)

select *
from cte
where rnk <= 5;

-- which are the TOP 5 worst-performig product in term of sales?

select Top 5
	p.product_name,
	sum(f.sales_amount) as total_revenue
from gold.fact_sales f
left join gold.dim_products p
on f.product_key = p.product_key
group by p.product_name
order by total_revenue;
