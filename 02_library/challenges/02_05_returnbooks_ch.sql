-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

SELECT BookID From Books Where Books.Barcode = '6435968624'
OR Books.Barcode ='5677520613' OR Books.Barcode='8730298424'

Update Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (SELECT BookID From Books Where Books.Barcode = '6435968624')
AND ReturnedDate IS NULL;

Update Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (SELECT BookID From Books Where Books.Barcode ='5677520613')
AND ReturnedDate IS NULL;

Update Loans
Set ReturnedDate = '2022-07-05'
Where BookID = (SELECT BookID From Books Where Books.Barcode='8730298424')
AND ReturnedDate IS NULL;