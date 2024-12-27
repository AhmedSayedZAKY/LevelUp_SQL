-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
Delete From Reservations where CustomerID=64;

SELECT * From Reservations where CustomerID=64;