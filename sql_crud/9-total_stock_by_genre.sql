SELECT genre, SUM(stock) AS SUM_book_stock
FROM books
GROUP BY genre;
