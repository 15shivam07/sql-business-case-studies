-- ====================================================
-- SEASONAL SALES ANALYSIS
-- ====================================================

-- Business Question:
-- How has revenue changed over time and what
-- seasonal patterns exist in customer demand?

-- ====================================================
-- YEARLY TREND ANALYSIS
-- ====================================================

-- Revenue by Year

SELECT
    YEAR(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS YEAR,
    ROUND(SUM(Sales),2) AS YrlyREV
FROM superstore
GROUP BY YEAR
ORDER BY YEAR;

-- Result:
-- 2015 = 479856.21
-- 2016 = 459436.01
-- 2017 = 600192.55
-- 2018 = 722052.02

-- Insight:
-- Revenue declined slightly in 2016 before
-- entering a strong growth phase in 2017 and 2018.


-- ====================================================
-- MONTHLY TREND ANALYSIS
-- ====================================================

SELECT
    YEAR(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS YEAR,
    MONTH(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS MON_NUM,
    MONTHNAME(STR_TO_DATE(`Order Date`, '%d/%m/%Y')) AS MONTH,
    ROUND(SUM(Sales),2) AS YrlyREV
FROM superstore
GROUP BY YEAR, MON_NUM, MONTH
ORDER BY YEAR, MON_NUM;

-- Strongest Month:
-- November 2018 = 117938.16

-- Weakest Month:
-- February 2015 = 4519.89

-- Final Interpretation:
--
-- Revenue accelerates during the second half
-- of the year.
--
-- Q4 (October–December) consistently generates
-- the strongest sales performance.
--
-- November is typically the highest-performing month.
--
-- February is consistently among the weakest months.
