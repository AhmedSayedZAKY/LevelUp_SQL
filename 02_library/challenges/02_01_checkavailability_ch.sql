-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT COUNT(Books.Title)
FROM Books 
Where Books.Title = 'Dracula';

SELECT COUNT(Books.Title)
From Books JOIN Loans
on Books.BookID=Loans.BookID
Where Books.Title = 'Dracula' AND
Loans.ReturnedDate IS NULL;

SELECT (SELECT COUNT(Books.Title) FROM Books Where Books.Title = 'Dracula')
-(SELECT COUNT(Books.Title) From Books JOIN Loans on Books.BookID=Loans.BookID 
Where Books.Title = 'Dracula' AND 
Loans.ReturnedDate IS NULL) AS Available_Copies;









