Use db_library --stored procedure#1
	Go
	Create procedure getbooktitleinlibrabcybranch
	as
	Select SUM (b4.no_of_copies) as Bookcopies_in_the_branch from dbo.tbl_librarybranch b1

	Inner join tbl_bookloans b2 on b1.branch_id=b2.branch3_id
	Inner join tbl_books b3 on b3.book_id=b2.book3_id
	Inner join tbl_bookcopies b4 on b4.book_id=b3.book_id
	Where b4.book_id='9'
	and b4.branch_id='2'