USE zindi_202311_01;

CREATE
OR REPLACE TABLE variable_description AS
select *
from read_csv(
        'VariableDescription.csv',
        header=true,
     auto_detect=true
);

select *
from variable_description;

CREATE OR REPLACE TABLE test_data AS
SELECT *
FROM read_csv(
        'Test.csv',
        header=true,
     auto_detect=true
);

select *
from test_data;

CREATE OR REPLACE TABLE train_data AS
SELECT *
FROM read_csv(
        'Train.csv',
        header=true,
     auto_detect=true
);

select *
from train_data;

CREATE OR REPLACE TABLE sample_submission AS
SELECT *
FROM read_csv(
        'SampleSubmission.csv',
        header=true,
     auto_detect=true
);

select *
from sample_submission;

-- DETACH DATABASE IF EXISTS db_queries;
DETACH zindi_202311_01;
SHOW DATABASES;
