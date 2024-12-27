-- Prepare a report of the library patrons
-- who have checked out the fewest books.

Select Loans.PatronID,Patrons.FirstName,COUNT(BookID) As total_count 
from Loans join Patrons
ON Loans.PatronID = Patrons.PatronID
Group BY Loans.PatronID
ORDER BY total_count asc
Limit 10;