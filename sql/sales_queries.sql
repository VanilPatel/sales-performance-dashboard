-- Sales Analysis SQL Queries
-- Author: Vanil B. Patel

-- 1. Total revenue by category
SELECT category, SUM(revenue) AS total_revenue, COUNT(*) AS orders
FROM sales
GROUP BY category ORDER BY total_revenue DESC;

-- 2. Monthly revenue trend
SELECT YEAR(date) AS year, MONTH(date) AS month,
       SUM(revenue) AS monthly_revenue,
       LAG(SUM(revenue)) OVER (ORDER BY YEAR(date), MONTH(date)) AS prev_month,
       ROUND((SUM(revenue) - LAG(SUM(revenue)) OVER (ORDER BY YEAR(date), MONTH(date))) /
             LAG(SUM(revenue)) OVER (ORDER BY YEAR(date), MONTH(date)) * 100, 2) AS mom_growth_pct
FROM sales GROUP BY YEAR(date), MONTH(date);

-- 3. Top 5 regions by average order value
SELECT region, ROUND(AVG(revenue), 2) AS avg_order_value,
       SUM(units) AS total_units
FROM sales GROUP BY region ORDER BY avg_order_value DESC LIMIT 5;

-- 4. Quarterly performance
SELECT YEAR(date) AS year, QUARTER(date) AS quarter,
       SUM(revenue) AS quarterly_revenue
FROM sales GROUP BY YEAR(date), QUARTER(date) ORDER BY 1, 2;
