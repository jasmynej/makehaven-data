select cc.external_identifier as contact_id,
       display_name,
       events.id event_id,
       events.title,
       status.label,
       fee_level
from civicrm_contact cc
inner join civicrm_participant cp on cc.external_identifier = cp.contact_id
inner join civicrm_event events on cp.event_id = events.id
left join civicrm_participant_status_type status on cp.status_id = status.id;


select events.id as event_id, events.title, count(cp.contact_id) as num_participants, events.start_date
from civicrm_participant cp
left join civicrm_event events on cp.event_id = events.id
    where cp.status_id = 1
group by event_id
order by num_participants DESC;

