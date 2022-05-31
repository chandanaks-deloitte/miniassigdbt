select Name, count(*) as count_users
from {{ ref('batch') }}
group by Name
order by count_users limit 10
