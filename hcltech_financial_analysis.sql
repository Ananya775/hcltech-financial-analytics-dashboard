USE hcltech_analytics;

-- Query 2: Calculate Quarter-over-Quarter (QoQ) Revenue Growth
SELECT 
    financial_year,
    quarter,
    revenue,
    LAG(revenue, 1) OVER (ORDER BY financial_year ASC, quarter ASC) AS previous_quarter_revenue,
    ROUND(
        ((revenue - LAG(revenue, 1) OVER (ORDER BY financial_year ASC, quarter ASC)) 
        / LAG(revenue, 1) OVER (ORDER BY financial_year ASC, quarter ASC)) * 100
    , 2) AS qoq_revenue_growth_pct
FROM financial_data;