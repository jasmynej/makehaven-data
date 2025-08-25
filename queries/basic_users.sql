select fn.entity_id,
       fn.field_first_name_value first_name,
       ln.field_last_name_value last_name,
       r.roles_target_id role
from user__field_first_name fn
         inner join user__field_last_name ln ON fn.entity_id = ln.entity_id
         inner join user__roles r on r.entity_id = fn.entity_id