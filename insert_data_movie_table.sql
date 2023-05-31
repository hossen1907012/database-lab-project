INSERT INTO movie (id, title, description, genre, publishing_date, publisher)
VALUES
    (1, 'Don''t Look Up', 'A comedy-drama about two low-level astronomers who must go on a giant media tour to warn mankind of an approaching comet.', 'Comedy, Drama', TO_DATE('2021-12-10', 'YYYY-MM-DD'), 1),
    (2, 'The Lost Daughter', 'A psychological drama film about a woman who becomes obsessed with a young mother while on vacation.', 'Drama', TO_DATE('2021-09-03', 'YYYY-MM-DD'), 2),
    (3, 'The 355', 'An action thriller film about a group of international spies who must work together to retrieve a top-secret weapon.', 'Action, Thriller', TO_DATE('2022-01-07', 'YYYY-MM-DD'), 3),
    (4, 'Spider-Man: No Way Home', 'A superhero film featuring Spider-Man as he deals with the multiverse and confronts his past villains.', 'Action, Adventure, Fantasy', TO_DATE('2021-12-17', 'YYYY-MM-DD'), 5),
    (5, 'The Matrix Resurrections', 'A science fiction film that serves as a sequel to The Matrix trilogy, following Neo as he awakens to a new reality.', 'Action, Sci-Fi', TO_DATE('2021-12-22', 'YYYY-MM-DD'), 1),
    (6, 'The Power of the Dog', 'A Western drama film about a rancher who torments his brother and new sister-in-law.', 'Drama, Western', TO_DATE('2021-11-17', 'YYYY-MM-DD'), 2),
    (7, 'The King''s Man', 'An action spy film that serves as a prequel to the Kingsman film series, exploring the origins of the secret organization.', 'Action, Adventure, Comedy', TO_DATE('2021-12-22', 'YYYY-MM-DD'), 3),
    (8, 'Dunkirk', 'A war film depicting the Dunkirk evacuation during World War II.', 'Action, Drama, History', TO_DATE('2017-07-21', 'YYYY-MM-DD'), 1),
    (9, 'We''re the Millers', 'A comedy film about a drug dealer who creates a fake family to smuggle drugs across the border.', 'Comedy, Crime', TO_DATE('2013-08-07', 'YYYY-MM-DD'), 5),
    (10, '28 Days Later', 'A post-apocalyptic horror film set in the UK, where a virus outbreak has turned the majority of the population into zombies.', 'Horror, Sci-Fi, Thriller', TO_DATE('2002-11-01', 'YYYY-MM-DD'), 1);
