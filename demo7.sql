-----------Alt Sorgular (Subqueries)---------------
/* adı melva olan kitabın sayfa sayısından fazla sayfalı kitabları getir
SELECT * FROM book
WHERE page_number >
(
SELECT page_number
FROM book
WHERE title = 'Melva'
);
*/

--melva isimli kitabın sayfa sayısından fazla olan kitapları bulup, max sayfa sayılı kitabı bulup, max - bu kitapların sayfa sayısını sırala
SELECT title, page_number, (SELECT MAX(page_number) FROM book), ((SELECT MAX(page_number) FROM book) - page_number) AS differ
FROM book
WHERE page_number >
(
SELECT page_number FROM book
WHERE title = 'Melva'
);

----------Any ve All Operatörleri---------
--Any, herhangi bir değer koşulu sağlaması durumunda
SELECT first_name, last_name
FROM author
WHERE id = ANY
(
  SELECT id
  FROM book
  WHERE title = 'Gayla' OR title = 'Saving Shiloh'
);

--All, tüm değerlerin koşulu sağlaması durumunda
SELECT first_name, last_name
FROM author
WHERE id = ALL
(
  SELECT id
  FROM book
  WHERE title = 'Gayla' OR title = 'Melva'
);


--------------------Alt sorgularda join---------------------- 

--bookstore veri tabanında kitap sayfası sayısı ortalama kitap sayfası sayısından fazla olan kitapların isimlerini, 
--bu kitapların yazarlarına ait isim ve soyisim bilgileriyle birlikte sıralayınız.
SELECT author.first_name, author.last_name, book.title, book.page_number
FROM author
INNER JOIN book ON book.author_id = author.id
WHERE page_number >
(
  SELECT AVG(page_number) FROM book
);


--dvdrental veritabanında en uzun filmlerin isimlerini aktör isim ve soyisimleriyle birlikte sıralayalım.
SELECT actor.first_name, actor.last_name, film.title
FROM actor
JOIN film_actor ON film_actor.actor_id = actor.actor_id
JOIN film ON film.film_id = film_actor.film_id
WHERE film.length =
(
  SELECT MAX(length)  FROM film
);



