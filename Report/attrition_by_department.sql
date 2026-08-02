-- Task 7: Count of employees who left the company (Attrition = 'Yes'), grouped by Department
-- Sorted by attrition count in descending order

SELECT
    Department,
    COUNT(*) AS AttritionCount
FROM EmployeeAttrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY AttritionCount DESC;

-- Expected result:
-- Department               | AttritionCount
-- --------------------------|---------------
-- Research & Development    | 133
-- Sales                     | 92
-- Human Resources           | 12
