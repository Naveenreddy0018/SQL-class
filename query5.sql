select * from manager;
-- FINDING THE LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 1;

-- FINDING THE 2ND LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 1, 1;

-- FINDING THE 3RD LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 2, 1;

-- FINDING THE 4TH LARGEST SALARY FORM MANAGER1 TABLE
SELECT name, salary FROM manager ORDER BY salary DESC LIMIT 3, 1;
