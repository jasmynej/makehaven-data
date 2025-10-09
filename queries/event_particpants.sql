select external_identifier e_id,
       display_name,
       events.id,
       events.title,
       fee_level
from civicrm_contact cc
inner join civicrm_participant cp on cc.external_identifier = cp.contact_id
inner join civicrm_event events on cp.event_id = events.id;
