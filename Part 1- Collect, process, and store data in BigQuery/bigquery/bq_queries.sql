-- Query to create a table from a CSV file in Google Cloud Storage
LOAD DATA OVERWRITE fintech.state_region
(
    state string,
    subregion string,
    region string
)
FROM FILES (
format = 'CSV',
uris = ['gs://sureskills-lab-dev/future-workforce/da-capstone/temp_35_us/state_region_mapping/state_region_*.csv']);

-- Query to create loan_with_region table
CREATE OR REPLACE TABLE fintech.loan_with_region AS
SELECT
    lo.loan_id,
    lo.loan_amount,
    sr.region
FROM fintech.loan lo
INNER JOIN fintech.state_region sr
ON lo.state = sr.state;

-- Query to create loan_purposes table with distinct loan purposes
CREATE OR REPLACE TABLE fintech.loan_purposes AS
SELECT DISTINCT application.purpose
FROM fintech.loan;

-- Query to create loan_count_by_year table
CREATE TABLE fintech.loan_count_by_year AS
SELECT issue_year, count(loan_id) AS loan_count
FROM fintech.loan
GROUP BY issue_year;