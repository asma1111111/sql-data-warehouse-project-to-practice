## Data warehouse Project - ETL
This project is an ETL learning and practice project focused on building a SQL Server Data Warehouse using CRM and ERP datasets and the Medallion Architecture (Bronze, Silver, Gold).

### Architecture

   **Bronze:** Stores raw CRM and ERP data.
**Silver:** Cleans, standardizes, and transforms data.
   **Gold:** Creates analytical dimensions and fact views using a Star Schema.

### Data Model
   **gold.dim_customers** – Customer information.
   
   **gold.dim_products** – Product and category information.
   
   **gold.fact_sales** – Sales transactions and measures.

### Technologies

   Microsoft SQL Server
   SQL Server Management Studio (SSMS)
   Draw.io

### Key Concepts

   ETL pipeline development.
   Data cleaning and transformation.
   Data quality and validation.
   CRM and ERP data integration.
   Dimensional modeling and Star Schema.

### Workflow

Data source → Bronze → Silver → Gold → Power BI

### Acknowledgements

This project was completed as part of my learning journey, following **Data with baraa**.
Special thanks to the creator for sharing their knowledge and providing practical guidance throughout the project.
https://www.datawithbaraa.com/

This project was completed as part of my learning journey, following a YouTube tutorial by [Creator's Name].

Special thanks to the creator for sharing their knowledge and providing practical guidance throughout the project.
