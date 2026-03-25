-- Company overview metrics
SELECT 
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as total_attrition,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(MonthlyIncome), 0) as avg_salary,
    ROUND(AVG(YearsAtCompany), 1) as avg_tenure,
    ROUND(AVG(Age), 0) as avg_age
FROM attrition_data;