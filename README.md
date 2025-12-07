# Telco Customer Churn Analysis Project

## Description
This project analyzes telecom customer data to understand **customer churn patterns** and provide actionable recommendations.  
The project uses **Python, SQL, Excel, and Power BI**, combining data cleaning, analysis, visualization, and predictive modeling to support business decision-making.

Source: IBM

## Tools & Technologies
- **Python**: pandas, numpy, matplotlib, seaborn, scikit-learn  
- **Excel**: Data cleaning, pivot tables, charts  
- **SQL (MySQL)**: Data querying and aggregation  
- **Power BI Desktop**: Interactive dashboards  

## Folder Structure

/data  
- Raw dataset: `telco_churn_raw.csv`  

/excel
- Cleaned Excel file: 'Telco_project_Cleaned'
- Cleaned Excel file with pivot tables: `telco_churn_excel_cleaned.xlsx`  

/python  
- Jupyter Notebook with analysis and visualization: `telco_churn_analysis.ipynb`  

/sql  
- SQL queries for churn insights: `telco_churn_mysql_analysis.sql`  

/powerbi  
- Interactive dashboard: `telco_churn_project_powerbi.pbix`  


## Steps Performed in the Project

### 1. Excel Analysis
- Imported raw CSV data into Excel  
- Performed **data cleaning**: removed nulls, corrected data types  
- Created **pivot tables and charts** to explore:  
  - Churn by contract type  
  - Revenue by customer segment  
  - Customer tenure distribution    

### 2. Python Analysis
- Loaded cleaned dataset from Excel/CSV  
- Conducted **data preprocessing**: handling missing values, encoding categorical variables  
- Performed **exploratory data analysis (EDA)**:  
  - Distribution plots for tenure, monthly charges, total charges  
  - Correlation analysis to identify key churn factors  
- Built a **predictive churn model** using Logistic Regression  
- Visualized results and key metrics
 
### 3. SQL Analysis
- Imported data into MySQL  
- Ran queries to calculate:  
  - Total customers, churned customers, churn rate  
  - Churn distribution by contract type, tenure, and payment method  
  - Revenue and customer value metrics  

### 4. Power BI Dashboard
- Connected Power BI to cleaned data  
- Built **interactive dashboard** with multiple pages:  
  1. **Churn Overview** – key metrics and churn trends  
  2. **Revenue & Customer Value** – revenue by segment, average customer value  
  3. **ML Predictions** – predicted churn probability visualizations  
- Added **filters and slicers** for easy exploration  


## Key Insights

1. Overall churn rate: **26–27%**  
2. Month-to-month contract customers have higher churn  
3. Short-tenure customers are more likely to churn  
4. Higher monthly charges increase churn probability  
5. Electronic check users churn more frequently  
6. Customers without add-on services are more likely to churn  
7. Predictive model successfully identifies high-risk customers  


## Recommendations

1. **Retention Programs** for month-to-month customers  
2. **Encourage longer contracts** (1-year or 2-year) with perks  
3. **Monitor high-risk customers** using predictive model outputs  
4. **Incentivize auto-pay adoption** to reduce churn  
5. **Upsell additional services** to improve engagement 


## Conclusion
This project provides actionable insights and a predictive framework for telecom companies to reduce churn, increase revenue, and optimize customer retention strategies.
