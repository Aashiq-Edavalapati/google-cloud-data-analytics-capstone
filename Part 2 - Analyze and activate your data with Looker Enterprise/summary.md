# Lab 2: Analyze and Activate Data with Looker

## Overview
This lab is part of the capstone project for the **Google Cloud Data Analytics Certificate**. It focuses on the final two stages of the cloud data journey:
- **Analyze** data using visual exploration and aggregation
- **Activate** insights by building interactive dashboards for business stakeholders

In this scenario, I was assigned the imaginary role of a **Cloud Data Analyst** at *TheLook Fintech*. After successfully preparing datasets in BigQuery during Lab 1, I was tasked with creating a fully interactive **“Loan Insights”** dashboard in **Looker** for the Treasury department.

---

## Business Questions
The dashboard was built to help answer four key questions related to loan health:

1. **What is the total outstanding amount of all loans?**
2. **What is the percentage distribution of outstanding loans across status categories (e.g. current, late, default)?**
3. **Which states have the highest number of outstanding loans?**
4. **Which customers own their homes outright and have current loans with the highest income?**

---

## Tasks & What Was Done

### ✅ Task 1: Create a Looker Dashboard
- Created a new dashboard named **Loan Insights** in the Developer Student’s folder in Looker.
- Entered editing mode to begin building visual tiles.

### ✅ Task 2: Total Amount of Outstanding Loans (KPI)
- Used the **Loan Details Explore** to select the correct measure for outstanding loan balance.
- Created a single-value visualization showing the **total outstanding balance**.
- Enabled **conditional formatting**: displayed in **red** if > \$3,000,000,000.
- Added this tile with the title: *Total Amount of Outstanding Loans*.

### ✅ Task 3: % of Loans by Status (Pie Chart)
- Selected `Loan Status` (dimension) and `Count` (measure).
- Created a **pie chart** visualizing loan distribution across status types (e.g., Current, Default, Late).
- Set the title to *Percentage of Outstanding Loans*.

### ✅ Task 4: Top 10 States by Outstanding Loans (Bar Chart)
- Selected `State` (dimension) and `Count` of outstanding loans (measure).
- Limited results to **Top 10 states** with highest loan count.
- Visualized using a **horizontal bar chart** for better readability.
- Set title: *Total Count of Outstanding Loans*.

### ✅ Task 5: Top 10 Customers by Income (Table)
- Filtered for:
  - Homeowners who **own their homes outright**
  - Loans with **status = Current**
- Selected dimensions from **Loan** and **Customer** views:
  - Customer ID
  - Annual Income
  - State
  - Interest Rate
- Sorted by descending income and limited to **top 10 customers**.
- Used a table visualization and titled it: *Top 10 Customers by Highest Income*.

### ✅ Task 6: Enable Cross-Filtering and Auto Refresh
- Enabled **Cross-filtering** to allow interactions between visualizations.
  - E.g., clicking a status in the donut chart filters all other visuals.
- Set automatic **refresh intervals**:
  - Total Amount: every **hour**
  - % of Loans by Status & Top 10 Customers: every **day**
  - Dashboard: global refresh set to **hourly**

### ✅ Task 7: Optimize the Dashboard Layout
- Aligned visualizations for clean visual hierarchy:
  - KPI first, status and geography next, customer insights last.
- Applied a consistent **color scheme** to improve UX.
- Clearly labeled all charts and included helpful titles.

### ✅ Task 8: Share Dashboard
- Used **Get Link** to copy a shareable URL for stakeholders.
- Ensured the dashboard is accessible for non-technical team members.

---

## Key Visualizations
| Tile Title                            | Type             | Purpose                                         |
|--------------------------------------|------------------|-------------------------------------------------|
| Total Amount of Outstanding Loans    | Single KPI Tile  | Track financial risk & funding thresholds       |
| Percentage of Outstanding Loans      | Pie Chart      | Understand loan portfolio health by status      |
| Total Count of Outstanding Loans     | Bar Chart        | Visualize geographic distribution of loan risk  |
| Top 10 Customers by Highest Income   | Table            | Identify strong borrowers with current loans    |

---

## Skills Demonstrated
- Looker Dashboards: explore, build, filter, share
- Use of **Explores**, **Dimensions**, and **Measures**
- Conditional formatting and alert thresholds
- Cross-filtering for interactive drill-downs
- Scheduled refresh for real-time insights
- Data storytelling through visual composition

---

## Screenshots
Screenshots of the full dashboard, visual tiles, and filter interactions are available in the `screenshots/` folder.