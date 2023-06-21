select book.title as Название, name_author as Автор, book.amount + supply.amount as  Количество 
from author inner join book  using(author_id)
 inner join  supply on author.author_id=book.author_id
                      and book.title= supply.title
                      and book.price=supply.price