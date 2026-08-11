<div align="center">

<img src="banner.png.png" alt="Customer Segmentation & RFM Analysis" width="100%">

# Customer Segmentation & RFM Analysis

### E-Commerce Customer Analytics using Python, K-Means, SQL Server & Power BI

</div>

---

## Project Overview

This project is an end-to-end E-Commerce Customer Analytics and Segmentation solution developed to understand customer purchasing behavior and identify meaningful customer groups.

The project combines Python, RFM Analysis, K-Means Clustering, SQL Server, and Power BI to transform raw e-commerce transaction data into actionable business insights.

The analysis focuses on identifying High-Value Customers, Loyal Customers, Potential Customers, At-Risk Customers, and Inactive Customers to support targeted marketing, customer retention, and revenue optimization.

---

## Project Objectives

- Analyze e-commerce customer purchasing behavior
- Calculate Recency, Frequency, and Monetary metrics
- Generate RFM scores for individual customers
- Apply K-Means clustering to identify customer groups
- Perform customer segmentation using SQL Server
- Analyze revenue contribution across customer segments
- Identify customers requiring attention
- Build an interactive Power BI dashboard
- Generate actionable business recommendations

---

## Technology Stack

| Technology | Purpose |
|---|---|
| Python | Data analysis and preprocessing |
| Pandas | Data manipulation and transformation |
| NumPy | Numerical operations |
| Scikit-learn | K-Means clustering |
| Jupyter Notebook | Python development and analysis |
| SQL Server | RFM analysis and customer segmentation |
| Power BI | Interactive dashboard and visualization |
| Microsoft Excel | Data preparation and supporting datasets |

---

## Project Architecture

```text
                    E-COMMERCE TRANSACTION DATA
                               |
                               v
                    DATA CLEANING & PREPARATION
                               |
                               v
                       PYTHON ANALYSIS
                               |
                +--------------+--------------+
                |                             |
                v                             v
          RFM CALCULATION              K-MEANS CLUSTERING
                |                             |
                v                             |
           RFM SCORING                        |
                |                             |
                +-------------+---------------+
                              |
                              v
                    SQL CUSTOMER SEGMENTATION
                              |
                              v
                     POWER BI DASHBOARD
                              |
                              v
                     BUSINESS INSIGHTS
---
## RFM Analysis

RFM Analysis evaluates customers using three key metrics:

- **Recency:** How recently a customer purchased
- **Frequency:** How frequently a customer purchases
- **Monetary:** How much a customer spends

These metrics are converted into RFM scores to measure customer value and engagement.

---

## K-Means Clustering

K-Means Clustering was applied to group customers with similar purchasing behavior based on their RFM characteristics.

The resulting clusters were interpreted into meaningful business segments.

---

## SQL Server Analysis

SQL Server was used for:

- RFM calculation
- RFM scoring
- Customer segmentation
- Revenue analysis
- Customer-level analysis
- Identifying customers requiring attention

Main SQL file:

`Customer_Segmentation.sql`

---

## Customer Segments

| Segment | Business Focus |
|---|---|
| High-Value Customers | Retention and loyalty |
| Loyal Customers | Cross-selling |
| Potential Customers | Customer growth |
| At-Risk Customers | Re-engagement |
| Inactive Customers | Win-back campaigns |

---

## Power BI Dashboard

The interactive dashboard includes:

- Total Customers
- Total Monetary Value
- Average Recency
- Average Purchase Frequency
- Top Customers by RFM Score
- Revenue by Customer Segment
- Average RFM Score by Segment
- Customer Segment Distribution
- Customers Requiring Attention

### Dashboard Preview

<div align="center">

<img src="Customer_Segmentation_Dashboard.png" alt="Customer Segmentation Dashboard" width="100%">

</div>

---

## Key Metrics

| Metric | Result |
|---|---:|
| Total Customers | 332 |
| Total Monetary Value | ~432K |
| Average Recency | 130.59 |
| Average Frequency | 1.51 |

---

## Business Insights

- High-value customers can be prioritized for loyalty programs.
- Loyal customers can be targeted for cross-selling and retention.
- Potential customers can be targeted with personalized promotions.
- At-risk customers can be approached through re-engagement campaigns.
- Inactive customers can be targeted through win-back campaigns.

---

## Project Workflow

```text
E-Commerce Data
      ↓
Data Cleaning
      ↓
Python Analysis
      ↓
RFM Analysis
      ↓
RFM Scoring
      ↓
K-Means Clustering
      ↓
SQL Segmentation
      ↓
Power BI Dashboard
      ↓
Business Insights
