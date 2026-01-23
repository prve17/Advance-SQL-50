# Method1 - Using Case
-- select u.name, 
-- case when sum(r.distance) is NULL then 0
-- else sum(r.distance) end as travelled_distance from users u left join rides r on u.id=r.user_id
-- group by u.id order by travelled_distance desc ,u.name asc;

# Method2 - Using ifnull
select u.name, ifnull(sum(r.distance),0) as travelled_distance from users u left join rides r on u.id=r.user_id group by u.id order by travelled_distance desc ,u.name asc;