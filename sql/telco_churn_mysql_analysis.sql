use telco_project;
show tables;

select * from telco_data;

# COUNT TOTAL ROWS
select count(*) from telco_data;

# CHECKING FOR MISSING VALUES
SHOW COLUMNS FROM telco_data;

SELECT 
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(customer_id) AS null_customer_id,
    COUNT(*) - COUNT(gender) AS null_gender,
    COUNT(*) - COUNT(senior_citizen) AS null_senior_citizen,
    COUNT(*) - COUNT(partner) AS null_partner,
    COUNT(*) - COUNT(dependents) AS null_dependents,
    COUNT(*) - COUNT(tenure) AS null_tenure,
    COUNT(*) - COUNT(tenure_group) AS null_tenure_group,
    COUNT(*) - COUNT(phone_service) AS null_phone_service,
    COUNT(*) - COUNT(multiple_lines) AS null_multiple_lines,
    COUNT(*) - COUNT(internet_service) AS null_internet_service,
    COUNT(*) - COUNT(online_security) AS null_online_security,
    COUNT(*) - COUNT(online_backup) AS null_online_backup,
    COUNT(*) - COUNT(device_protection) AS null_device_protection,
    COUNT(*) - COUNT(tech_support) AS null_tech_support,
    COUNT(*) - COUNT(streaming_tv) AS null_streaming_tv,
    COUNT(*) - COUNT(streaming_movies) AS null_streaming_movies,
    COUNT(*) - COUNT(contract) AS null_contract,
    COUNT(*) - COUNT(paperless_billing) AS null_paperless_billing,
    COUNT(*) - COUNT(payment_method) AS null_payment_method,
    COUNT(*) - COUNT(monthly_charges) AS null_monthly_charges,
    COUNT(*) - COUNT(monthly_charges_bucket) as null_monthly_charges_bucket,
    COUNT(*) - COUNT(total_charges) AS null_total_charges,
    COUNT(*) - COUNT(churn) AS null_churn
FROM telco_data;

# CHURN OVERVIEW
# OVERALL CHURN RATE
select
count(*) as total_customers,
sum(case when churn='yes' then 1 else 0 end) as churn_customers,
round(100 * sum(case when churn='yes' then 1 else 0 end) / count(*), 2) as churn_rate from telco_data;

#ANALYSIS QUERIES
# CHURN BY CONTRACT
select 
contract,
count(*) as customers,
sum(case when churn='yes' then 1 else 0 end) as churned,
round(100 * sum(case when churn = 'yes' then 1 end) / count(*), 2) as churn_rate from telco_data
group by contract;



# CHURN BY INTERNET SERVICE
select
internet_service,
count(*) as customers,
sum(case when churn ='yes' then 1 end) as churned,
round(100*sum(case when churn="yes" then 1 else 0 end) / count(*),2) as churn_rate 
from telco_data
group by internet_service;

# CHURN BY TENURE GROUP
select 
tenure_group,
count(*) as customers,
sum(case when churn = 'yes' then 1 end) as churned,
round(100*sum(case when churn='yes' then 1 end) / count(*), 2) as churn_rate
from telco_data
group by tenure_group
order by tenure_group;

# CHURN BY MONTHLY CHARGES BUCKET 
SELECT
    monthly_charges_bucket,
    COUNT(*) AS customers,
    SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
    ROUND(100 * SUM(CASE WHEN churn='Yes' THEN 1 END)/COUNT(*), 2) AS churn_rate
FROM telco_data
GROUP BY monthly_charges_bucket;

# CHURN BY PAYMENT METHOD
 SELECT 
    payment_method,
    COUNT(*) AS customers,
    SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
    ROUND(100 * SUM(CASE WHEN churn='Yes' THEN 1 END)/COUNT(*), 2) AS churn_rate
FROM telco_data
GROUP BY payment_method;


# SENIOR CITIZEN CHURN
SELECT 
    senior_citizen,
    COUNT(*) AS customers,
    SUM(CASE WHEN churn='Yes' THEN 1 END) AS churned,
    ROUND(100 * SUM(CASE WHEN churn='Yes' THEN 1 END)/COUNT(*), 2) AS churn_rate
FROM telco_data
GROUP BY senior_citizen;

# CHURN BY PARTNER AND DEPENDENTS
SELECT partner, COUNT(*), SUM(CASE WHEN churn='Yes' THEN 1 END), 
ROUND(100 * SUM(CASE WHEN churn='Yes' THEN 1 END)/COUNT(*), 2) AS churn_rate
FROM telco_data
GROUP BY partner;

SELECT dependents, COUNT(*), SUM(CASE WHEN churn='Yes' THEN 1 END),
ROUND(100 * SUM(CASE WHEN churn='Yes' THEN 1 END)/COUNT(*), 2) AS churn_rate
FROM telco_data
GROUP BY dependents;

