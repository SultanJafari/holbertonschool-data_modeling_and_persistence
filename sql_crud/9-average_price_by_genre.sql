SELECT genre, AVG(price) AS AVG_book_price
FROM books
GROUP BY genre;
