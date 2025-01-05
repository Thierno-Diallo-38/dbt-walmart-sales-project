
  create or replace   view WALMART_SALES_DB.PUBLIC.sales_trends
  
   as (
    WITH TREND_DATA AS (
    SELECT
        DATE_TRUNC('month', DATE) AS MONTH,
        SUM(WEEKLY_SALES) AS TOTAL_MONTHLY_SALES
    FROM WALMART_SALES_DB.PUBLIC.cleaned_sales
    GROUP BY DATE_TRUNC('month', DATE)
    ORDER BY DATE_TRUNC('month', DATE)
)
SELECT * FROM TREND_DATA
  );
