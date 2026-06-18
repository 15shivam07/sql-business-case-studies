-- ====================================================
-- CUSTOMER REVENUE CONCENTRATION ANALYSIS
-- ====================================================

-- Business Question:
-- How dependent is the business on a small group of high-value customers?


-- Top 10% Customer Revenue

SELECT ROUND(SUM(Nett_Rev),2) AS RevByTop10Pct
FROM (
    SELECT
        `Customer ID`,
        `Customer Name`,
        ROUND(SUM(Sales),2) AS Nett_Rev
    FROM superstore
    GROUP BY `Customer ID`, `Customer Name`
    ORDER BY Nett_Rev DESC
    LIMIT 80
) AS Top80Cust_Rev;


-- Result:
-- Revenue = 704,697.10
-- Revenue Contribution = 31.16%


-- Top 20% Customer Revenue

SELECT ROUND(SUM(Nett_Rev),2) AS RevByTop20Pct
FROM (
    SELECT
        `Customer ID`,
        `Customer Name`,
        ROUND(SUM(Sales),2) AS Nett_Rev
    FROM superstore
    GROUP BY `Customer ID`, `Customer Name`
    ORDER BY Nett_Rev DESC
    LIMIT 159
) AS Top159Cust_Rev;


-- Result:
-- Revenue = 1,096,419.16
-- Revenue Contribution = 48.00%


-- Top 50% Customer Revenue

SELECT ROUND(SUM(Nett_Rev),2) AS RevByTop50Pct
FROM (
    SELECT
        `Customer ID`,
        `Customer Name`,
        ROUND(SUM(Sales),2) AS Nett_Rev
    FROM superstore
    GROUP BY `Customer ID`, `Customer Name`
    ORDER BY Nett_Rev DESC
    LIMIT 397
) AS Half_Cust_Rev;


-- Result:
-- Revenue = 1,818,959.70
-- Revenue Contribution = 80.43%

-- Top 10% Customers = 31.16%
-- Top 20% Customers = 48.00%
-- Top 50% Customers = 80.43%


-- Final Interpretation:
-- Revenue is moderately concentrated among a relatively small group
-- of customers. The top 20% customers generate nearly half of all
-- company revenue.

