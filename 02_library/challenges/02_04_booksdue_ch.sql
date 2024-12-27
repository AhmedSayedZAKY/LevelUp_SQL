-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.


SELECT Books.Title,Patrons.FirstName,Patrons.Email,Loans.DueDate
FROM Loans Join Books ON Loans.BookID=Books.BookID
Join Patrons ON Patrons.PatronID = Loans.PatronID
Where Loans.ReturnedDate IS NULL
AND DueDate < '2022-07-13';













