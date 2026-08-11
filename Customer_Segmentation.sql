CREATE DATABASE CustomerSegmentation;
SELECT DB_NAME() AS CurrentDatabase;
CREATE TABLE Orders (
    OrderID VARCHAR(50),
    OrderDate DATE,
    CustomerName VARCHAR(100),
    State VARCHAR(100),
    City VARCHAR(100)
);
CREATE TABLE OrderDetails (
    OrderID VARCHAR(50),
    Amount DECIMAL(12,2),
    Profit DECIMAL(12,2),
    Quantity INT,
    Category VARCHAR(100),
    SubCategory VARCHAR(100)
);
USE CustomerSegmentation;

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
SELECT COUNT(*) AS Orders_Rows
FROM Orders;

SELECT COUNT(*) AS OrderDetails_Rows
FROM OrderDetails;

USE CustomerSegmentation;

SELECT COUNT(*) AS TotalRows
FROM Orders_Import;
USE CustomerSegmentation;

SELECT COUNT(*) AS TotalRows
FROM dbo.Orders;
SELECT TOP 10 *
FROM dbo.Orders;
USE CustomerSegmentation;

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
SELECT COUNT(*) AS TotalRows
FROM dbo.Orders_SQL_Ready;

SELECT TOP 10 *
FROM dbo.Orders_SQL_Ready;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Orders_SQL_Ready'
ORDER BY ORDINAL_POSITION;

INSERT INTO dbo.Orders
    (OrderID, OrderDate, CustomerName, State, City)
SELECT
    OrderID,
    OrderDate,
    CustomerName,
    State,
    City
FROM dbo.Orders_SQL_Ready;
SELECT COUNT(*) AS TotalRows
FROM dbo.Orders;
SELECT TOP 10 *
FROM dbo.Orders;
SELECT COUNT(*) AS TotalRows
FROM dbo.OrderDetails_SQL_Ready;

SELECT TOP 10 *
FROM dbo.OrderDetails_SQL_Ready;

INSERT INTO dbo.OrderDetails
    (OrderID, Amount, Profit, Quantity, Category, SubCategory)
SELECT
    OrderID,
    Amount,
    Profit,
    Quantity,
    Category,
    SubCategory
FROM dbo.OrderDetails_SQL_Ready;

SELECT COUNT(*) AS TotalRows
FROM dbo.OrderDetails;
SELECT TOP 10 *
FROM dbo.OrderDetails;
SELECT COUNT(*) AS TotalRows
FROM dbo.OrderDetails;
SELECT TOP 10 *
FROM dbo.OrderDetails;

USE CustomerSegmentation;

DECLARE @AnalysisDate DATE;

SELECT @AnalysisDate = DATEADD(DAY, 1, MAX(OrderDate))
FROM dbo.Orders;

SELECT
    o.CustomerName,

    DATEDIFF(
        DAY,
        MAX(o.OrderDate),
        @AnalysisDate
    ) AS Recency,

    COUNT(DISTINCT o.OrderID) AS Frequency,

    SUM(od.Amount) AS Monetary

FROM dbo.Orders AS o

INNER JOIN dbo.OrderDetails AS od
    ON o.OrderID = od.OrderID

GROUP BY
    o.CustomerName

ORDER BY
    Monetary DESC;

    USE CustomerSegmentation;

IF OBJECT_ID('dbo.SQL_RFM', 'U') IS NOT NULL
    DROP TABLE dbo.SQL_RFM;

DECLARE @AnalysisDate DATE;

SELECT @AnalysisDate = DATEADD(DAY, 1, MAX(OrderDate))
FROM dbo.Orders;

SELECT
    o.CustomerName,

    DATEDIFF(
        DAY,
        MAX(o.OrderDate),
        @AnalysisDate
    ) AS Recency,

    COUNT(DISTINCT o.OrderID) AS Frequency,

    SUM(od.Amount) AS Monetary

INTO dbo.SQL_RFM

FROM dbo.Orders AS o

INNER JOIN dbo.OrderDetails AS od
    ON o.OrderID = od.OrderID

GROUP BY
    o.CustomerName;

    SELECT TOP 10 *
FROM dbo.SQL_RFM;

SELECT COUNT(*) AS TotalCustomers
FROM dbo.SQL_RFM;

SELECT TOP 10 *
FROM dbo.SQL_RFM
ORDER BY Monetary DESC;

SELECT COUNT(*) AS TotalCustomers
FROM dbo.SQL_RFM;

USE CustomerSegmentation;

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,

    -- Recency: lower is better, so reverse the score
    NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,

    -- Frequency: higher is better
    NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,

    -- Monetary: higher is better
    NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score

FROM dbo.SQL_RFM;

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,

    NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
    NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
    NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score,

    NTILE(5) OVER (ORDER BY Recency DESC)
    +
    NTILE(5) OVER (ORDER BY Frequency ASC)
    +
    NTILE(5) OVER (ORDER BY Monetary ASC) AS RFM_Score

FROM dbo.SQL_RFM
ORDER BY RFM_Score DESC;

USE CustomerSegmentation;

WITH RFM_Scored AS (
    SELECT
        CustomerName,
        Recency,
        Frequency,
        Monetary,

        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.SQL_RFM
)

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    R_Score,
    F_Score,
    M_Score,
    R_Score + F_Score + M_Score AS RFM_Score,

    CASE
        WHEN R_Score + F_Score + M_Score >= 13
            THEN 'High-Value Customers'

        WHEN R_Score + F_Score + M_Score >= 10
            THEN 'Loyal Customers'

        WHEN R_Score + F_Score + M_Score >= 7
            THEN 'Potential Customers'

        WHEN R_Score + F_Score + M_Score >= 5
            THEN 'At-Risk Customers'

        ELSE 'Inactive Customers'
    END AS CustomerSegment

FROM RFM_Scored
ORDER BY RFM_Score DESC;

USE CustomerSegmentation;

IF OBJECT_ID('dbo.SQL_Customer_Segments', 'U') IS NOT NULL
    DROP TABLE dbo.SQL_Customer_Segments;

WITH RFM_Scored AS (
    SELECT
        CustomerName,
        Recency,
        Frequency,
        Monetary,

        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.SQL_RFM
)

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    R_Score,
    F_Score,
    M_Score,

    R_Score + F_Score + M_Score AS RFM_Score,

    CASE
        WHEN R_Score + F_Score + M_Score >= 13
            THEN 'High-Value Customers'
        WHEN R_Score + F_Score + M_Score >= 10
            THEN 'Loyal Customers'
        WHEN R_Score + F_Score + M_Score >= 7
            THEN 'Potential Customers'
        WHEN R_Score + F_Score + M_Score >= 5
            THEN 'At-Risk Customers'
        ELSE 'Inactive Customers'
    END AS CustomerSegment

INTO dbo.SQL_Customer_Segments

FROM RFM_Scored;

SELECT
    CustomerSegment,
    COUNT(*) AS Customers,
    ROUND(AVG(CAST(Recency AS FLOAT)), 2) AS Avg_Recency,
    ROUND(AVG(CAST(Frequency AS FLOAT)), 2) AS Avg_Frequency,
    ROUND(AVG(Monetary), 2) AS Avg_Monetary,
    ROUND(SUM(Monetary), 2) AS Total_Revenue
FROM dbo.SQL_Customer_Segments
GROUP BY CustomerSegment
ORDER BY Total_Revenue DESC;

SELECT
    CustomerSegment,
    COUNT(*) AS Customers,
    ROUND(AVG(CAST(Recency AS FLOAT)), 2) AS Avg_Recency,
    ROUND(AVG(CAST(Frequency AS FLOAT)), 2) AS Avg_Frequency,
    ROUND(AVG(Monetary), 2) AS Avg_Monetary,
    ROUND(SUM(Monetary), 2) AS Total_Revenue
FROM dbo.SQL_Customer_Segments
GROUP BY CustomerSegment
ORDER BY Total_Revenue DESC;

SELECT TOP 10
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    RFM_Score,
    CustomerSegment
FROM dbo.SQL_Customer_Segments
ORDER BY RFM_Score DESC, Monetary DESC;

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    RFM_Score,
    CustomerSegment
FROM dbo.SQL_Customer_Segments
WHERE CustomerSegment IN ('At-Risk Customers', 'Inactive Customers')
ORDER BY Recency DESC;
SELECT *
FROM dbo.SQL_Customer_Segments;

SELECT
    CustomerSegment,
    COUNT(*) AS Customers,
    ROUND(AVG(CAST(Recency AS FLOAT)), 2) AS Avg_Recency,
    ROUND(AVG(CAST(Frequency AS FLOAT)), 2) AS Avg_Frequency,
    ROUND(AVG(Monetary), 2) AS Avg_Monetary,
    ROUND(SUM(Monetary), 2) AS Total_Revenue
FROM dbo.SQL_Customer_Segments
GROUP BY CustomerSegment
ORDER BY Total_Revenue DESC;
SELECT COUNT(DISTINCT CustomerName) AS UniqueCustomers
FROM dbo.Orders;



USE CustomerSegmentation;

DROP TABLE IF EXISTS dbo.SQL_RFM;

DECLARE @AnalysisDate DATE;

SELECT @AnalysisDate = DATEADD(DAY, 1, MAX(OrderDate))
FROM dbo.Orders;

SELECT
    o.CustomerName,

    DATEDIFF(
        DAY,
        MAX(o.OrderDate),
        @AnalysisDate
    ) AS Recency,

    COUNT(DISTINCT o.OrderID) AS Frequency,

    SUM(od.Amount) AS Monetary

INTO dbo.SQL_RFM

FROM dbo.Orders AS o

INNER JOIN dbo.OrderDetails AS od
    ON o.OrderID = od.OrderID

GROUP BY
    o.CustomerName;
SELECT COUNT(*) AS TotalCustomers
FROM dbo.SQL_RFM;
DROP TABLE IF EXISTS dbo.SQL_Customer_Segments;

WITH RFM_Scored AS (
    SELECT
        CustomerName,
        Recency,
        Frequency,
        Monetary,
        NTILE(5) OVER (ORDER BY Recency DESC) AS R_Score,
        NTILE(5) OVER (ORDER BY Frequency ASC) AS F_Score,
        NTILE(5) OVER (ORDER BY Monetary ASC) AS M_Score
    FROM dbo.SQL_RFM
)

SELECT
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    R_Score,
    F_Score,
    M_Score,
    R_Score + F_Score + M_Score AS RFM_Score,
    CASE
        WHEN R_Score + F_Score + M_Score >= 13 THEN 'High-Value Customers'
        WHEN R_Score + F_Score + M_Score >= 10 THEN 'Loyal Customers'
        WHEN R_Score + F_Score + M_Score >= 7 THEN 'Potential Customers'
        WHEN R_Score + F_Score + M_Score >= 5 THEN 'At-Risk Customers'
        ELSE 'Inactive Customers'
    END AS CustomerSegment
INTO dbo.SQL_Customer_Segments
FROM RFM_Scored;
SELECT COUNT(*) AS TotalCustomers
FROM dbo.SQL_Customer_Segments;

SELECT
    CustomerSegment,
    COUNT(*) AS Customers
FROM dbo.SQL_Customer_Segments
GROUP BY CustomerSegment
ORDER BY Customers DESC;

SELECT
    CustomerSegment,
    COUNT(*) AS Customers,
    ROUND(AVG(CAST(Recency AS FLOAT)), 2) AS Avg_Recency,
    ROUND(AVG(CAST(Frequency AS FLOAT)), 2) AS Avg_Frequency,
    ROUND(AVG(Monetary), 2) AS Avg_Monetary,
    ROUND(SUM(Monetary), 2) AS Total_Revenue
FROM dbo.SQL_Customer_Segments
GROUP BY CustomerSegment
ORDER BY Total_Revenue DESC;

SELECT TOP 10
    CustomerName,
    Recency,
    Frequency,
    Monetary,
    RFM_Score,
    CustomerSegment
FROM dbo.SQL_Customer_Segments
ORDER BY RFM_Score DESC, Monetary DESC;

SELECT *
FROM dbo.SQL_Customer_Segments;
USE CustomerSegmentation;

SELECT *
FROM dbo.SQL_Customer_Segments;