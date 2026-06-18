-- ====================================================
-- PRODUCT MIX ANALYSIS
-- ====================================================

-- Business Question:
-- Why does East generate the highest average revenue
-- per order compared to other regions?

-- Revenue by Category and Region

SELECT
    Region,
    Category,
    ROUND(SUM(Sales),2) AS CatWiseRev
FROM superstore
GROUP BY Region, Category;


-- Category Revenue Share %

SELECT
    C.Region,
    C.Category,
    C.CatWiseRev,
    R.RegionWiseRev,
    ROUND((C.CatWiseRev / R.RegionWiseRev) * 100, 2) AS CategorySharePct
FROM
(
    SELECT
        Region,
        Category,
        ROUND(SUM(Sales), 2) AS CatWiseRev
    FROM superstore
    GROUP BY Region, Category
) AS C
JOIN
(
    SELECT
        Region,
        ROUND(SUM(Sales), 2) AS RegionWiseRev
    FROM superstore
    GROUP BY Region
) AS R
ON C.Region = R.Region
ORDER BY C.Region, CategorySharePct DESC;


-- Technology Sub-Category Analysis

SELECT
    Region,
    `Sub-Category`,
    ROUND(SUM(Sales),2) AS SCRev
FROM superstore
WHERE Category = 'Technology'
GROUP BY Region, `Sub-Category`
ORDER BY Region, `Sub-Category` DESC;


-- Final Interpretation:
--
-- Technology is the leading revenue category
-- across all regions.
--
-- East and South have the highest Technology
-- revenue concentration.
--
-- Machine sales are strongest in East and South.
--
-- Premium Technology products appear to be a
-- major driver of higher average order values.
