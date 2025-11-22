/*
-- Query: SELECT
    -- 1. Extract the Year and Month
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    
    -- 2. Aggregate the Metrics
    SUM(amount) AS total_monthly_revenue,
    COUNT(DISTINCT order_id) AS distinct_order_volume
    
FROM
    online_sales

-- 3. Group by the Time Components
GROUP BY
    sales_year,
    sales_month

-- 4. Order Chronologically for Trend Analysis
ORDER BY
    sales_year ASC,
    sales_month ASC
-- Date: 2025-11-22 18:29
*/
INSERT INTO `` (`sales_year`,`sales_month`,`total_monthly_revenue`,`distinct_order_volume`) VALUES (2024,10,189.49,3);
INSERT INTO `` (`sales_year`,`sales_month`,`total_monthly_revenue`,`distinct_order_volume`) VALUES (2024,11,373.99,5);
INSERT INTO `` (`sales_year`,`sales_month`,`total_monthly_revenue`,`distinct_order_volume`) VALUES (2024,12,268.99,3);
INSERT INTO `` (`sales_year`,`sales_month`,`total_monthly_revenue`,`distinct_order_volume`) VALUES (2025,1,274.48,5);
INSERT INTO `` (`sales_year`,`sales_month`,`total_monthly_revenue`,`distinct_order_volume`) VALUES (2025,2,269.50,2);
