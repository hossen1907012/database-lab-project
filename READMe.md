## Creating tables

```
drop table payment;
drop table watch_history;
drop table publisher;
drop table movie;
drop table users;


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
	gender bool, -- 0 female 1 male
	dob date,
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
	foreign key(mid) references movie(id)
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
	foreign key(mid) references movie(id)
);
```





## Data Insertion


```
INSERT INTO users (id, fullname, username, email, password, gender, dob, created_at)
VALUES
    (1, 'Emma Johnson', 'emma.j', 'emma.j@example.com', 'p@ssw0rd', true, TO_DATE('1990-05-15', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (2, 'Liam Wilson', 'liam.w', 'liam.w@example.com', 'p@ssw0rd', false, TO_DATE('1988-09-21', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (3, 'Olivia Davis', 'olivia.d', 'olivia.d@example.com', 'p@ssw0rd', true, TO_DATE('1995-03-10', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (4, 'Noah Thompson', 'noah.t', 'noah.t@example.com', 'p@ssw0rd', false, TO_DATE('1992-11-07', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (5, 'Ava Anderson', 'ava.a', 'ava.a@example.com', 'p@ssw0rd', true, TO_DATE('1987-07-18', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (6, 'Sophia Garcia', 'sophia.g', 'sophia.g@example.com', 'p@ssw0rd', true, TO_DATE('1998-02-04', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (7, 'Mason Martinez', 'mason.m', 'mason.m@example.com', 'p@ssw0rd', false, TO_DATE('1993-12-27', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (8, 'Isabella Robinson', 'isabella.r', 'isabella.r@example.com', 'p@ssw0rd', true, TO_DATE('1991-06-11', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (9, 'Jackson Clark', 'jackson.c', 'jackson.c@example.com', 'p@ssw0rd', false, TO_DATE('1997-04-02', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD')),
    (10, 'Sophia Wright', 'sophia.w', 'sophia.w@example.com', 'p@ssw0rd', true, TO_DATE('1989-08-25', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
  
  
  
  
  INSERT INTO payment (id, user_id, amount, payment_date)
VALUES
    (1, 3, 10, TO_DATE('2023-05-30', 'YYYY-MM-DD')),
    (2, 8, 20, TO_DATE('2023-05-29', 'YYYY-MM-DD')),
    (3, 2, 10, TO_DATE('2023-05-28', 'YYYY-MM-DD')),
    (4, 5, 5, TO_DATE('2023-05-27', 'YYYY-MM-DD')),
    (5, 1, 20, TO_DATE('2023-05-26', 'YYYY-MM-DD')),
    (6, 10, 10, TO_DATE('2023-05-25', 'YYYY-MM-DD')),
    (7, 4, 5, TO_DATE('2023-05-24', 'YYYY-MM-DD')),
    (8, 9, 55, TO_DATE('2023-05-23', 'YYYY-MM-DD')),
    (9, 6, 10, TO_DATE('2023-05-22', 'YYYY-MM-DD')),
    (10, 7, 20, TO_DATE('2023-05-21', 'YYYY-MM-DD'));

  
   
```


