# HCLTech Executive Financial Analytics & Dashboard (FY22–FY26)

An end-to-end financial analytics pipeline and executive reporting dashboard analyzing 14 core financial metrics across 20 quarters (FY22 Q1 to FY26 Q4) for HCLTech.

---

## 📌 Business Need & Objective
Large enterprise financial datasets scattered across multi-year spreadsheets create two major challenges: lack of executive visibility and risk of misinterpreting operational seasonality. 

This project solves these challenges by:
1. Building an automated ETL and growth-tracking data pipeline.
2. Isolating operational risk vs. routine seasonality (specifically identifying Q1 wage-hike margin compression).
3. Establishing an audit-ready Power BI reporting interface with automated data quality governance.

---

## 🛠️ Technology Stack
* **Data Foundation & Cleaning:** Microsoft Excel
* **Relational Database & Analytics:** MySQL (SQL Window Functions - `LAG()`)
* **Exploratory Data Analysis (EDA):** Python (Pandas, Matplotlib)
* **Executive Visualization & Modeling:** Power BI (DAX, Power Query)

---

## 🏗️ End-to-End Pipeline Architecture

### 1. Excel Baseline & Data Hygiene
* Consolidated 14 raw metrics across 20 historical quarters.
* Standardized monetary unit scaling to Millions.
* Validated core accounting identity: Assets = Liabilities + Equity.

### 2. MySQL Growth Analytics
* Ingested cleaned financial tables into MySQL.
* Implemented SQL window functions (`LAG()`) to automate Quarter-over-Quarter (QoQ) and Year-over-Year (YoY) growth calculations.

### 3. Python EDA & Anomaly Detection
* Plotted multi-year profitability distributions.
* Isolated a recurring **150–250 bps Q1 operating margin dip** driven by annual employee merit wage hikes rather than core revenue declines.

### 4. Power BI Executive Dashboard
* **Page 1 (Executive Overview):** C-suite KPI cards (`Revenue`, `Operating Profit`, `Net Profit`) and multi-year profitability margin trends.
* **Page 2 (Financial Performance Trends):** Quarterly revenue/opex analysis and Free Cash Flow & Cash Conversion Ratios.
* **Page 3 (Risk & Variance Analysis):** Operating margin volatility tracking and an automated Power Query `SheetData_Quality_Checks` audit matrix.

---

## 📈 Key Business Insights
1. **Q1 Seasonality Anomaly:** Operating Margin drops predictably by 150–250 bps every Q1 due to annual salary increases before normalizing in Q2–Q4.
2. **Profitability Stability:** Net Profit Margins remained stable within the 16%–19% range across all 5 financial years.
3. **Liquidity Strength:** Cash Conversion Ratio consistently stayed between 55%–75%, showing strong working capital health.
4. **Data Governance Integrity:** Achieved a 100% pass rate across automated audit checks (`Balance_Sheet_Check`, `Negative_Revenue_Check`, `Margin_Anomaly_Check`).
