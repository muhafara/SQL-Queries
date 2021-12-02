----------------------- How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?---------------------------------
Create Proc dbo_Number_of_Copies

As

SELECT book_copies.Number_Of_Copies FROM Books books, Book_Copies book_copies,
Library_Branch library_branch
WHERE books.BooksId = book_copies.BookId AND book_copies.BranchId = library_branch.BranchId AND Title='The Lost Tribe' AND BranchName='Sharpstown';
--By changing library name to London Libraray will result returning number of copies= 2.
--WHERE books.BooksId = book_copies.BookId AND book_copies.BranchId = library_branch.BranchId AND Title='The Lost Tribe' AND BranchName='London Library';
---------------------------------------------------------------------------------------------------------------------------------------------------------------

