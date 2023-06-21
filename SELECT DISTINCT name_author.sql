SELECT DISTINCT name_author
FROM author
LEFT JOIN book ON author.author_id = book.author_id
LEFT JOIN (
    SELECT author_id, AVG(genre_id) as avg_genre
        FROM book
        GROUP BY author_id
    ) AS avg_genres ON author.author_id = avg_genres.author_id
WHERE genre_id = avg_genre
