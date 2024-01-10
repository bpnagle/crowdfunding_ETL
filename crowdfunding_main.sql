Create Table category3(
	category_id varchar not null primary key,
	category varchar not null);
Select * from category3

Create Table subcategory3(
	subcategory_id varchar not null primary key,
	subcategory varchar not null );
Select * from subcategory3

Create Table contacts (
	 contact_id int not null primary key,
	 first_name varchar not null,
	 last_name varchar not null,
	 email varchar not null);
Select * from contacts

Create table campaign2 (
	cf_id int not null primary key,
	company_name varchar not null,
	description varchar not null,
	goal numeric (10,2) not null,
	pledged numeric (10,2) not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar not null, Foreign Key (category_id) References category3 (category_id),
	subcategory_id varchar not null, Foreign Key (subcategory_id) References subcategory3 (subcategory_id)
	);
Select * from campaign
