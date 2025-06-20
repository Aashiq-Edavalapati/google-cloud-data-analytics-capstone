# Lab 1: Collect, Process, and Store Data with BigQuery

## Overview
This lab is part of the capstone project for the **Google Cloud Data Analytics Certificate**. It focuses on the first three stages of the cloud data journey:
- **Collecting** data from diverse sources
- **Processing** and transforming it using SQL
- **Storing** it in BigQuery for further analysis and reporting

I was assigned the imaginary role of a **Cloud Data Analyst** at *TheLook Fintech*, tasked with helping the Treasury department track loan health metrics using BigQuery.

---

## Business Questions
The Treasury team identified three main business questions:
1. **How can we better monitor cash flow to ensure loan funding doesn’t exceed incoming funds?**
2. **What are the top reasons customers take out loans?**
3. **How are loans geographically distributed across regions?**

---

## Tasks & What Was Done

### ✅ Task 1: Set Up BigQuery Environment
- Opened BigQuery and navigated to the **Fintech** dataset.
- Located relevant tables for further analysis.

### ✅ Task 2: Explore Fintech Data
- Investigated tables using **Schema** and **Preview** tabs.
- Identified columns like `loan_amount` and `issue_date` required for cash flow analysis.

### ✅ Task 3: Import CSV & Create Standard Table
- Imported a CSV file from Cloud Storage that mapped **US states to regions**.
- Used the `LOAD DATA OVERWRITE` SQL statement to create the `state_region` table.

### ✅ Task 4: Join Tables for Reporting
- Joined `loan` and `state_region` tables using the `state` column.
- Selected relevant columns: `loan_id`, `loan_amount`, and `region`.

### ✅ Task 5: Use CTAS to Create Report Table
- Created a new table `loan_with_region` using a `CREATE OR REPLACE TABLE AS SELECT` (CTAS) query.
- Connected the resulting table to **Google Sheets** using Connected Sheets for easy access by non-technical stakeholders.

### ✅ Task 6: Work with Nested Data
- Extracted nested field `application.purpose` using **dot notation** (`application.purpose`) from the `loan` table.
- Created a purpose-wise summary of loan reasons.

### ✅ Task 7: Deduplicate Purpose Data
- Used `DISTINCT` in a `CTAS` query to remove duplicate loan purposes.
- Created a new table: `loan_purposes`.

### ✅ Task 8: Summarize Loans by Year
- Aggregated `loan_amount` grouped by `issue_year` using `SUM()` and `GROUP BY`.
- Also created a table `loan_count_by_year` to count the number of loans issued each year.

---

## Key Outputs
- `fintech.state_region` – Cleaned and structured mapping table of states to regions
- `fintech.loan_with_region` – Joined loan data with regional info
- `fintech.loan_purposes` – Unique list of loan purposes
- `fintech.loan_count_by_year` – Count of loans issued per year
- Summary reports connected to Google Sheets for stakeholder use

---

## Skills Demonstrated
- SQL for data exploration, transformation, deduplication, and aggregation
- CTAS statements for reusable reporting tables
- Handling nested fields in BigQuery
- Data ingestion from Cloud Storage
- Joining datasets for meaningful insights
- Connecting BigQuery to Google Sheets for activation

---

## Screenshots
All screenshots of queries, data previews, and schema exploration are stored in the `screenshots/` folder for reference and portfolio use.


## Queries
All the queries used in the process are available in the `bigquery/` folder.
