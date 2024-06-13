SELECT 
    o.name AS ObjectName,
    o.object_id AS ObjectID,
    o.type_desc AS ObjectType
FROM 
    sys.objects AS o
WHERE 
    o.type_desc = 'SQL_STORED_PROCEDURE'
