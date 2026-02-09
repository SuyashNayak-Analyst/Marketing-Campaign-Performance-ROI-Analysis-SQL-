
-- To find the time/date range of campaign 
SELECT 
    MIN(c_date) AS start_date, MAX(c_date) AS end_date
FROM
    marketing;

-- To find total campaigns
SELECT 
    COUNT(*) AS Total_campaigns
FROM
    marketing;
 
 -- To find Total Orders, Spend, & Revenue
 SELECT 
    ROUND(SUM(mark_spent), 2) AS Total_Spend,
    SUM(orders) AS Total_Orders,
    SUM(revenue) AS Total_Revenue
FROM
    marketing;
 
 SELECT 
    ROUND(SUM(revenue) - SUM(mark_spent), 2) AS ROI,
    ROUND((SUM(revenue) - SUM(mark_spent)) / SUM(mark_spent) * 100,
            2) AS ROI_Percentage
FROM
    marketing;

 -- As per the outputs- The company sepnt 30.59M on Marketing Campagins in February 2021, genrating 42.88M revenue and achieving 40.2% ROI, indicating profitable campaign execution with scope for optimization at the campaign level. --
