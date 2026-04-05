-- Total Revenue

select sum(revenue) as total_revenue
from marketing_data;


-- Revenue by Channel

select channel,
sum(Revenue) as Revenue
from marketing_data
group by channel
order by revenue desc;

-- Total Conversions by Channel

select channel,
sum(Conversions) as Total_Conversions
from marketing_data
group by channel
order by total_conversions desc;

-- Average CTR by Channel

select channel,
avg(CTR) as Avg_CTR
from marketing_data
group by channel
order by Avg_CTR desc;

-- ROI by Channel

select channel,
avg(ROI) as Avg_ROI
from marketing_data
group by channel
order by Avg_ROI desc;

-- Top 5 Campaigns by Revenue

select Top 5 campaignid,
sum(revenue) as Total_revenue
from marketing_data
group by CampaignID
order by Total_revenue desc;

-- Conversions by Gender

select Gender,
sum(conversions) as Total_Conversions
from marketing_data
group by Gender;

--Revenue by City

select City,
sum(Revenue) as Total_Revenue
from marketing_data
group by City
order by City desc;

-- Total Cost vs Revenue

select
sum(cost) as Total_Cost,
sum(Revenue) as Total_Revenue,
sum(cost)-sum(Revenue) as Profit
from marketing_data;

-- Monthly Revenue Trend

select
DATENAME(month,date) as month,
sum(Revenue) as Revenue
from marketing_data
group by datename (month,date), month(date)
order by month (date);