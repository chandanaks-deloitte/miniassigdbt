select Id, DisplayName, Reputation
from {{ ref('user') }}
order by Reputation desc
limit 10
