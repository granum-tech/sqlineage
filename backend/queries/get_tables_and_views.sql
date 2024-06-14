SELECT 
    o.name AS ObjectName,
    o.object_id AS ObjectID,
    o.type_desc AS ObjectType
FROM 
    sys.objects AS o
WHERE 
    o.type_desc IN ('USER_TABLE', 'VIEW') AND o.name NOT IN ('database_firewall_rules')
