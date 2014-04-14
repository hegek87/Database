select *from Adaptation;
select *from Album;
select *from Album_Genre;
select *from Anticipating;
select *from Associated_With;
select *from Based_On;
select *from Book;
select *from Book_Genre;
select *from Book_Genre_Type;
select *from Item_Album;
select *from Item_Book;
select *from Item_Movie;
select *from Item_Television_Season;
select *from Item_Video_Game;
select *from Like_Dislike;
select *from Media_Item;
select *from Movie;
select *from Movie_Genre;
select *from Movie_Rating;
select *from Occupation;
select *from Person;
select *from Soundtrack;
select *from States;
select *from Television_Season;
select *from Television_Season_Genre;
select *from Television_Season_Rating;
select *from Type_List;
select *from User_Email;
select *from User_Gender;
select *from Video_Game;
select *from Video_Game_Genre;
select *from Video_Game_Platform;
select *from Video_Game_Rating;
select *from Website_User;
select *from Works_As;


# Users
insert into Website_User values
	('12345', 'kenny', '1987-08-11','M','NY'),
	('befbvde', 'john', '1992-04-17','M','IL'),
	('1bdbdb', 'krissi', '1983-04-04','F','FL'),
	('1gregn5', 'alex', '1929-05-27','U','HI'),
	('t3tgwrg', 'Danny', '1985-07-14','M','KS'),
	('1bvfgt', 'michael', '1982-08-28','M','MO');
	
# User emails
insert into User_Email values
	('abcd@gmail.com', 'kenny'),
	('KENNY87@gmail.com', 'kenny'),
	('bogden@yahoo.com', 'kenny'),
	('kjhgb.com', 'john'),
	('alligator@aol.com', 'john'),
	('abracadabra@gmail.com', 'john'),
	('orange@gmail.com', 'krissi'),
	('grape@yahoo.com', 'krissi'),
	('al29@gmail.com', 'alex'),
	('lakes@gmail.com', 'Danny'),
	('da1985@yahoo.com', 'Danny'),
	('circle12@gmail.com', 'Danny'),
	('fgghd@gmail.com', 'Danny'),
	('trek@gmail.com', 'michael'),
	('orangered@gmail.com', 'michael');
	
# Albums

insert into Album values
	(default, 'In Flames', 'arg', 10, 'Death Metal'),
	(default, 'Brand New', 'LIR', 18, 'Alternative Rock'),
	(default, 'Alexisonfire', 'algk', 9, 'Hardcore'),
	(default, 'Pink Floyd', 'fgghsg', 14, 'Progressive Rock'),
	(default, 'Beatles', 'fgggg', 52, 'Rock'),
	(default, 'Pixies', 'random', 13, 'Alternative Rock'),
	(default, 'Aiden', 'label', 13, 'Punk Rock');
	
insert into Media_Item values
	(default, 'Come Clarity', '2014-04-20'),
	(default, 'Deja Entendu', '2014-05-10'),
	(default, 'Watch Out!', '2014-07-12'),
	(default, 'Crisis', '2015-01-12'),
	(default, 'The Wall', '2014-09-21'),
	(default, 'The Dark Side of the Moon', '2014-10-23'),
	(default, 'Let It Be', '2014-04-15'),
	(default, 'Surfer Rosa', '2016-02-25'),
	(default, 'Conviction', '2014-08-24'),
	(default, 'Nightmare Anatomy', '2014-02-23'),
	(default, 'Knives', '2014-04-01');
	
insert into Item_Album values(3,2),(4,3),(5,4),(6,4),(7,5),(8,5),(9,6),(10,7),(11,8),(12,8),(13,8);

# Books

insert into Book values
	(9780765326362,1086,'Fantasy', 'TOR', 1),
	(9780765348784,666,'Fantasy','TOR',1),
	(9789332518803,671,'Textbook', 'Pearson', 7);
	
insert into Media_Item values
	(default, 'Words of Radiance', '2014-04-22'),
	(default, 'Gardens of the Moon', '2014-05-21'),
	(default, 'Operating Systems', '2014-07-07');
	
insert into Item_Book values
	(9780765326362, 14),
	(9780765348784, 15),
	(9789332518803, 16);
	
# Book Authors

insert into Person values
	(default, 'Brandon', 'Sanderson'),
	(default, 'Steven', 'Erikson'),
	(default, 'William', 'Stallings');
	
insert into Works_As values
	(1, 'Author'),
	(2, 'Author'),
	(3, 'Author');
	
insert into Associated_With values(14,1),(15,2),(16,3);

# Video Games

insert into Video_Game values
	(default, 'RPG', 'M', 'Xbox 360', 'Bethesda', 'Bethesda'),
	(default, 'RPG', 'M', 'Xbox 360', 'EA', 'EA'),
	(default, 'Action', 'T', 'PS3', 'Naughty Dog', 'Naughty Dog'),
	(default, 'Action', 'M', 'PS3', 'Sony', 'Sony');
	
insert into Media_Item values
	(default, 'Skyrim', '2014-04-22'),
	(default, 'Mass Effect 3', '2014-05-21'),
	(default, 'Uncharted 3', '2014-07-07'),
	(default, 'God of War 3', '2014-07-07');
	
insert into Item_Video_Game values(17,1),(18,2),(19,3),(20,4);

# TV Season

insert into Television_Season values
	(default, 'Comedy', 'TV-MA', 'SHO', 12, 60, '09:00:00', true),
	(default, 'Drama', 'TV-MA', 'AMC', 12, 60, '08:00:00', false);
	
insert into Media_Item values
	(default, 'Shameless', '2014-04-14'),
	(default, 'Breaking Bad', '2014-04-14');
	
insert into Item_Television_Season values(21,1),(22,2);
	
# Producer

insert into Person values
	(default, 'Bob', 'Ross');
	
insert into Works_As values (4, 'Producer');

insert into Associated_With values (21,4),(22,4);

insert into Movie values
	(default, 'Drama', 'R', 90, true),
	(default, 'Comedy', 'PG-13', 80, true),
	(default, 'Action', 'R', 65, false),
	(default, 'Comedy', 'R', 98, false);
	
insert into Media_Item values
	(default, 'Fight Club', '2014-04-14'),
	(default, 'Anchorman 2', '2014-04-14'),
	(default, 'Captain America', '2014-04-17'),
	(default, 'Superbad', '2014-04-16');
	
insert into Item_Movie values (1,23),(2,24),(3,25),(4,26);
	
insert into Movie values(default, 'Drama', 'R', 100, true);
insert into Media_Item values(default, 'God of War 3', '2014-04-14');
insert into Item_Movie values(9,27);

insert into Based_On values(9,4);

# (Username, Media_ID)
insert into Anticipating values
	('alex',3),
	('alex',4),
	('alex',5),
	('alex',6),
	('alex',7),
	('alex',8),
	('alex',9),
	('alex',10),
	('alex',11),
	('alex',12),
	('alex',13),
	('alex',14),
	('alex',20),
	('alex',21),
	('alex',22),
	('alex',23);
	
insert into Anticipating values
	('BOB', 14),
	('BOB', 15),
	('BOB', 16),
	('BOB', 17),
	('BOB', 18),
	('BOB', 19),
	('BOB', 20),
	('BOB', 21),
	('BOB', 22),
	('BOB', 23),
	('BOB', 24),
	('BOB', 25),
	('BOB', 26),
	('BOB', 27);
	
insert into Anticipating values
	('Danny', 3),
	('Danny', 5),
	('Danny', 7),
	('Danny', 9),
	('Danny', 11),
	('Danny', 13),
	('Danny', 15),
	('Danny', 17),
	('Danny', 18),
	('Danny', 20),
	('Danny', 22),
	('Danny', 24),
	('Danny', 26),
	('Danny', 4),
	('Danny', 8);
	
insert into Anticipating values
	('john', 7),
	('john', 25),
	('john', 24),
	('john', 23),
	('john', 22),
	('john', 21),
	('john', 20);
	
insert into Anticipating values
	('kenny', 8),
	('kenny', 9),
	('kenny', 10),
	('kenny', 11),
	('kenny', 12),
	('kenny', 13),
	('kenny', 14),
	('kenny', 15),
	('kenny', 16),
	('kenny', 17),
	('kenny', 18),
	('kenny', 19),
	('kenny', 20),
	('kenny', 21);
	
insert into Anticipating values
	('krissi', 3),
	('krissi', 4),
	('krissi', 5),
	('krissi', 6),
	('krissi', 7),
	('krissi', 8),
	('krissi', 9),
	('krissi', 10),
	('krissi', 11),
	('krissi', 12),
	('krissi', 13),
	('krissi', 14),
	('krissi', 15),
	('krissi', 16),
	('krissi', 17),
	('krissi', 18),
	('krissi', 19),
	('krissi', 20),
	('krissi', 21),
	('krissi', 22),
	('krissi', 23),
	('krissi', 24),
	('krissi', 25),
	('krissi', 26);
	
insert into Anticipating values
	('michael', 3),
	('michael', 4),
	('michael', 5),
	('michael', 6),
	('michael', 7),
	('michael', 8),
	('michael', 9),
	('michael', 10),
	('michael', 11),
	('michael', 12),
	('michael', 13),
	('michael', 14),
	('michael', 15),
	('michael', 16),
	('michael', 17),
	('michael', 18),
	('michael', 19),
	('michael', 20),
	('michael', 21),
	('michael', 22),
	('michael', 23),
	('michael', 24),
	('michael', 25),
	('michael', 26),
	('michael', 27);
	
insert into Website_User values
	('1fbfrg','bobross', '2000-05-12','M', 'VA'),
	('43125dgf','Unidan', '2000-08-14', 'F', 'NY'); 
	
insert into User_Email values
	('bross@yahoo.com', 'bobross'),
	('boss@gmail.com', 'bobross'),
	('unidan@gmail.com', 'Unidan'),
	('Unidon@yahoo.com', 'Unidan');
	
insert into Anticipating values
	('bobross', 3),
	('bobross', 4),
	('bobross', 5),
	('bobross', 6),
	('bobross', 7),
	('bobross', 8),
	('bobross', 9),
	('bobross', 10),
	('bobross', 11),
	('bobross', 12),
	('bobross', 13),
	('bobross', 14),
	('bobross', 15),
	('bobross', 16),
	('bobross', 17),
	('bobross', 18),
	('bobross', 19),
	('bobross', 20),
	('bobross', 21),
	('bobross', 22),
	('bobross', 23),
	('bobross', 24),
	('bobross', 25),
	('bobross', 26);
	
insert into Anticipating values
	('Unidan', 12),
	('Unidan', 13),
	('Unidan', 14),
	('Unidan', 15),
	('Unidan', 16),
	('Unidan', 17),
	('Unidan', 18),
	('Unidan', 19),
	('Unidan', 20),
	('Unidan', 21),
	('Unidan', 22),
	('Unidan', 23),
	('Unidan', 24),
	('Unidan', 25),
	('Unidan', 26),
	('Unidan', 27);
	
insert into Book values
	('1234567890123', 190, 'Fiction', 'afg',1),
	('1234567980123', 140, 'Fiction', 'afg',1),
	('1234567890321', 100, 'Fiction', 'afg',1);
	
insert into Media_Item values
	(default, 'Mistborn', '2014-04-26'),
	(default, 'Player Piano', '2014-04-16'),
	(default, 'House of Leaves', '2014-04-15');
	
insert into Item_Book values
	('1234567890123',28),
	('1234567980123', 29),
	('1234567890321', 30);






