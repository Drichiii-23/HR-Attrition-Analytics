-- Does money matter?
SELECT 
    CASE 
        WHEN MonthlyIncome < 5000 THEN 'Under 5k'
        WHEN MonthlyIncome BETWEEN 5000 AND 9999 THEN '5k-10k'
        WHEN MonthlyIncome BETWEEN 10000 AND 14999 THEN '10k-15k'
        ELSE '15k+'
    END as salary_range,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate
FROM attrition_data
GROUP BY 
    CASE 
        WHEN MonthlyIncome < 5000 THEN 'Under 5k'
        WHEN MonthlyIncome BETWEEN 5000 AND 9999 THEN '5k-10k'
        WHEN MonthlyIncome BETWEEN 10000 AND 14999 THEN '10k-15k'
        ELSE '15k+'
    END
ORDER BY attrition_rate DESC;