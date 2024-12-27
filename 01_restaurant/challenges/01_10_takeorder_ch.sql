-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie 4,7,20 / 8.0,7.0,6.0
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers where LastName='Hundey';

SELECT * from Dishes
where Name = 'House Salad'
or Name = 'Mini Cheeseburgers'
OR Name = 'Tropical Blue Smoothie';

Insert into Orders 
(CustomerID,OrderDate)
Values(70,'2022-09-20 14:00:00');

Insert Into OrdersDishes
(OrderID,DishID)
Values
(1001,(SELECT DishID from Dishes where Name = 'House Salad')),
(1001,(SELECT DishID from Dishes where Name = 'Mini Cheeseburgers')),
(1001,(SELECT DishID from Dishes where Name = 'Tropical Blue Smoothie'));

Select SUM(Dishes.Price) from Dishes join OrdersDishes
ON Dishes.DishID = OrdersDishes.DishID
where OrderID=1001;

