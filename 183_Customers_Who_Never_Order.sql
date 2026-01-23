# Method1 - Left Join + is NULL
select c.name as Customers from customers c left join orders o on c.id=o.customerId where o.customerID is NULL;

# Method2 - Left Join + GroupBy & Having
-- SELECT
--     c.name AS Customers
-- FROM customers c
-- LEFT JOIN orders o
--     ON c.id = o.customerId
-- GROUP BY c.id
-- HAVING COUNT(o.Id) = 0;