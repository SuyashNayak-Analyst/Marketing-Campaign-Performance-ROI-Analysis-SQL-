
--  Overall funnel volume
SELECT 
    'Impressions' AS Funnel_stage,
    SUM(impressions) AS Total,
    ROUND(SUM(clicks) * 100.0 / SUM(impressions),
            2) AS Conversion_Rate
FROM
    marketing 
UNION ALL SELECT 
    'Clicks',
    SUM(clicks) 'Click to Lead Rate',
    ROUND(SUM(leads) * 100.0 / SUM(clicks), 2)
FROM
    marketing 
UNION ALL SELECT 
    'Leads',
    SUM(leads) 'Lead to Order Rate',
    ROUND(SUM(orders) * 100.0 / SUM(leads), 2)
FROM
    marketing 
UNION ALL SELECT 
    'Orders',
    SUM(orders) 'Click to Order Rate',
    ROUND(SUM(orders) * 100.0 / SUM(clicks), 2)
FROM
    marketing;
    
    
-- Conversion rate at each stage

SELECT 
    'impression to Click Rate' AS Funnel_Stage,
    ROUND(SUM(clicks) * 100.0 / SUM(impressions),
            2) AS Total
FROM
    marketing 
UNION ALL SELECT 
    'Click to Lead Rate',
    ROUND(SUM(leads) * 100.0 / SUM(clicks), 2)
FROM
    marketing 
UNION ALL SELECT 
    'Lead to Order Rate',
    ROUND(SUM(orders) * 100.0 / SUM(leads), 2)
FROM
    marketing 
UNION ALL SELECT 
    'Click to Order Rate',
    ROUND(SUM(orders) * 100.0 / SUM(clicks), 2)
FROM
    marketing;


-- Insights- The funnel analysis highlights a strong drop-off at the top of the funnel, with very low impression-to-click and click-to-lead conversion rates. However, lead-to-order conversion is relatively strong,indicating good lead quality. Improving ad creatives and landing page experience can significantly increase overall orders without increasing marketing spend.
