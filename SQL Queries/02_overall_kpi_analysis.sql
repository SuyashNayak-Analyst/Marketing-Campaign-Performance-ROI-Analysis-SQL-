-- To find Cost per Click, Cost per Lead, Cost per Order, and Click to Order Conversion Rate (%). 
SELECT 
    ROUND(SUM(mark_spent) / SUM(clicks), 2) AS CPC,
    ROUND(SUM(mark_spent) / SUM(leads), 2) AS CPL,
	ROUND(SUM(mark_spent) / SUM(orders), 2) AS CPO,
    ROUND(SUM(orders) / SUM(clicks) * 100, 2) AS Conversion_rate
FROM
    marketing;

-- To find Revenue per Order and Net Profit per Order
SELECT 
    ROUND(SUM(mark_spent) / SUM(orders), 2) AS CPO,
    ROUND(SUM(revenue) / SUM(orders), 2) AS Revenue_per_Order,
    ROUND(SUM(revenue) / SUM(orders) - SUM(mark_spent) / SUM(orders),
            2) AS Net_Profit_Per_Order
FROM
    marketing;



-- as per the output- The campaign is making profit. On average, each order gives around 1529 rupees extra after marketing cost. This means that even though marketing cost is a bit high, the campaign still profitable. If we improve the conversion rate (turn more click into orders), the profit can increase even more. 
