CREATE TABLE new_table_<user_id> (
    id INT,
    count_value INT
)
LOCATION 's3://athena-process/learning-session-db/tables/new_table_<user_id>'
TBLPROPERTIES (
    'table_type'='ICEBERG'
);
