--Select sutunadı from tabloadı

--Select title From film

--Select * From film

--Select first_name, last_name  From actor

--Select title, replacement_cost From film Where replacement_cost= 14.99

--SELECT * FROM actor WHERE first_name = 'Penelope' AND last_name = 'Monroe' ;

--SELECT * FROM actor WHERE first_name = 'Penelope' OR first_name = 'Bob' ;

--SELECT * FROM film WHERE rental_rate = 4.99  And rental_duration= 3 And replacement_cost>20;

--SELECT * FROM film WHERE NOT rental_rate = 4.99 ;

--SELECT * FROM city WHERE country_id=4 

--Select * From actor Where first_name= 'Penelope' And last_name= 'Monroe' Or first_name= 'Joe'


-----------------BETWEEN & IN---------------
--Select title,length From film Where length>=90 and length<=120;
--Select title, length  From film Where length Between 90 And 120;

--Where length=40 Or length=50 Or length=60 
--Select * From film Where length IN(40, 50, 60)


-----------------LIKE & ILIKE---------------
--SELECT * FROM actor WHERE first_name LIKE 'P%';    P ile başlayanları
--SELECT * FROM actor WHERE first_name LIKE 'Pen%'; 	Pen ile başlayanları
--SELECT * FROM actor WHERE first_name LIKE '%y'; 	y ile bitenleri
--SELECT * FROM actor WHERE first_name LIKE 'A%y'; 	A ile başlayıp y ile bitenleri 
--SELECT * FROM customer WHERE first_name LIKE 'A%' AND last_name LIKE 'A%'; 	adı ve soyadı A ile başlayanları
--SELECT * FROM actor WHERE first_name ILIKE 'a%';  	ılike küçük büyük harf ayırmadan bütün a ile başlayanları getirir

--SELECT * FROM customer WHERE first_name LIKE 'A_n'; 	A ile başlayıp n ile bitecek ve aralarında sadece bir tane karakter olacak
--SELECT * FROM customer WHERE first_name LIKE 'A_n%';    A ile başlayıp n ile bitecek üç karakter dizisiyle başlayacak



-----------------DISTINCT ve COUNT---------------
--SELECT DISTINCT rental_rate FROM film;   birbirinden farklı verileri gösterir
--SELECT COUNT(*) FROM actor WHERE first_name = 'Penelope'; koşula uygun kaç veri olduğunun sayısını gösterir
--SELECT COUNT(*) FROM actor WHERE first_name LIKE 'A%';
