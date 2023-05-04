select * from customer1;


-- This is a view which gives us a duplicate table. The changes we made at view doesn't affect the original schema.
-- CREATE VIEW VIEWNAME AS SELECT * FROM TABLENAME; (SYNTAX)
CREATE VIEW VIEW1 AS SELECT * FROM customer1;

-- SELECT * FROM VIEWNAME;
SELECT * FROM VIEW1;

-- SQL CREATE INDEX STATEMENET
-- Indexes are used to retrieve data from the database more quickly than otherwise. The users cannot see the indexes, they are just used to speed up searches/queries.

-- Syntax :- CREATE INDEX indexname ON tablename(columnname1, columnname2, ....)
CREATE INDEX nav ON customer1(cus_id);
SHOW INDEX FROM customer1;
show keys from customer1;
