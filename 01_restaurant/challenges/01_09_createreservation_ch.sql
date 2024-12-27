-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

INSERT INTO Customers 
(FirstName,LastName,Email)
Values('Sam', 'McAdams', 'smac@kinetecoinc.com');

INSERT INTO Reservations 
(CustomerID,Date,PartySize)
Values(SELECT CustomerID from Customers where LastName='McAdams','2022-08-12 18:00:00','smac@kinetecoinc.com');

INSERT INTO Reservations (CustomerID, Date, PartySize)
SELECT CustomerID, '2022-08-12 18:00:00', 
FROM Customers
WHERE LastName = 'McAdams';

Select * from Reservations where CustomerID = 102;


