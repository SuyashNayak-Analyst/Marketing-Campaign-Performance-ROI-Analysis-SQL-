
-- Campaign Preformance

select 
campaign_name, 
round(sum(mark_spent), 2) as Total_Spend,
round(sum(revenue), 2) as Total_Revenue,
round((sum(revenue)-sum(mark_spent))*100/sum(mark_spent), 2) as ROI_Percentage,
rank() over( order by (sum(revenue)-sum(mark_spent))*1.0/sum(mark_spent) desc) as ROI_Rank
from marketing
group by campaign_name;


-- The campaign analysis shows that only a few channels are generating most of the profit. YouTube Blogger and Facebook Retargeting campaigns perform very well and deliver high returns, so they are good options for increasing budget. On the other hand, several Facebook and Instagram Tier 2 campaigns are causing losses, mainly due to poor targeting and high costs. By shifting budget from low-performing campaigns to high-performing ones, overall marketing ROI can be improved.
