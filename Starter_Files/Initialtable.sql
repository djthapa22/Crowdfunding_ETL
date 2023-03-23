Drop Table if exists Contacts,Subcategory,Category,Campaign cascade;

Create Table Contacts(
contact_id INT Primary Key,
first_name Varchar,
last_name Varchar,
email Varchar
);

Create Table Subcategory(
subcategory_id Varchar Primary Key,
subcategory Varchar
);


Create Table Category(
category_id Varchar Primary Key,
category Varchar
);

Create Table Campaign(
	cf_id  INT,
	contact_id INT,
	company_name Varchar,
	description Varchar,
	goal Decimal,
	pledged Decimal,
	outcome Varchar,
	backers_count INT,
	country Varchar,
	currency Varchar,
	launch_date Date,
	end_date Date,
	category_id  Varchar,
	subcategory_id Varchar,
	Primary Key(cf_id),
	Foreign Key (contact_id) References contacts(contact_id),
	Foreign Key (category_id) References category(category_id),
	Foreign Key (subcategory_id) References subcategory(subcategory_id)
);

SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;
