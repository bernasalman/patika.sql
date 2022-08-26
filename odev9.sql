--ülke ve şehir tablosunda isimleri contry_id kesişimiyle birleştirme 
SELECT city.city, country.country_id, country.country FROM city
	INNER JOIN country ON city.country_id = country.country_id;
	
--customer_id kesişimi ile customer	ve payment tabloları birleştirilmiş payment_id isim soy isim bilgileri görüntülenmiş
SELECT payment.payment_id, customer.first_name, customer.last_name FROM payment
	INNER JOIN customer ON customer.customer_id = payment.customer_id;
	
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
	INNER JOIN customer ON customer.customer_id = rental.customer_id
	
	
