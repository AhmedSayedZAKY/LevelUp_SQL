-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

SELECT Books.Title,Books.Published,Books.Barcode
From Books Join Loans
ON Books.BookID = Loans.BookID
Where Loans.ReturnedDate IS NOT NULL
AND Books.Published BETWEEN 1890 AND 1899
GROUP BY Books.Barcode
ORDER BY Books.Title;

SELECT b.Title, b.Published
FROM Books b
INNER JOIN Loans l ON b.BookID = l.BookID
WHERE l.ReturnedDate IS NOT NULL
AND b.Published BETWEEN 1890 AND 1899
ORDER BY b.Title;

SELECT Books.Title, Books.Published, Books.Barcode
FROM Books
LEFT JOIN Loans ON Books.BookID = Loans.BookID
WHERE Books.Published BETWEEN 1890 AND 1899
AND (Loans.BookID IS NOT NULL OR Loans.ReturnedDate IS NOT NULL)
GROUP BY Books.Barcode
ORDER BY Books.Title;