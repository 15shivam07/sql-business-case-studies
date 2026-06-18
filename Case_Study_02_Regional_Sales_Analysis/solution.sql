-- ====================================================
-- REGIONAL SALES PERFORMANCE ANALYSIS
-- ====================================================

-- Business Question:
-- Which regions generate the highest revenue,
-- process the most orders, and exhibit the
-- strongest customer spending behavior?


-- Revenue by Region

SELECT
    Region,
    ROUND(SUM(Sales),2) AS RegionWiseRev
FROM superstore
GROUP BY Region;


-- Result:
-- West    = 710,219.68
-- East    = 669,518.73
-- Central = 492,646.91
-- South   = 389,151.46


-- Orders by Region

SELECT
    Region,
    COUNT(DISTINCT `Order ID`) AS OrderPerRegion
FROM superstore
GROUP BY Region;


-- Result:
-- West    = 1587
-- East    = 1369
-- Central = 1156
-- South   = 810


-- Average Revenue Per Order

SELECT
    Region,
    ROUND(SUM(Sales) / COUNT(DISTINCT `Order ID`),2) AS AvgRevByRegion
FROM superstore
GROUP BY Region;


-- Result:
-- East    = 489.06
-- South   = 480.43
-- West    = 447.52
-- Central = 426.17


-- Final Interpretation:
-- West generates the highest overall revenue and
-- processes the highest order volume.
--
-- East records the highest average revenue per order,
-- indicating stronger customer spending behavior.
