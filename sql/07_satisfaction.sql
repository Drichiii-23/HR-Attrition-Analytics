-- How does job satisfaction affect retention?
SELECT 
    Job_Satisfaction_Level,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary
FROM attrition_data
GROUP BY Job_Satisfaction_Level
ORDER BY 
    CASE Job_Satisfaction_Level
        WHEN 'Low' THEN 1
        WHEN 'Medium' THEN 2
        WHEN 'High' THEN 3
        WHEN 'Very High' THEN 4
    END;