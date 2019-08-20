	Use db_library -- stored procedure#6
	Go
	Create procedure retrievenamesofborrowersmorethan5books
	as
	
	Select b1.borrower_name, b1.borrower_address from tbl_borrower b1

	Inner join tbl_bookloans b2 on b2.card_no=b1.card_no
	Full outer Join tbl_bookcopies b3 on b3.book_id=b2.book3_id

	Where b1.card_no in ('2','1')
	and b3.no_of_copies>'5'