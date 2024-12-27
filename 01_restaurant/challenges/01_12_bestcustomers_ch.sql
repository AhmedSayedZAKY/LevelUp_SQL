-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT COUNT(o.OrderID) AS ORDERS_Count, c.FirstName,c.LastName
From Orders o Join Customers c
ON o.CustomerID = c.CustomerID
GROUP BY o.CustomerID
ORDER By ORDERS_Count desc
LIMIT 15;



