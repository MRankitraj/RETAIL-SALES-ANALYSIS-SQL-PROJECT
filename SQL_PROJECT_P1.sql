create database sql_project_p1;
create table retail_sales
             (
				transactions_id int primary key,
				sale_date date not null,
				sale_time time not null,
				customer_id int not null,
				gender varchar(15),
				age	int not null,
				category varchar(15),
				quantiy int not null,
				price_per_unit float not null,
				cogs float not null,
				total_sale float not null
             );

			 select * from retail_sales;

			 alter table retail_sales
			 alter cogs 
 drop not null;

 select 
    count (*)
	from retail_sales;
	
--Data cleaning
	select * from retail_sales
	where transactions_id is null;

	select * from retail_sales
	where
		sale_date is null
		or
		sale_time is null
		or
		customer_id is null
		or
		gender is null
		or
		age is null
		or
		category is null
		or
		quantiy is null
		or
		price_per_unit is null
		or
		cogs is null
		or
		total_sale is null;


		delete from retail_sales
		where
			sale_date is null
			or
			sale_time is null
			or
			customer_id is null
			or
			gender is null
			or
			age is null
			or
			category is null
			or
			quantiy is null
			or
			price_per_unit is null
			or
			cogs is null
			or
			total_sale is null;
-- Data exploration

-- How many sales we have?
select count (*) as total_sale from retail_sales;

-- How many customers we have?
select count (*) as customer_id from retail_sales;
-- How many unique customers we have?
select count (distinct customer_id) as total_sale from retail_sales;

-- How many unique category we have?
select count (distinct category) as total_sale from retail_sales;
--Show category names?
select distinct category from retail_sales;


-- DATA ANALYSIS & BUSINESS KEY PROBLEM & ANSWERS

--Q.1 write a sql query to retrieve all columns for sales made on '2022-11-05'
select *
from retail_sales
where sale_date='2022-11-05';

-- Q.2 write a sql query to retrieve all transations where the category is 'clothing' and the quantity sold is more than 10in the month of nov-2022
select 
	*
	from retail_sales
	where category = 'clothing'
	and
	to_char(sale_date,'yyyy-mm') = '2022-11'
	group by 1;