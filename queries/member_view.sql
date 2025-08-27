create or replace view members as
select
        u.uuid,
        u.uid,
       fn.field_first_name_value first_name,
       ln.field_last_name_value last_name,
       r.roles_target_id role,
       up.field_pronoun_txt_value pronouns
from user__field_first_name fn
         inner join users u ON u.uid = fn.entity_id
         inner join user__field_last_name ln ON u.uid = ln.entity_id
         inner join user__roles r on u.uid = r.entity_id
         inner join user__field_pronoun_txt up on u.uid = up.entity_id
where r.roles_target_id = 'member';