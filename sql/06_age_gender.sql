-- Attrition patterns by age and gender
SELECT 
    Age_Group,
    Gender,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate
FROM attrition_data
GROUP BY Age_Group, Gender
ORDER BY 
    CASE Age_Group
        WHEN '18-25' THEN 1
        WHEN '26-35' THEN 2
        WHEN '36-45' THEN 3
        WHEN '46-55' THEN 4
        WHEN '56-65' THEN 5
    END,
    Gender;