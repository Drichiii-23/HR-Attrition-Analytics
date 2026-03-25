-- Which departments have the highest turnover?
SELECT 
    Department,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary,
    ROUND(AVG(OverTime_Flag) * 100, 1) as overtime_pct
FROM attrition_data
GROUP BY Department
ORDER BY attrition_rate DESC;