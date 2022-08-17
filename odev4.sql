SELECT DISTINCT replacement_cost FROM film; --birbirinden farklı verileri sıralar 

SELECT COUNT(DISTINCT replacement_cost) FROM film; --birbirinden farklı verilerin sayısının verir

SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND  rating= 'G'; --t ile başlayan g'ye eşitlerin sayısı

SELECT COUNT(*) FROM country WHERE country LIKE '_____'; --kaç tane 5 karakterli ülke var 

SELECT COUNT(*) FROM city WHERE city ILIKE '%r'; --r veya R ile biten city sayısı
