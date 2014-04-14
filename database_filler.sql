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


insert into Website_User values
	('12345', 'kenny', '1987-08-11','M','NY'),
	('befbvde', 'john', '1992-04-17','M','IL'),
	('1bdbdb', 'krissi', '1983-04-04','F','FL'),
	('1gregn5', 'alex', '1929-05-27','U','HI'),
	('t3tgwrg', 'Danny', '1985-07-14','M','KS'),
	('1bvfgt', 'michael', '1982-08-28','M','MO');
	
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
	
insert into Person values
	(default, 'Brandon', 'Sanderson'),
	(default, 'Steven', 'Erikson'),
	(default, 'William', 'Stallings');
	
insert into Works_As values
	(1, 'Author'),
	(2, 'Author'),
	(3, 'Author');
	
insert into Associated_With values(14,1),(15,2),(16,3);




