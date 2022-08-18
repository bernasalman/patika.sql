SELECT AVG( rental_rate) FROM film; --rental_rate ortalama 

SELECT COUNT(*) FROM film WHERE title LIKE 'C%'; --C ile başlayan film sayısı

SELECT length FROM film WHERE rental_rate=0.99 ORDER BY length DESC LIMIT 1; --rental_rate=0.99 olan en uzun filmin süresi

SELECT COUNT(DISTINCT replacement_cost) FROM film WHERE length>150 ; --uzunluğu 150 den fazla olanların kaç farklı replacement_cost değeri vardır
