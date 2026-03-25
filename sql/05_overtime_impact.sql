-- Does working overtime lead to attrition?
SELECT 
    OverTime,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary
FROM attrition_data
GROUP BY OverTime;