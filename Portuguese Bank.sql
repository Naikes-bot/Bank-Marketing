-- Number of campaigns in May (13766)

SELECT month, COUNT(campaign) AS total_campaign
FROM `Bank dataset`.bank
WHERE month = 'may'
GROUP BY month;

-- People who have a loan 

Select job, COUNT(*)AS total
FROM `Bank dataset`.bank
WHERE loan = 'yes'
GROUP BY job
ORDER BY total DESC;

-- Average age of the target audience (40.93 years)

Select AVG(age) AS avg_age
FROM `Bank dataset`.bank;

-- How many people have loans (7244 have a loan, where as 37967 don't have one) 

Select loan, COUNT(*) AS total
FROM `Bank dataset`.bank 
GROUP BY loan
ORDER BY total;

-- How many people said yes to the "product" (term deposit)
-- 5289 said yes where as 39922 said no

SELECT y, COUNT(*) AS Total
FROM `Bank dataset`.bank 
GROUP BY y
ORDER BY Total;

-- How many people were contact by telephone & how many by cellular 

SELECT contact, COUNT(*) AS total 
FROM `Bank dataset`.bank 
GROUP BY contact 
ORDER BY total;

-- Maximum duration of a campaign (4918 seconds = 81 minutes & 9 seconds)

Select MAX(duration) AS Maximum_duration
FROM `Bank dataset`.bank;

-- What was the Average duration for people who said yes to the product (8.9 minutes or 537,29 seconds) 

Select TIME_FORMAT(SEC_TO_TIME(AVG(duration)), '%i') AS Duration_in_minutes
FROM `Bank dataset`.bank
WHERE y = 'yes'; 

-- Number of campaigns per month (12 months) 

Select month, COUNT(*) AS campaign_count
FROM`Bank dataset`.bank
GROUP BY month; 

-- Which month had the highest number of positive outcomes?

Select month, y, COUNT(*) AS campaign_count 
FROM `Bank dataset`.bank
WHERE y = 'yes'
GROUP BY month, y 
ORDER BY campaign_count DESC; 

-- Ratio of total campaigns sent/ positive outcome of those campaigns.
-- for every 2.7 times a marketing campaign was conducted by the bank in the dataset, there was one positive outcome (term deposit) 

Select SUM(campaign)/ (Select COUNT(y)  
FROM `Bank dataset`.bank) AS ratio
FROM `Bank dataset`.bank



