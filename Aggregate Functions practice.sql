Select * from products;

-- Q1) Find the maximum product price

SELECT MAX(price) as maximum_price
FROM products;

-- Q2) Find the average price of all products

SELECT AVG(price) as average_price
FROM products;

-- Q3) count total number of products

SELECT COUNT(*) as TOTAL_PRODUCTs
FROM products;

-- Q4) Count products that have product_type_id

SELECT COUNT(product_type_id) 
FROM products;

-- Q5) Find the total sum of all product prices

SELECT SUM(PRICE) AS total_price
FROM products;

-- Q6) Find the maximum price for each product type

SELECT product_type_id , MAX(price)
from products
where product_type_id is not null
group by product_type_id;

-- Q7) Find the average price for each product type

SELECT product_type_id , AVG(price) 
from products
where product_type_id is not null
group by product_type_id;

-- Q8) Find the total price for each product type

SELECT product_type_id , SUM(price)
from products
where product_type_id is not null
group by product_type_id;

-- Q9) Count products in each product type

SELECT product_type_id , COUNT(*)
FROM products
where product_type_id is not null
group by product_type_id;

-- Q10) Find product types having average price greater than 20 

SELECT product_type_id , AVG(price)  
FROM products
group by product_type_id
having avg(price) > 20;

-- Q 11) Find the cheapest product type

SELECT  product_type_id , MIN(price) as cheapest_price
FROM products
group by product_type_id
order by cheapest_price asc
limit  1;

-- Q12) Find the most expensive product type

SELECT product_type_id , MAX(price) AS expensive_product
from products
group by product_type_id
order by expensive_product desc
limit 1;

-- Q13) Find top 3 highest priced products

SELECT name , price
FROM products
ORDER BY price DESC
LIMIT 3;

-- Q14) Find products whose price is above average price

SELECT name , price 
from products
where price > ( select avg(price)
from products);

-- Q15) Find duplicate prices

select price,  count(*)
from products
group by price
having count(*) > 1;

select price from products;

-- Q16) Find the second highest product price

SELECT MAX(price) AS Second_Highest_Salary
FROM products
WHERE price< (SELECT MAX(price) FROM products);

-- Q17) Find the lowest 3 priced products

SELECT  name , MIN(price)
from products
group by name
order by  min(price) asc
limit 3;

--  Q18) Count how many products cost more than 15

select count(*)
 from products
where price > 15;

-- Q19) Find product types having more than 2 products

select product_type_id , count(*)
from products
group by product_type_id
having count(*) > 2;

-- Q20) Find average price excluding NULL product types

SELECT  product_type_id , AVG(PRICE)
from products
where product_type_id is  not null
group by product_type_id;

-- Q21) Find total price of products where price > 20
SELECT SUM(PRICE) AS total_price
from products
where price > 20;

-- Q22) Find the difference between highest and lowest price

SELECT MAX(PRICE) - MIN(PRICE) AS PRICE_DIFFERENCE
FROM products;





