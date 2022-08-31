--------JOIN Kavramı (Birleştirme)-------
SELECT * FROM book JOIN author ON author.id = book.author_id;

--INNER JOIN (Kesişimi alır)
SELECT book.title, author.first_name, author.last_name FROM book
	INNER JOIN author ON author.id = book.author_id;
	
--Left Join (iki tablo kesişimini ve sol tarftaki tablonun bütün sutunlarını alır.)	
SELECT author.first_name, author.last_name, book.title FROM book
LEFT JOIN author ON author.id = book.author_id
WHERE book.id IS NOT NULL --booku null olmayanları getir
Order BY book.title; --book titlea göre sırala


--RIGHT JOIN(iki tablo kesişimini ve sağ tarftaki tablonun bütün sutunlarını alır.)	
SELECT  author.first_name, author.last_name, book.title FROM book
RIGHT JOIN author ON author.id = book.author_id; 

--FULL JOIN(birleştirilen iki tablonun bütün sutunlarını alır.)
SELECT * FROM book
FULL JOIN author ON author.id = book.author_id; 


SELECT * FROM author
FULL JOIN book ON author.id = book.author_id
WHERE (book.id Is Not Null And author.id Is Not Null); --id değerleri null olmayanları görmek için

----------------UNION------------select ile elde edilen birden daha fazla sorguyu birleştirir.
(
SELECT * 
FROM book
ORDER BY title
LIMIT 5
)
UNION
(
SELECT * 
FROM book
ORDER BY page_number DESC
LIMIT 5
);
