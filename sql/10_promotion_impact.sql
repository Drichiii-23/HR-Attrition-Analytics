-- Does waiting too long for promotion cause attrition? (with satisfaction)
SELECT 
    CASE 
        WHEN Long_Without_Promo = 1 THEN 'Overdue (>3 years)'
        ELSE 'On track'
    END as promotion_status,
    COUNT(*) as total_employees,
    SUM(Attrition_Flag) as attrition_count,
    ROUND(SUM(Attrition_Flag) * 100.0 / COUNT(*), 1) as attrition_rate,
    ROUND(AVG(
        CASE Job_Satisfaction_Level
            WHEN 'Low' THEN 1
            WHEN 'Medium' THEN 2
            WHEN 'High' THEN 3
            WHEN 'Very High' THEN 4
        END
    ), 1) as avg_satisfaction_score
FROM attrition_data
GROUP BY 
    CASE 
        WHEN Long_Without_Promo = 1 THEN 'Overdue (>3 years)'
        ELSE 'On track'
    END;