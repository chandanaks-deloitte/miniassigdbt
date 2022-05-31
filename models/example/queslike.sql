select p.Body
from {{ ref('user') }} u join {{ ref('post')}} p
on u.Id = p.OwnerUserId
where u.DisplayName like '%nau%' and p.PostTypeId = 1
