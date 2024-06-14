SELECT 
    c.name AS ColumnName,
    c.column_id AS ColumnID,
    t.name AS DataType,
    c.max_length AS MaxLength,
    c.is_nullable AS IsNullable,
    c.is_identity AS IsIdentity
FROM 
    sys.columns AS c
JOIN 
    sys.types AS t ON c.user_type_id = t.user_type_id
WHERE 
    c.object_id = ?
