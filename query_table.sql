SELECT id,
	COUNT(value) AS count_value
FROM "learning-session-db"."base_table"
GROUP BY id;
