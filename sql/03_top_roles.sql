-- Which job roles need immediate attention?
SELECT 
    JobRole,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary,
    SUM(High_Risk) as high_risk_count
FROM attrition_data
GROUP BY JobRole
HAVING COUNT(*) > 10  -- Only roles with meaningful sample size
ORDER BY attrition_rate DESC
LIMIT 5;