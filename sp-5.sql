	Use db_library --stored procedure #5
	Go
	Create procedure numberofbooksloanedoutfrombranch
	as
	
	Select Count (b2.book3_id) as no_of_books_laoned , b1.branch_name, b2.book3_id   from tbl_librarybranch b1

	Inner Join tbl_bookloans b2 on b2.branch3_id=b1.branch_id
	where b1.branch_name in ('Sharpstown','central','tata','wheel')
	Group By b1.branch_name, b2.book3_id