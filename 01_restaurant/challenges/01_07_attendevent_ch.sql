-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT * FROM Customers where Email='atapley2j@kinetecoinc.com';

Insert Into CustomerInfo
(CustomerID,PartySize)
Values(92,4);