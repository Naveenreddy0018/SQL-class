select * from customer1;


-- This is a view which gives us a duplicate table. The changes we made at view doesn't affect the original schema.
CREATE VIEW VIEW1 AS SELECT * FROM customer1;

SELECT * FROM VIEW1;
