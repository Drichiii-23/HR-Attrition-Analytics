-- When are employees most likely to leave?
SELECT 
    Tenure_Group,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate
FROM attrition_data
GROUP BY Tenure_Group
ORDER BY 
    CASE Tenure_Group
        WHEN '0-2 years' THEN 1
        WHEN '2-5 years' THEN 2
        WHEN '5-10 years' THEN 3
        WHEN '10-20 years' THEN 4
        WHEN '20+ years' THEN 5
    END;