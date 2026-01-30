# Using group by and order by
-- select customer_number from orders group by customer_number order by count(order_number) desc limit 1;

# Using nested loop
-- select customer_number from orders group by customer_number having count(customer_number) = (select max(cn) from (select count(customer_number) as cn from orders group by customer_number) a);

# Using window function
select customer_number from (select customer_number, count(*) as cnt, max(count(*)) over() as max_cnt from orders group by customer_number) a
where cnt=max_cnt;