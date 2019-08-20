CREATE TABLE tbl_librarybranch (
		branch_id INT PRIMARY KEY NOT NULL,
		branch_name VARCHAR(30),
		branch_address VARCHAR(50) NOT NULL
	);

	CREATE TABLE tbl_publisher (
		publisher_name VARCHAR(30) PRIMARY KEY NOT NULL,
		publisher_address VARCHAR(50),
		publisher_phone VARCHAR(20)
	);


		CREATE TABLE tbl_books (
		book_id INT PRIMARY KEY NOT NULL,
		Title VARCHAR(50) NOT NULL,
		publisher_name VARCHAR(30) not null constraint fk_publisher_name Foreign key references tbl_publisher(publisher_name) on update cascade on delete cascade
	);

	
CREATE TABLE tbl_bookcopies (
		book_id INT  NOT NULL constraint fk_book_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		branch_id INT NOT NULL CONSTRAINT fk_branch_id Foreign Key References tbl_librarybranch(branch_id) on update cascade on delete cascade,
		no_of_copies int
	);

		
CREATE TABLE tbl_borrower (
		card_no INT PRIMARY KEY NOT NULL,
		borrower_name VARCHAR(30) NOT NULL,
		borrower_address VARCHAR(30),
		borower_phone varchar(30)
	);


	
CREATE TABLE tbl_bookloans (
		book3_id INT NOT NULL constraint fk_book3_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		branch3_id int NOT NULL CONSTRAINT fk_branch3_id Foreign Key References tbl_librarybranch(branch_id) on update cascade on delete cascade,
		card_no INT constraint fk_card_no foreign key references tbl_borrower(card_no) on update cascade on delete cascade,
		Date_Out Datetime,
		Date_Due Datetime,		
	);


	
CREATE TABLE tbl_bookauthors (
		book2_id INT  NOT NULL constraint fk_book2_id foreign key references tbl_books(book_id) on update cascade on delete cascade,
		author_name VARCHAR(30)
	);

	


	


	

	
	
	


	



	






	







	Select * from tbl_borrower













	

	Select*from tbl_librarybranch
	Select *from tbl_bookcopies	
	Select*from tbl_bookloans

	Select*from tbl_borrower


	


