
-- Date wise Preformance

select 
c_date, 
round(sum(mark_spent), 2) as Total_Spend,
round(sum(revenue), 2) as Total_Revenue,
round((sum(revenue)-sum(mark_spent))*100/sum(mark_spent), 2) as ROI_Percentage,
rank() over( order by (sum(revenue)-sum(mark_spent))*1.0/sum(mark_spent) desc) as ROI_Rank
from marketing
group by c_date;
