## Creating tables

```
drop table payment;
drop table watch_history;
drop table movie;
drop table publisher;
drop table users;


create table users(
	id number(5),
	fullname varchar(50),
	username varchar(30),
	email varchar(100),
	password varchar(200),
	gender varchar(1), -- 'f', 'm'
	dob date,
	created_at date,
	primary key(id)
);


create table payment(
	id number(5),
	user_id number(5),
	amount number(5),
	payment_date date,
	primary key(id, user_id),
	foreign key(user_id) references users(id)
);

create table publisher(
	id number(5),
	fullname varchar(50),
	founding_year date,
	primary key(id)
);

create table movie(
	id number(5),
	title varchar(50),
	description varchar(200),
	genre varchar(50),
	publishing_date date,
	publisher number(5),
	primary key(id),
	foreign key(publisher) references publisher(id)
);


create table watch_history(
	id number(5),
	user_id number(5),
	mid number(5),
	primary key(id),
	foreign key(user_id) references users(id),
	foreign key(mid) references movie(id)
);

```





## Data Insertion


```
INSERT INTO users VALUES (1, 'Emma Johnson', 'emma.j', 'emma.j@example.com', 'p@ssw0rd', 'f', TO_DATE('1990-05-15', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (2, 'Liam Wilson', 'liam.w', 'liam.w@example.com', 'p@ssw0rd', 'm', TO_DATE('1988-09-21', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (3, 'Olivia Davis', 'olivia.d', 'olivia.d@example.com', 'p@ssw0rd', 'f', TO_DATE('1995-03-10', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (4, 'Noah Thompson', 'noah.t', 'noah.t@example.com', 'p@ssw0rd', 'm', TO_DATE('1992-11-07', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (5, 'Ava Anderson', 'ava.a', 'ava.a@example.com', 'p@ssw0rd', 'f', TO_DATE('1987-07-18', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (6, 'Sophia Garcia', 'sophia.g', 'sophia.g@example.com', 'p@ssw0rd', 'f', TO_DATE('1998-02-04', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (7, 'Mason Martinez', 'mason.m', 'mason.m@example.com', 'p@ssw0rd', 'm', TO_DATE('1993-12-27', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (8, 'Isabella Robinson', 'isabella.r', 'isabella.r@example.com', 'p@ssw0rd', 'f', TO_DATE('1991-06-11', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (9, 'Jackson Clark', 'jackson.c', 'jackson.c@example.com', 'p@ssw0rd', 'm', TO_DATE('1997-04-02', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES (10, 'Sophia Wright', 'sophia.w', 'sophia.w@example.com', 'p@ssw0rd', 'f', TO_DATE('1989-08-25', 'YYYY-MM-DD'), TO_DATE('2023-05-31', 'YYYY-MM-DD'));




INSERT INTO payment VALUES (1, 3, 10, TO_DATE('2023-05-30', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (2, 8, 20, TO_DATE('2023-05-29', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (3, 2, 10, TO_DATE('2023-05-28', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (4, 5, 5, TO_DATE('2023-05-27', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (5, 1, 20, TO_DATE('2023-05-26', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (6, 10, 10, TO_DATE('2023-05-25', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (7, 4, 5, TO_DATE('2023-05-24', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (8, 9, 55, TO_DATE('2023-05-23', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (9, 6, 10, TO_DATE('2023-05-22', 'YYYY-MM-DD'));
INSERT INTO payment VALUES (10, 7, 20, TO_DATE('2023-05-21', 'YYYY-MM-DD'));




INSERT INTO publisher VALUES (1, 'Universal Pictures', TO_DATE('1912-04-30', 'YYYY-MM-DD'));
INSERT INTO publisher VALUES(2, 'Warner Bros.', TO_DATE('1923-04-04', 'YYYY-MM-DD'));
INSERT INTO publisher VALUES(3, 'Columbia Pictures', TO_DATE('1924-01-10', 'YYYY-MM-DD'));
INSERT INTO publisher VALUES(4, 'Walt Disney Pictures', TO_DATE('1923-10-16', 'YYYY-MM-DD'));
INSERT INTO publisher VALUES(5, 'Marvel Studios', TO_DATE('1996-01-01', 'YYYY-MM-DD'));



INSERT INTO movie  VALUES (1, 'Don''t Look Up', 'A comedy-drama about two low-level astronomers who must go on a giant media tour to warn mankind of an approaching comet.', 'Comedy, Drama', TO_DATE('2021-12-10', 'YYYY-MM-DD'), 1);
INSERT INTO movie  VALUES (2, 'The Lost Daughter', 'A psychological drama film about a woman who becomes obsessed with a young mother while on vacation.', 'Drama', TO_DATE('2021-09-03', 'YYYY-MM-DD'), 2);
INSERT INTO movie  VALUES (3, 'The 355', 'An action thriller film about a group of international spies who must work together to retrieve a top-secret weapon.', 'Action, Thriller', TO_DATE('2022-01-07', 'YYYY-MM-DD'), 3);
INSERT INTO movie  VALUES (4, 'Spider-Man: No Way Home', 'A superhero film featuring Spider-Man as he deals with the multiverse and confronts his past villains.', 'Action, Adventure, Fantasy', TO_DATE('2021-12-17', 'YYYY-MM-DD'), 5);
INSERT INTO movie  VALUES (5, 'The Matrix Resurrections', 'A science fiction film that serves as a sequel to The Matrix trilogy, following Neo as he awakens to a new reality.', 'Action, Sci-Fi', TO_DATE('2021-12-22', 'YYYY-MM-DD'), 1);
INSERT INTO movie  VALUES (6, 'The Power of the Dog', 'A Western drama film about a rancher who torments his brother and new sister-in-law.', 'Drama, Western', TO_DATE('2021-11-17', 'YYYY-MM-DD'), 2);
INSERT INTO movie  VALUES (7, 'The King''s Man', 'An action spy film that serves as a prequel to the Kingsman film series, exploring the origins of the secret organization.', 'Action, Adventure, Comedy', TO_DATE('2021-12-22', 'YYYY-MM-DD'), 3);
INSERT INTO movie  VALUES (8, 'Dunkirk', 'A war film depicting the Dunkirk evacuation during World War II.', 'Action, Drama, History', TO_DATE('2017-07-21', 'YYYY-MM-DD'), 1);
INSERT INTO movie  VALUES (9, 'We''re the Millers', 'A comedy film about a drug dealer who creates a fake family to smuggle drugs across the border.', 'Comedy, Crime', TO_DATE('2013-08-07', 'YYYY-MM-DD'), 5);
INSERT INTO movie  VALUES (10, '28 Days Later', 'A post-apocalyptic horror film set in the UK, where a virus outbreak has turned the majority of the population into zombies.', 'Horror, Sci-Fi, Thriller', TO_DATE('2002-11-01', 'YYYY-MM-DD'), 1);


INSERT INTO watch_history  VALUES (1,2, 5);
INSERT INTO watch_history  VALUES  (2,4, 1);
INSERT INTO watch_history  VALUES  (3,6, 8);
INSERT INTO watch_history  VALUES  (4,1, 3);
INSERT INTO watch_history  VALUES  (5,9, 7);
INSERT INTO watch_history  VALUES  (6,5, 2);
INSERT INTO watch_history  VALUES   (7,3, 10);
INSERT INTO watch_history  VALUES   (8,7, 6);
INSERT INTO watch_history  VALUES   (9,10, 4);
INSERT INTO watch_history  VALUES   (10,8, 9);
```


