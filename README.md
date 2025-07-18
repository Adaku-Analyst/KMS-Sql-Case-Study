# KMS-Sql-Case-Study
This project was completed as part of the Digital SkillUp Africa (DSA) Data Analytics training and displays and it analyses the historical sales data from Kultra Mega Stores (KMS) — a retail and corporate office supply chain

The goal is to understand:
+ How different regions, customer segments, and products performed
+ Where the company is losing money through shipping or underperforming customers
+ What decisions can improve profitability and customer retention

The data process involved:
+ Data ingestion using SQL Server Management Studio
+ Data cleaning, transformation, and type optimization
+ Formulation of real business questions
+ Writing SQL queries to extract insights
+ Summarizing recommendations to support strategic decision-making

🛠 Tools Used:
+ SQL Server Management Studio (SSMS)
+ Flat File Import Wizard
+ Microsoft Excel (for initial data prep)
+ GitHub (for version control and documentation)

📈 Business Outcomes:
+ Identified top-and bottom-performing customer segments and products
+ Diagnosed costly shipping patterns and misaligned logistics
+ Proposed recommendations for marketing, logistics, and operations teams

📥 Data Importation Process
+ Source: CSV file containing order data from 2009–2012.
+ Tool: SQL Server Management Studio (SSMS) Flat File Import Wizard.

Steps:
+ Imported the dataset using the SSMS Flat File Import Wizard.
+ Changed column data types to optimize performance and ensure data consistency: Sales, Profit, Discount, Shipping_Cost → DECIMAL(10,2) Quantity, Order_ID, Product Count → INT Cleaned column names and removed blank rows.
+ Verified the import success through sampling and quick queries.
