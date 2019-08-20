	Use db_library --stored procedure#3
	Go
	Create procedure retirevenamesofborowerwithnobookscheckedout
	as
	
	Select b1.card_no, b1.borrower_name from tbl_borrower b1
	Left join tbl_bookloans b2 on b2.card_no=b1.card_no
	Where b1.card_no<>1
	and b1.card_no<>2