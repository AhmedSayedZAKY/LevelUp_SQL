-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT COUNT(DISTINCT(Books.Title)) AS COUNT_Year , Books.Published
From Books
GROUP By Books.Published
ORDER BY COUNT_Year DESC;

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(Loans.PatronID) AS TotalCount , Books.Title AS titles
From Loans join Books
ON Loans.BookID = Books.BookID
GROUP BY titles
Order BY TotalCount DESC
lIMIT 5;