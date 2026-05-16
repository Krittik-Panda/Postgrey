-- # LAG()

-- Gets value from previous row.

-- 
-- SELECT 
--     month,
--     sales,
--     LAG(sales) OVER(ORDER BY month) AS prev_sales
-- FROM sales_data;
-- 

-- | month | sales | prev_sales |
-- | ----- | ----- | ---------- |
-- | Jan   | 100   | NULL       |
-- | Feb   | 150   | 100        |
-- | Mar   | 200   | 150        |

-- ---

-- # LEAD()

-- Gets value from next row.

-- 
-- SELECT 
--     month,
--     sales,
--     LEAD(sales) OVER(ORDER BY month) AS next_sales
-- FROM sales_data;
-- 

-- | month | sales | next_sales |
-- | ----- | ----- | ---------- |
-- | Jan   | 100   | 150        |
-- | Feb   | 150   | 200        |
-- | Mar   | 200   | NULL       |

---------------------------LAG--------------------------------------------



SELECT fname,salary ,
LAG(salary) OVER()
FROM Employee;




------------------------LEAD--------------------------------------------


SELECT fname,salary ,
LEAD
(salary) OVER()
FROM Employee;



--------------calculate salary diff of next or prev emp  using LAG and LEAD------


SELECT 
fname,
salary ,
LEAD(salary) OVER(),
(salary - LEAD(salary) OVER()) as salary_diff --new col
FROM Employee;


-------------------------------------------------------------------------------------









