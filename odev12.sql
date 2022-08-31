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

/*
--en fazla alış veriş yapan müşterileri sıralayın
SELECT Max(alis sayısı) FROM payment WHERE coustomer_id 
(
SELECT Count(coustomer_id) AS 'alis sayısı' FROM payment GROUP BY(coustomer_id)
);
*/

SELECT Count(coustomer_id) FROM payment GROUP BY(coustomer_id);

