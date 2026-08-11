<div align="center">

# 🛍️ E-Commerce Customer Intelligence

### 📊 RFM Analysis • 🤖 K-Means Clustering • 💡 Business Insights

<img src="banner.png" alt="E-Commerce Customer Analytics" width="100%"/>

### 🚀 Turning Customer Data into Actionable Business Intelligence

**Python | RFM Analysis | K-Means | SQL Server | Power BI | Excel**

</div>

---
## About the Project

This project focuses on analyzing E-Commerce transaction data to understand customer purchasing behavior and identify meaningful customer segments.

The project combines **RFM Analysis** and **K-Means Clustering** to classify customers according to their purchasing patterns and business value.

The analysis is performed using Python, SQL Server, and Power BI to create a complete data analytics workflow from raw transaction data to actionable business insights.

### The project covers:

- Customer purchasing behavior analysis
- RFM Analysis
- RFM scoring
- K-Means customer clustering
- Customer segmentation
- Revenue analysis
- High-value customer identification
- At-risk customer identification
- SQL Server analysis
- Interactive Power BI dashboard
- Business recommendations

---

# Project Objectives

The main objectives of this project are:

- Analyze customer purchasing behavior
- Calculate **Recency, Frequency, and Monetary (RFM)** metrics
- Generate RFM scores for customers
- Apply **K-Means Clustering** for customer segmentation
- Identify high-value and at-risk customers
- Analyze revenue contribution by customer segment
- Build an interactive Power BI dashboard
- Identify customers requiring attention
- Generate actionable business insights
- Recommend suitable business strategies for each customer segment

---

# Technology Stack

| Technology | Purpose |
|------------|---------|
| Python | Data cleaning, preprocessing and analysis |
| Pandas | Data manipulation |
| NumPy | Numerical analysis |
| Scikit-learn | K-Means clustering |
| Matplotlib | Data visualization |
| Seaborn | Exploratory visualization |
| SQL Server | RFM calculations and customer analysis |
| Power BI | Interactive dashboard and visualization |
| Excel | Data preparation and supporting analysis |
| GitHub | Project version control and documentation |

---

# Project Architecture

~~~text
E-Commerce Transaction Data
            ↓
       Data Cleaning
            ↓
      Python Analysis
            ↓
     RFM Calculation
            ↓
       RFM Scoring
            ↓
     K-Means Clustering
            ↓
    Customer Segmentation
            ↓
       SQL Server
            ↓
      Power BI Dashboard
            ↓
     Business Insights
            ↓
    Marketing Strategies
~~~

---

# RFM Analysis

RFM Analysis is a customer segmentation technique based on three important customer behavior metrics:

## Recency

Recency measures **how recently a customer made a purchase**.

A lower Recency value generally indicates that the customer purchased more recently.

**Lower Recency = Better**

---

## Frequency

Frequency measures **how often a customer makes purchases**.

A higher Frequency value indicates that the customer purchases more frequently.

**Higher Frequency = Better**

---

## Monetary

Monetary measures **how much money a customer has spent**.

A higher Monetary value indicates greater revenue contribution from the customer.

**Higher Monetary Value = Better**

---

## RFM Scoring

Customers are assigned scores based on:

- Recency
- Frequency
- Monetary Value

The individual scores are combined to create an overall **RFM Score**.

The RFM score helps identify customers according to their purchasing behavior and business value.

---

# K-Means Customer Segmentation

After calculating RFM metrics, **K-Means Clustering** was applied to group customers with similar purchasing behavior.

K-Means clustering helps identify natural groups within the customer base.

The final analysis categorizes customers into five major segments:

| Customer Segment | Business Focus |
|------------------|----------------|
| High-Value Customers | Retention & Loyalty |
| Loyal Customers | Cross-Selling |
| Potential Customers | Customer Growth |
| At-Risk Customers | Re-Engagement |
| Inactive Customers | Win-Back Campaigns |

---

# Customer Segments

## 1. High-Value Customers

High-Value Customers are customers with strong purchasing behavior and high monetary contribution.

These customers are extremely important for business revenue and should be prioritized for retention.

### Recommended Strategies

- VIP loyalty programs
- Exclusive benefits
- Personalized offers
- Premium customer service
- Early access to new products
- Personalized recommendations
- Special rewards

---

## 2. Loyal Customers

Loyal Customers show consistent purchasing behavior and regular engagement with the business.

They provide a strong opportunity for increasing revenue through additional products and services.

### Recommended Strategies

- Cross-selling
- Upselling
- Loyalty rewards
- Personalized recommendations
- Bundle offers
- Referral programs
- Personalized marketing

---

## 3. Potential Customers

Potential Customers demonstrate promising purchasing behavior but have not yet reached the highest-value category.

These customers can be developed into loyal and high-value customers.

### Recommended Strategies

- Personalized promotions
- Product recommendations
- Next-purchase incentives
- Discount campaigns
- Engagement campaigns
- Product bundles
- Loyalty program invitations

---

## 4. At-Risk Customers

At-Risk Customers were previously active but currently show reduced purchasing activity.

These customers require timely re-engagement to prevent churn.

### Recommended Strategies

- Re-engagement campaigns
- Personalized discounts
- Reminder notifications
- Limited-time offers
- Personalized emails
- Customer feedback campaigns
- Special retention offers

---

## 5. Inactive Customers

Inactive Customers show very low or no recent purchasing activity.

These customers can be targeted through win-back and reactivation campaigns.

### Recommended Strategies

- Win-back campaigns
- Reactivation offers
- Special discounts
- Email campaigns
- WhatsApp campaigns
- New product announcements
- Personalized incentives

---

# SQL Server Analysis

**SQL Server** was used for structured customer analytics and RFM calculations.

The SQL analysis includes:

- Customer-level RFM calculations
- Recency calculation
- Frequency calculation
- Monetary calculation
- RFM scoring
- Customer segmentation
- Revenue analysis
- Customer-level analysis
- Segment-level analysis

SQL Server provides a structured environment for performing repeatable customer analytics.

---

# Python Analysis

Python was used for data preparation, analysis, visualization, and machine learning.

### Python workflow:

1. Load transaction data
2. Inspect the dataset
3. Clean the data
4. Handle missing values
5. Remove duplicate records
6. Prepare customer-level data
7. Calculate RFM metrics
8. Scale the features
9. Apply K-Means clustering
10. Assign customer segments
11. Analyze segment characteristics
12. Generate visualizations

---

# Python Libraries

~~~text
Pandas
NumPy
Scikit-learn
Matplotlib
Seaborn
~~~

---

# Power BI Dashboard

The final customer analytics results were presented through an interactive **Power BI dashboard**.

The dashboard provides a visual overview of:

- Customer segmentation
- Revenue by customer segment
- Average RFM score
- Customer segment distribution
- Customers requiring attention
- Total customers
- Total monetary value
- Average recency
- Average frequency

---

# Dashboard Key Metrics

| Metric | Result |
|--------|--------|
| Total Customers | **332** |
| Total Monetary Value | **₹432K** |
| Average Recency | **138.59** |
| Average Frequency | **1.51** |

---

# Customer Segment Distribution

The analysis resulted in the following customer distribution:

| Customer Segment | Customers | Approx. Share |
|------------------|-----------|---------------|
| High-Value Customers | 88 | 26.5% |
| Potential Customers | 82 | 24.7% |
| Loyal Customers | 69 | 20.8% |
| At-Risk Customers | 56 | 16.9% |
| Inactive Customers | 37 | 11.1% |
| **Total** | **332** | **100%** |

---

# Revenue by Customer Segment

The revenue analysis shows that different customer segments contribute differently to total revenue.

**High-Value Customers** make the strongest contribution and therefore should receive the highest priority in retention and loyalty programs.

Other customer groups can be targeted with specific strategies such as:

- Cross-selling
- Upselling
- Personalized promotions
- Re-engagement campaigns
- Win-back campaigns

---

# Average RFM Score by Segment

The Power BI dashboard compares the average RFM score across customer segments.

High-value and loyal customers generally demonstrate stronger purchasing behavior, while at-risk and inactive customers show weaker engagement.

This comparison helps the business prioritize marketing and retention activities.

---

# Customers Requiring Attention

The dashboard identifies customers who may require immediate attention.

These customers can primarily be targeted through:

- Re-engagement campaigns
- Personalized discounts
- Reminder notifications
- Product recommendations
- Win-back campaigns

This helps businesses reduce customer churn and improve customer retention.

---

# Key Business Insights

The analysis provides several important business insights:

### High-Value Customers

High-Value Customers should be prioritized for:

- Loyalty programs
- VIP benefits
- Personalized offers
- Exclusive products

These customers have a strong contribution to business revenue.

---

### Loyal Customers

Loyal Customers represent strong opportunities for:

- Cross-selling
- Upselling
- Product recommendations
- Loyalty rewards

---

### Potential Customers

Potential Customers can be developed through:

- Personalized promotions
- Engagement campaigns
- Product recommendations
- Purchase incentives

---

### At-Risk Customers

At-Risk Customers should be targeted quickly through:

- Re-engagement campaigns
- Personalized offers
- Retention campaigns
- Limited-time discounts

---

### Inactive Customers

Inactive Customers can be targeted through:

- Win-back campaigns
- Reactivation offers
- Special discounts
- New-product campaigns

---

# Business Recommendations

| Customer Segment | Recommended Strategy |
|------------------|----------------------|
| High-Value Customers | VIP loyalty programs and exclusive benefits |
| Loyal Customers | Cross-selling and upselling |
| Potential Customers | Personalized promotions and growth campaigns |
| At-Risk Customers | Re-engagement and retention campaigns |
| Inactive Customers | Win-back and reactivation campaigns |

---

# Project Methodology

## Step 1 — Data Collection

E-Commerce transaction data was collected containing information related to customer purchases and transaction behavior.

---

## Step 2 — Data Cleaning

The raw dataset was cleaned and prepared for analysis.

The cleaning process included:

- Handling missing values
- Removing duplicate records
- Checking invalid transactions
- Correcting data types
- Preparing transaction-level data

---

## Step 3 — Customer-Level Data Preparation

Transaction-level information was aggregated to the customer level.

This created the required customer-level variables for RFM analysis.

---

## Step 4 — RFM Calculation

The following metrics were calculated for every customer:

- Recency
- Frequency
- Monetary

---

## Step 5 — RFM Scoring

Customers were assigned scores based on their Recency, Frequency, and Monetary values.

These scores were used to understand customer quality and engagement.

---

## Step 6 — Feature Scaling

RFM variables were standardized before applying K-Means clustering to ensure that differences in numerical scales did not disproportionately affect the clustering process.

---

## Step 7 — K-Means Clustering

K-Means clustering was applied to group customers with similar RFM characteristics.

The resulting clusters were analyzed and mapped to meaningful business segments.

---

## Step 8 — Customer Segmentation

The resulting customers were classified into:

- High-Value Customers
- Loyal Customers
- Potential Customers
- At-Risk Customers
- Inactive Customers

---

## Step 9 — SQL Server Analysis

SQL Server was used to perform structured customer analysis, RFM calculations, scoring, and revenue analysis.

---

## Step 10 — Power BI Dashboard

The analyzed data was visualized through an interactive Power BI dashboard.

The dashboard provides management-level insights into:

- Customer value
- Revenue
- Customer distribution
- RFM performance
- Customers requiring attention

---

## Step 11 — Business Recommendations

Each customer segment was mapped to an appropriate business strategy.

This converts analytical results into actionable business decisions.

---

# Repository Structure

~~~text
Customer-Segmentation-RFM-Analysis/
│
├── README.md
├── LICENSE
├── banner.png
│
├── Customer_Segmentation.sql
│
├── Customer_Segmentation_RFM_Project.pbix
│
├── Customer_Segmentation_Dashboard.png
│
├── final_customer_segmentation.xlsx
│
└── Customer_Segmentation_RFM_Project_Presentation.pptx
~~~

---

# Project Files

## Customer_Segmentation.sql

Contains the SQL Server queries used for:

- RFM calculations
- Customer scoring
- Customer segmentation
- Revenue analysis
- Customer insights

---

## Customer_Segmentation_RFM_Project.pbix

Power BI project file containing the interactive customer segmentation dashboard.

---

## Customer_Segmentation_Dashboard.png

Final dashboard preview showing:

- Revenue by customer segment
- RFM scores
- Customer distribution
- Customers requiring attention
- Key metrics

---

## final_customer_segmentation.xlsx

Excel workbook containing customer segmentation and analysis results.

---

## Customer_Segmentation_RFM_Project_Presentation.pptx

Project presentation containing:

- Project introduction
- Objectives
- Methodology
- RFM Analysis
- K-Means clustering
- Customer segments
- Business insights
- Recommendations
- Dashboard

---

# Dashboard Preview

The Power BI dashboard provides a complete visual summary of the customer segmentation analysis.

### Dashboard Components

- Revenue by Customer Segment
- Average RFM Score by Segment
- Customer Segment Distribution
- Customers Requiring Attention
- Total Customer Count
- Total Monetary Value
- Average Recency
- Average Frequency

---

# Project Outcomes

This project demonstrates how raw E-Commerce transaction data can be transformed into actionable customer intelligence.

The final solution enables businesses to:

- Understand customer purchasing behavior
- Identify valuable customers
- Identify customers at risk of churn
- Improve customer retention
- Develop targeted marketing campaigns
- Increase cross-selling opportunities
- Improve customer engagement
- Support data-driven decision making
- Allocate marketing resources more effectively

---

# Future Improvements

The project can be further enhanced with advanced machine learning and automation techniques.

Possible improvements include:

- Customer Lifetime Value prediction
- Customer churn prediction
- Purchase propensity modeling
- Product recommendation systems
- Real-time customer segmentation
- Automated customer scoring
- Email marketing automation
- WhatsApp marketing automation
- Customer behavior prediction
- Advanced Power BI drill-through reports
- Machine Learning model deployment through an API

---

# Business Value

Customer segmentation enables businesses to move from a **one-size-fits-all marketing approach** toward personalized customer strategies.

By combining RFM Analysis and K-Means Clustering, businesses can:

- Identify their most valuable customers
- Improve customer retention
- Reduce customer churn
- Personalize marketing campaigns
- Increase customer lifetime value
- Improve customer engagement
- Optimize marketing spending
- Identify growth opportunities

---

# Conclusion

The **E-Commerce Customer Analytics using RFM & K-Means** project demonstrates an end-to-end customer analytics workflow.

Starting with raw transaction data, the project applies:

**Data Cleaning → RFM Analysis → RFM Scoring → K-Means Clustering → Customer Segmentation → SQL Analysis → Power BI Visualization → Business Insights**

The resulting customer segments provide a clear framework for developing targeted strategies for high-value, loyal, potential, at-risk, and inactive customers.

This project demonstrates practical skills in:

- Python
- Data Analytics
- Machine Learning
- RFM Analysis
- K-Means Clustering
- SQL Server
- Power BI
- Excel
- Customer Segmentation
- Business Intelligence

---

# 👩‍💻 Author

## Divyanshi Sharma

**MBA – Artificial Intelligence & Data Science**

### Skills Demonstrated

~~~text
Python
Pandas
NumPy
Machine Learning
K-Means Clustering
RFM Analysis
SQL Server
Power BI
Excel
Data Analytics
Customer Segmentation
Business Intelligence
Data Visualization
~~~

---

# Project Information

This repository contains the complete implementation and documentation of the E-Commerce Customer Analytics project.

The repository includes:

- SQL analysis
- Power BI dashboard
- Excel analysis
- Project presentation
- Dashboard preview
- Complete project documentation

---

# If You Like This Project

If you find this project useful or interesting, consider giving the repository a ⭐ on GitHub.

---

**Built with Python | SQL Server | Power BI | Excel | Machine Learning**
