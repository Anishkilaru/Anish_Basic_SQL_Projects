Use db_library --stored proecude#4
	Go
	Create procedure sharptownbranchduedatetoday
	as
	
	Select b1.branch_name, b3.Title, b4.borrower_name, b4.borrower_address from tbl_librarybranch b1

	Full Outer Join tbl_bookloans b2 on b2.branch3_id=b1.branch_id
	Full Outer Join tbl_borrower b4 on b4.card_no=b2.card_no
	Full Outer Join tbl_books b3 on b3.book_id=b2.book3_id
	

	Where b1.branch_name='Sharpstown'
	and b2.Date_Due='08-19-2019'
