-- ====================================================
-- GEOGRAPHIC REVENUE ANALYSIS
-- ====================================================

-- Business Question:
-- Is company revenue concentrated within a small
-- number of geographic markets?

-- Revenue by State

SELECT
    Region,
    State,
    ROUND(SUM(Sales),2) AS StateRev
FROM superstore
GROUP BY Region, State
ORDER BY Region, State DESC;

-- Result:
--
-- California   = 446306.46
-- New York     = 306361.15
-- Texas        = 168572.53
-- Washington   = 135206.85
-- Pennsylvania = 116276.65

-- Insight:
-- California is the highest revenue-generating state.
-- West region benefits significantly from California
-- and Washington.


-- Top 5 States Contribution

SELECT
    Region,
    State,
    ROUND(SUM(Sales),2) AS StateRev
FROM superstore
GROUP BY Region, State
ORDER BY StateRev DESC
LIMIT 5;

-- Result:
-- Top 5 States Revenue Contribution = 51.85%

-- Final Interpretation:
--
-- More than half of total company revenue is generated
-- by only five states.
--
-- This indicates significant geographic concentration
-- and highlights potential regional dependency risk.
