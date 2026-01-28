# Write your MySQL query statement below
# Simple Method
select player_id, min(event_date) as first_login from activity group by player_id;

# Window functions
-- select player_id, event_date as first_login from (
--     select player_id, event_date, row_number() over(partition by player_id order by           event_date) as rnk from activity
-- ) a
-- where rnk=1;