	Use db_library -- stored procedure #7
	Go
	Create procedure stephenkingwrittenbooks
	as
	
	Select b1.Title, b2.author_name, b1.book_id, b4.branch_name, b3.no_of_copies from tbl_books b1

	Full outer join tbl_bookauthors b2 on b2.book2_id=b1.book_id
	Full outer join tbl_bookcopies b3 on b3.book_id=b1.book_id
	Full outer join tbl_librarybranch b4 on b4.branch_id=b3.branch_id

	Where b4.branch_name='central'
	and b2.author_name='stephen king'