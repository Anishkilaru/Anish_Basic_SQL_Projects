	Use db_library --stored procedure#2
	Go
	Create procedure getbookcopiesforeachbranch
	as
	
	Select b1.branch_id, b1.branch_name,  b4.no_of_copies from dbo.tbl_librarybranch b1
	Inner join tbl_bookcopies b4 on b4.branch_id=b1.branch_id
	Where b4.book_id='9'