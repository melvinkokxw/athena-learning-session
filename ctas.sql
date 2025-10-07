CREATE TABLE IF NOT EXISTS "learning-session-db"."new_table_<user_id>" WITH(
	partitioning = ARRAY [ 'bucket(id, 16)' ],
	location = 's3://athena-process/learning-session-db/tables/new_table_<user_id>',
	table_type = 'ICEBERG',
	is_external = false
) AS
SELECT id,
	COUNT(value) AS count_value
FROM "learning-session-db"."base_table"
GROUP BY id;
