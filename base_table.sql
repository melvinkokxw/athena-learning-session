CREATE TABLE base_table (
    id INT,
    name STRING,
    value DOUBLE
)
LOCATION 's3://athena-process/learning-session-db/tables/base_table'
TBLPROPERTIES (
    'table_type'='ICEBERG'
);

INSERT INTO base_table
SELECT
    CAST(rand() * 10000 AS INTEGER) AS id,
    substr(to_hex(md5(to_utf8(CAST(rand() AS varchar)))), 1, 8) AS name,
    rand() * 100 AS value
FROM UNNEST(sequence(1, 1000)) AS t(x);
