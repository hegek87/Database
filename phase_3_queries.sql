#1.
#Which of user x’s anticipated media is being released this week?

select distinct * from
    Anticipating natural join Media_Item
    where Username='BOB'
    and
    datediff(curdate(), Release_Date) <= 7;


#2.
#What media is being released today?

select distinct * from
    Media_Item natural join Item_Album natural join Album
    where Release_Date = curdate();
select distinct * from
    Media_Item natural join Item_Book natural join Book
    where Release_Date = curdate();
select distinct * from
    Media_Item natural join Item_Movie natural join Movie
    where Release_Date = curdate();
select distinct * from
    Media_Item natural join Item_Television_Season natural join Television_Season
    where Release_Date = curdate();
select distinct * from
    Media_Item natural join Item_Video_Game natural join Video_Game
    where Release_Date = curdate();

#6. THIS WORKS!
#Which movies have a video game based on them?

select distinct Title from
    Movie natural join Based_On natural join Item_Movie natural join Media_Item;


#8.
#Which fiction books are releasing this month that have less than 200 pages?

select distinct Title from
    Media_Item natural join Item_Book natural join Book
    where Book_Genre = 'Fiction'
    and
    extract(year_month from curdate())=extract(year_month from Release_Date)
    and Pages <= 200;


#9.
#How many PG-13 movies coming to theaters this week have a runtime of less than 100 minutes?

select count(*) from
    Movie natural join Item_Movie natural join Media_Item
    where Movie_Rating='PG-13'
    and Runtime <= 100
    and In_Theaters=true
    and datediff(curdate(),Release_Date) <= 7;


#11.
#How many female consumers are anticipating game x on platform y?

select distinct count(*) from
    Website_User natural join Anticipating natural join Media_Item natural join Item_Video_Game natural join Video_Game
where Gender = 'F' and Title = 'x' and Platform = 'y';


#14.
#How many people under the age of 17 are anticipating at least one R rated movie?

select count(distinct Username) from
    Website_User natural join Anticipating natural join Media_Item natural join Movie
    where Movie_Rating='R'
    and
    (datediff(curdate(), DOB))/365 >= 17;


#16.
#What’s the average age of people using this website/database?

select avg((datediff(curdate(), DOB))/365) as AverageAge from Website_User;

	
