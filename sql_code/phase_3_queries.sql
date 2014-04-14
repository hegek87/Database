#1. WORKS
# Which of user x’s anticipated media is being released this week?
# We just switch the Username to see different results

select distinct Username, Title, Release_Date from
    Anticipating natural join Media_Item
    where Username='Danny'
    and datediff(Release_Date, curdate()) <= 7
    and datediff(Release_Date, curdate()) >= 0;


#2. WORKS
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


#8. WORKS
#Which fiction books are releasing this month that have less than 200 pages?

select distinct Title, Release_Date, Pages from
    Media_Item natural join Item_Book natural join Book
    where Book_Genre = 'Fiction'
    and
    extract(year_month from curdate())=extract(year_month from Release_Date)
    and Pages <= 200;


#9. WORKS!
#How many PG-13 movies coming to theaters this week have a runtime of less than 100 minutes?

select count(*) from
    Movie natural join Item_Movie natural join Media_Item
    where Movie_Rating='PG-13'
    and Runtime <= 100
    and In_Theaters=true
    and datediff(Release_Date, curdate()) <= 7
    and datediff(Release_Date, curdate()) >= 0;


#11. WORKS
#How many female consumers are anticipating game x on platform y?

select distinct count(*) from
    Website_User natural join Anticipating natural join Media_Item natural join Item_Video_Game natural join Video_Game
where Gender = 'F' and Title = 'God of War 3' and Platform = 'PS3';


#14. WORKS
#How many people under the age of 17 are anticipating at least one R rated movie?

select count(distinct Username) from
    Website_User natural join Anticipating natural join Media_Item natural join Movie
    where Movie_Rating='R'
    and
    (datediff(curdate(), DOB))/365 <= 17;


#16. WORKS
#What’s the average age of people using this website/database?

select avg((datediff(curdate(), DOB))/365) as AverageAge from Website_User;

	
