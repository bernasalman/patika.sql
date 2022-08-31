--uzunluğunu ortalama film uzunluğundan fazla kaç film vardır 
SELECT COUNT(*) FROM film WHERE length >
(
SELECT AVG(length) FROM film ORDER BY AVG(length)
);

--max rental_rateli kaç film sayısı
SELECT COUNT(*) FROM film WHERE rental_rate = 
(
SELECT MAX (rental_rate) FROM film 
);

--MiN rental ve min replacement olan filmleri sıralar
SELECT * FROM film WHERE  
(
rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost =(SELECT MIN(replacement_cost) FROM Film)
);

--4. sorunun farklı çözümleri;
--en fazla alış veriş yapan müşteri idisi
SELECT count(customer_id) AS "alışveriş sayısı", customer_id FROM payment GROUP BY customer_id ORDER BY count(customer_id) desc LIMIT 1;

--idsi = 1 olann custemerın alışveriş sayısını gösteren
SELECT count(customer_id) AS "alışveriş sayısı", customer_id FROM payment WHERE customer_id = 1
GROUP BY customer_id ORDER BY count(*) desc;

--alışverişi sayısını isim, soyisim, id ile gösteren
SELECT customer_id, first_name, last_name,(SELECT Count(*)
	FROM payment p WHERE p.customer_id = c.customer_id GROUP BY customer_id ORDER BY Count(*) DESC) 
FROM customer c;



