select * from manager;

-- FINDING THE 2ND LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 1, 1;
