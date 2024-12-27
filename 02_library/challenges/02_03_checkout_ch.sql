-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646 //11,93
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

Select BookID from Books Where Barcode='2855934983';
Select PatronID From Patrons Where Email='jvaan@wisdompets.com'

Insert Into Loans (BookID,PatronID,LoanDate,DueDate)
VALUES((Select BookID from books Where Barcode='2855934983'),(Select PatronID From Patrons Where Email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08');

Insert Into Loans (BookID,PatronID,LoanDate,DueDate)
VALUES((Select BookID from books Where Barcode='4043822646'),(Select PatronID From Patrons Where Email='jvaan@wisdompets.com'),
'2022-08-25','2022-09-08');














