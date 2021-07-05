 1.
 select Books.[Name] 
 from Books 
 where Pages >= 500 and Pages <= 650

2.
select Books.[Name] as 'Books'
from Books
where "Name" like '[АЗ]%';

3.
select Books.[Name]
from Books, Themes, Sales
where Books.id=BookId and Themes.[Name] = 'Детектив'and Quantity > 30;

4.
select Books.[Name] 
from Books 
where Books.[Name] like '%Microsoft%' and Books.[Name] not like '%Windows%';

6.
select Books.[Name]
from Books
where len(Books.[Name]) !>4;


9. 
select Themes.[Name], sum(Pages) as 'Sum pages'
from Themes join Books on Themes.id=ThemeId 
group by Themes.[Name];

10. 
select count(Books.id) as 'Sum books', sum(Pages) as 'Sum pages', Authors.Surname as 'Author'
from Books, Authors
where Authors.Id=AuthorId
group by Authors.Surname;

11.
select Books.[Name]
from Books join Themes on Themes.id=ThemeId
where Pages = (select max(Pages)
from Books join Themes on Themes.id = ThemeId 
where Themes.[Name] = 'Программирование');


12. 
select Themes.[Name], avg (Pages) as 'Averege pages'
from Books join Themes on Themes.id= Themeid group by Themes.[Name] having avg(Pages) >=400;

13.
select Themes.[Name], sum(Pages) as 'Sum pages'
from Books join Themes on Themes.id = ThemeId
where Pages > 400
group by Themes.[Name]
having Themes.[Name]='Программирование' and Themes.[Name] ='Администрирование' and Themes.[Name] ='Дизайн';

14. 
select Shops.[Name], Countries.[Name], Books.[Name], SaleDate
from Shops, Countries, Books, Sales
where Books.id=BookId and ShopId=Shops.id and Countries.id=CountryId;





