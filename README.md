
# 🧠 SQL Exploratory Data Analysis (EDA) Project

Welcome to my **Exploratory Data Analysis (EDA)** project using **SQL Server**.  
This project demonstrates how raw data can be transformed into valuable insights using SQL for data profiling, pattern recognition, and insight generation.

![image](https://github.com/user-attachments/assets/cf740087-869b-4612-a64b-4e99f6c4b1b3)


---

## 🔍 Project Objective

The main goal of this project is to perform **Exploratory Data Analysis (EDA)** on a dataset stored in SQL Server. EDA is a crucial first step in data analysis as it helps us understand the underlying patterns, spot anomalies, and test assumptions.

---

## 📊 EDA Process Overview

Following EDA components were explored using SQL queries:

### 1. **Data Exploration**
- Identified missing values, duplicates, and data types.
- Performed basic statistical summaries.

### 2. **Measure Exploration**
- Aggregated numerical columns (SUM, AVG, MIN, MAX).
- Found trends using grouped statistics.

### 3. **Ranking Analysis**
- Used `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()` functions to rank categories and time-based data.

### 4. **Magnitude Analysis**
- Compared volume and impact across various dimensions.
- Detected outliers and skewed distributions.

### 5. **Database Exploration**
- Explored schema design, table relationships, and foreign key mappings.
- Assessed indexing and normalization.

### 6. **Dimension Exploration**
- Performed slicing and dicing across categorical variables.
- Used `GROUP BY`, `CASE`, and filtering to segment data.

---

## 🛠️ Tools & Technologies

- **SQL Server** (SSMS)
- T-SQL (Transact-SQL)
- Data model: [Include dataset name if possible]

---

## 📂 Project Structure

```bash
📁 SQL-Exploratory-Data-analysis-Project
│
├── 01_Data_Exploration.sql
├── 02_Measure_Exploration.sql
├── 03_Ranking_Analysis.sql
├── 04_Magnitude_Analysis.sql
├── 05_Dimension_Exploration.sql
├── 06_Database_Exploration.sql
└── README.md
