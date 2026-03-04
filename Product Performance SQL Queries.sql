-- Close percentage per product
select product,
cast(count(case when deal_stage = 'Won' then 1 end) as decimal) / 
count(case when deal_stage in ('Won','Lost') then 1 end) as close_pct,
count(*) as total
from sales_pipeline$
group by product
order by close_pct desc;

-- Close percentage per salesperson
select sales_agent,
cast(count(case when deal_stage = 'Won' then 1 end) as decimal) / 
count(case when deal_stage in ('Won','Lost') then 1 end) as close_pct,
count(*) as total
from sales_pipeline$
group by sales_agent
order by close_pct desc;

-- cleaning up column headers on sales_teams$ table;
EXEC sp_rename 'sales_teams$.Column1',  'sales_agent', 'COLUMN';
EXEC sp_rename 'sales_teams$.Column2',  'manager', 'COLUMN';
EXEC sp_rename 'sales_teams$.Column3',  'regional_office', 'COLUMN';

delete from sales_teams$ where manager = 'manager';

-- Joining regional_office and manager into sales_pipeline$
select s.*, t.manager, t.regional_office from sales_pipeline$ s
join sales_teams$ t on
s.sales_agent = t.sales_agent;

-- Creating performance column (actual sale price vs expected sale price)
select close_value, sales_price, close_value-sales_price as performance
from sales_pipeline$ s
join products$ p on s.product = p.product;

-- Close percentage for MG Advanced by regional office
select regional_office,
cast(count(case when deal_stage = 'Won' then 1 end) as decimal) / 
count(case when deal_stage in ('Won','Lost') then 1 end) as close_pct,
count(*) as total
from sales_pipeline$ s
join sales_teams$ t on s.sales_agent = t.sales_agent
where product = 'MG Advanced'
group by regional_office
order by close_pct desc;

-- Top 5 salespeople for MG Advanced by Close Percentage
select top 5 s.sales_agent,
cast(count(case when deal_stage = 'Won' then 1 end) as decimal) / 
count(case when deal_stage in ('Won','Lost') then 1 end) as close_pct,
count(*) as total
from sales_pipeline$ s
join sales_teams$ t on s.sales_agent = t.sales_agent
where product = 'MG Advanced'
group by s.sales_agent
order by close_pct desc;
