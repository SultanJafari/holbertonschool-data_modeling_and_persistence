SELECT author, COUNT(*) AS Count_book
FROM books
GROUP BY author;
