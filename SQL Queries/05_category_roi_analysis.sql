

-- Category/Platform Preformance

select 
category, 
round(sum(mark_spent), 2) as Total_Spend,
round(sum(revenue), 2) as Total_Revenue,
round((sum(revenue)-sum(mark_spent))*100/sum(mark_spent), 2) as ROI_Percentage,
rank() over( order by (sum(revenue)-sum(mark_spent))*1.0/sum(mark_spent) desc) as ROI_Rank
from marketing
group by category;


-- Category-level analysis reveals that Influencer marketing is the most profitable channel, delivering a 154% ROI. Media and Search campaigns show limited but positive returns, while Social campaigns generate consistent losses despite high spend. Reallocating budget toward high-performing categories can significantly improve overall marketing profitability.
