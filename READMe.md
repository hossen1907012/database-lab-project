### Creating tables

```
drop table payment;
drop table watch_history;
drop table publisher;
drop table movie;
drop table users;


create table users(
	id integer,
	fullname varchar(50),
	username varchar(30),
	email varchar(100),
	password varchar(200),
	created_at date,
	primary key(id)
);


create table payment(
	id integer,
	user_id integer,
	amount integer,
	payment_date date,
	primary key(id, user_id),
	foreign key(user_id) references users(id)
);

create table publisher(
	id integer,
	fullname varchar(50),
	founding_year date,
	primary key(id)
);

create table movie(
	id integer,
	title varchar(50),
	description varchar(200),
	genre varchar(50),
	publishing_date date,
	publisher integer,
	primary key(id),
	foreign key(publisher) references publisher(id)
);

create table watch_history(
	uid integer,
	mid integer,
	primary key(uid, mid),
	foreign key(uid) references users(id),
	foreign key(mid) references movie(id),
);
```
