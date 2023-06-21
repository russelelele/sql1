select name_author, sum(amount) as  Количество 
from author left join book on author.author_id=book.author_id 
group by name_author
having sum(amount)<10 or count(title)=0
order by Количество