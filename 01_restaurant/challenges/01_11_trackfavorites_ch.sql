-- Update information in the database.

SELECT * FROM Customers Where LastName='Goldwater';
Select * FROM Dishes Where Name = 'Quinoa Salmon Salad';
-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

Update Customers
SET FavoriteDish = (Select DishID FROM Dishes Where Name = 'Quinoa Salmon Salad')
Where CustomerID = 42;
