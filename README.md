# Deutsche Bank Financial KPI Dashboard

This is a project where I built an interactive Financial KPI dashboard for Deutsche Bank using Azure SQL Database and Power BI to analyse their financial performance from 2015 to 2017.

### 🔷 Why I built this
I wanted to practice creating executive-level financial dashboards that show:

Revenue trends

Net profit analysis

Expenses breakdown

Liquidity & leverage insights

while combining SQL data cleaning and KPI calculations with Power BI visual storytelling – a crucial skillset for finance and BI analyst roles.

### 🔷 Dataset used
Source: Kaggle – Deutsche Bank Financial Performance

Period: Jan 2015 onwards

Key columns: Revenue, Net Income, Expenses, Profit Margin %, Cash Flow, Debt-to-Equity, Date, among others

### 🔷 My Project Workflow

#### 1. Data Cleaning (SQL)
Imported the raw CSV into Azure SQL Database via SSMS

Filtered data for records from 2015 onwards

Created calculated columns for:

Gross Profit = Operating Income – Expenses

Profit Margin % = (Net Income / Revenue) * 100

#### 2. KPI Calculations
Example SQL snippet for KPIs:

sql
Copy
Edit
SELECT
  Date,
  (Operating_Income - Expenses) AS Gross_Profit,
  CASE WHEN Revenue = 0 THEN 0 ELSE (Net_Income * 100.0 / Revenue) END AS Profit_Margin_Percent
FROM financials_cleaned;

#### 3. Power BI Modelling
Connected the cleaned SQL table to Power BI

Built DAX measures for:

Total Revenue

Total Net Income

Total Expenses

Total Gross Profit

Avg Profit Margin %

Total Cash Flow

Avg Debt-to-Equity Ratio

#### 4. Dashboard Design
I structured the visuals as:

• Top row: KPI cards for quick executive snapshot
• Middle row:

Line chart for Monthly Revenue trend

Clustered column chart comparing Revenue vs Net Income by year
• Bottom row:

Gauge chart for Profit Margin %

Card for Debt-to-Equity Ratio

Line chart for Cash Flow trends
• Right side: Date slicers for easy filtering

### 🔷 Key Insights from this dashboard
Revenue peaked in mid-2016 while Net Income remained stable overall

Average profit margin was healthy (~42%) indicating strong operational efficiency

Cash Flow trends were positive, reflecting good liquidity

Debt-to-Equity ratio stayed within an optimal range, showing balanced leverage

### Tools used
SQL Server Management Studio (SSMS)

Azure SQL Database

Power BI Desktop

### How to use this repo
Clone or download this repository

Run the SQL cleaning scripts on your Azure SQL instance

Open the Power BI file and refresh the data source

Explore the interactive visuals and insights
### Dashboard Preview

![Screenshot 2025-07-03 232755](https://github.com/user-attachments/assets/fa5e3c66-8370-4a17-8127-40f890a505ee)


### 🔷 About me
Hi, I’m Bhagyaprasad Vastrad, a data and BI enthusiast passionate about financial and operational analytics.
Connect with me on LinkedIn if you’d like to discuss BI projects or roles.
