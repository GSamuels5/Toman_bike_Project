
with cte as(
select * from bike_share_yr_0
union all
select * from bike_share_yr_1
)

select dteday,season,a.yr, rider_type, cast(riders as int) as riders,
cast(price as decimal(10, 2)) as prince,
COGS, cast(riders as int)* cast(price as decimal(10,2)) as revenue ,
cast(riders as int) * cast(price as decimal(10,2)) -COGS as profit
from cte a
left join cost_table b
on a.yr = b.yr;