SELECT d.Name AS Department,
e.Name as Employee,
e.Salary as Salary
FROM Department d #通过外连接将两张表合并
LEFT JOIN Employee e
ON d.Id = e.DepartmentId
WHERE (d.Id, e.Salary) IN ( #通过IN判断出应该显示哪些字段
SELECT e.DepartmentId, max(e.Salary) from Employee e GROUP BY e.DepartmentId    #使用聚合函数筛选出最大值
);