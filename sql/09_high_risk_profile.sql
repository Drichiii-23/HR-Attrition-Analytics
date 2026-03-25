-- What does a high-risk employee look like?
SELECT 
    Department,
    JobRole,
    COUNT(*) as high_risk_count,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary,
    ROUND(AVG(YearsAtCompany), 1) as avg_tenure,
    ROUND(AVG(OverTime_Flag) * 100, 1) as overtime_pct
FROM attrition_data
WHERE High_Risk = 1
GROUP BY Department, JobRole
ORDER BY high_risk_count DESC
LIMIT 10;