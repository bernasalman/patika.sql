SELECT rating FROM film GROUP BY rating;  --rating değerlerini gruplama

SELECT replacement_cost, COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*)>50; --replesi gruplarından film sayısı 50 den fazla olanları 

SELECT store_id, COUNT(*) FROM customer GROUP BY store_id -- customer tablosunda store_id değerlerine karşılık müşteri sayılarını

SELECT country_id, COUNT(*) FROM city GROUP BY country_id ORDER BY COUNT(*) DESC LIMIT 1 --country_idye gruplandırıp en fazla şehir sayısı barındıran country_idyi ve şehir sayısını 

