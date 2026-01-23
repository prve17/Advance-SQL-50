# Method1 - Nested query
select sp.name from SalesPerson sp where sales_id not in (select sales_id from orders o where com_id in (select com_id from company where name='RED'));

# Method2 - Nested with join
-- select sp.name from SalesPerson sp where sales_id not in (select o.sales_id from orders o join company c on o.com_id=c.com_id where c.name='RED');