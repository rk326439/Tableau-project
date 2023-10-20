create database adidas;
use adidas;
show tables;

select *from adidas_sale;


-- regions of stores
select distinct region from adidas_sale;

-- operational states
select distinct state from adidas_sale;

-- operational cities
select distinct city from adidas_sale;

-- names of stores
select distinct retailer from adidas_sale;


-- sales from operational states
select state,sum(`total sales`) from adidas_sale
group by state
order by sum(`total sales`) desc;

-- sale by operational cities
select city,sum(`total sales`) from adidas_sale
group by city
order by sum(`total sales`) desc;

-- sale by stores
select retailer,sum(`total sales`) from adidas_sale
group by retailer
order by sum(`total sales`) desc;


-- product names
select distinct product from adidas_sale;

-- revenue from each product

select product,sum(`total sales`) from adidas_sale
group by product
order by sum(`total sales`) desc;


-- QTY sold for each category
select product,sum(`units sold`) from adidas_sale
group by product
order by sum(`units sold`) desc;


-- operating profit for each product category

select product,sum(`operating profit`) from adidas_sale
group by product
order by sum(`operating orofit`) desc;

-- operating profit from each retailer

select retailer,sum(`operating profit`) from adidas_sale
group by retailer
order by sum(`operating orofit`) desc;