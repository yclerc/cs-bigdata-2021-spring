SET hivevar:username=gauthier;

CREATE EXTERNAL TABLE IF NOT EXISTS cs_2022_spring_1.${username}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/education/cs_2022_spring_1/resources/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
