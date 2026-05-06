# 📊 Sales Performance Dashboard

> EDA & Interactive Visualisation on 5-Year Retail Sales Data (50K+ records)

![Python](https://img.shields.io/badge/Python-3776AB?style=flat-square&logo=python&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=flat-square&logo=pandas&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat-square&logo=mysql&logoColor=white)

---

## 📌 Problem Statement
Manual sales reporting was slow and error-prone. This project automates sales analysis and builds an interactive Power BI dashboard to help business stakeholders make data-driven decisions faster.

## 🎯 Key Results
| Metric | Result |
|--------|--------|
| Records Analysed | **50,000+** |
| KPI Cards in Dashboard | **8** |
| Reporting Time Reduction | **~40%** |
| Seasonal Patterns Found | **2 peak periods** |

## 📁 Project Structure
```
sales-performance-dashboard/
├── data/
│   └── retail_sales.csv        # Synthetic retail sales dataset
├── notebooks/
│   ├── 01_Data_Cleaning.ipynb  # Data wrangling & preprocessing
│   └── 02_EDA_Analysis.ipynb   # Full EDA & visualisations
├── sql/
│   └── sales_queries.sql       # SQL queries used in analysis
├── requirements.txt
└── README.md
```

## 🔍 Key Insights
- **Electronics** was the top revenue category (28% of total sales)
- **Q4** (Oct–Dec) consistently showed peak sales across all years
- **North region** had highest volume; **West region** had highest avg. order value
- Month-over-month growth averaged **+3.2%** across the 5-year period

## 🚀 How to Run
```bash
git clone https://github.com/VanilPatel/sales-performance-dashboard
cd sales-performance-dashboard
pip install -r requirements.txt
jupyter notebook notebooks/01_Data_Cleaning.ipynb
```

## 🛠️ Tech Stack
- **Python** — Pandas, NumPy, Matplotlib, Seaborn, Plotly
- **BI Tools** — Power BI (dashboard), Excel (pivot tables)
- **Database** — SQL (MySQL) for data extraction queries

---
⭐ Star this repo if you found it helpful!
