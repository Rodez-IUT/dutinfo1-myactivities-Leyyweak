CREATE OR REPLACE FUNCTION find_all_activities_for_owner(ownername varchar(500)) RETURNS SETOF activity AS $$
SELECT act.*
from activity act
join "user" owner
on owner_id=owner.id
WHERE owner.username = ownername;
$$ LANGUAGE SQL;