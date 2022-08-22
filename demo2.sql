--------------------ORDER BY---------------------
--SELECT * FROM film ORDER BY title ASC; --filmleri artan sıralar
--SELECT * FROM film ORDER BY title ASC, length DESC;
--SELECT * FROM film WHERE title LIKE 'A%' ORDER BY title ASC, length DESC;
--SELECT * FROM film WHERE rating ='G' ORDER BY length DESC;  


-----------------LIMIT ve OFFSET-----------------
--SELECT * FROM film WHERE title LIKE 'B%' ORDER BY length DESC LIMIT 10; --B ile başlayan azalan sırayla sıralanan verilerin ilk 10 tanesini alır
--SELECT * FROM film WHERE title LIKE 'B%' ORDER BY length DESC OFFSET 2 LIMIT 6; --koşulu sağlayanlardan ilk 2sini almaz, ondan sonraki 6'yı alır
--SELECT * FROM actor WHERE first_name ='Penelope' ORDER BY last_name OFFSET 2 LIMIT 1;



--------------Aggregate Fonksiyonlar - MIN, MAX, SUM, AVG-----------
--SELECT AVG(length) FROM film; --ortalama
--SELECT ROUND(AVG(length), 3) FROM film; --virgülden sonra 3 basamak yuvarlar
--SELECT SUM(length) FROM film; --toplam
--SELECT MAX(length) FROM film; --en yüksek
--SELECT MIN(length) FROM film; --en düşük
--SELECT MAX(length), MIN(length), SUM(replacement_cost) FROM film;
--SELECT MAX(length) FROM film WHERE rental_rate=2.99; --rental=2.99 olan en uzun filmin süresi



--------------GROUP BY-------------
--SELECT rental_rate, MAX(length) FROM film GROUP BY rental_rate; --rental_rate sütununda 3 farklı değer(0.99, 2.99, 4.99) için en uzun filmi bulma
--SELECT rental_rate, COUNT(*) FROM film GROUP BY rental_rate; --farklı rental_rate değerlerindeki film sayısı 

--SELECT replacement_cost, MIN(length) FROM film GROUP BY replacement_cost; --farklı replasdeki en kısa filmlerin süresini gösterir

--farklı replas ve farklı rentaldaki verilerden en kısa süreli filmleri alır. (21 farklı tane replas, 3 farklı rental var iki veri sutunun çarpımı kadar veri vermesi gerkli)
--SELECT COUNT(DISTINCT replacement_cost) FROM film; --21
--SELECT replacement_cost,rental_rate,  MIN(length) FROM film GROUP BY replacement_cost,rental_rate; 

--gruplanan farklı replas ve rental verilerini uzunlukla alıp replasi artan, rentalı azalan sıralıyor
--SELECT replacement_cost,rental_rate,  MIN(length) FROM film GROUP BY replacement_cost,rental_rate ORDER BY replacement_cost,rental_rate DESC; 

--gruplanan farklı replas ve rental verilerini uzunlukla alıp uzunluğa göre artan sıralar ve ilk 10 tanesini alır
--SELECT replacement_cost,rental_rate, MIN(length) FROM film GROUP BY replacement_cost,rental_rate ORDER BY MIN(length) LIMIT 10



-------------HAVING--------------
--SELECT rental_rate, COUNT(*) FROM film GROUP BY rental_rate HAVING COUNT(*) > 325; --farklı rantellardaki film sayısı 325ten büyük olanların sayısı
--SELECT staff_id, COUNT(*) FROM payment GROUP BY staff_id HAVING COUNT(*) > 7000;

--toplamda 100 fazla satış yapan müşterileri azalan sıralayıp en fazla satış yapanın idisini alır
--SELECT customer_id, SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount)>100 ORDER BY SUM(amount) DESC LIMIT 1 ;



------------ALIAS (AS)-------
--SELECT first_name AS isim, last_name AS soyisim FROM actor;
--SELECT  COUNT(*) AS "aktor sayisi" FROM actor --actor sayısını bulup tablosuna geçici isim verir
SELECT CONCAT(first_name, ' ', last_name) AS "isim, soyisim" FROM actor; --first last sutunları tek sutunda birleştirip geçici sutün adı veriyo 


