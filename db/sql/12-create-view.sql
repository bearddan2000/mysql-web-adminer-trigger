DROP VIEW IF EXISTS `animal`.audit_view;

CREATE VIEW `animal`.audit_view AS
SELECT a.id, user, MONTH(changed) as 'Month', DAY(changed) as 'Day',
  action, table_name as 'Table', old_val, new_val
FROM animal.audit as a
JOIN animal.audit_action as b ON a.actionId = b.id
JOIN animal.audit_table_name as c ON a.tblId = c.id;
