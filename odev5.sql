SELECT * FROM film WHERE title LIKE '%n' ORDER BY length DESC LIMIT 5; 	--n ile biten en uzun 5 film

SELECT * FROM film WHERE title LIKE '%n' ORDER BY length ASC OFFSET 5 LIMIT 5; 	--n ile biten en kısa ikinci 5 film

SELECT * FROM customer WHERE store_id=1 ORDER BY last_name DESC LIMIT 4;	--id=1 olanların lastnami azalan sıralayıp ilk 4 tanesini alır
