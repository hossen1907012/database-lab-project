### Creating user table
create table users(
	id integer,
	fullname varchar(50),
	username varchar(30),
	email varchar(100),
	password varchar(200),
	created_at date,
	primary key(id)
);
