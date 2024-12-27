-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers
SET Address ='74 Pine St' 
WHERE LastName='Jenkins' AND FirstName='Taylor';

Select * from Customers where LastName='Jenkins';