Create Database online_sales;

##---- CREATING TABLE ---##
CREATE TABLE online_sales (
    order_id INTEGER PRIMARY KEY,
    order_date DATE NOT NULL,
    amount NUMERIC(10, 2) NOT NULL,
    product_id VARCHAR(10)
);	

###----- INSRESTING THE VALUES INTO TABLE---###

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2024-10-15', 49.99, 'P001'),
(1002, '2024-10-15', 19.50, 'P003'),
(1003, '2024-10-16', 120.00, 'P002'),
(1004, '2024-11-01', 35.00, 'P004'),
(1005, '2024-11-05', 49.99, 'P001'),
(1006, '2024-11-05', 19.50, 'P003'),
(1007, '2024-11-20', 250.00, 'P005'),
(1008, '2024-11-20', 19.50, 'P003'),
(1009, '2024-12-05', 49.99, 'P001'),
(1010, '2024-12-05', 99.00, 'P006'),
(1011, '2024-12-10', 120.00, 'P002'),
(1012, '2025-01-01', 35.00, 'P004'),
(1013, '2025-01-01', 120.00, 'P002'),
(1014, '2025-01-15', 49.99, 'P001'),
(1015, '2025-01-15', 49.99, 'P001'),
(1016, '2025-01-28', 19.50, 'P003'),
(1017, '2025-02-05', 250.00, 'P005'),
(1018, '2025-02-10', 19.50, 'P003');


##---Sales Trend Analysis------

SELECT
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
    sales_month ASC;

