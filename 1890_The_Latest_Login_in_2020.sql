# Using simple method
-- select user_id, max(time_stamp) as last_stamp from logins where year(time_stamp) = 2020 group by user_id;

# Using window function method
select user_id, time_stamp as last_stamp from (
select user_id,time_stamp, row_number() over(Partition by user_id order by time_stamp desc) as rnk from logins where year(time_stamp)=2020) a
where rnk=1;